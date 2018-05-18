module xillybus #(
		  parameter C_S_AXI_DATA_WIDTH = 32,
		  parameter C_S_AXI_ADDR_WIDTH = 32,
		  parameter C_M_AXI_ADDR_WIDTH = 32,
		  parameter C_M_AXI_DATA_WIDTH = 64,
		  parameter C_S_AXI_MIN_SIZE = 32'h000001ff,
		  parameter C_USE_WSTRB = 1,
		  parameter C_DPHASE_TIMEOUT = 8,
		  parameter C_BASEADDR = 32'h79c00000,
		  parameter C_HIGHADDR = 32'h79c0ffff,
		  parameter C_SLV_AWIDTH = 32,
		  parameter C_SLV_DWIDTH = 64,
		  parameter C_MAX_BURST_LEN = 256,
		  parameter C_NATIVE_DATA_WIDTH = 64
		  )
  (
   input S_AXI_ACLK,
   input S_AXI_ARESETN,
   output Interrupt,
   input [(C_S_AXI_ADDR_WIDTH-1):0] S_AXI_AWADDR,
   input S_AXI_AWVALID,
   input [(C_S_AXI_DATA_WIDTH-1):0] S_AXI_WDATA,
   input [((C_S_AXI_DATA_WIDTH/8)-1):0] S_AXI_WSTRB,
   input S_AXI_WVALID,
   input S_AXI_BREADY,
   input [(C_S_AXI_ADDR_WIDTH-1):0] S_AXI_ARADDR,
   input S_AXI_ARVALID,
   input S_AXI_RREADY,
   output S_AXI_ARREADY,
   output [(C_S_AXI_DATA_WIDTH-1):0] S_AXI_RDATA,
   output [1:0] S_AXI_RRESP,
   output S_AXI_RVALID,
   output S_AXI_WREADY,
   output [1:0] S_AXI_BRESP,
   output S_AXI_BVALID,
   output S_AXI_AWREADY,
   input m_axi_aclk,
   input m_axi_aresetn,
   input m_axi_arready,
   output m_axi_arvalid,
   output [(C_M_AXI_ADDR_WIDTH-1):0] m_axi_araddr,
   output [3:0] m_axi_arlen,
   output [2:0] m_axi_arsize,
   output [1:0] m_axi_arburst,
   output [2:0] m_axi_arprot,
   output [3:0] m_axi_arcache,
   output m_axi_rready,
   input m_axi_rvalid,
   input [(C_M_AXI_DATA_WIDTH-1):0] m_axi_rdata,
   input [1:0] m_axi_rresp,
   input m_axi_rlast,
   input m_axi_awready,
   output m_axi_awvalid,
   output [(C_M_AXI_ADDR_WIDTH-1):0] m_axi_awaddr,
   output [3:0] m_axi_awlen,
   output [2:0] m_axi_awsize,
   output [1:0] m_axi_awburst,
   output [2:0] m_axi_awprot,
   output [3:0] m_axi_awcache,
   input m_axi_wready,
   output m_axi_wvalid,
   output [(C_M_AXI_DATA_WIDTH-1):0] m_axi_wdata,
   output [((C_M_AXI_DATA_WIDTH/8)-1):0] m_axi_wstrb,
   output m_axi_wlast,
   output m_axi_bready,
   input m_axi_bvalid,
   input [1:0] m_axi_bresp,
   
   output xillybus_bus_clk,
   output reg xillybus_bus_rst_n,
   output [(C_S_AXI_ADDR_WIDTH-1):0] xillybus_S_AXI_AWADDR,
   output xillybus_S_AXI_AWVALID,
   output [(C_S_AXI_DATA_WIDTH-1):0] xillybus_S_AXI_WDATA,
   output [((C_S_AXI_DATA_WIDTH/8)-1):0] xillybus_S_AXI_WSTRB,
   output xillybus_S_AXI_WVALID,
   output xillybus_S_AXI_BREADY,
   output [(C_S_AXI_ADDR_WIDTH-1):0] xillybus_S_AXI_ARADDR,
   output xillybus_S_AXI_ARVALID,
   output xillybus_S_AXI_RREADY,
   input xillybus_S_AXI_ARREADY,
   input [(C_S_AXI_DATA_WIDTH-1):0] xillybus_S_AXI_RDATA,
   input [1:0] xillybus_S_AXI_RRESP,
   input xillybus_S_AXI_RVALID,
   input xillybus_S_AXI_WREADY,
   input [1:0] xillybus_S_AXI_BRESP,
   input xillybus_S_AXI_BVALID,
   input xillybus_S_AXI_AWREADY,
   output xillybus_M_AXI_ARREADY,
   input xillybus_M_AXI_ARVALID,
   input [(C_M_AXI_ADDR_WIDTH-1):0] xillybus_M_AXI_ARADDR,
   input [3:0] xillybus_M_AXI_ARLEN,
   input [2:0] xillybus_M_AXI_ARSIZE,
   input [1:0] xillybus_M_AXI_ARBURST,
   input [2:0] xillybus_M_AXI_ARPROT,
   input [3:0] xillybus_M_AXI_ARCACHE,
   input xillybus_M_AXI_RREADY,
   output xillybus_M_AXI_RVALID,
   output [(C_M_AXI_DATA_WIDTH-1):0] xillybus_M_AXI_RDATA,
   output [1:0] xillybus_M_AXI_RRESP,
   output xillybus_M_AXI_RLAST,
   output xillybus_M_AXI_AWREADY,
   input xillybus_M_AXI_AWVALID,
   input [(C_M_AXI_ADDR_WIDTH-1):0] xillybus_M_AXI_AWADDR,
   input [3:0] xillybus_M_AXI_AWLEN,
   input [2:0] xillybus_M_AXI_AWSIZE,
   input [1:0] xillybus_M_AXI_AWBURST,
   input [2:0] xillybus_M_AXI_AWPROT,
   input [3:0] xillybus_M_AXI_AWCACHE,
   output xillybus_M_AXI_WREADY,
   input xillybus_M_AXI_WVALID,
   input [(C_M_AXI_DATA_WIDTH-1):0] xillybus_M_AXI_WDATA,
   input [((C_M_AXI_DATA_WIDTH/8)-1):0] xillybus_M_AXI_WSTRB,
   input xillybus_M_AXI_WLAST,
   input xillybus_M_AXI_BREADY,
   output xillybus_M_AXI_BVALID,
   output [1:0] xillybus_M_AXI_BRESP,
   input xillybus_host_interrupt
   );

   reg 	 rst_sync;

   // S_AXI_ARESETN is possibly completely asyncronous to anything, while
   // bus_rst is expected to be synchronous w.r.t. to bus_clk. So it's synced.
   
   always @(posedge S_AXI_ACLK)
     begin
	xillybus_bus_rst_n <= rst_sync;
	rst_sync <= S_AXI_ARESETN;
     end

   // This module merely connects the AXI signals to the Xillybus core, which
   // is external to the processor. This makes it possible to swap the Xillybus
   // core without reimplementing the processor.

   assign xillybus_bus_clk = S_AXI_ACLK ;
   assign xillybus_S_AXI_AWADDR = S_AXI_AWADDR ;
   assign xillybus_S_AXI_AWVALID = S_AXI_AWVALID ;
   assign xillybus_S_AXI_WDATA = S_AXI_WDATA ;
   assign xillybus_S_AXI_WSTRB = S_AXI_WSTRB ;
   assign xillybus_S_AXI_WVALID = S_AXI_WVALID ;
   assign xillybus_S_AXI_BREADY = S_AXI_BREADY ;
   assign xillybus_S_AXI_ARADDR = S_AXI_ARADDR ;
   assign xillybus_S_AXI_ARVALID = S_AXI_ARVALID ;
   assign xillybus_S_AXI_RREADY = S_AXI_RREADY ;
   assign S_AXI_ARREADY = xillybus_S_AXI_ARREADY ;
   assign S_AXI_RDATA = xillybus_S_AXI_RDATA ;
   assign S_AXI_RRESP = xillybus_S_AXI_RRESP ;
   assign S_AXI_RVALID = xillybus_S_AXI_RVALID ;
   assign S_AXI_WREADY = xillybus_S_AXI_WREADY ;
   assign S_AXI_BRESP = xillybus_S_AXI_BRESP ;
   assign S_AXI_BVALID = xillybus_S_AXI_BVALID ;
   assign S_AXI_AWREADY = xillybus_S_AXI_AWREADY ;
   assign xillybus_M_AXI_ACLK = m_axi_aclk ;
   assign xillybus_M_AXI_ARESETN = m_axi_aresetn ;
   assign xillybus_M_AXI_ARREADY = m_axi_arready ;
   assign m_axi_arvalid = xillybus_M_AXI_ARVALID ;
   assign m_axi_araddr = xillybus_M_AXI_ARADDR ;
   assign m_axi_arlen = xillybus_M_AXI_ARLEN ;
   assign m_axi_arsize = xillybus_M_AXI_ARSIZE ;
   assign m_axi_arburst = xillybus_M_AXI_ARBURST ;
   assign m_axi_arprot = xillybus_M_AXI_ARPROT ;
   assign m_axi_arcache = xillybus_M_AXI_ARCACHE ;
   assign m_axi_rready = xillybus_M_AXI_RREADY ;
   assign xillybus_M_AXI_RVALID = m_axi_rvalid ;
   assign xillybus_M_AXI_RDATA = m_axi_rdata ;
   assign xillybus_M_AXI_RRESP = m_axi_rresp ;
   assign xillybus_M_AXI_RLAST = m_axi_rlast ;
   assign xillybus_M_AXI_AWREADY = m_axi_awready ;
   assign m_axi_awvalid = xillybus_M_AXI_AWVALID ;
   assign m_axi_awaddr = xillybus_M_AXI_AWADDR ;
   assign m_axi_awlen = xillybus_M_AXI_AWLEN ;
   assign m_axi_awsize = xillybus_M_AXI_AWSIZE ;
   assign m_axi_awburst = xillybus_M_AXI_AWBURST ;
   assign m_axi_awprot = xillybus_M_AXI_AWPROT ;
   assign m_axi_awcache = xillybus_M_AXI_AWCACHE ;
   assign xillybus_M_AXI_WREADY = m_axi_wready ;
   assign m_axi_wvalid = xillybus_M_AXI_WVALID ;
   assign m_axi_wdata = xillybus_M_AXI_WDATA ;
   assign m_axi_wstrb = xillybus_M_AXI_WSTRB ;
   assign m_axi_wlast = xillybus_M_AXI_WLAST ;
   assign m_axi_bready = xillybus_M_AXI_BREADY ;
   assign xillybus_M_AXI_BVALID = m_axi_bvalid ;
   assign xillybus_M_AXI_BRESP = m_axi_bresp ;
   assign Interrupt = xillybus_host_interrupt;
endmodule
