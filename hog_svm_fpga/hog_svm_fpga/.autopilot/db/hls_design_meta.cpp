#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("in_r_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("in_r_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("in_r_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("out_r_din", 32, hls_out, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("out_r_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("out_r_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
};
const char* HLS_Design_Meta::dut_name = "xillybus_wrapper";
