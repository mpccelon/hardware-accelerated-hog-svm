set moduleName compute_cells
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {compute_cells}
set C_modelType { void 0 }
set C_modelArgList {
	{ grad_vote_magnitude_s int 26 regular {array 4096 { 1 3 } 1 1 }  }
	{ grad_vote_bin_V int 4 regular {array 4096 { 1 3 } 1 1 }  }
	{ cells_bin_V int 32 regular {array 576 { 0 3 } 0 1 }  }
	{ cells_mag_sq_V int 64 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "grad_vote_magnitude_s", "interface" : "memory", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "grad_vote_bin_V", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cells_bin_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cells_mag_sq_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ grad_vote_magnitude_s_address0 sc_out sc_lv 12 signal 0 } 
	{ grad_vote_magnitude_s_ce0 sc_out sc_logic 1 signal 0 } 
	{ grad_vote_magnitude_s_q0 sc_in sc_lv 26 signal 0 } 
	{ grad_vote_bin_V_address0 sc_out sc_lv 12 signal 1 } 
	{ grad_vote_bin_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ grad_vote_bin_V_q0 sc_in sc_lv 4 signal 1 } 
	{ cells_bin_V_address0 sc_out sc_lv 10 signal 2 } 
	{ cells_bin_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ cells_bin_V_we0 sc_out sc_logic 1 signal 2 } 
	{ cells_bin_V_d0 sc_out sc_lv 32 signal 2 } 
	{ cells_mag_sq_V_address0 sc_out sc_lv 6 signal 3 } 
	{ cells_mag_sq_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ cells_mag_sq_V_we0 sc_out sc_logic 1 signal 3 } 
	{ cells_mag_sq_V_d0 sc_out sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "grad_vote_magnitude_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "grad_vote_magnitude_s", "role": "address0" }} , 
 	{ "name": "grad_vote_magnitude_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_vote_magnitude_s", "role": "ce0" }} , 
 	{ "name": "grad_vote_magnitude_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "grad_vote_magnitude_s", "role": "q0" }} , 
 	{ "name": "grad_vote_bin_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "grad_vote_bin_V", "role": "address0" }} , 
 	{ "name": "grad_vote_bin_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_vote_bin_V", "role": "ce0" }} , 
 	{ "name": "grad_vote_bin_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "grad_vote_bin_V", "role": "q0" }} , 
 	{ "name": "cells_bin_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "address0" }} , 
 	{ "name": "cells_bin_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "ce0" }} , 
 	{ "name": "cells_bin_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "we0" }} , 
 	{ "name": "cells_bin_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cells_bin_V", "role": "d0" }} , 
 	{ "name": "cells_mag_sq_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "address0" }} , 
 	{ "name": "cells_mag_sq_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "ce0" }} , 
 	{ "name": "cells_mag_sq_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "we0" }} , 
 	{ "name": "cells_mag_sq_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_cells",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9921", "EstimateLatencyMax" : "9921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "grad_vote_magnitude_s", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "grad_vote_bin_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cells_bin_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cells_mag_sq_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bin_vote_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_cells {
		grad_vote_magnitude_s {Type I LastRead 4 FirstWrite -1}
		grad_vote_bin_V {Type I LastRead 4 FirstWrite -1}
		cells_bin_V {Type O LastRead -1 FirstWrite 6}
		cells_mag_sq_V {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9921", "Max" : "9921"}
	, {"Name" : "Interval", "Min" : "9921", "Max" : "9921"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	grad_vote_magnitude_s { ap_memory {  { grad_vote_magnitude_s_address0 mem_address 1 12 }  { grad_vote_magnitude_s_ce0 mem_ce 1 1 }  { grad_vote_magnitude_s_q0 mem_dout 0 26 } } }
	grad_vote_bin_V { ap_memory {  { grad_vote_bin_V_address0 mem_address 1 12 }  { grad_vote_bin_V_ce0 mem_ce 1 1 }  { grad_vote_bin_V_q0 mem_dout 0 4 } } }
	cells_bin_V { ap_memory {  { cells_bin_V_address0 mem_address 1 10 }  { cells_bin_V_ce0 mem_ce 1 1 }  { cells_bin_V_we0 mem_we 1 1 }  { cells_bin_V_d0 mem_din 1 32 } } }
	cells_mag_sq_V { ap_memory {  { cells_mag_sq_V_address0 mem_address 1 6 }  { cells_mag_sq_V_ce0 mem_ce 1 1 }  { cells_mag_sq_V_we0 mem_we 1 1 }  { cells_mag_sq_V_d0 mem_din 1 64 } } }
}
