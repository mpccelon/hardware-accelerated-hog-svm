set moduleName compute_gradients
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {compute_gradients}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_V int 8 regular {array 4096 { 1 1 } 1 1 }  }
	{ grad_vote_magnitude_s int 26 regular {array 4096 { 0 3 } 0 1 }  }
	{ grad_vote_bin_V int 4 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "grad_vote_magnitude_s", "interface" : "memory", "bitwidth" : 26, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grad_vote_bin_V", "interface" : "memory", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
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
	{ image_V_address0 sc_out sc_lv 12 signal 0 } 
	{ image_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ image_V_q0 sc_in sc_lv 8 signal 0 } 
	{ image_V_address1 sc_out sc_lv 12 signal 0 } 
	{ image_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ image_V_q1 sc_in sc_lv 8 signal 0 } 
	{ grad_vote_magnitude_s_address0 sc_out sc_lv 12 signal 1 } 
	{ grad_vote_magnitude_s_ce0 sc_out sc_logic 1 signal 1 } 
	{ grad_vote_magnitude_s_we0 sc_out sc_logic 1 signal 1 } 
	{ grad_vote_magnitude_s_d0 sc_out sc_lv 26 signal 1 } 
	{ grad_vote_bin_V_address0 sc_out sc_lv 12 signal 2 } 
	{ grad_vote_bin_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ grad_vote_bin_V_we0 sc_out sc_logic 1 signal 2 } 
	{ grad_vote_bin_V_d0 sc_out sc_lv 4 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "image_V", "role": "address0" }} , 
 	{ "name": "image_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V", "role": "ce0" }} , 
 	{ "name": "image_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_V", "role": "q0" }} , 
 	{ "name": "image_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "image_V", "role": "address1" }} , 
 	{ "name": "image_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V", "role": "ce1" }} , 
 	{ "name": "image_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_V", "role": "q1" }} , 
 	{ "name": "grad_vote_magnitude_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "grad_vote_magnitude_s", "role": "address0" }} , 
 	{ "name": "grad_vote_magnitude_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_vote_magnitude_s", "role": "ce0" }} , 
 	{ "name": "grad_vote_magnitude_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_vote_magnitude_s", "role": "we0" }} , 
 	{ "name": "grad_vote_magnitude_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "grad_vote_magnitude_s", "role": "d0" }} , 
 	{ "name": "grad_vote_bin_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "grad_vote_bin_V", "role": "address0" }} , 
 	{ "name": "grad_vote_bin_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_vote_bin_V", "role": "ce0" }} , 
 	{ "name": "grad_vote_bin_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grad_vote_bin_V", "role": "we0" }} , 
 	{ "name": "grad_vote_bin_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "grad_vote_bin_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "compute_gradients",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8197", "EstimateLatencyMax" : "8197",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "image_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "grad_vote_magnitude_s", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "grad_vote_bin_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]}]}


set ArgLastReadFirstWriteLatency {
	compute_gradients {
		image_V {Type I LastRead 3 FirstWrite -1}
		grad_vote_magnitude_s {Type O LastRead -1 FirstWrite 6}
		grad_vote_bin_V {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8197", "Max" : "8197"}
	, {"Name" : "Interval", "Min" : "8197", "Max" : "8197"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_V { ap_memory {  { image_V_address0 mem_address 1 12 }  { image_V_ce0 mem_ce 1 1 }  { image_V_q0 mem_dout 0 8 }  { image_V_address1 mem_address 1 12 }  { image_V_ce1 mem_ce 1 1 }  { image_V_q1 mem_dout 0 8 } } }
	grad_vote_magnitude_s { ap_memory {  { grad_vote_magnitude_s_address0 mem_address 1 12 }  { grad_vote_magnitude_s_ce0 mem_ce 1 1 }  { grad_vote_magnitude_s_we0 mem_we 1 1 }  { grad_vote_magnitude_s_d0 mem_din 1 26 } } }
	grad_vote_bin_V { ap_memory {  { grad_vote_bin_V_address0 mem_address 1 12 }  { grad_vote_bin_V_ce0 mem_ce 1 1 }  { grad_vote_bin_V_we0 mem_we 1 1 }  { grad_vote_bin_V_d0 mem_din 1 4 } } }
}
