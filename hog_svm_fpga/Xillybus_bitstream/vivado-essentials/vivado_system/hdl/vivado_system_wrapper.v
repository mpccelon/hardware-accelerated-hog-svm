//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Tue May 15 04:04:48 2018
//Host        : DESKTOP-O713GGV running 64-bit major release  (build 9200)
//Command     : generate_target vivado_system_wrapper.bd
//Design      : vivado_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vivado_system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO_0_tri_io,
    USBIND_0_port_indctl,
    USBIND_0_vbus_pwrfault,
    USBIND_0_vbus_pwrselect,
    clk_in,
    dvi_clk_n,
    dvi_clk_p,
    dvi_d_n,
    dvi_d_p,
    user_addr,
    user_clk,
    user_irq,
    user_rd_data,
    user_rden,
    user_wr_data,
    user_wren,
    user_wstrb,
    vga_blue,
    vga_clk,
    vga_de,
    vga_green,
    vga_hsync,
    vga_red,
    vga_vsync,
    xillybus_M_AXI_araddr,
    xillybus_M_AXI_arburst,
    xillybus_M_AXI_arcache,
    xillybus_M_AXI_arlen,
    xillybus_M_AXI_arprot,
    xillybus_M_AXI_arready,
    xillybus_M_AXI_arsize,
    xillybus_M_AXI_arvalid,
    xillybus_M_AXI_awaddr,
    xillybus_M_AXI_awburst,
    xillybus_M_AXI_awcache,
    xillybus_M_AXI_awlen,
    xillybus_M_AXI_awprot,
    xillybus_M_AXI_awready,
    xillybus_M_AXI_awsize,
    xillybus_M_AXI_awvalid,
    xillybus_M_AXI_bready,
    xillybus_M_AXI_bresp,
    xillybus_M_AXI_bvalid,
    xillybus_M_AXI_rdata,
    xillybus_M_AXI_rlast,
    xillybus_M_AXI_rready,
    xillybus_M_AXI_rresp,
    xillybus_M_AXI_rvalid,
    xillybus_M_AXI_wdata,
    xillybus_M_AXI_wlast,
    xillybus_M_AXI_wready,
    xillybus_M_AXI_wstrb,
    xillybus_M_AXI_wvalid,
    xillybus_S_AXI_araddr,
    xillybus_S_AXI_arready,
    xillybus_S_AXI_arvalid,
    xillybus_S_AXI_awaddr,
    xillybus_S_AXI_awready,
    xillybus_S_AXI_awvalid,
    xillybus_S_AXI_bready,
    xillybus_S_AXI_bresp,
    xillybus_S_AXI_bvalid,
    xillybus_S_AXI_rdata,
    xillybus_S_AXI_rready,
    xillybus_S_AXI_rresp,
    xillybus_S_AXI_rvalid,
    xillybus_S_AXI_wdata,
    xillybus_S_AXI_wready,
    xillybus_S_AXI_wstrb,
    xillybus_S_AXI_wvalid,
    xillybus_bus_clk,
    xillybus_bus_rst_n,
    xillybus_host_interrupt);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [55:0]GPIO_0_tri_io;
  output [1:0]USBIND_0_port_indctl;
  input USBIND_0_vbus_pwrfault;
  output USBIND_0_vbus_pwrselect;
  input clk_in;
  output dvi_clk_n;
  output dvi_clk_p;
  output [2:0]dvi_d_n;
  output [2:0]dvi_d_p;
  output [31:0]user_addr;
  output user_clk;
  input user_irq;
  input [31:0]user_rd_data;
  output user_rden;
  output [31:0]user_wr_data;
  output user_wren;
  output [3:0]user_wstrb;
  output [7:0]vga_blue;
  output vga_clk;
  output vga_de;
  output [7:0]vga_green;
  output vga_hsync;
  output [7:0]vga_red;
  output vga_vsync;
  input [31:0]xillybus_M_AXI_araddr;
  input [1:0]xillybus_M_AXI_arburst;
  input [3:0]xillybus_M_AXI_arcache;
  input [3:0]xillybus_M_AXI_arlen;
  input [2:0]xillybus_M_AXI_arprot;
  output xillybus_M_AXI_arready;
  input [2:0]xillybus_M_AXI_arsize;
  input xillybus_M_AXI_arvalid;
  input [31:0]xillybus_M_AXI_awaddr;
  input [1:0]xillybus_M_AXI_awburst;
  input [3:0]xillybus_M_AXI_awcache;
  input [3:0]xillybus_M_AXI_awlen;
  input [2:0]xillybus_M_AXI_awprot;
  output xillybus_M_AXI_awready;
  input [2:0]xillybus_M_AXI_awsize;
  input xillybus_M_AXI_awvalid;
  input xillybus_M_AXI_bready;
  output [1:0]xillybus_M_AXI_bresp;
  output xillybus_M_AXI_bvalid;
  output [63:0]xillybus_M_AXI_rdata;
  output xillybus_M_AXI_rlast;
  input xillybus_M_AXI_rready;
  output [1:0]xillybus_M_AXI_rresp;
  output xillybus_M_AXI_rvalid;
  input [63:0]xillybus_M_AXI_wdata;
  input xillybus_M_AXI_wlast;
  output xillybus_M_AXI_wready;
  input [7:0]xillybus_M_AXI_wstrb;
  input xillybus_M_AXI_wvalid;
  output [31:0]xillybus_S_AXI_araddr;
  input xillybus_S_AXI_arready;
  output xillybus_S_AXI_arvalid;
  output [31:0]xillybus_S_AXI_awaddr;
  input xillybus_S_AXI_awready;
  output xillybus_S_AXI_awvalid;
  output xillybus_S_AXI_bready;
  input [1:0]xillybus_S_AXI_bresp;
  input xillybus_S_AXI_bvalid;
  input [31:0]xillybus_S_AXI_rdata;
  output xillybus_S_AXI_rready;
  input [1:0]xillybus_S_AXI_rresp;
  input xillybus_S_AXI_rvalid;
  output [31:0]xillybus_S_AXI_wdata;
  input xillybus_S_AXI_wready;
  output [3:0]xillybus_S_AXI_wstrb;
  output xillybus_S_AXI_wvalid;
  output xillybus_bus_clk;
  output xillybus_bus_rst_n;
  input xillybus_host_interrupt;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]GPIO_0_tri_i_0;
  wire [1:1]GPIO_0_tri_i_1;
  wire [10:10]GPIO_0_tri_i_10;
  wire [11:11]GPIO_0_tri_i_11;
  wire [12:12]GPIO_0_tri_i_12;
  wire [13:13]GPIO_0_tri_i_13;
  wire [14:14]GPIO_0_tri_i_14;
  wire [15:15]GPIO_0_tri_i_15;
  wire [16:16]GPIO_0_tri_i_16;
  wire [17:17]GPIO_0_tri_i_17;
  wire [18:18]GPIO_0_tri_i_18;
  wire [19:19]GPIO_0_tri_i_19;
  wire [2:2]GPIO_0_tri_i_2;
  wire [20:20]GPIO_0_tri_i_20;
  wire [21:21]GPIO_0_tri_i_21;
  wire [22:22]GPIO_0_tri_i_22;
  wire [23:23]GPIO_0_tri_i_23;
  wire [24:24]GPIO_0_tri_i_24;
  wire [25:25]GPIO_0_tri_i_25;
  wire [26:26]GPIO_0_tri_i_26;
  wire [27:27]GPIO_0_tri_i_27;
  wire [28:28]GPIO_0_tri_i_28;
  wire [29:29]GPIO_0_tri_i_29;
  wire [3:3]GPIO_0_tri_i_3;
  wire [30:30]GPIO_0_tri_i_30;
  wire [31:31]GPIO_0_tri_i_31;
  wire [32:32]GPIO_0_tri_i_32;
  wire [33:33]GPIO_0_tri_i_33;
  wire [34:34]GPIO_0_tri_i_34;
  wire [35:35]GPIO_0_tri_i_35;
  wire [36:36]GPIO_0_tri_i_36;
  wire [37:37]GPIO_0_tri_i_37;
  wire [38:38]GPIO_0_tri_i_38;
  wire [39:39]GPIO_0_tri_i_39;
  wire [4:4]GPIO_0_tri_i_4;
  wire [40:40]GPIO_0_tri_i_40;
  wire [41:41]GPIO_0_tri_i_41;
  wire [42:42]GPIO_0_tri_i_42;
  wire [43:43]GPIO_0_tri_i_43;
  wire [44:44]GPIO_0_tri_i_44;
  wire [45:45]GPIO_0_tri_i_45;
  wire [46:46]GPIO_0_tri_i_46;
  wire [47:47]GPIO_0_tri_i_47;
  wire [48:48]GPIO_0_tri_i_48;
  wire [49:49]GPIO_0_tri_i_49;
  wire [5:5]GPIO_0_tri_i_5;
  wire [50:50]GPIO_0_tri_i_50;
  wire [51:51]GPIO_0_tri_i_51;
  wire [52:52]GPIO_0_tri_i_52;
  wire [53:53]GPIO_0_tri_i_53;
  wire [54:54]GPIO_0_tri_i_54;
  wire [55:55]GPIO_0_tri_i_55;
  wire [6:6]GPIO_0_tri_i_6;
  wire [7:7]GPIO_0_tri_i_7;
  wire [8:8]GPIO_0_tri_i_8;
  wire [9:9]GPIO_0_tri_i_9;
  wire [0:0]GPIO_0_tri_io_0;
  wire [1:1]GPIO_0_tri_io_1;
  wire [10:10]GPIO_0_tri_io_10;
  wire [11:11]GPIO_0_tri_io_11;
  wire [12:12]GPIO_0_tri_io_12;
  wire [13:13]GPIO_0_tri_io_13;
  wire [14:14]GPIO_0_tri_io_14;
  wire [15:15]GPIO_0_tri_io_15;
  wire [16:16]GPIO_0_tri_io_16;
  wire [17:17]GPIO_0_tri_io_17;
  wire [18:18]GPIO_0_tri_io_18;
  wire [19:19]GPIO_0_tri_io_19;
  wire [2:2]GPIO_0_tri_io_2;
  wire [20:20]GPIO_0_tri_io_20;
  wire [21:21]GPIO_0_tri_io_21;
  wire [22:22]GPIO_0_tri_io_22;
  wire [23:23]GPIO_0_tri_io_23;
  wire [24:24]GPIO_0_tri_io_24;
  wire [25:25]GPIO_0_tri_io_25;
  wire [26:26]GPIO_0_tri_io_26;
  wire [27:27]GPIO_0_tri_io_27;
  wire [28:28]GPIO_0_tri_io_28;
  wire [29:29]GPIO_0_tri_io_29;
  wire [3:3]GPIO_0_tri_io_3;
  wire [30:30]GPIO_0_tri_io_30;
  wire [31:31]GPIO_0_tri_io_31;
  wire [32:32]GPIO_0_tri_io_32;
  wire [33:33]GPIO_0_tri_io_33;
  wire [34:34]GPIO_0_tri_io_34;
  wire [35:35]GPIO_0_tri_io_35;
  wire [36:36]GPIO_0_tri_io_36;
  wire [37:37]GPIO_0_tri_io_37;
  wire [38:38]GPIO_0_tri_io_38;
  wire [39:39]GPIO_0_tri_io_39;
  wire [4:4]GPIO_0_tri_io_4;
  wire [40:40]GPIO_0_tri_io_40;
  wire [41:41]GPIO_0_tri_io_41;
  wire [42:42]GPIO_0_tri_io_42;
  wire [43:43]GPIO_0_tri_io_43;
  wire [44:44]GPIO_0_tri_io_44;
  wire [45:45]GPIO_0_tri_io_45;
  wire [46:46]GPIO_0_tri_io_46;
  wire [47:47]GPIO_0_tri_io_47;
  wire [48:48]GPIO_0_tri_io_48;
  wire [49:49]GPIO_0_tri_io_49;
  wire [5:5]GPIO_0_tri_io_5;
  wire [50:50]GPIO_0_tri_io_50;
  wire [51:51]GPIO_0_tri_io_51;
  wire [52:52]GPIO_0_tri_io_52;
  wire [53:53]GPIO_0_tri_io_53;
  wire [54:54]GPIO_0_tri_io_54;
  wire [55:55]GPIO_0_tri_io_55;
  wire [6:6]GPIO_0_tri_io_6;
  wire [7:7]GPIO_0_tri_io_7;
  wire [8:8]GPIO_0_tri_io_8;
  wire [9:9]GPIO_0_tri_io_9;
  wire [0:0]GPIO_0_tri_o_0;
  wire [1:1]GPIO_0_tri_o_1;
  wire [10:10]GPIO_0_tri_o_10;
  wire [11:11]GPIO_0_tri_o_11;
  wire [12:12]GPIO_0_tri_o_12;
  wire [13:13]GPIO_0_tri_o_13;
  wire [14:14]GPIO_0_tri_o_14;
  wire [15:15]GPIO_0_tri_o_15;
  wire [16:16]GPIO_0_tri_o_16;
  wire [17:17]GPIO_0_tri_o_17;
  wire [18:18]GPIO_0_tri_o_18;
  wire [19:19]GPIO_0_tri_o_19;
  wire [2:2]GPIO_0_tri_o_2;
  wire [20:20]GPIO_0_tri_o_20;
  wire [21:21]GPIO_0_tri_o_21;
  wire [22:22]GPIO_0_tri_o_22;
  wire [23:23]GPIO_0_tri_o_23;
  wire [24:24]GPIO_0_tri_o_24;
  wire [25:25]GPIO_0_tri_o_25;
  wire [26:26]GPIO_0_tri_o_26;
  wire [27:27]GPIO_0_tri_o_27;
  wire [28:28]GPIO_0_tri_o_28;
  wire [29:29]GPIO_0_tri_o_29;
  wire [3:3]GPIO_0_tri_o_3;
  wire [30:30]GPIO_0_tri_o_30;
  wire [31:31]GPIO_0_tri_o_31;
  wire [32:32]GPIO_0_tri_o_32;
  wire [33:33]GPIO_0_tri_o_33;
  wire [34:34]GPIO_0_tri_o_34;
  wire [35:35]GPIO_0_tri_o_35;
  wire [36:36]GPIO_0_tri_o_36;
  wire [37:37]GPIO_0_tri_o_37;
  wire [38:38]GPIO_0_tri_o_38;
  wire [39:39]GPIO_0_tri_o_39;
  wire [4:4]GPIO_0_tri_o_4;
  wire [40:40]GPIO_0_tri_o_40;
  wire [41:41]GPIO_0_tri_o_41;
  wire [42:42]GPIO_0_tri_o_42;
  wire [43:43]GPIO_0_tri_o_43;
  wire [44:44]GPIO_0_tri_o_44;
  wire [45:45]GPIO_0_tri_o_45;
  wire [46:46]GPIO_0_tri_o_46;
  wire [47:47]GPIO_0_tri_o_47;
  wire [48:48]GPIO_0_tri_o_48;
  wire [49:49]GPIO_0_tri_o_49;
  wire [5:5]GPIO_0_tri_o_5;
  wire [50:50]GPIO_0_tri_o_50;
  wire [51:51]GPIO_0_tri_o_51;
  wire [52:52]GPIO_0_tri_o_52;
  wire [53:53]GPIO_0_tri_o_53;
  wire [54:54]GPIO_0_tri_o_54;
  wire [55:55]GPIO_0_tri_o_55;
  wire [6:6]GPIO_0_tri_o_6;
  wire [7:7]GPIO_0_tri_o_7;
  wire [8:8]GPIO_0_tri_o_8;
  wire [9:9]GPIO_0_tri_o_9;
  wire [0:0]GPIO_0_tri_t_0;
  wire [1:1]GPIO_0_tri_t_1;
  wire [10:10]GPIO_0_tri_t_10;
  wire [11:11]GPIO_0_tri_t_11;
  wire [12:12]GPIO_0_tri_t_12;
  wire [13:13]GPIO_0_tri_t_13;
  wire [14:14]GPIO_0_tri_t_14;
  wire [15:15]GPIO_0_tri_t_15;
  wire [16:16]GPIO_0_tri_t_16;
  wire [17:17]GPIO_0_tri_t_17;
  wire [18:18]GPIO_0_tri_t_18;
  wire [19:19]GPIO_0_tri_t_19;
  wire [2:2]GPIO_0_tri_t_2;
  wire [20:20]GPIO_0_tri_t_20;
  wire [21:21]GPIO_0_tri_t_21;
  wire [22:22]GPIO_0_tri_t_22;
  wire [23:23]GPIO_0_tri_t_23;
  wire [24:24]GPIO_0_tri_t_24;
  wire [25:25]GPIO_0_tri_t_25;
  wire [26:26]GPIO_0_tri_t_26;
  wire [27:27]GPIO_0_tri_t_27;
  wire [28:28]GPIO_0_tri_t_28;
  wire [29:29]GPIO_0_tri_t_29;
  wire [3:3]GPIO_0_tri_t_3;
  wire [30:30]GPIO_0_tri_t_30;
  wire [31:31]GPIO_0_tri_t_31;
  wire [32:32]GPIO_0_tri_t_32;
  wire [33:33]GPIO_0_tri_t_33;
  wire [34:34]GPIO_0_tri_t_34;
  wire [35:35]GPIO_0_tri_t_35;
  wire [36:36]GPIO_0_tri_t_36;
  wire [37:37]GPIO_0_tri_t_37;
  wire [38:38]GPIO_0_tri_t_38;
  wire [39:39]GPIO_0_tri_t_39;
  wire [4:4]GPIO_0_tri_t_4;
  wire [40:40]GPIO_0_tri_t_40;
  wire [41:41]GPIO_0_tri_t_41;
  wire [42:42]GPIO_0_tri_t_42;
  wire [43:43]GPIO_0_tri_t_43;
  wire [44:44]GPIO_0_tri_t_44;
  wire [45:45]GPIO_0_tri_t_45;
  wire [46:46]GPIO_0_tri_t_46;
  wire [47:47]GPIO_0_tri_t_47;
  wire [48:48]GPIO_0_tri_t_48;
  wire [49:49]GPIO_0_tri_t_49;
  wire [5:5]GPIO_0_tri_t_5;
  wire [50:50]GPIO_0_tri_t_50;
  wire [51:51]GPIO_0_tri_t_51;
  wire [52:52]GPIO_0_tri_t_52;
  wire [53:53]GPIO_0_tri_t_53;
  wire [54:54]GPIO_0_tri_t_54;
  wire [55:55]GPIO_0_tri_t_55;
  wire [6:6]GPIO_0_tri_t_6;
  wire [7:7]GPIO_0_tri_t_7;
  wire [8:8]GPIO_0_tri_t_8;
  wire [9:9]GPIO_0_tri_t_9;
  wire [1:0]USBIND_0_port_indctl;
  wire USBIND_0_vbus_pwrfault;
  wire USBIND_0_vbus_pwrselect;
  wire clk_in;
  wire dvi_clk_n;
  wire dvi_clk_p;
  wire [2:0]dvi_d_n;
  wire [2:0]dvi_d_p;
  wire [31:0]user_addr;
  wire user_clk;
  wire user_irq;
  wire [31:0]user_rd_data;
  wire user_rden;
  wire [31:0]user_wr_data;
  wire user_wren;
  wire [3:0]user_wstrb;
  wire [7:0]vga_blue;
  wire vga_clk;
  wire vga_de;
  wire [7:0]vga_green;
  wire vga_hsync;
  wire [7:0]vga_red;
  wire vga_vsync;
  wire [31:0]xillybus_M_AXI_araddr;
  wire [1:0]xillybus_M_AXI_arburst;
  wire [3:0]xillybus_M_AXI_arcache;
  wire [3:0]xillybus_M_AXI_arlen;
  wire [2:0]xillybus_M_AXI_arprot;
  wire xillybus_M_AXI_arready;
  wire [2:0]xillybus_M_AXI_arsize;
  wire xillybus_M_AXI_arvalid;
  wire [31:0]xillybus_M_AXI_awaddr;
  wire [1:0]xillybus_M_AXI_awburst;
  wire [3:0]xillybus_M_AXI_awcache;
  wire [3:0]xillybus_M_AXI_awlen;
  wire [2:0]xillybus_M_AXI_awprot;
  wire xillybus_M_AXI_awready;
  wire [2:0]xillybus_M_AXI_awsize;
  wire xillybus_M_AXI_awvalid;
  wire xillybus_M_AXI_bready;
  wire [1:0]xillybus_M_AXI_bresp;
  wire xillybus_M_AXI_bvalid;
  wire [63:0]xillybus_M_AXI_rdata;
  wire xillybus_M_AXI_rlast;
  wire xillybus_M_AXI_rready;
  wire [1:0]xillybus_M_AXI_rresp;
  wire xillybus_M_AXI_rvalid;
  wire [63:0]xillybus_M_AXI_wdata;
  wire xillybus_M_AXI_wlast;
  wire xillybus_M_AXI_wready;
  wire [7:0]xillybus_M_AXI_wstrb;
  wire xillybus_M_AXI_wvalid;
  wire [31:0]xillybus_S_AXI_araddr;
  wire xillybus_S_AXI_arready;
  wire xillybus_S_AXI_arvalid;
  wire [31:0]xillybus_S_AXI_awaddr;
  wire xillybus_S_AXI_awready;
  wire xillybus_S_AXI_awvalid;
  wire xillybus_S_AXI_bready;
  wire [1:0]xillybus_S_AXI_bresp;
  wire xillybus_S_AXI_bvalid;
  wire [31:0]xillybus_S_AXI_rdata;
  wire xillybus_S_AXI_rready;
  wire [1:0]xillybus_S_AXI_rresp;
  wire xillybus_S_AXI_rvalid;
  wire [31:0]xillybus_S_AXI_wdata;
  wire xillybus_S_AXI_wready;
  wire [3:0]xillybus_S_AXI_wstrb;
  wire xillybus_S_AXI_wvalid;
  wire xillybus_bus_clk;
  wire xillybus_bus_rst_n;
  wire xillybus_host_interrupt;

  IOBUF GPIO_0_tri_iobuf_0
       (.I(GPIO_0_tri_o_0),
        .IO(GPIO_0_tri_io[0]),
        .O(GPIO_0_tri_i_0),
        .T(GPIO_0_tri_t_0));
  IOBUF GPIO_0_tri_iobuf_1
       (.I(GPIO_0_tri_o_1),
        .IO(GPIO_0_tri_io[1]),
        .O(GPIO_0_tri_i_1),
        .T(GPIO_0_tri_t_1));
  IOBUF GPIO_0_tri_iobuf_10
       (.I(GPIO_0_tri_o_10),
        .IO(GPIO_0_tri_io[10]),
        .O(GPIO_0_tri_i_10),
        .T(GPIO_0_tri_t_10));
  IOBUF GPIO_0_tri_iobuf_11
       (.I(GPIO_0_tri_o_11),
        .IO(GPIO_0_tri_io[11]),
        .O(GPIO_0_tri_i_11),
        .T(GPIO_0_tri_t_11));
  IOBUF GPIO_0_tri_iobuf_12
       (.I(GPIO_0_tri_o_12),
        .IO(GPIO_0_tri_io[12]),
        .O(GPIO_0_tri_i_12),
        .T(GPIO_0_tri_t_12));
  IOBUF GPIO_0_tri_iobuf_13
       (.I(GPIO_0_tri_o_13),
        .IO(GPIO_0_tri_io[13]),
        .O(GPIO_0_tri_i_13),
        .T(GPIO_0_tri_t_13));
  IOBUF GPIO_0_tri_iobuf_14
       (.I(GPIO_0_tri_o_14),
        .IO(GPIO_0_tri_io[14]),
        .O(GPIO_0_tri_i_14),
        .T(GPIO_0_tri_t_14));
  IOBUF GPIO_0_tri_iobuf_15
       (.I(GPIO_0_tri_o_15),
        .IO(GPIO_0_tri_io[15]),
        .O(GPIO_0_tri_i_15),
        .T(GPIO_0_tri_t_15));
  IOBUF GPIO_0_tri_iobuf_16
       (.I(GPIO_0_tri_o_16),
        .IO(GPIO_0_tri_io[16]),
        .O(GPIO_0_tri_i_16),
        .T(GPIO_0_tri_t_16));
  IOBUF GPIO_0_tri_iobuf_17
       (.I(GPIO_0_tri_o_17),
        .IO(GPIO_0_tri_io[17]),
        .O(GPIO_0_tri_i_17),
        .T(GPIO_0_tri_t_17));
  IOBUF GPIO_0_tri_iobuf_18
       (.I(GPIO_0_tri_o_18),
        .IO(GPIO_0_tri_io[18]),
        .O(GPIO_0_tri_i_18),
        .T(GPIO_0_tri_t_18));
  IOBUF GPIO_0_tri_iobuf_19
       (.I(GPIO_0_tri_o_19),
        .IO(GPIO_0_tri_io[19]),
        .O(GPIO_0_tri_i_19),
        .T(GPIO_0_tri_t_19));
  IOBUF GPIO_0_tri_iobuf_2
       (.I(GPIO_0_tri_o_2),
        .IO(GPIO_0_tri_io[2]),
        .O(GPIO_0_tri_i_2),
        .T(GPIO_0_tri_t_2));
  IOBUF GPIO_0_tri_iobuf_20
       (.I(GPIO_0_tri_o_20),
        .IO(GPIO_0_tri_io[20]),
        .O(GPIO_0_tri_i_20),
        .T(GPIO_0_tri_t_20));
  IOBUF GPIO_0_tri_iobuf_21
       (.I(GPIO_0_tri_o_21),
        .IO(GPIO_0_tri_io[21]),
        .O(GPIO_0_tri_i_21),
        .T(GPIO_0_tri_t_21));
  IOBUF GPIO_0_tri_iobuf_22
       (.I(GPIO_0_tri_o_22),
        .IO(GPIO_0_tri_io[22]),
        .O(GPIO_0_tri_i_22),
        .T(GPIO_0_tri_t_22));
  IOBUF GPIO_0_tri_iobuf_23
       (.I(GPIO_0_tri_o_23),
        .IO(GPIO_0_tri_io[23]),
        .O(GPIO_0_tri_i_23),
        .T(GPIO_0_tri_t_23));
  IOBUF GPIO_0_tri_iobuf_24
       (.I(GPIO_0_tri_o_24),
        .IO(GPIO_0_tri_io[24]),
        .O(GPIO_0_tri_i_24),
        .T(GPIO_0_tri_t_24));
  IOBUF GPIO_0_tri_iobuf_25
       (.I(GPIO_0_tri_o_25),
        .IO(GPIO_0_tri_io[25]),
        .O(GPIO_0_tri_i_25),
        .T(GPIO_0_tri_t_25));
  IOBUF GPIO_0_tri_iobuf_26
       (.I(GPIO_0_tri_o_26),
        .IO(GPIO_0_tri_io[26]),
        .O(GPIO_0_tri_i_26),
        .T(GPIO_0_tri_t_26));
  IOBUF GPIO_0_tri_iobuf_27
       (.I(GPIO_0_tri_o_27),
        .IO(GPIO_0_tri_io[27]),
        .O(GPIO_0_tri_i_27),
        .T(GPIO_0_tri_t_27));
  IOBUF GPIO_0_tri_iobuf_28
       (.I(GPIO_0_tri_o_28),
        .IO(GPIO_0_tri_io[28]),
        .O(GPIO_0_tri_i_28),
        .T(GPIO_0_tri_t_28));
  IOBUF GPIO_0_tri_iobuf_29
       (.I(GPIO_0_tri_o_29),
        .IO(GPIO_0_tri_io[29]),
        .O(GPIO_0_tri_i_29),
        .T(GPIO_0_tri_t_29));
  IOBUF GPIO_0_tri_iobuf_3
       (.I(GPIO_0_tri_o_3),
        .IO(GPIO_0_tri_io[3]),
        .O(GPIO_0_tri_i_3),
        .T(GPIO_0_tri_t_3));
  IOBUF GPIO_0_tri_iobuf_30
       (.I(GPIO_0_tri_o_30),
        .IO(GPIO_0_tri_io[30]),
        .O(GPIO_0_tri_i_30),
        .T(GPIO_0_tri_t_30));
  IOBUF GPIO_0_tri_iobuf_31
       (.I(GPIO_0_tri_o_31),
        .IO(GPIO_0_tri_io[31]),
        .O(GPIO_0_tri_i_31),
        .T(GPIO_0_tri_t_31));
  IOBUF GPIO_0_tri_iobuf_32
       (.I(GPIO_0_tri_o_32),
        .IO(GPIO_0_tri_io[32]),
        .O(GPIO_0_tri_i_32),
        .T(GPIO_0_tri_t_32));
  IOBUF GPIO_0_tri_iobuf_33
       (.I(GPIO_0_tri_o_33),
        .IO(GPIO_0_tri_io[33]),
        .O(GPIO_0_tri_i_33),
        .T(GPIO_0_tri_t_33));
  IOBUF GPIO_0_tri_iobuf_34
       (.I(GPIO_0_tri_o_34),
        .IO(GPIO_0_tri_io[34]),
        .O(GPIO_0_tri_i_34),
        .T(GPIO_0_tri_t_34));
  IOBUF GPIO_0_tri_iobuf_35
       (.I(GPIO_0_tri_o_35),
        .IO(GPIO_0_tri_io[35]),
        .O(GPIO_0_tri_i_35),
        .T(GPIO_0_tri_t_35));
  IOBUF GPIO_0_tri_iobuf_36
       (.I(GPIO_0_tri_o_36),
        .IO(GPIO_0_tri_io[36]),
        .O(GPIO_0_tri_i_36),
        .T(GPIO_0_tri_t_36));
  IOBUF GPIO_0_tri_iobuf_37
       (.I(GPIO_0_tri_o_37),
        .IO(GPIO_0_tri_io[37]),
        .O(GPIO_0_tri_i_37),
        .T(GPIO_0_tri_t_37));
  IOBUF GPIO_0_tri_iobuf_38
       (.I(GPIO_0_tri_o_38),
        .IO(GPIO_0_tri_io[38]),
        .O(GPIO_0_tri_i_38),
        .T(GPIO_0_tri_t_38));
  IOBUF GPIO_0_tri_iobuf_39
       (.I(GPIO_0_tri_o_39),
        .IO(GPIO_0_tri_io[39]),
        .O(GPIO_0_tri_i_39),
        .T(GPIO_0_tri_t_39));
  IOBUF GPIO_0_tri_iobuf_4
       (.I(GPIO_0_tri_o_4),
        .IO(GPIO_0_tri_io[4]),
        .O(GPIO_0_tri_i_4),
        .T(GPIO_0_tri_t_4));
  IOBUF GPIO_0_tri_iobuf_40
       (.I(GPIO_0_tri_o_40),
        .IO(GPIO_0_tri_io[40]),
        .O(GPIO_0_tri_i_40),
        .T(GPIO_0_tri_t_40));
  IOBUF GPIO_0_tri_iobuf_41
       (.I(GPIO_0_tri_o_41),
        .IO(GPIO_0_tri_io[41]),
        .O(GPIO_0_tri_i_41),
        .T(GPIO_0_tri_t_41));
  IOBUF GPIO_0_tri_iobuf_42
       (.I(GPIO_0_tri_o_42),
        .IO(GPIO_0_tri_io[42]),
        .O(GPIO_0_tri_i_42),
        .T(GPIO_0_tri_t_42));
  IOBUF GPIO_0_tri_iobuf_43
       (.I(GPIO_0_tri_o_43),
        .IO(GPIO_0_tri_io[43]),
        .O(GPIO_0_tri_i_43),
        .T(GPIO_0_tri_t_43));
  IOBUF GPIO_0_tri_iobuf_44
       (.I(GPIO_0_tri_o_44),
        .IO(GPIO_0_tri_io[44]),
        .O(GPIO_0_tri_i_44),
        .T(GPIO_0_tri_t_44));
  IOBUF GPIO_0_tri_iobuf_45
       (.I(GPIO_0_tri_o_45),
        .IO(GPIO_0_tri_io[45]),
        .O(GPIO_0_tri_i_45),
        .T(GPIO_0_tri_t_45));
  IOBUF GPIO_0_tri_iobuf_46
       (.I(GPIO_0_tri_o_46),
        .IO(GPIO_0_tri_io[46]),
        .O(GPIO_0_tri_i_46),
        .T(GPIO_0_tri_t_46));
  IOBUF GPIO_0_tri_iobuf_47
       (.I(GPIO_0_tri_o_47),
        .IO(GPIO_0_tri_io[47]),
        .O(GPIO_0_tri_i_47),
        .T(GPIO_0_tri_t_47));
  IOBUF GPIO_0_tri_iobuf_48
       (.I(GPIO_0_tri_o_48),
        .IO(GPIO_0_tri_io[48]),
        .O(GPIO_0_tri_i_48),
        .T(GPIO_0_tri_t_48));
  IOBUF GPIO_0_tri_iobuf_49
       (.I(GPIO_0_tri_o_49),
        .IO(GPIO_0_tri_io[49]),
        .O(GPIO_0_tri_i_49),
        .T(GPIO_0_tri_t_49));
  IOBUF GPIO_0_tri_iobuf_5
       (.I(GPIO_0_tri_o_5),
        .IO(GPIO_0_tri_io[5]),
        .O(GPIO_0_tri_i_5),
        .T(GPIO_0_tri_t_5));
  IOBUF GPIO_0_tri_iobuf_50
       (.I(GPIO_0_tri_o_50),
        .IO(GPIO_0_tri_io[50]),
        .O(GPIO_0_tri_i_50),
        .T(GPIO_0_tri_t_50));
  IOBUF GPIO_0_tri_iobuf_51
       (.I(GPIO_0_tri_o_51),
        .IO(GPIO_0_tri_io[51]),
        .O(GPIO_0_tri_i_51),
        .T(GPIO_0_tri_t_51));
  IOBUF GPIO_0_tri_iobuf_52
       (.I(GPIO_0_tri_o_52),
        .IO(GPIO_0_tri_io[52]),
        .O(GPIO_0_tri_i_52),
        .T(GPIO_0_tri_t_52));
  IOBUF GPIO_0_tri_iobuf_53
       (.I(GPIO_0_tri_o_53),
        .IO(GPIO_0_tri_io[53]),
        .O(GPIO_0_tri_i_53),
        .T(GPIO_0_tri_t_53));
  IOBUF GPIO_0_tri_iobuf_54
       (.I(GPIO_0_tri_o_54),
        .IO(GPIO_0_tri_io[54]),
        .O(GPIO_0_tri_i_54),
        .T(GPIO_0_tri_t_54));
  IOBUF GPIO_0_tri_iobuf_55
       (.I(GPIO_0_tri_o_55),
        .IO(GPIO_0_tri_io[55]),
        .O(GPIO_0_tri_i_55),
        .T(GPIO_0_tri_t_55));
  IOBUF GPIO_0_tri_iobuf_6
       (.I(GPIO_0_tri_o_6),
        .IO(GPIO_0_tri_io[6]),
        .O(GPIO_0_tri_i_6),
        .T(GPIO_0_tri_t_6));
  IOBUF GPIO_0_tri_iobuf_7
       (.I(GPIO_0_tri_o_7),
        .IO(GPIO_0_tri_io[7]),
        .O(GPIO_0_tri_i_7),
        .T(GPIO_0_tri_t_7));
  IOBUF GPIO_0_tri_iobuf_8
       (.I(GPIO_0_tri_o_8),
        .IO(GPIO_0_tri_io[8]),
        .O(GPIO_0_tri_i_8),
        .T(GPIO_0_tri_t_8));
  IOBUF GPIO_0_tri_iobuf_9
       (.I(GPIO_0_tri_o_9),
        .IO(GPIO_0_tri_io[9]),
        .O(GPIO_0_tri_i_9),
        .T(GPIO_0_tri_t_9));
  vivado_system vivado_system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_0_tri_i({GPIO_0_tri_i_55,GPIO_0_tri_i_54,GPIO_0_tri_i_53,GPIO_0_tri_i_52,GPIO_0_tri_i_51,GPIO_0_tri_i_50,GPIO_0_tri_i_49,GPIO_0_tri_i_48,GPIO_0_tri_i_47,GPIO_0_tri_i_46,GPIO_0_tri_i_45,GPIO_0_tri_i_44,GPIO_0_tri_i_43,GPIO_0_tri_i_42,GPIO_0_tri_i_41,GPIO_0_tri_i_40,GPIO_0_tri_i_39,GPIO_0_tri_i_38,GPIO_0_tri_i_37,GPIO_0_tri_i_36,GPIO_0_tri_i_35,GPIO_0_tri_i_34,GPIO_0_tri_i_33,GPIO_0_tri_i_32,GPIO_0_tri_i_31,GPIO_0_tri_i_30,GPIO_0_tri_i_29,GPIO_0_tri_i_28,GPIO_0_tri_i_27,GPIO_0_tri_i_26,GPIO_0_tri_i_25,GPIO_0_tri_i_24,GPIO_0_tri_i_23,GPIO_0_tri_i_22,GPIO_0_tri_i_21,GPIO_0_tri_i_20,GPIO_0_tri_i_19,GPIO_0_tri_i_18,GPIO_0_tri_i_17,GPIO_0_tri_i_16,GPIO_0_tri_i_15,GPIO_0_tri_i_14,GPIO_0_tri_i_13,GPIO_0_tri_i_12,GPIO_0_tri_i_11,GPIO_0_tri_i_10,GPIO_0_tri_i_9,GPIO_0_tri_i_8,GPIO_0_tri_i_7,GPIO_0_tri_i_6,GPIO_0_tri_i_5,GPIO_0_tri_i_4,GPIO_0_tri_i_3,GPIO_0_tri_i_2,GPIO_0_tri_i_1,GPIO_0_tri_i_0}),
        .GPIO_0_tri_o({GPIO_0_tri_o_55,GPIO_0_tri_o_54,GPIO_0_tri_o_53,GPIO_0_tri_o_52,GPIO_0_tri_o_51,GPIO_0_tri_o_50,GPIO_0_tri_o_49,GPIO_0_tri_o_48,GPIO_0_tri_o_47,GPIO_0_tri_o_46,GPIO_0_tri_o_45,GPIO_0_tri_o_44,GPIO_0_tri_o_43,GPIO_0_tri_o_42,GPIO_0_tri_o_41,GPIO_0_tri_o_40,GPIO_0_tri_o_39,GPIO_0_tri_o_38,GPIO_0_tri_o_37,GPIO_0_tri_o_36,GPIO_0_tri_o_35,GPIO_0_tri_o_34,GPIO_0_tri_o_33,GPIO_0_tri_o_32,GPIO_0_tri_o_31,GPIO_0_tri_o_30,GPIO_0_tri_o_29,GPIO_0_tri_o_28,GPIO_0_tri_o_27,GPIO_0_tri_o_26,GPIO_0_tri_o_25,GPIO_0_tri_o_24,GPIO_0_tri_o_23,GPIO_0_tri_o_22,GPIO_0_tri_o_21,GPIO_0_tri_o_20,GPIO_0_tri_o_19,GPIO_0_tri_o_18,GPIO_0_tri_o_17,GPIO_0_tri_o_16,GPIO_0_tri_o_15,GPIO_0_tri_o_14,GPIO_0_tri_o_13,GPIO_0_tri_o_12,GPIO_0_tri_o_11,GPIO_0_tri_o_10,GPIO_0_tri_o_9,GPIO_0_tri_o_8,GPIO_0_tri_o_7,GPIO_0_tri_o_6,GPIO_0_tri_o_5,GPIO_0_tri_o_4,GPIO_0_tri_o_3,GPIO_0_tri_o_2,GPIO_0_tri_o_1,GPIO_0_tri_o_0}),
        .GPIO_0_tri_t({GPIO_0_tri_t_55,GPIO_0_tri_t_54,GPIO_0_tri_t_53,GPIO_0_tri_t_52,GPIO_0_tri_t_51,GPIO_0_tri_t_50,GPIO_0_tri_t_49,GPIO_0_tri_t_48,GPIO_0_tri_t_47,GPIO_0_tri_t_46,GPIO_0_tri_t_45,GPIO_0_tri_t_44,GPIO_0_tri_t_43,GPIO_0_tri_t_42,GPIO_0_tri_t_41,GPIO_0_tri_t_40,GPIO_0_tri_t_39,GPIO_0_tri_t_38,GPIO_0_tri_t_37,GPIO_0_tri_t_36,GPIO_0_tri_t_35,GPIO_0_tri_t_34,GPIO_0_tri_t_33,GPIO_0_tri_t_32,GPIO_0_tri_t_31,GPIO_0_tri_t_30,GPIO_0_tri_t_29,GPIO_0_tri_t_28,GPIO_0_tri_t_27,GPIO_0_tri_t_26,GPIO_0_tri_t_25,GPIO_0_tri_t_24,GPIO_0_tri_t_23,GPIO_0_tri_t_22,GPIO_0_tri_t_21,GPIO_0_tri_t_20,GPIO_0_tri_t_19,GPIO_0_tri_t_18,GPIO_0_tri_t_17,GPIO_0_tri_t_16,GPIO_0_tri_t_15,GPIO_0_tri_t_14,GPIO_0_tri_t_13,GPIO_0_tri_t_12,GPIO_0_tri_t_11,GPIO_0_tri_t_10,GPIO_0_tri_t_9,GPIO_0_tri_t_8,GPIO_0_tri_t_7,GPIO_0_tri_t_6,GPIO_0_tri_t_5,GPIO_0_tri_t_4,GPIO_0_tri_t_3,GPIO_0_tri_t_2,GPIO_0_tri_t_1,GPIO_0_tri_t_0}),
        .USBIND_0_port_indctl(USBIND_0_port_indctl),
        .USBIND_0_vbus_pwrfault(USBIND_0_vbus_pwrfault),
        .USBIND_0_vbus_pwrselect(USBIND_0_vbus_pwrselect),
        .clk_in(clk_in),
        .dvi_clk_n(dvi_clk_n),
        .dvi_clk_p(dvi_clk_p),
        .dvi_d_n(dvi_d_n),
        .dvi_d_p(dvi_d_p),
        .user_addr(user_addr),
        .user_clk(user_clk),
        .user_irq(user_irq),
        .user_rd_data(user_rd_data),
        .user_rden(user_rden),
        .user_wr_data(user_wr_data),
        .user_wren(user_wren),
        .user_wstrb(user_wstrb),
        .vga_blue(vga_blue),
        .vga_clk(vga_clk),
        .vga_de(vga_de),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync),
        .xillybus_M_AXI_araddr(xillybus_M_AXI_araddr),
        .xillybus_M_AXI_arburst(xillybus_M_AXI_arburst),
        .xillybus_M_AXI_arcache(xillybus_M_AXI_arcache),
        .xillybus_M_AXI_arlen(xillybus_M_AXI_arlen),
        .xillybus_M_AXI_arprot(xillybus_M_AXI_arprot),
        .xillybus_M_AXI_arready(xillybus_M_AXI_arready),
        .xillybus_M_AXI_arsize(xillybus_M_AXI_arsize),
        .xillybus_M_AXI_arvalid(xillybus_M_AXI_arvalid),
        .xillybus_M_AXI_awaddr(xillybus_M_AXI_awaddr),
        .xillybus_M_AXI_awburst(xillybus_M_AXI_awburst),
        .xillybus_M_AXI_awcache(xillybus_M_AXI_awcache),
        .xillybus_M_AXI_awlen(xillybus_M_AXI_awlen),
        .xillybus_M_AXI_awprot(xillybus_M_AXI_awprot),
        .xillybus_M_AXI_awready(xillybus_M_AXI_awready),
        .xillybus_M_AXI_awsize(xillybus_M_AXI_awsize),
        .xillybus_M_AXI_awvalid(xillybus_M_AXI_awvalid),
        .xillybus_M_AXI_bready(xillybus_M_AXI_bready),
        .xillybus_M_AXI_bresp(xillybus_M_AXI_bresp),
        .xillybus_M_AXI_bvalid(xillybus_M_AXI_bvalid),
        .xillybus_M_AXI_rdata(xillybus_M_AXI_rdata),
        .xillybus_M_AXI_rlast(xillybus_M_AXI_rlast),
        .xillybus_M_AXI_rready(xillybus_M_AXI_rready),
        .xillybus_M_AXI_rresp(xillybus_M_AXI_rresp),
        .xillybus_M_AXI_rvalid(xillybus_M_AXI_rvalid),
        .xillybus_M_AXI_wdata(xillybus_M_AXI_wdata),
        .xillybus_M_AXI_wlast(xillybus_M_AXI_wlast),
        .xillybus_M_AXI_wready(xillybus_M_AXI_wready),
        .xillybus_M_AXI_wstrb(xillybus_M_AXI_wstrb),
        .xillybus_M_AXI_wvalid(xillybus_M_AXI_wvalid),
        .xillybus_S_AXI_araddr(xillybus_S_AXI_araddr),
        .xillybus_S_AXI_arready(xillybus_S_AXI_arready),
        .xillybus_S_AXI_arvalid(xillybus_S_AXI_arvalid),
        .xillybus_S_AXI_awaddr(xillybus_S_AXI_awaddr),
        .xillybus_S_AXI_awready(xillybus_S_AXI_awready),
        .xillybus_S_AXI_awvalid(xillybus_S_AXI_awvalid),
        .xillybus_S_AXI_bready(xillybus_S_AXI_bready),
        .xillybus_S_AXI_bresp(xillybus_S_AXI_bresp),
        .xillybus_S_AXI_bvalid(xillybus_S_AXI_bvalid),
        .xillybus_S_AXI_rdata(xillybus_S_AXI_rdata),
        .xillybus_S_AXI_rready(xillybus_S_AXI_rready),
        .xillybus_S_AXI_rresp(xillybus_S_AXI_rresp),
        .xillybus_S_AXI_rvalid(xillybus_S_AXI_rvalid),
        .xillybus_S_AXI_wdata(xillybus_S_AXI_wdata),
        .xillybus_S_AXI_wready(xillybus_S_AXI_wready),
        .xillybus_S_AXI_wstrb(xillybus_S_AXI_wstrb),
        .xillybus_S_AXI_wvalid(xillybus_S_AXI_wvalid),
        .xillybus_bus_clk(xillybus_bus_clk),
        .xillybus_bus_rst_n(xillybus_bus_rst_n),
        .xillybus_host_interrupt(xillybus_host_interrupt));
endmodule
