set moduleName ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bound4 int 63 regular  }
	{ bound int 30 regular  }
	{ cPipes_0 int 256 regular {fifo 0 volatile }  }
	{ cMemory int 512 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bound4", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "cPipes_0", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cMemory", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cPipes_0_dout sc_in sc_lv 256 signal 2 } 
	{ cPipes_0_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ cPipes_0_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ cPipes_0_empty_n sc_in sc_logic 1 signal 2 } 
	{ cPipes_0_read sc_out sc_logic 1 signal 2 } 
	{ cMemory_din sc_out sc_lv 512 signal 3 } 
	{ cMemory_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ cMemory_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ cMemory_full_n sc_in sc_logic 1 signal 3 } 
	{ cMemory_write sc_out sc_logic 1 signal 3 } 
	{ bound4 sc_in sc_lv 63 signal 0 } 
	{ bound sc_in sc_lv 30 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cPipes_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cPipes_0", "role": "dout" }} , 
 	{ "name": "cPipes_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_0", "role": "num_data_valid" }} , 
 	{ "name": "cPipes_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_0", "role": "fifo_cap" }} , 
 	{ "name": "cPipes_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_0", "role": "empty_n" }} , 
 	{ "name": "cPipes_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_0", "role": "read" }} , 
 	{ "name": "cMemory_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "cMemory", "role": "din" }} , 
 	{ "name": "cMemory_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cMemory", "role": "num_data_valid" }} , 
 	{ "name": "cMemory_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cMemory", "role": "fifo_cap" }} , 
 	{ "name": "cMemory_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cMemory", "role": "full_n" }} , 
 	{ "name": "cMemory_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cMemory", "role": "write" }} , 
 	{ "name": "bound4", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "bound4", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "bound", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "cPipes_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cMemory", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cMemory_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1 {
		bound4 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		cPipes_0 {Type I LastRead 2 FirstWrite -1}
		cMemory {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound4 { ap_none {  { bound4 in_data 0 63 } } }
	bound { ap_none {  { bound in_data 0 30 } } }
	cPipes_0 { ap_fifo {  { cPipes_0_dout fifo_data_in 0 256 }  { cPipes_0_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_0_fifo_cap fifo_update 0 3 }  { cPipes_0_empty_n fifo_status 0 1 }  { cPipes_0_read fifo_port_we 1 1 } } }
	cMemory { ap_fifo {  { cMemory_din fifo_data_in 1 512 }  { cMemory_num_data_valid fifo_status_num_data_valid 0 7 }  { cMemory_fifo_cap fifo_update 0 7 }  { cMemory_full_n fifo_status 0 1 }  { cMemory_write fifo_port_we 1 1 } } }
}
