set moduleName compute_blocks
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {compute_blocks}
set C_modelType { void 0 }
set C_modelArgList {
	{ cells_bin_V int 32 regular {array 576 { 1 1 } 1 1 }  }
	{ cells_mag_sq_V int 64 regular {array 64 { 1 1 } 1 1 }  }
	{ hog float 32 regular {array 1764 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cells_bin_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cells_mag_sq_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "hog", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cells_bin_V_address0 sc_out sc_lv 10 signal 0 } 
	{ cells_bin_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ cells_bin_V_q0 sc_in sc_lv 32 signal 0 } 
	{ cells_bin_V_address1 sc_out sc_lv 10 signal 0 } 
	{ cells_bin_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ cells_bin_V_q1 sc_in sc_lv 32 signal 0 } 
	{ cells_mag_sq_V_address0 sc_out sc_lv 6 signal 1 } 
	{ cells_mag_sq_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ cells_mag_sq_V_q0 sc_in sc_lv 64 signal 1 } 
	{ cells_mag_sq_V_address1 sc_out sc_lv 6 signal 1 } 
	{ cells_mag_sq_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ cells_mag_sq_V_q1 sc_in sc_lv 64 signal 1 } 
	{ hog_address0 sc_out sc_lv 11 signal 2 } 
	{ hog_ce0 sc_out sc_logic 1 signal 2 } 
	{ hog_we0 sc_out sc_logic 1 signal 2 } 
	{ hog_d0 sc_out sc_lv 32 signal 2 } 
	{ hog_address1 sc_out sc_lv 11 signal 2 } 
	{ hog_ce1 sc_out sc_logic 1 signal 2 } 
	{ hog_we1 sc_out sc_logic 1 signal 2 } 
	{ hog_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cells_bin_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "address0" }} , 
 	{ "name": "cells_bin_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "ce0" }} , 
 	{ "name": "cells_bin_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "q0" }} , 
 	{ "name": "cells_bin_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "address1" }} , 
 	{ "name": "cells_bin_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "ce1" }} , 
 	{ "name": "cells_bin_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "q1" }} , 
 	{ "name": "cells_mag_sq_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "address0" }} , 
 	{ "name": "cells_mag_sq_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "ce0" }} , 
 	{ "name": "cells_mag_sq_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "q0" }} , 
 	{ "name": "cells_mag_sq_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "address1" }} , 
 	{ "name": "cells_mag_sq_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "ce1" }} , 
 	{ "name": "cells_mag_sq_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "q1" }} , 
 	{ "name": "hog_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "hog", "role": "address0" }} , 
 	{ "name": "hog_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hog", "role": "ce0" }} , 
 	{ "name": "hog_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hog", "role": "we0" }} , 
 	{ "name": "hog_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hog", "role": "d0" }} , 
 	{ "name": "hog_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "hog", "role": "address1" }} , 
 	{ "name": "hog_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hog", "role": "ce1" }} , 
 	{ "name": "hog_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hog", "role": "we1" }} , 
 	{ "name": "hog_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hog", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "compute_blocks",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3382", "EstimateLatencyMax" : "3382",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "cells_bin_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cells_mag_sq_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "hog", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_cud_U11", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_dEe_U12", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_eOg_U13", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_eOg_U14", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_fYi_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_blocks {
		cells_bin_V {Type I LastRead 42 FirstWrite -1}
		cells_mag_sq_V {Type I LastRead 3 FirstWrite -1}
		hog {Type O LastRead -1 FirstWrite 49}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3382", "Max" : "3382"}
	, {"Name" : "Interval", "Min" : "3382", "Max" : "3382"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	cells_bin_V { ap_memory {  { cells_bin_V_address0 mem_address 1 10 }  { cells_bin_V_ce0 mem_ce 1 1 }  { cells_bin_V_q0 mem_dout 0 32 }  { cells_bin_V_address1 mem_address 1 10 }  { cells_bin_V_ce1 mem_ce 1 1 }  { cells_bin_V_q1 mem_dout 0 32 } } }
	cells_mag_sq_V { ap_memory {  { cells_mag_sq_V_address0 mem_address 1 6 }  { cells_mag_sq_V_ce0 mem_ce 1 1 }  { cells_mag_sq_V_q0 mem_dout 0 64 }  { cells_mag_sq_V_address1 mem_address 1 6 }  { cells_mag_sq_V_ce1 mem_ce 1 1 }  { cells_mag_sq_V_q1 mem_dout 0 64 } } }
	hog { ap_memory {  { hog_address0 mem_address 1 11 }  { hog_ce0 mem_ce 1 1 }  { hog_we0 mem_we 1 1 }  { hog_d0 mem_din 1 32 }  { hog_address1 mem_address 1 11 }  { hog_ce1 mem_ce 1 1 }  { hog_we1 mem_we 1 1 }  { hog_d1 mem_din 1 32 } } }
}
