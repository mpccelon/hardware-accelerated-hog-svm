module xillydemo
  (
  input  clk_100,
  input  otg_oc,   
  inout [55:0] PS_GPIO,
  output [3:0] GPIO_LED
  ); 

     // Clock and quiesce
  wire  bus_clk;
  wire  quiesce;


  // Wires related to /dev/xillybus_read_32
  wire  user_r_read_32_rden;
  wire  user_r_read_32_empty;
  wire [31:0] user_r_read_32_data;
  wire  user_r_read_32_eof;
  wire  user_r_read_32_open;

  // Wires related to /dev/xillybus_read_32_2
  wire  user_r_read_32_2_rden;
  wire  user_r_read_32_2_empty;
  wire [31:0] user_r_read_32_2_data;
  wire  user_r_read_32_2_eof;
  wire  user_r_read_32_2_open;

  // Wires related to /dev/xillybus_write_32
  wire  user_w_write_32_wren;
  wire  user_w_write_32_full;
  wire [31:0] user_w_write_32_data;
  wire  user_w_write_32_open;

  // Wires related to /dev/xillybus_write_32_2
  wire  user_w_write_32_2_wren;
  wire  user_w_write_32_2_full;
  wire [31:0] user_w_write_32_2_data;
  wire  user_w_write_32_2_open;

  // Wires related to Xillybus Lite
  wire  user_clk;
  wire  user_wren;
  wire  user_rden;
  wire [3:0] user_wstrb;
  wire [31:0] user_addr;
  wire [31:0] user_rd_data;
  wire [31:0] user_wr_data;
  wire  user_irq;


  xillybus xillybus_ins (

    // Ports related to /dev/xillybus_read_32
    // FPGA to CPU signals:
    .user_r_read_32_rden(user_r_read_32_rden),
    .user_r_read_32_empty(user_r_read_32_empty),
    .user_r_read_32_data(user_r_read_32_data),
    .user_r_read_32_eof(user_r_read_32_eof),
    .user_r_read_32_open(user_r_read_32_open),


    // Ports related to /dev/xillybus_read_32_2
    // FPGA to CPU signals:
    .user_r_read_32_2_rden(user_r_read_32_2_rden),
    .user_r_read_32_2_empty(user_r_read_32_2_empty),
    .user_r_read_32_2_data(user_r_read_32_2_data),
    .user_r_read_32_2_eof(user_r_read_32_2_eof),
    .user_r_read_32_2_open(user_r_read_32_2_open),


    // Ports related to /dev/xillybus_write_32
    // CPU to FPGA signals:
    .user_w_write_32_wren(user_w_write_32_wren),
    .user_w_write_32_full(user_w_write_32_full),
    .user_w_write_32_data(user_w_write_32_data),
    .user_w_write_32_open(user_w_write_32_open),


    // Ports related to /dev/xillybus_write_32_2
    // CPU to FPGA signals:
    .user_w_write_32_2_wren(user_w_write_32_2_wren),
    .user_w_write_32_2_full(user_w_write_32_2_full),
    .user_w_write_32_2_data(user_w_write_32_2_data),
    .user_w_write_32_2_open(user_w_write_32_2_open),


    // Ports related to Xillybus Lite
    .user_clk(user_clk),
    .user_wren(user_wren),
    .user_rden(user_rden),
    .user_wstrb(user_wstrb),
    .user_addr(user_addr),
    .user_rd_data(user_rd_data),
    .user_wr_data(user_wr_data),
    .user_irq(user_irq),


    // General signals
    .PS_CLK(PS_CLK),
    .PS_PORB(PS_PORB),
    .PS_SRSTB(PS_SRSTB),
    .clk_100(clk_100),
    .otg_oc(otg_oc),
    .DDR_Addr(DDR_Addr),
    .DDR_BankAddr(DDR_BankAddr),
    .DDR_CAS_n(DDR_CAS_n),
    .DDR_CKE(DDR_CKE),
    .DDR_CS_n(DDR_CS_n),
    .DDR_Clk(DDR_Clk),
    .DDR_Clk_n(DDR_Clk_n),
    .DDR_DM(DDR_DM),
    .DDR_DQ(DDR_DQ),
    .DDR_DQS(DDR_DQS),
    .DDR_DQS_n(DDR_DQS_n),
    .DDR_DRSTB(DDR_DRSTB),
    .DDR_ODT(DDR_ODT),
    .DDR_RAS_n(DDR_RAS_n),
    .DDR_VRN(DDR_VRN),
    .DDR_VRP(DDR_VRP),
    .MIO(MIO),
    .PS_GPIO(PS_GPIO),
    .DDR_WEB(DDR_WEB),
    .GPIO_LED(GPIO_LED),
    .bus_clk(bus_clk),
    .quiesce(quiesce)
  );


   assign      user_irq = 0; // No interrupts for now

   // Wires related to HLS_wrapper
   wire [31:0] in_r_dout;
   wire        in_r_read;
   wire        hls_fifo_rd_en;
   reg 	       in_r_empty_n;
   wire [31:0] out_r_din;
   wire        out_r_full;
   wire        out_r_write;
   wire [7:0]  debug_out_din;
   wire        debug_out_full;
   wire        debug_out_write;

   fifo_32x512 fifo_to_function
     (
      .clk(bus_clk),
      .srst(!user_w_write_32_open),
      .din(user_w_write_32_data),
      .wr_en(user_w_write_32_wren),
      .rd_en(hls_fifo_rd_en),
      .dout(in_r_dout),
      .full(user_w_write_32_full),
      .empty(hls_fifo_empty)
      );

   assign  hls_fifo_rd_en = !hls_fifo_empty && (in_r_read || !in_r_empty_n);

   always @(posedge bus_clk)
     if (!user_w_write_32_open)
       in_r_empty_n <= 0;
     else if (hls_fifo_rd_en)
       in_r_empty_n <= 1;
     else if (in_r_read)
       in_r_empty_n <= 0;

   fifo_32x512 fifo_from_function
     (
      .clk(bus_clk),
      .srst(!user_r_read_32_open),
      .din(out_r_din),
      .wr_en(out_r_write),
      .rd_en(user_r_read_32_rden),
      .dout(user_r_read_32_data),
      .full(out_r_full),
      .empty(user_r_read_32_empty)
      );

   assign  user_r_read_32_eof = 0;

   xillybus_wrapper HLS_wrapper
     (
      .ap_clk(bus_clk),
      .ap_rst(!user_w_write_32_open || !user_r_read_32_open),

      .in_r_dout(in_r_dout),
      .in_r_empty_n(in_r_empty_n),
      .in_r_read(in_r_read),
      .out_r_din(out_r_din),
      .out_r_full_n(!out_r_full),
      .out_r_write(out_r_write)
      );

   // Wires related to HLS_wrapper_2
   wire [31:0] in_r_dout_2;
   wire        in_r_read_2;
   wire        hls_fifo_rd_en_2;
   reg 	       in_r_empty_n_2;
   wire [31:0] out_r_din_2;
   wire        out_r_full_2;
   wire        out_r_write_2;
   wire [7:0]  debug_out_din_2;
   wire        debug_out_full_2;
   wire        debug_out_write_2;

   fifo_32x512 fifo_to_function_2
     (
      .clk(bus_clk),
      .srst(!user_w_write_32_2_open),
      .din(user_w_write_32_2_data),
      .wr_en(user_w_write_32_2_wren),
      .rd_en(hls_fifo_rd_en_2),
      .dout(in_r_dout_2),
      .full(user_w_write_32_2_full),
      .empty(hls_fifo_empty_2)
      );

   assign  hls_fifo_rd_en_2 = !hls_fifo_empty_2 && (in_r_read_2 || !in_r_empty_n_2);

   always @(posedge bus_clk)
     if (!user_w_write_32_2_open)
       in_r_empty_n_2 <= 0;
     else if (hls_fifo_rd_en_2)
       in_r_empty_n_2 <= 1;
     else if (in_r_read_2)
       in_r_empty_n_2 <= 0;

   fifo_32x512 fifo_from_function_2
     (
      .clk(bus_clk),
      .srst(!user_r_read_32_2_open),
      .din(out_r_din_2),
      .wr_en(out_r_write_2),
      .rd_en(user_r_read_32_2_rden),
      .dout(user_r_read_32_2_data),
      .full(out_r_full_2),
      .empty(user_r_read_32_2_empty)
      );

   assign  user_r_read_32_2_eof = 0;

   xillybus_wrapper HLS_wrapper_2
     (
      .ap_clk(bus_clk),
      .ap_rst(!user_w_write_32_2_open || !user_r_read_32_2_open),

      .in_r_dout(in_r_dout_2),
      .in_r_empty_n(in_r_empty_n_2),
      .in_r_read(in_r_read_2),
      .out_r_din(out_r_din_2),
      .out_r_full_n(!out_r_full_2),
      .out_r_write(out_r_write_2)
      );

endmodule
