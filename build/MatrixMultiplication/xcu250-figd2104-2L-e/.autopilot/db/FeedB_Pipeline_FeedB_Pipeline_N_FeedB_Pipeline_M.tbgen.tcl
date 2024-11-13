set moduleName FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M
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
set C_modelName {FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buffer_r { MEM_WIDTH 256 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ bPipes_0 int 256 regular {fifo 1 volatile }  }
	{ bFeed int 256 regular {fifo 0 volatile }  }
	{ buffer_r int 256 regular {array 64 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bPipes_0", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bFeed", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_r", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bFeed_dout sc_in sc_lv 256 signal 1 } 
	{ bFeed_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ bFeed_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ bFeed_empty_n sc_in sc_logic 1 signal 1 } 
	{ bFeed_read sc_out sc_logic 1 signal 1 } 
	{ bPipes_0_din sc_out sc_lv 256 signal 0 } 
	{ bPipes_0_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ bPipes_0_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ bPipes_0_full_n sc_in sc_logic 1 signal 0 } 
	{ bPipes_0_write sc_out sc_logic 1 signal 0 } 
	{ buffer_r_address0 sc_out sc_lv 6 signal 2 } 
	{ buffer_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_r_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_r_d0 sc_out sc_lv 256 signal 2 } 
	{ buffer_r_address1 sc_out sc_lv 6 signal 2 } 
	{ buffer_r_ce1 sc_out sc_logic 1 signal 2 } 
	{ buffer_r_q1 sc_in sc_lv 256 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bFeed_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bFeed", "role": "dout" }} , 
 	{ "name": "bFeed_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bFeed", "role": "num_data_valid" }} , 
 	{ "name": "bFeed_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bFeed", "role": "fifo_cap" }} , 
 	{ "name": "bFeed_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bFeed", "role": "empty_n" }} , 
 	{ "name": "bFeed_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bFeed", "role": "read" }} , 
 	{ "name": "bPipes_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bPipes_0", "role": "din" }} , 
 	{ "name": "bPipes_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_0", "role": "num_data_valid" }} , 
 	{ "name": "bPipes_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_0", "role": "fifo_cap" }} , 
 	{ "name": "bPipes_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_0", "role": "full_n" }} , 
 	{ "name": "bPipes_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_0", "role": "write" }} , 
 	{ "name": "buffer_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buffer_r", "role": "address0" }} , 
 	{ "name": "buffer_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce0" }} , 
 	{ "name": "buffer_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "we0" }} , 
 	{ "name": "buffer_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buffer_r", "role": "d0" }} , 
 	{ "name": "buffer_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buffer_r", "role": "address1" }} , 
 	{ "name": "buffer_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_r", "role": "ce1" }} , 
 	{ "name": "buffer_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buffer_r", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bPipes_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bFeed", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bFeed_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "FeedB_Pipeline_N_FeedB_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M {
		bPipes_0 {Type O LastRead -1 FirstWrite 1}
		bFeed {Type I LastRead 1 FirstWrite -1}
		buffer_r {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bPipes_0 { ap_fifo {  { bPipes_0_din fifo_data_in 1 256 }  { bPipes_0_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_0_fifo_cap fifo_update 0 3 }  { bPipes_0_full_n fifo_status 0 1 }  { bPipes_0_write fifo_port_we 1 1 } } }
	bFeed { ap_fifo {  { bFeed_dout fifo_data_in 0 256 }  { bFeed_num_data_valid fifo_status_num_data_valid 0 3 }  { bFeed_fifo_cap fifo_update 0 3 }  { bFeed_empty_n fifo_status 0 1 }  { bFeed_read fifo_port_we 1 1 } } }
	buffer_r { ap_memory {  { buffer_r_address0 mem_address 1 6 }  { buffer_r_ce0 mem_ce 1 1 }  { buffer_r_we0 mem_we 1 1 }  { buffer_r_d0 mem_din 1 256 }  { buffer_r_address1 MemPortADDR2 1 6 }  { buffer_r_ce1 MemPortCE2 1 1 }  { buffer_r_q1 MemPortDOUT2 0 256 } } }
}
