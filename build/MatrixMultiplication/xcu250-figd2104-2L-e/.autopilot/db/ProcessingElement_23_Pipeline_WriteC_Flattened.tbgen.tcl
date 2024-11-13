set moduleName ProcessingElement_23_Pipeline_WriteC_Flattened
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
set C_modelName {ProcessingElement.23_Pipeline_WriteC_Flattened}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict cBuffer { MEM_WIDTH 256 MEM_SIZE 32768 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ cBuffer int 256 regular {array 1024 { 1 3 } 1 1 }  }
	{ cPipes_22 int 256 regular {fifo 1 volatile }  }
	{ cPipes_23 int 256 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cBuffer", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cPipes_22", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cPipes_23", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cPipes_23_dout sc_in sc_lv 256 signal 2 } 
	{ cPipes_23_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ cPipes_23_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ cPipes_23_empty_n sc_in sc_logic 1 signal 2 } 
	{ cPipes_23_read sc_out sc_logic 1 signal 2 } 
	{ cPipes_22_din sc_out sc_lv 256 signal 1 } 
	{ cPipes_22_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ cPipes_22_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ cPipes_22_full_n sc_in sc_logic 1 signal 1 } 
	{ cPipes_22_write sc_out sc_logic 1 signal 1 } 
	{ cBuffer_address0 sc_out sc_lv 10 signal 0 } 
	{ cBuffer_ce0 sc_out sc_logic 1 signal 0 } 
	{ cBuffer_q0 sc_in sc_lv 256 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cPipes_23_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cPipes_23", "role": "dout" }} , 
 	{ "name": "cPipes_23_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_23", "role": "num_data_valid" }} , 
 	{ "name": "cPipes_23_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_23", "role": "fifo_cap" }} , 
 	{ "name": "cPipes_23_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_23", "role": "empty_n" }} , 
 	{ "name": "cPipes_23_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_23", "role": "read" }} , 
 	{ "name": "cPipes_22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cPipes_22", "role": "din" }} , 
 	{ "name": "cPipes_22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_22", "role": "num_data_valid" }} , 
 	{ "name": "cPipes_22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_22", "role": "fifo_cap" }} , 
 	{ "name": "cPipes_22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_22", "role": "full_n" }} , 
 	{ "name": "cPipes_22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_22", "role": "write" }} , 
 	{ "name": "cBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cBuffer", "role": "address0" }} , 
 	{ "name": "cBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cBuffer", "role": "ce0" }} , 
 	{ "name": "cBuffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cBuffer", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ProcessingElement_23_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10242", "EstimateLatencyMax" : "10242",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_22", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ProcessingElement_23_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_22 {Type O LastRead -1 FirstWrite 2}
		cPipes_23 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10242", "Max" : "10242"}
	, {"Name" : "Interval", "Min" : "10242", "Max" : "10242"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	cBuffer { ap_memory {  { cBuffer_address0 mem_address 1 10 }  { cBuffer_ce0 mem_ce 1 1 }  { cBuffer_q0 mem_dout 0 256 } } }
	cPipes_22 { ap_fifo {  { cPipes_22_din fifo_data_in 1 256 }  { cPipes_22_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_22_fifo_cap fifo_update 0 3 }  { cPipes_22_full_n fifo_status 0 1 }  { cPipes_22_write fifo_port_we 1 1 } } }
	cPipes_23 { ap_fifo {  { cPipes_23_dout fifo_data_in 0 256 }  { cPipes_23_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_23_fifo_cap fifo_update 0 3 }  { cPipes_23_empty_n fifo_status 0 1 }  { cPipes_23_read fifo_port_we 1 1 } } }
}
