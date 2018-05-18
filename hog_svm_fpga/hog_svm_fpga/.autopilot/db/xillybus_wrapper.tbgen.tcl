set C_TypeInfoList {{ 
"xillybus_wrapper" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in": [[],{ "pointer":  {"scalar": "int"}}] }, {"out": [[],{ "pointer":  {"scalar": "int"}}] }],[],""]
}}
set moduleName xillybus_wrapper
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {xillybus_wrapper}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_r int 32 regular {fifo 0}  }
	{ out_r int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_r_dout sc_in sc_lv 32 signal 0 } 
	{ in_r_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_r_read sc_out sc_logic 1 signal 0 } 
	{ out_r_din sc_out sc_lv 32 signal 1 } 
	{ out_r_full_n sc_in sc_logic 1 signal 1 } 
	{ out_r_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "dout" }} , 
 	{ "name": "in_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "empty_n" }} , 
 	{ "name": "in_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "read" }} , 
 	{ "name": "out_r_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "din" }} , 
 	{ "name": "out_r_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "full_n" }} , 
 	{ "name": "out_r_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "16", "17"],
		"CDFG" : "xillybus_wrapper",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25173", "EstimateLatencyMax" : "25173",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"InputProcess" : [
			{"ID" : "6", "Name" : "Loop_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "Block_arrayctor_loop_U0"}],
		"Port" : [
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "Loop_1_proc_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "Block_arrayctor_loop_U0", "Port" : "out_r"}]},
			{"Name" : "SVM_detector_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "svm_detect_U0", "Port" : "SVM_detector_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cells_bin_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cells_mag_sq_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grad_vote_magnitude_s_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grad_vote_bin_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc_U0", "Parent" : "0",
		"CDFG" : "Loop_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2177", "EstimateLatencyMax" : "2177",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "1"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_gradients_U0", "Parent" : "0",
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
			{"Name" : "image_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "1"},
			{"Name" : "grad_vote_magnitude_s", "Type" : "Memory", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "4"},
			{"Name" : "grad_vote_bin_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "5"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_cells_U0", "Parent" : "0", "Child" : ["9"],
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
			{"Name" : "grad_vote_magnitude_s", "Type" : "Memory", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "4"},
			{"Name" : "grad_vote_bin_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "5"},
			{"Name" : "cells_bin_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "2"},
			{"Name" : "cells_mag_sq_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "3"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_cells_U0.bin_vote_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.svm_detect_U0", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15"],
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
			{"Name" : "cells_bin_V_2", "Type" : "Vld", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "17"},
			{"Name" : "cells_bin_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "2"},
			{"Name" : "cells_mag_sq_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "3"},
			{"Name" : "SVM_detector_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.svm_detect_U0.SVM_detector_V_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.svm_detect_U0.xillybus_wrapper_dEe_U11", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.svm_detect_U0.xillybus_wrapper_eOg_U12", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.svm_detect_U0.xillybus_wrapper_fYi_U13", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.svm_detect_U0.xillybus_wrapper_g8j_U14", "Parent" : "10"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_arrayctor_loop_U0", "Parent" : "0",
		"CDFG" : "Block_arrayctor_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "tmp", "Type" : "None", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "17"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xillybus_wrapper {
		in_r {Type I LastRead 2 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 0}
		SVM_detector_V {Type I LastRead -1 FirstWrite -1}}
	Loop_1_proc {
		in_r {Type I LastRead 2 FirstWrite -1}
		image_V {Type O LastRead -1 FirstWrite 2}}
	compute_gradients {
		image_V {Type I LastRead 3 FirstWrite -1}
		grad_vote_magnitude_s {Type O LastRead -1 FirstWrite 6}
		grad_vote_bin_V {Type O LastRead -1 FirstWrite 6}}
	compute_cells {
		grad_vote_magnitude_s {Type I LastRead 4 FirstWrite -1}
		grad_vote_bin_V {Type I LastRead 4 FirstWrite -1}
		cells_bin_V {Type O LastRead -1 FirstWrite 6}
		cells_mag_sq_V {Type O LastRead -1 FirstWrite 6}}
	svm_detect {
		cells_bin_V_2 {Type O LastRead -1 FirstWrite 9}
		cells_bin_V {Type I LastRead 39 FirstWrite -1}
		cells_mag_sq_V {Type I LastRead 5 FirstWrite -1}
		SVM_detector_V {Type I LastRead -1 FirstWrite -1}}
	Block_arrayctor_loop {
		tmp {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25173", "Max" : "25173"}
	, {"Name" : "Interval", "Min" : "9922", "Max" : "9922"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_r { ap_fifo {  { in_r_dout fifo_data 0 32 }  { in_r_empty_n fifo_status 0 1 }  { in_r_read fifo_update 1 1 } } }
	out_r { ap_fifo {  { out_r_din fifo_data 1 32 }  { out_r_full_n fifo_status 0 1 }  { out_r_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_r { fifo_read 1 no_conditional }
	out_r { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
