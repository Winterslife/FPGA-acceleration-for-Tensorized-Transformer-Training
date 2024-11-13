set moduleName ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer
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
set C_modelName {ProcessingElement.31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict aBuffer { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ aBuffer int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ aPipes_30 int 32 regular {fifo 0 volatile }  }
	{ aPipes_31 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "aBuffer", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aPipes_30", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aPipes_31", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ aPipes_30_dout sc_in sc_lv 32 signal 1 } 
	{ aPipes_30_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ aPipes_30_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ aPipes_30_empty_n sc_in sc_logic 1 signal 1 } 
	{ aPipes_30_read sc_out sc_logic 1 signal 1 } 
	{ aPipes_31_din sc_out sc_lv 32 signal 2 } 
	{ aPipes_31_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ aPipes_31_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ aPipes_31_full_n sc_in sc_logic 1 signal 2 } 
	{ aPipes_31_write sc_out sc_logic 1 signal 2 } 
	{ aBuffer_address0 sc_out sc_lv 5 signal 0 } 
	{ aBuffer_ce0 sc_out sc_logic 1 signal 0 } 
	{ aBuffer_we0 sc_out sc_logic 1 signal 0 } 
	{ aBuffer_d0 sc_out sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "aPipes_30_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aPipes_30", "role": "dout" }} , 
 	{ "name": "aPipes_30_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_30", "role": "num_data_valid" }} , 
 	{ "name": "aPipes_30_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_30", "role": "fifo_cap" }} , 
 	{ "name": "aPipes_30_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_30", "role": "empty_n" }} , 
 	{ "name": "aPipes_30_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_30", "role": "read" }} , 
 	{ "name": "aPipes_31_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aPipes_31", "role": "din" }} , 
 	{ "name": "aPipes_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_31", "role": "num_data_valid" }} , 
 	{ "name": "aPipes_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_31", "role": "fifo_cap" }} , 
 	{ "name": "aPipes_31_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_31", "role": "full_n" }} , 
 	{ "name": "aPipes_31_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_31", "role": "write" }} , 
 	{ "name": "aBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "aBuffer", "role": "address0" }} , 
 	{ "name": "aBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aBuffer", "role": "ce0" }} , 
 	{ "name": "aBuffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aBuffer", "role": "we0" }} , 
 	{ "name": "aBuffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aBuffer", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_30", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_31", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_30 {Type I LastRead 1 FirstWrite -1}
		aPipes_31 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	aBuffer { ap_memory {  { aBuffer_address0 mem_address 1 5 }  { aBuffer_ce0 mem_ce 1 1 }  { aBuffer_we0 mem_we 1 1 }  { aBuffer_d0 mem_din 1 32 } } }
	aPipes_30 { ap_fifo {  { aPipes_30_dout fifo_data_in 0 32 }  { aPipes_30_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_30_fifo_cap fifo_update 0 3 }  { aPipes_30_empty_n fifo_status 0 1 }  { aPipes_30_read fifo_port_we 1 1 } } }
	aPipes_31 { ap_fifo {  { aPipes_31_din fifo_data_in 1 32 }  { aPipes_31_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_31_fifo_cap fifo_update 0 3 }  { aPipes_31_full_n fifo_status 0 1 }  { aPipes_31_write fifo_port_we 1 1 } } }
}
