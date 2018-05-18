`timescale 1ns / 10ps
module i2s_audio
  (
   input           bus_clk,
   input 	   quiesce,
   input 	   clk_100,

   input 	   audio_adc,
   input 	   audio_bclk,
   input 	   audio_adc_lrclk,
   input 	   audio_dac_lrclk,
   output	   audio_mclk,
   output reg 	   audio_dac,
   output 	   audio_mute,

   input 	   user_w_audio_wren,
   input [31:0]    user_w_audio_data,
   input 	   user_w_audio_open,
   input 	   user_r_audio_rden,
   input 	   user_r_audio_open,
   output 	   user_w_audio_full,
   output [31:0]   user_r_audio_data,
   output 	   user_r_audio_empty,
   output 	   user_r_audio_eof
   );

   reg 		   audio_adc_reg;
   reg 		   audio_bclk_reg;
   reg 		   audio_adc_lrclk_reg;
   reg 		   audio_dac_lrclk_reg;
   reg 		   audio_adc_lrclk_reg_d;
   reg 		   audio_dac_lrclk_reg_d;
   reg [1:0] 	   clk_div;
   reg [14:0] 	   play_shreg;
   reg [1:0] 	   bclk_d;
   reg 		   fifo_rd_en;
   reg [31:0] 	   record_shreg;
   reg [4:0] 	   record_count;
   reg 		   write_when_done;
   reg 		   fifo_wr_en;
   wire 	   bclk_rising;
   wire [31:0] 	   play_fifo_data;
   wire 	   clk_fb;

   // synthesis attribute IOB of audio_dac is TRUE
   // synthesis attribute IOB of audio_adc_reg is TRUE
   // synthesis attribute IOB of audio_bclk_reg is TRUE
   // synthesis attribute IOB of audio_adc_lrclk_reg is TRUE
   // synthesis attribute IOB of audio_dac_lrclk_reg is TRUE

   assign 	     user_r_audio_eof = 0;

   assign 	     audio_mute = 1; // Don't mute. The signal is active low.

   assign bclk_rising = (bclk_d == 2'b01);

   // BCLK runs at 12 MHz, so the signals are sampled and handled
   // synchronously, with an obvious delay, which is taken into account.

   always @(posedge bus_clk)
     begin
	audio_adc_reg <= audio_adc;
    	audio_bclk_reg <= audio_bclk;
    	audio_adc_lrclk_reg <= audio_adc_lrclk;
    	audio_dac_lrclk_reg <= audio_dac_lrclk;

	bclk_d <= { bclk_d, audio_bclk_reg };

	if (bclk_rising)
	  begin
	     audio_adc_lrclk_reg_d <= audio_adc_lrclk_reg;
	     audio_dac_lrclk_reg_d <= audio_dac_lrclk_reg;
	  end

	// Playback

	fifo_rd_en <= 0; // Possibly overridden below

	// audio_dac is changed on detection of the rising clock, because
	// BCLK is 12 MHz, so doing it on detection of the falling edge is
	// too late. There is a minimum of two bus_clk cycles from sampling
	// the rising edge of BCLK and the appearance of new data on the
	// physical wire, so the 10 ns hold time required is met when bus_clk
	// is lower than 200 MHz.
	
	if (bclk_rising)
	  begin
	     audio_dac <= play_shreg[14]; // Possibly overridden below
	     play_shreg <= { play_shreg, 1'b0 };
	  end
	
	if (bclk_rising && !audio_dac_lrclk_reg && audio_dac_lrclk_reg_d)
	  begin
	     play_shreg <= play_fifo_data[30:16]; // Left channel
	     audio_dac <= play_fifo_data[31];
	  end
	else if (bclk_rising && audio_dac_lrclk_reg && !audio_dac_lrclk_reg_d)
	  begin
	     play_shreg <= play_fifo_data[14:0]; // Right channel
	     audio_dac <= play_fifo_data[15];
	     fifo_rd_en <= 1;
	  end

	// Recording

	fifo_wr_en <= 0; // Possibly overridden below

	if (bclk_rising && (record_count != 0))
	  begin
	     record_shreg <= { record_shreg, audio_adc_reg };
	     record_count <= record_count - 1;

	     if (record_count == 1)
	       begin
		  fifo_wr_en <= write_when_done;
		  write_when_done <= 0;
	       end
	  end

	if (bclk_rising && !audio_adc_lrclk_reg && audio_adc_lrclk_reg_d)
	  begin
	     record_count <= 16;
	     write_when_done <= 0;
	  end
	else if (bclk_rising && audio_adc_lrclk_reg && !audio_adc_lrclk_reg_d)
	  begin
	     record_count <= 16;
	     write_when_done <= 1;
	  end
     end

   // Note that there is no check on the empty line. If the FIFO is empty,
   // it will emit the same output all the time, so the audio output will be
   // silent, which is fairly OK for an underrun.

   fifo_32x512 playback_fifo
     (
      .clk(bus_clk),
      .srst(!user_w_audio_open),
      .din(user_w_audio_data), // Bus [31 : 0]
      .wr_en(user_w_audio_wren),
      .rd_en(fifo_rd_en),
      .dout(play_fifo_data), // Bus [31 : 0]
      .full(user_w_audio_full),
      .empty());

   // The full lines isn't checked. Not much to do on an overrun

   fifo_32x512 record_fifo
     (
      .clk(bus_clk),
      .srst(!user_r_audio_open),
      .din(record_shreg), // Bus [31 : 0]
      .wr_en(fifo_wr_en),
      .rd_en(user_r_audio_rden),
      .dout(user_r_audio_data), // Bus [31 : 0]
      .full(),
      .empty(user_r_audio_empty));

   // audio_mclk is 12 MHz, generated from clk_100, which is 125 MHz
   // (clk_100 is named by its frequency on Zedboard).

   PLLE2_ADV
     #(.BANDWIDTH            ("OPTIMIZED"),
       .COMPENSATION         ("ZHOLD"),
       .DIVCLK_DIVIDE        (5),
       .CLKFBOUT_MULT        (36),
       .CLKFBOUT_PHASE       (0.000),
       .CLKOUT0_DIVIDE       (75),
       .CLKOUT0_PHASE        (0.000),
       .CLKOUT0_DUTY_CYCLE   (0.500),
       .CLKIN1_PERIOD        (8.000),
       .REF_JITTER1          (0.010))
       plle2_adv_inst
	 // Output clocks
	 (.CLKFBOUT            (clk_fb),
	  .CLKOUT0             (audio_mclk),
	  .CLKOUT1             (),
	  .CLKOUT2             (),
	  .CLKOUT3             (),
	  .CLKOUT4             (),
	  .CLKOUT5             (),
	  // Input clock control
	  .CLKFBIN             (clk_fb),
	  .CLKIN1              (clk_100),
	  .CLKIN2              (1'b0),
	  // Tied to always select the primary input clock
	  .CLKINSEL            (1'b1),
	  // Ports for dynamic reconfiguration
	  .DADDR               (7'h0),
	  .DCLK                (1'b0),
	  .DEN                 (1'b0),
	  .DI                  (16'h0),
	  .DO                  (),
	  .DRDY                (),
	  .DWE                 (1'b0),
	  // Other control and status signals
	  .LOCKED              (),
	  .PWRDWN              (1'b0),
	  .RST                 (quiesce));

endmodule
