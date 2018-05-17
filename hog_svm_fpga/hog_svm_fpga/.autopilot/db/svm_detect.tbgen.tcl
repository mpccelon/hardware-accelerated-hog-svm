set moduleName svm_detect
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {svm_detect}
set C_modelType { void 0 }
set C_modelArgList {
	{ cells_bin_V_2 float 32 regular {pointer 1 volatile }  }
	{ cells_bin_V int 32 regular {array 576 { 1 1 } 1 1 }  }
	{ cells_mag_sq_V int 64 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cells_bin_V_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cells_bin_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cells_mag_sq_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
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
	{ cells_bin_V_2 sc_out sc_lv 32 signal 0 } 
	{ cells_bin_V_2_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ cells_bin_V_address0 sc_out sc_lv 10 signal 1 } 
	{ cells_bin_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ cells_bin_V_q0 sc_in sc_lv 32 signal 1 } 
	{ cells_bin_V_address1 sc_out sc_lv 10 signal 1 } 
	{ cells_bin_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ cells_bin_V_q1 sc_in sc_lv 32 signal 1 } 
	{ cells_mag_sq_V_address0 sc_out sc_lv 6 signal 2 } 
	{ cells_mag_sq_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ cells_mag_sq_V_q0 sc_in sc_lv 64 signal 2 } 
	{ cells_mag_sq_V_address1 sc_out sc_lv 6 signal 2 } 
	{ cells_mag_sq_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ cells_mag_sq_V_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cells_bin_V_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cells_bin_V_2", "role": "default" }} , 
 	{ "name": "cells_bin_V_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "cells_bin_V_2", "role": "ap_vld" }} , 
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
 	{ "name": "cells_mag_sq_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cells_mag_sq_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "svm_detect",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4874", "EstimateLatencyMax" : "4874",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "cells_bin_V_2", "Type" : "Vld", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cells_bin_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "cells_mag_sq_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "SVM_detector_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SVM_detector_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_dEe_U11", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_eOg_U12", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_fYi_U13", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xillybus_wrapper_g8j_U14", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	svm_detect {
		cells_bin_V_2 {Type O LastRead -1 FirstWrite 9}
		cells_bin_V {Type I LastRead 39 FirstWrite -1}
		cells_mag_sq_V {Type I LastRead 5 FirstWrite -1}
		SVM_detector_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4874", "Max" : "4874"}
	, {"Name" : "Interval", "Min" : "4874", "Max" : "4874"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cells_bin_V_2 { ap_vld {  { cells_bin_V_2 out_data 1 32 }  { cells_bin_V_2_ap_vld out_vld 1 1 } } }
	cells_bin_V { ap_memory {  { cells_bin_V_address0 mem_address 1 10 }  { cells_bin_V_ce0 mem_ce 1 1 }  { cells_bin_V_q0 mem_dout 0 32 }  { cells_bin_V_address1 mem_address 1 10 }  { cells_bin_V_ce1 mem_ce 1 1 }  { cells_bin_V_q1 mem_dout 0 32 } } }
	cells_mag_sq_V { ap_memory {  { cells_mag_sq_V_address0 mem_address 1 6 }  { cells_mag_sq_V_ce0 mem_ce 1 1 }  { cells_mag_sq_V_q0 mem_dout 0 64 }  { cells_mag_sq_V_address1 mem_address 1 6 }  { cells_mag_sq_V_ce1 mem_ce 1 1 }  { cells_mag_sq_V_q1 mem_dout 0 64 } } }
}
