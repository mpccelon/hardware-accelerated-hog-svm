module xillybus_block
  (
  input  M_AXI_ACP_ARREADY,
  input  M_AXI_ACP_AWREADY,
  input  M_AXI_ACP_BVALID,
  input  M_AXI_ACP_RLAST,
  input  M_AXI_ACP_RVALID,
  input  M_AXI_ACP_WREADY,
  input  S_AXI_ARVALID,
  input  S_AXI_AWVALID,
  input  S_AXI_BREADY,
  input  S_AXI_RREADY,
  input  S_AXI_WVALID,
  input  bus_clk,
  input  bus_rst_n,
  input [1:0] M_AXI_ACP_BRESP,
  input [1:0] M_AXI_ACP_RRESP,
  input [31:0] S_AXI_ARADDR,
  input [31:0] S_AXI_AWADDR,
  input [31:0] S_AXI_WDATA,
  input [31:0] axi_data_r_audio,
  input [31:0] axi_data_r_read_32,
  input [3:0] S_AXI_WSTRB,
  input [63:0] M_AXI_ACP_RDATA,
  input [7:0] axi_data_r_read_8,
  input [7:0] axi_data_r_smb,
  input ap_clk,
  input axi_ready_w_audio,
  input axi_ready_w_smb,
  input axi_ready_w_write_32,
  input axi_ready_w_write_8,
  input axi_valid_r_audio,
  input axi_valid_r_read_32,
  input axi_valid_r_read_8,
  input axi_valid_r_smb,
  output  M_AXI_ACP_ARVALID,
  output  M_AXI_ACP_AWVALID,
  output  M_AXI_ACP_BREADY,
  output  M_AXI_ACP_RREADY,
  output  M_AXI_ACP_WLAST,
  output  M_AXI_ACP_WVALID,
  output  S_AXI_ARREADY,
  output  S_AXI_AWREADY,
  output  S_AXI_BVALID,
  output  S_AXI_RVALID,
  output  S_AXI_WREADY,
  output  host_interrupt,
  output  quiesce,
  output [1:0] M_AXI_ACP_ARBURST,
  output [1:0] M_AXI_ACP_AWBURST,
  output [1:0] S_AXI_BRESP,
  output [1:0] S_AXI_RRESP,
  output [2:0] M_AXI_ACP_ARPROT,
  output [2:0] M_AXI_ACP_ARSIZE,
  output [2:0] M_AXI_ACP_AWPROT,
  output [2:0] M_AXI_ACP_AWSIZE,
  output [31:0] M_AXI_ACP_ARADDR,
  output [31:0] M_AXI_ACP_AWADDR,
  output [31:0] S_AXI_RDATA,
  output [31:0] axi_data_w_audio,
  output [31:0] axi_data_w_write_32,
  output [3:0] GPIO_LED,
  output [3:0] M_AXI_ACP_ARCACHE,
  output [3:0] M_AXI_ACP_ARLEN,
  output [3:0] M_AXI_ACP_AWCACHE,
  output [3:0] M_AXI_ACP_AWLEN,
  output [63:0] M_AXI_ACP_WDATA,
  output [7:0] M_AXI_ACP_WSTRB,
  output [7:0] axi_data_w_smb,
  output [7:0] axi_data_w_write_8,
  output axi_ready_r_audio,
  output axi_ready_r_read_32,
  output axi_ready_r_read_8,
  output axi_ready_r_smb,
  output axi_valid_w_audio,
  output axi_valid_w_smb,
  output axi_valid_w_write_32,
  output axi_valid_w_write_8,
  output reg from_host_audio_open,
  output reg from_host_smb_open,
  output reg from_host_write_32_open,
  output reg from_host_write_8_open,
  output reg to_host_audio_open,
  output reg to_host_read_32_open,
  output reg to_host_read_8_open,
  output reg to_host_smb_open
);
  reg bus_rst_n_presync, bus_rst_n_synced;

  // Wires related to /dev/xillybus_audio
  wire  user_r_audio_rden_w;
  wire  user_r_audio_empty_w;
  wire [31:0] user_r_audio_data_w;
  wire  user_r_audio_eof_w;
  wire  user_r_audio_open_w;
  wire  user_w_audio_wren_w;
  wire  user_w_audio_full_w;
  wire [31:0] user_w_audio_data_w;
  wire  user_w_audio_open_w;
  wire full_r_audio;
  reg to_host_audio_open_pre1;
  reg to_host_audio_open_pre2;
  wire empty_w_audio;
  reg from_host_audio_open_pre1;
  reg from_host_audio_open_pre2;

  // Wires related to /dev/xillybus_mem_8
  wire  user_r_mem_8_rden_w;
  wire  user_r_mem_8_empty_w;
  wire [7:0] user_r_mem_8_data_w;
  wire  user_r_mem_8_eof_w;
  wire  user_r_mem_8_open_w;
  wire  user_w_mem_8_wren_w;
  wire  user_w_mem_8_full_w;
  wire [7:0] user_w_mem_8_data_w;
  wire  user_w_mem_8_open_w;
  wire [4:0] user_mem_8_addr_w;
  wire  user_mem_8_addr_update_w;
  reg user_r_mem_8_rden_d;
  reg user_w_mem_8_wren_d;

  // Wires related to /dev/xillybus_read_32
  wire  user_r_read_32_rden_w;
  wire  user_r_read_32_empty_w;
  wire [31:0] user_r_read_32_data_w;
  wire  user_r_read_32_eof_w;
  wire  user_r_read_32_open_w;
  wire full_r_read_32;
  reg to_host_read_32_open_pre1;
  reg to_host_read_32_open_pre2;

  // Wires related to /dev/xillybus_read_8
  wire  user_r_read_8_rden_w;
  wire  user_r_read_8_empty_w;
  wire [7:0] user_r_read_8_data_w;
  wire  user_r_read_8_eof_w;
  wire  user_r_read_8_open_w;
  wire full_r_read_8;
  reg to_host_read_8_open_pre1;
  reg to_host_read_8_open_pre2;

  // Wires related to /dev/xillybus_smb
  wire  user_r_smb_rden_w;
  wire  user_r_smb_empty_w;
  wire [7:0] user_r_smb_data_w;
  wire  user_r_smb_eof_w;
  wire  user_r_smb_open_w;
  wire  user_w_smb_wren_w;
  wire  user_w_smb_full_w;
  wire [7:0] user_w_smb_data_w;
  wire  user_w_smb_open_w;
  wire full_r_smb;
  reg to_host_smb_open_pre1;
  reg to_host_smb_open_pre2;
  wire empty_w_smb;
  reg from_host_smb_open_pre1;
  reg from_host_smb_open_pre2;

  // Wires related to /dev/xillybus_write_32
  wire  user_w_write_32_wren_w;
  wire  user_w_write_32_full_w;
  wire [31:0] user_w_write_32_data_w;
  wire  user_w_write_32_open_w;
  wire empty_w_write_32;
  reg from_host_write_32_open_pre1;
  reg from_host_write_32_open_pre2;

  // Wires related to /dev/xillybus_write_8
  wire  user_w_write_8_wren_w;
  wire  user_w_write_8_full_w;
  wire [7:0] user_w_write_8_data_w;
  wire  user_w_write_8_open_w;
  wire empty_w_write_8;
  reg from_host_write_8_open_pre1;
  reg from_host_write_8_open_pre2;


   // bus_rst_n is possibly completely asyncronous to anything, but the core
   // expects it to be synchronous with bus_clk. So it's synced.

   always @(posedge bus_clk)
     begin
	bus_rst_n_presync <= bus_rst_n;
	bus_rst_n_synced <= bus_rst_n_presync;
     end
   fifo_xillybus_32 r_audio
     (
      .rst(!user_r_audio_open_w),
      .wr_clk(ap_clk),
      .rd_clk(bus_clk),
      .din(axi_data_r_audio),
      .wr_en(axi_ready_r_audio && axi_valid_r_audio),
      .rd_en(user_r_audio_rden_w),
      .dout(user_r_audio_data_w),
      .full(full_r_audio),
      .empty(user_r_audio_empty_w)
      );

   assign user_r_audio_eof_w = 0;
   assign axi_ready_r_audio = !full_r_audio;

   always @(posedge ap_clk)
     begin
       to_host_audio_open_pre1 <= user_r_audio_open_w;
       to_host_audio_open_pre2 <= to_host_audio_open_pre1;
       to_host_audio_open <= to_host_audio_open_pre2;
     end

   fifo_xillybus_fwft_32 fifo_w_audio
     (
      .rst(!user_w_audio_open_w),
      .wr_clk(bus_clk),
      .rd_clk(ap_clk),
      .din(user_w_audio_data_w),
      .wr_en(user_w_audio_wren_w),
      .rd_en(axi_ready_w_audio && axi_valid_w_audio),
      .dout(axi_data_w_audio),
      .full(user_w_audio_full_w),
      .empty(empty_w_audio)
      );

   assign axi_valid_w_audio = !empty_w_audio;

   always @(posedge ap_clk)
     begin
       from_host_audio_open_pre1 <= user_w_audio_open_w;
       from_host_audio_open_pre2 <= from_host_audio_open_pre1;
       from_host_audio_open <= from_host_audio_open_pre2;
     end

   // Bogus connections of some user_r_mem_8_* signals to prevent trimming
   // of logic which would result in Vivado failing to implement the design.
   // These assignments have no functional purpose.

   assign user_r_mem_8_eof_w = 1;
   assign user_r_mem_8_empty_w = user_r_mem_8_rden_d || user_r_mem_8_open_w;
   assign user_r_mem_8_data_w = 0;

   always @(posedge bus_clk)
     user_r_mem_8_rden_d <= user_r_mem_8_rden_w;

   // Bogus connections of some user_w_mem_8_* signals to prevent trimming
   // of logic which would result in Vivado failing to implement the design.
   // This assignment has no functional purpose.

   assign user_w_mem_8_full_w = user_w_mem_8_open_w || user_w_mem_8_wren_d;

   always @(posedge bus_clk)
     user_w_mem_8_wren_d <= user_w_mem_8_wren_w;

   fifo_xillybus_32 r_read_32
     (
      .rst(!user_r_read_32_open_w),
      .wr_clk(ap_clk),
      .rd_clk(bus_clk),
      .din(axi_data_r_read_32),
      .wr_en(axi_ready_r_read_32 && axi_valid_r_read_32),
      .rd_en(user_r_read_32_rden_w),
      .dout(user_r_read_32_data_w),
      .full(full_r_read_32),
      .empty(user_r_read_32_empty_w)
      );

   assign user_r_read_32_eof_w = 0;
   assign axi_ready_r_read_32 = !full_r_read_32;

   always @(posedge ap_clk)
     begin
       to_host_read_32_open_pre1 <= user_r_read_32_open_w;
       to_host_read_32_open_pre2 <= to_host_read_32_open_pre1;
       to_host_read_32_open <= to_host_read_32_open_pre2;
     end

   fifo_xillybus_8 r_read_8
     (
      .rst(!user_r_read_8_open_w),
      .wr_clk(ap_clk),
      .rd_clk(bus_clk),
      .din(axi_data_r_read_8),
      .wr_en(axi_ready_r_read_8 && axi_valid_r_read_8),
      .rd_en(user_r_read_8_rden_w),
      .dout(user_r_read_8_data_w),
      .full(full_r_read_8),
      .empty(user_r_read_8_empty_w)
      );

   assign user_r_read_8_eof_w = 0;
   assign axi_ready_r_read_8 = !full_r_read_8;

   always @(posedge ap_clk)
     begin
       to_host_read_8_open_pre1 <= user_r_read_8_open_w;
       to_host_read_8_open_pre2 <= to_host_read_8_open_pre1;
       to_host_read_8_open <= to_host_read_8_open_pre2;
     end

   fifo_xillybus_8 r_smb
     (
      .rst(!user_r_smb_open_w),
      .wr_clk(ap_clk),
      .rd_clk(bus_clk),
      .din(axi_data_r_smb),
      .wr_en(axi_ready_r_smb && axi_valid_r_smb),
      .rd_en(user_r_smb_rden_w),
      .dout(user_r_smb_data_w),
      .full(full_r_smb),
      .empty(user_r_smb_empty_w)
      );

   assign user_r_smb_eof_w = 0;
   assign axi_ready_r_smb = !full_r_smb;

   always @(posedge ap_clk)
     begin
       to_host_smb_open_pre1 <= user_r_smb_open_w;
       to_host_smb_open_pre2 <= to_host_smb_open_pre1;
       to_host_smb_open <= to_host_smb_open_pre2;
     end

   fifo_xillybus_fwft_8 fifo_w_smb
     (
      .rst(!user_w_smb_open_w),
      .wr_clk(bus_clk),
      .rd_clk(ap_clk),
      .din(user_w_smb_data_w),
      .wr_en(user_w_smb_wren_w),
      .rd_en(axi_ready_w_smb && axi_valid_w_smb),
      .dout(axi_data_w_smb),
      .full(user_w_smb_full_w),
      .empty(empty_w_smb)
      );

   assign axi_valid_w_smb = !empty_w_smb;

   always @(posedge ap_clk)
     begin
       from_host_smb_open_pre1 <= user_w_smb_open_w;
       from_host_smb_open_pre2 <= from_host_smb_open_pre1;
       from_host_smb_open <= from_host_smb_open_pre2;
     end

   fifo_xillybus_fwft_32 fifo_w_write_32
     (
      .rst(!user_w_write_32_open_w),
      .wr_clk(bus_clk),
      .rd_clk(ap_clk),
      .din(user_w_write_32_data_w),
      .wr_en(user_w_write_32_wren_w),
      .rd_en(axi_ready_w_write_32 && axi_valid_w_write_32),
      .dout(axi_data_w_write_32),
      .full(user_w_write_32_full_w),
      .empty(empty_w_write_32)
      );

   assign axi_valid_w_write_32 = !empty_w_write_32;

   always @(posedge ap_clk)
     begin
       from_host_write_32_open_pre1 <= user_w_write_32_open_w;
       from_host_write_32_open_pre2 <= from_host_write_32_open_pre1;
       from_host_write_32_open <= from_host_write_32_open_pre2;
     end

   fifo_xillybus_fwft_8 fifo_w_write_8
     (
      .rst(!user_w_write_8_open_w),
      .wr_clk(bus_clk),
      .rd_clk(ap_clk),
      .din(user_w_write_8_data_w),
      .wr_en(user_w_write_8_wren_w),
      .rd_en(axi_ready_w_write_8 && axi_valid_w_write_8),
      .dout(axi_data_w_write_8),
      .full(user_w_write_8_full_w),
      .empty(empty_w_write_8)
      );

   assign axi_valid_w_write_8 = !empty_w_write_8;

   always @(posedge ap_clk)
     begin
       from_host_write_8_open_pre1 <= user_w_write_8_open_w;
       from_host_write_8_open_pre2 <= from_host_write_8_open_pre1;
       from_host_write_8_open <= from_host_write_8_open_pre2;
     end


  xillybus_core xillybus_core_ins (

    // Ports related to /dev/xillybus_audio
    // FPGA to CPU signals:
    .user_r_audio_rden_w(user_r_audio_rden_w),
    .user_r_audio_empty_w(user_r_audio_empty_w),
    .user_r_audio_data_w(user_r_audio_data_w),
    .user_r_audio_eof_w(user_r_audio_eof_w),
    .user_r_audio_open_w(user_r_audio_open_w),

    // CPU to FPGA signals:
    .user_w_audio_wren_w(user_w_audio_wren_w),
    .user_w_audio_full_w(user_w_audio_full_w),
    .user_w_audio_data_w(user_w_audio_data_w),
    .user_w_audio_open_w(user_w_audio_open_w),


    // Ports related to /dev/xillybus_mem_8
    // FPGA to CPU signals:
    .user_r_mem_8_rden_w(user_r_mem_8_rden_w),
    .user_r_mem_8_empty_w(user_r_mem_8_empty_w),
    .user_r_mem_8_data_w(user_r_mem_8_data_w),
    .user_r_mem_8_eof_w(user_r_mem_8_eof_w),
    .user_r_mem_8_open_w(user_r_mem_8_open_w),

    // CPU to FPGA signals:
    .user_w_mem_8_wren_w(user_w_mem_8_wren_w),
    .user_w_mem_8_full_w(user_w_mem_8_full_w),
    .user_w_mem_8_data_w(user_w_mem_8_data_w),
    .user_w_mem_8_open_w(user_w_mem_8_open_w),

    // Address signals:
    .user_mem_8_addr_w(user_mem_8_addr_w),
    .user_mem_8_addr_update_w(user_mem_8_addr_update_w),


    // Ports related to /dev/xillybus_read_32
    // FPGA to CPU signals:
    .user_r_read_32_rden_w(user_r_read_32_rden_w),
    .user_r_read_32_empty_w(user_r_read_32_empty_w),
    .user_r_read_32_data_w(user_r_read_32_data_w),
    .user_r_read_32_eof_w(user_r_read_32_eof_w),
    .user_r_read_32_open_w(user_r_read_32_open_w),


    // Ports related to /dev/xillybus_read_8
    // FPGA to CPU signals:
    .user_r_read_8_rden_w(user_r_read_8_rden_w),
    .user_r_read_8_empty_w(user_r_read_8_empty_w),
    .user_r_read_8_data_w(user_r_read_8_data_w),
    .user_r_read_8_eof_w(user_r_read_8_eof_w),
    .user_r_read_8_open_w(user_r_read_8_open_w),


    // Ports related to /dev/xillybus_smb
    // FPGA to CPU signals:
    .user_r_smb_rden_w(user_r_smb_rden_w),
    .user_r_smb_empty_w(user_r_smb_empty_w),
    .user_r_smb_data_w(user_r_smb_data_w),
    .user_r_smb_eof_w(user_r_smb_eof_w),
    .user_r_smb_open_w(user_r_smb_open_w),

    // CPU to FPGA signals:
    .user_w_smb_wren_w(user_w_smb_wren_w),
    .user_w_smb_full_w(user_w_smb_full_w),
    .user_w_smb_data_w(user_w_smb_data_w),
    .user_w_smb_open_w(user_w_smb_open_w),


    // Ports related to /dev/xillybus_write_32
    // CPU to FPGA signals:
    .user_w_write_32_wren_w(user_w_write_32_wren_w),
    .user_w_write_32_full_w(user_w_write_32_full_w),
    .user_w_write_32_data_w(user_w_write_32_data_w),
    .user_w_write_32_open_w(user_w_write_32_open_w),


    // Ports related to /dev/xillybus_write_8
    // CPU to FPGA signals:
    .user_w_write_8_wren_w(user_w_write_8_wren_w),
    .user_w_write_8_full_w(user_w_write_8_full_w),
    .user_w_write_8_data_w(user_w_write_8_data_w),
    .user_w_write_8_open_w(user_w_write_8_open_w),


    // General signals
    .M_AXI_ACP_ARREADY_w(M_AXI_ACP_ARREADY),
    .M_AXI_ACP_AWREADY_w(M_AXI_ACP_AWREADY),
    .M_AXI_ACP_BRESP_w(M_AXI_ACP_BRESP),
    .M_AXI_ACP_BVALID_w(M_AXI_ACP_BVALID),
    .M_AXI_ACP_RDATA_w(M_AXI_ACP_RDATA),
    .M_AXI_ACP_RLAST_w(M_AXI_ACP_RLAST),
    .M_AXI_ACP_RRESP_w(M_AXI_ACP_RRESP),
    .M_AXI_ACP_RVALID_w(M_AXI_ACP_RVALID),
    .M_AXI_ACP_WREADY_w(M_AXI_ACP_WREADY),
    .S_AXI_ARADDR_w(S_AXI_ARADDR),
    .S_AXI_ARVALID_w(S_AXI_ARVALID),
    .S_AXI_AWADDR_w(S_AXI_AWADDR),
    .S_AXI_AWVALID_w(S_AXI_AWVALID),
    .S_AXI_BREADY_w(S_AXI_BREADY),
    .S_AXI_RREADY_w(S_AXI_RREADY),
    .S_AXI_WDATA_w(S_AXI_WDATA),
    .S_AXI_WSTRB_w(S_AXI_WSTRB),
    .S_AXI_WVALID_w(S_AXI_WVALID),
    .bus_clk_w(bus_clk),
    .bus_rst_n_w(bus_rst_n_synced),
    .GPIO_LED_w(GPIO_LED),
    .M_AXI_ACP_ARADDR_w(M_AXI_ACP_ARADDR),
    .M_AXI_ACP_ARBURST_w(M_AXI_ACP_ARBURST),
    .M_AXI_ACP_ARCACHE_w(M_AXI_ACP_ARCACHE),
    .M_AXI_ACP_ARLEN_w(M_AXI_ACP_ARLEN),
    .M_AXI_ACP_ARPROT_w(M_AXI_ACP_ARPROT),
    .M_AXI_ACP_ARSIZE_w(M_AXI_ACP_ARSIZE),
    .M_AXI_ACP_ARVALID_w(M_AXI_ACP_ARVALID),
    .M_AXI_ACP_AWADDR_w(M_AXI_ACP_AWADDR),
    .M_AXI_ACP_AWBURST_w(M_AXI_ACP_AWBURST),
    .M_AXI_ACP_AWCACHE_w(M_AXI_ACP_AWCACHE),
    .M_AXI_ACP_AWLEN_w(M_AXI_ACP_AWLEN),
    .M_AXI_ACP_AWPROT_w(M_AXI_ACP_AWPROT),
    .M_AXI_ACP_AWSIZE_w(M_AXI_ACP_AWSIZE),
    .M_AXI_ACP_AWVALID_w(M_AXI_ACP_AWVALID),
    .M_AXI_ACP_BREADY_w(M_AXI_ACP_BREADY),
    .M_AXI_ACP_RREADY_w(M_AXI_ACP_RREADY),
    .M_AXI_ACP_WDATA_w(M_AXI_ACP_WDATA),
    .M_AXI_ACP_WLAST_w(M_AXI_ACP_WLAST),
    .M_AXI_ACP_WSTRB_w(M_AXI_ACP_WSTRB),
    .M_AXI_ACP_WVALID_w(M_AXI_ACP_WVALID),
    .S_AXI_ARREADY_w(S_AXI_ARREADY),
    .S_AXI_AWREADY_w(S_AXI_AWREADY),
    .S_AXI_BRESP_w(S_AXI_BRESP),
    .S_AXI_BVALID_w(S_AXI_BVALID),
    .S_AXI_RDATA_w(S_AXI_RDATA),
    .S_AXI_RRESP_w(S_AXI_RRESP),
    .S_AXI_RVALID_w(S_AXI_RVALID),
    .S_AXI_WREADY_w(S_AXI_WREADY),
    .host_interrupt_w(host_interrupt),
    .quiesce_w(quiesce)
  );
endmodule
