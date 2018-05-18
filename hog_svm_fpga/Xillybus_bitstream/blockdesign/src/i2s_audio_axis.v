`timescale 1ns / 10ps
module i2s_audio_axis
  (
   input           ap_clk,
   input 	   quiesce,
   input           clk_100,

   input 	   audio_adc,
   input 	   audio_bclk,
   input 	   audio_adc_lrclk,
   input 	   audio_dac_lrclk,
   output	   audio_mclk,
   output reg 	   audio_dac,
   output 	   audio_mute,

   input [31:0]    from_host_audio_tdata,
   output reg      from_host_audio_tready,
   input           from_host_audio_tvalid,

   output reg [31:0] to_host_audio_tdata,
   input           to_host_audio_tready,
   output reg      to_host_audio_tvalid
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
   reg [31:0] 	   record_shreg;
   reg [4:0] 	   record_count;
   reg 		   write_when_done;
   wire 	   bclk_rising;
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

   always @(posedge ap_clk)
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

	// from_host_audio_tvalid is assumed to be asserted all the time.
	// If it's not, it's an underrun, and there's nothing to do about
	// it anyhow.

	from_host_audio_tready <= 0; // Possibly overridden below

	// audio_dac is changed on detection of the rising clock, because
	// BCLK is 12 MHz, so doing it on detection of the falling edge is
	// too late. There is a minimum of two ap_clk cycles from sampling
	// the rising edge of BCLK and the appearance of new data on the
	// physical wire, so the 10 ns hold time required is met when ap_clk
	// is lower than 200 MHz.
	
	if (bclk_rising)
	  begin
	     audio_dac <= play_shreg[14]; // Possibly overridden below
	     play_shreg <= { play_shreg, 1'b0 };
	  end
	
	if (bclk_rising && !audio_dac_lrclk_reg && audio_dac_lrclk_reg_d)
	  begin
	     play_shreg <= from_host_audio_tdata[30:16]; // Left channel
	     audio_dac <= from_host_audio_tdata[31];
	  end
	else if (bclk_rising && audio_dac_lrclk_reg && !audio_dac_lrclk_reg_d)
	  begin
	     play_shreg <= from_host_audio_tdata[14:0]; // Right channel
	     audio_dac <= from_host_audio_tdata[15];
	     from_host_audio_tready <= 1;
	  end

	// Recording

	// Same is with playback, to_host_audio_tvalid is asserted for
	// one clock cycle when the data is valid, and if the AXI-S receiver
	// wasn't ready, it's an overrun, and there's not much to do.

	to_host_audio_tvalid <= 0; // Possibly overridden below

	if (bclk_rising && (record_count != 0))
	  begin
	     to_host_audio_tdata <= { to_host_audio_tdata, audio_adc_reg };
	     record_count <= record_count - 1;

	     if (record_count == 1)
	       begin
		  to_host_audio_tvalid <= write_when_done;
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
