set moduleName FeedB
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {FeedB}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bFeed int 256 regular {fifo 0 volatile }  }
	{ bPipes_0 int 256 regular {fifo 1 volatile }  }
	{ size_n int 32 regular {fifo 0}  }
	{ size_k int 32 regular {fifo 0}  }
	{ size_m int 32 regular {fifo 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bFeed", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "bPipes_0", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_n", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_k", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_m", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bFeed_dout sc_in sc_lv 256 signal 0 } 
	{ bFeed_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ bFeed_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ bFeed_empty_n sc_in sc_logic 1 signal 0 } 
	{ bFeed_read sc_out sc_logic 1 signal 0 } 
	{ bPipes_0_din sc_out sc_lv 256 signal 1 } 
	{ bPipes_0_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ bPipes_0_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ bPipes_0_full_n sc_in sc_logic 1 signal 1 } 
	{ bPipes_0_write sc_out sc_logic 1 signal 1 } 
	{ size_n_dout sc_in sc_lv 32 signal 2 } 
	{ size_n_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ size_n_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ size_n_empty_n sc_in sc_logic 1 signal 2 } 
	{ size_n_read sc_out sc_logic 1 signal 2 } 
	{ size_k_dout sc_in sc_lv 32 signal 3 } 
	{ size_k_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ size_k_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ size_k_empty_n sc_in sc_logic 1 signal 3 } 
	{ size_k_read sc_out sc_logic 1 signal 3 } 
	{ size_m_dout sc_in sc_lv 32 signal 4 } 
	{ size_m_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ size_m_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ size_m_empty_n sc_in sc_logic 1 signal 4 } 
	{ size_m_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "size_n_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n", "role": "dout" }} , 
 	{ "name": "size_n_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n", "role": "num_data_valid" }} , 
 	{ "name": "size_n_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n", "role": "fifo_cap" }} , 
 	{ "name": "size_n_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n", "role": "empty_n" }} , 
 	{ "name": "size_n_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n", "role": "read" }} , 
 	{ "name": "size_k_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_k", "role": "dout" }} , 
 	{ "name": "size_k_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k", "role": "num_data_valid" }} , 
 	{ "name": "size_k_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k", "role": "fifo_cap" }} , 
 	{ "name": "size_k_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k", "role": "empty_n" }} , 
 	{ "name": "size_k_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k", "role": "read" }} , 
 	{ "name": "size_m_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m", "role": "dout" }} , 
 	{ "name": "size_m_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m", "role": "num_data_valid" }} , 
 	{ "name": "size_m_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m", "role": "fifo_cap" }} , 
 	{ "name": "size_m_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m", "role": "empty_n" }} , 
 	{ "name": "size_m_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "FeedB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bFeed", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123", "Port" : "bFeed", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "bPipes_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123", "Port" : "bPipes_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "FeedB_K", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FeedB_OuterTile_M", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FeedB_OuterTile_N", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FeedB_Pipeline_1_fu_118", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "FeedB_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FeedB_Pipeline_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	FeedB {
		bFeed {Type I LastRead 1 FirstWrite -1}
		bPipes_0 {Type O LastRead -1 FirstWrite 1}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}}
	FeedB_Pipeline_1 {
		buffer_r {Type O LastRead -1 FirstWrite 0}}
	FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M {
		bPipes_0 {Type O LastRead -1 FirstWrite 1}
		bFeed {Type I LastRead 1 FirstWrite -1}
		buffer_r {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bFeed { ap_fifo {  { bFeed_dout fifo_data_in 0 256 }  { bFeed_num_data_valid fifo_status_num_data_valid 0 3 }  { bFeed_fifo_cap fifo_update 0 3 }  { bFeed_empty_n fifo_status 0 1 }  { bFeed_read fifo_port_we 1 1 } } }
	bPipes_0 { ap_fifo {  { bPipes_0_din fifo_data_in 1 256 }  { bPipes_0_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_0_fifo_cap fifo_update 0 3 }  { bPipes_0_full_n fifo_status 0 1 }  { bPipes_0_write fifo_port_we 1 1 } } }
	size_n { ap_fifo {  { size_n_dout fifo_data_in 0 32 }  { size_n_num_data_valid fifo_status_num_data_valid 0 3 }  { size_n_fifo_cap fifo_update 0 3 }  { size_n_empty_n fifo_status 0 1 }  { size_n_read fifo_port_we 1 1 } } }
	size_k { ap_fifo {  { size_k_dout fifo_data_in 0 32 }  { size_k_num_data_valid fifo_status_num_data_valid 0 3 }  { size_k_fifo_cap fifo_update 0 3 }  { size_k_empty_n fifo_status 0 1 }  { size_k_read fifo_port_we 1 1 } } }
	size_m { ap_fifo {  { size_m_dout fifo_data_in 0 32 }  { size_m_num_data_valid fifo_status_num_data_valid 0 3 }  { size_m_fifo_cap fifo_update 0 3 }  { size_m_empty_n fifo_status 0 1 }  { size_m_read fifo_port_we 1 1 } } }
}
