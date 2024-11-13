set moduleName ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory
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
set C_modelName {ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bound int 61 regular  }
	{ bFeed int 256 regular {fifo 1 volatile }  }
	{ bMemory int 512 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 61, "direction" : "READONLY"} , 
 	{ "Name" : "bFeed", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bMemory", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bMemory_dout sc_in sc_lv 512 signal 2 } 
	{ bMemory_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ bMemory_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ bMemory_empty_n sc_in sc_logic 1 signal 2 } 
	{ bMemory_read sc_out sc_logic 1 signal 2 } 
	{ bFeed_din sc_out sc_lv 256 signal 1 } 
	{ bFeed_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ bFeed_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ bFeed_full_n sc_in sc_logic 1 signal 1 } 
	{ bFeed_write sc_out sc_logic 1 signal 1 } 
	{ bound sc_in sc_lv 61 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bMemory_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "bMemory", "role": "dout" }} , 
 	{ "name": "bMemory_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bMemory", "role": "num_data_valid" }} , 
 	{ "name": "bMemory_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bMemory", "role": "fifo_cap" }} , 
 	{ "name": "bMemory_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bMemory", "role": "empty_n" }} , 
 	{ "name": "bMemory_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bMemory", "role": "read" }} , 
 	{ "name": "bFeed_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bFeed", "role": "din" }} , 
 	{ "name": "bFeed_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bFeed", "role": "num_data_valid" }} , 
 	{ "name": "bFeed_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bFeed", "role": "fifo_cap" }} , 
 	{ "name": "bFeed_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bFeed", "role": "full_n" }} , 
 	{ "name": "bFeed_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bFeed", "role": "write" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "bound", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory",
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
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "bFeed", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bFeed_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bMemory", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bMemory_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ConvertWidthB_Outer_ConvertWidthB_Memory", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory {
		bound {Type I LastRead 0 FirstWrite -1}
		bFeed {Type O LastRead -1 FirstWrite 3}
		bMemory {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound { ap_none {  { bound in_data 0 61 } } }
	bFeed { ap_fifo {  { bFeed_din fifo_data_in 1 256 }  { bFeed_num_data_valid fifo_status_num_data_valid 0 3 }  { bFeed_fifo_cap fifo_update 0 3 }  { bFeed_full_n fifo_status 0 1 }  { bFeed_write fifo_port_we 1 1 } } }
	bMemory { ap_fifo {  { bMemory_dout fifo_data_in 0 512 }  { bMemory_num_data_valid fifo_status_num_data_valid 0 7 }  { bMemory_fifo_cap fifo_update 0 7 }  { bMemory_empty_n fifo_status 0 1 }  { bMemory_read fifo_port_we 1 1 } } }
}
