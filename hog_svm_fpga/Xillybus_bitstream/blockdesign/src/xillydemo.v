module xillydemo
  (
  input  clk_100,
  input  otg_oc,   
  inout [55:0] PS_GPIO,
  output [3:0] GPIO_LED,
  output [4:0] vga4_blue,
  output [5:0] vga4_green,
  output [4:0] vga4_red,
  output  vga_hsync,
  output  vga_vsync,
  output  audio_mclk,
  output  audio_dac,
  input  audio_adc,
  input  audio_bclk,
  input  audio_adc_lrclk,
  input  audio_dac_lrclk,
  output  audio_mute,
  output  hdmi_clk_p,
  output  hdmi_clk_n,
  output [2:0] hdmi_d_p,
  output [2:0] hdmi_d_n,
  output  hdmi_out_en,
  inout  smb_sclk,
  inout  smb_sdata   
  ); 

   wire       ap_clk;
   wire       quiesce;
   
   wire [1:0] smbus_addr;

   // Memory arrays
   
   reg [7:0] litearray0[0:31];
   reg [7:0] litearray1[0:31];
   reg [7:0] litearray2[0:31];
   reg [7:0] litearray3[0:31];

   // Wires related to /dev/xillybus_audio
   wire [31:0] from_host_audio_tdata;
   wire        from_host_audio_tready;
   wire        from_host_audio_tvalid;

   wire [31:0] to_host_audio_tdata;
   wire        to_host_audio_tready;
   wire        to_host_audio_tvalid;
   
   // Wires related to /dev/xillybus_smb
   wire [7:0]  from_host_smb_tdata;
   wire        from_host_smb_tready;
   wire        from_host_smb_tvalid;

   wire [7:0]  to_host_smb_tdata;
   wire        to_host_smb_tready;
   wire        to_host_smb_tvalid;

   // Wires related to Xillybus Lite
   wire        user_clk;
   wire        user_wren;
   wire [3:0]  user_wstrb;
   wire        user_rden;
   reg [31:0]  user_rd_data;
   wire [31:0] user_wr_data;
   wire [31:0] user_addr;
   wire        user_irq;

   wire        USB0_VBUS_PWRFAULT;

   wire [7:0]  xillyvga_0_vga_red;
   wire [7:0]  xillyvga_0_vga_green;
   wire [7:0]  xillyvga_0_vga_blue;
   wire        vga_hsync_w;
   wire        vga_vsync_w;
   wire        vga_clk;

   wire [55:0] gpio_tri_i, gpio_tri_o, gpio_tri_t;
   genvar      i;

   generate
      for (i=0; i<56; i=i+1)
	begin: gpio
	   assign gpio_tri_i[i] = PS_GPIO[i];
	   assign PS_GPIO[i] = gpio_tri_t[i] ? 1'bz : gpio_tri_o[i];
	end
   endgenerate

   assign USB0_VBUS_PWRFAULT = !otg_oc;
   assign hdmi_out_en = 1;

   // synthesis attribute IOB of vga_iob_ff is "TRUE"

   FDCE vga_iob_ff [17:0]
     (
      .Q( { vga4_red, vga4_green, vga4_blue, vga_hsync, vga_vsync} ),
      .D( { xillyvga_0_vga_red[7:3],
	    xillyvga_0_vga_green[7:2],
	    xillyvga_0_vga_blue[7:3],
	    vga_hsync_w, vga_vsync_w } ),
      .C(vga_clk), .CE(1'b1), .CLR(1'b0)
      );
   
   // Note that none of the ARM processor's direct connections to pads is
   // attached in the instantion below. Normally, they should be connected as
   // toplevel ports here, but that confuses Vivado to think that
   // some of these ports are real I/Os, causing an implementation failure.
   // This detachment results in a lot of warnings during synthesis and
   // implementation, but has no practical significance, as these pads are
   // completely unrelated to the FPGA bitstream.

   vivado_system vivado_system_ins
     (
      .ap_clk(ap_clk),
      .quiesce(quiesce),

      .GPIO_0_tri_i(gpio_tri_i),
      .GPIO_0_tri_o(gpio_tri_o),
      .GPIO_0_tri_t(gpio_tri_t),
      .USBIND_0_port_indctl(),
      .USBIND_0_vbus_pwrfault(USB0_VBUS_PWRFAULT),
      .USBIND_0_vbus_pwrselect(),

      .from_host_audio_tdata(from_host_audio_tdata),
      .from_host_audio_tready(from_host_audio_tready),
      .from_host_audio_tvalid(from_host_audio_tvalid),

      .to_host_audio_tdata(to_host_audio_tdata),
      .to_host_audio_tready(to_host_audio_tready),
      .to_host_audio_tvalid(to_host_audio_tvalid),

      .from_host_smb_tdata(from_host_smb_tdata),
      .from_host_smb_tready(from_host_smb_tready),
      .from_host_smb_tvalid(from_host_smb_tvalid),
      .from_host_smb_open(from_host_smb_open),

      .to_host_smb_tdata(to_host_smb_tdata),
      .to_host_smb_tready(to_host_smb_tready),
      .to_host_smb_tvalid(to_host_smb_tvalid),

      .user_addr(user_addr),
      .user_clk(user_clk),
      .user_irq(user_irq),
      .user_rd_data(user_rd_data),
      .user_rden(user_rden),
      .user_wr_data(user_wr_data),
      .user_wren(user_wren),
      .user_wstrb(user_wstrb),

      .clk_in(clk_100),
      .dvi_clk_n(hdmi_clk_n),
      .dvi_clk_p(hdmi_clk_p),
      .dvi_d_n(hdmi_d_n),
      .dvi_d_p(hdmi_d_p),
      .vga_red(xillyvga_0_vga_red),
      .vga_green(xillyvga_0_vga_green),
      .vga_blue(xillyvga_0_vga_blue),
      .vga_clk(vga_clk),
      .vga_de(),  // For use with DVI
      .vga_hsync(vga_hsync_w),
      .vga_vsync(vga_vsync_w),

      .GPIO_LED(GPIO_LED)
      );

   assign      user_irq = 0; // No interrupts for now
   
   always @(posedge user_clk)
     begin
	if (user_wstrb[0])
	  litearray0[user_addr[6:2]] <= user_wr_data[7:0];

	if (user_wstrb[1])
	  litearray1[user_addr[6:2]] <= user_wr_data[15:8];

	if (user_wstrb[2])
	  litearray2[user_addr[6:2]] <= user_wr_data[23:16];

	if (user_wstrb[3])
	  litearray3[user_addr[6:2]] <= user_wr_data[31:24];
	
	if (user_rden)
	  user_rd_data <= { litearray3[user_addr[6:2]],
			    litearray2[user_addr[6:2]],
			    litearray1[user_addr[6:2]],
			    litearray0[user_addr[6:2]] };
     end

   i2s_audio_axis audio
     (
      .ap_clk(ap_clk),
      .clk_100(clk_100),
      .quiesce(quiesce),

      .audio_mclk(audio_mclk),
      .audio_dac(audio_dac),
      .audio_adc(audio_adc),
      .audio_adc_lrclk(audio_adc_lrclk),
      .audio_dac_lrclk(audio_dac_lrclk),
      .audio_mute(audio_mute),
      .audio_bclk(audio_bclk),
      
      .from_host_audio_tdata(from_host_audio_tdata),
      .from_host_audio_tready(from_host_audio_tready),
      .from_host_audio_tvalid(from_host_audio_tvalid),

      .to_host_audio_tdata(to_host_audio_tdata),
      .to_host_audio_tready(to_host_audio_tready),
      .to_host_audio_tvalid(to_host_audio_tvalid)
      );
   
   smbus_axis smbus
     (
      .ap_clk(ap_clk),
      .quiesce(quiesce),

      .smb_sclk(smb_sclk),
      .smb_sdata(smb_sdata),
      .smbus_addr(smbus_addr),

      .from_host_smb_tdata(from_host_smb_tdata),
      .from_host_smb_tready(from_host_smb_tready),
      .from_host_smb_tvalid(from_host_smb_tvalid),
      .from_host_smb_open(from_host_smb_open),

      .to_host_smb_tdata(to_host_smb_tdata),
      .to_host_smb_tready(to_host_smb_tready),
      .to_host_smb_tvalid(to_host_smb_tvalid)
       );

endmodule
