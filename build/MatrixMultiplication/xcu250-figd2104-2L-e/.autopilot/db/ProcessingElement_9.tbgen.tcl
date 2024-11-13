set moduleName ProcessingElement_9
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
set C_modelName {ProcessingElement.9}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ aPipes_8 int 32 regular {fifo 0 volatile }  }
	{ aPipes_9 int 32 regular {fifo 1 volatile }  }
	{ bPipes_8 int 256 regular {fifo 0 volatile }  }
	{ bPipes_9 int 256 regular {fifo 1 volatile }  }
	{ cPipes_8 int 256 regular {fifo 1 volatile }  }
	{ cPipes_9 int 256 regular {fifo 0 volatile }  }
	{ size_n int 32 regular  }
	{ size_k int 32 regular  }
	{ size_m int 32 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "aPipes_8", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aPipes_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bPipes_8", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "bPipes_9", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cPipes_8", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cPipes_9", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "size_n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_k", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_m", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ aPipes_8_dout sc_in sc_lv 32 signal 0 } 
	{ aPipes_8_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ aPipes_8_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ aPipes_8_empty_n sc_in sc_logic 1 signal 0 } 
	{ aPipes_8_read sc_out sc_logic 1 signal 0 } 
	{ aPipes_9_din sc_out sc_lv 32 signal 1 } 
	{ aPipes_9_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ aPipes_9_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ aPipes_9_full_n sc_in sc_logic 1 signal 1 } 
	{ aPipes_9_write sc_out sc_logic 1 signal 1 } 
	{ bPipes_8_dout sc_in sc_lv 256 signal 2 } 
	{ bPipes_8_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ bPipes_8_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ bPipes_8_empty_n sc_in sc_logic 1 signal 2 } 
	{ bPipes_8_read sc_out sc_logic 1 signal 2 } 
	{ bPipes_9_din sc_out sc_lv 256 signal 3 } 
	{ bPipes_9_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ bPipes_9_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ bPipes_9_full_n sc_in sc_logic 1 signal 3 } 
	{ bPipes_9_write sc_out sc_logic 1 signal 3 } 
	{ cPipes_8_din sc_out sc_lv 256 signal 4 } 
	{ cPipes_8_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ cPipes_8_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ cPipes_8_full_n sc_in sc_logic 1 signal 4 } 
	{ cPipes_8_write sc_out sc_logic 1 signal 4 } 
	{ cPipes_9_dout sc_in sc_lv 256 signal 5 } 
	{ cPipes_9_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ cPipes_9_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ cPipes_9_empty_n sc_in sc_logic 1 signal 5 } 
	{ cPipes_9_read sc_out sc_logic 1 signal 5 } 
	{ size_n sc_in sc_lv 32 signal 6 } 
	{ size_k sc_in sc_lv 32 signal 7 } 
	{ size_m sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "aPipes_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aPipes_8", "role": "dout" }} , 
 	{ "name": "aPipes_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_8", "role": "num_data_valid" }} , 
 	{ "name": "aPipes_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_8", "role": "fifo_cap" }} , 
 	{ "name": "aPipes_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_8", "role": "empty_n" }} , 
 	{ "name": "aPipes_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_8", "role": "read" }} , 
 	{ "name": "aPipes_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aPipes_9", "role": "din" }} , 
 	{ "name": "aPipes_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_9", "role": "num_data_valid" }} , 
 	{ "name": "aPipes_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_9", "role": "fifo_cap" }} , 
 	{ "name": "aPipes_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_9", "role": "full_n" }} , 
 	{ "name": "aPipes_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_9", "role": "write" }} , 
 	{ "name": "bPipes_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bPipes_8", "role": "dout" }} , 
 	{ "name": "bPipes_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_8", "role": "num_data_valid" }} , 
 	{ "name": "bPipes_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_8", "role": "fifo_cap" }} , 
 	{ "name": "bPipes_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_8", "role": "empty_n" }} , 
 	{ "name": "bPipes_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_8", "role": "read" }} , 
 	{ "name": "bPipes_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bPipes_9", "role": "din" }} , 
 	{ "name": "bPipes_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_9", "role": "num_data_valid" }} , 
 	{ "name": "bPipes_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_9", "role": "fifo_cap" }} , 
 	{ "name": "bPipes_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_9", "role": "full_n" }} , 
 	{ "name": "bPipes_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_9", "role": "write" }} , 
 	{ "name": "cPipes_8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cPipes_8", "role": "din" }} , 
 	{ "name": "cPipes_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_8", "role": "num_data_valid" }} , 
 	{ "name": "cPipes_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_8", "role": "fifo_cap" }} , 
 	{ "name": "cPipes_8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_8", "role": "full_n" }} , 
 	{ "name": "cPipes_8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_8", "role": "write" }} , 
 	{ "name": "cPipes_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cPipes_9", "role": "dout" }} , 
 	{ "name": "cPipes_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_9", "role": "num_data_valid" }} , 
 	{ "name": "cPipes_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_9", "role": "fifo_cap" }} , 
 	{ "name": "cPipes_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_9", "role": "empty_n" }} , 
 	{ "name": "cPipes_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_9", "role": "read" }} , 
 	{ "name": "size_n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n", "role": "default" }} , 
 	{ "name": "size_k", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_k", "role": "default" }} , 
 	{ "name": "size_m", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "27"],
		"CDFG" : "ProcessingElement_9",
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
			{"Name" : "aPipes_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "7", "SubInstance" : "grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "7", "SubInstance" : "grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Collapse_K", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_M", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_N", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aBuffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cBuffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_1_fu_136", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "ProcessingElement_9_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_2_fu_142", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "ProcessingElement_9_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1025", "EstimateLatencyMax" : "1025",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "386", "EstimateLatencyMax" : "386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1033", "EstimateLatencyMax" : "1033",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bPipes_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp111", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"},
			{"Name" : "cond90", "Type" : "None", "Direction" : "I"},
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "cond", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "brmerge282", "Type" : "None", "Direction" : "I"},
			{"Name" : "aPipes_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U547", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U548", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U549", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U550", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U551", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U552", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U553", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U554", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U555", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U556", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U557", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U558", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U559", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U560", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U561", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U562", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "ProcessingElement_9_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24578", "EstimateLatencyMax" : "24578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"}]}


set ArgLastReadFirstWriteLatency {
	ProcessingElement_9 {
		aPipes_8 {Type I LastRead 1 FirstWrite -1}
		aPipes_9 {Type O LastRead -1 FirstWrite 1}
		bPipes_8 {Type I LastRead 3 FirstWrite -1}
		bPipes_9 {Type O LastRead -1 FirstWrite 3}
		cPipes_8 {Type O LastRead -1 FirstWrite 2}
		cPipes_9 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_9_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_9_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_8 {Type I LastRead 1 FirstWrite -1}
		aPipes_9 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_8 {Type I LastRead 3 FirstWrite -1}
		bPipes_9 {Type O LastRead -1 FirstWrite 3}
		m0 {Type I LastRead 0 FirstWrite -1}
		cBuffer {Type IO LastRead 3 FirstWrite 8}
		cmp111 {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}
		cond90 {Type I LastRead 0 FirstWrite -1}
		aBuffer {Type IO LastRead 2 FirstWrite 1}
		mul {Type I LastRead 0 FirstWrite -1}
		cond {Type I LastRead 0 FirstWrite -1}
		size_n {Type I LastRead 0 FirstWrite -1}
		brmerge282 {Type I LastRead 0 FirstWrite -1}
		aPipes_8 {Type I LastRead 1 FirstWrite -1}
		aPipes_9 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_9_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_8 {Type O LastRead -1 FirstWrite 2}
		cPipes_9 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	aPipes_8 { ap_fifo {  { aPipes_8_dout fifo_data_in 0 32 }  { aPipes_8_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_8_fifo_cap fifo_update 0 3 }  { aPipes_8_empty_n fifo_status 0 1 }  { aPipes_8_read fifo_port_we 1 1 } } }
	aPipes_9 { ap_fifo {  { aPipes_9_din fifo_data_in 1 32 }  { aPipes_9_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_9_fifo_cap fifo_update 0 3 }  { aPipes_9_full_n fifo_status 0 1 }  { aPipes_9_write fifo_port_we 1 1 } } }
	bPipes_8 { ap_fifo {  { bPipes_8_dout fifo_data_in 0 256 }  { bPipes_8_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_8_fifo_cap fifo_update 0 3 }  { bPipes_8_empty_n fifo_status 0 1 }  { bPipes_8_read fifo_port_we 1 1 } } }
	bPipes_9 { ap_fifo {  { bPipes_9_din fifo_data_in 1 256 }  { bPipes_9_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_9_fifo_cap fifo_update 0 3 }  { bPipes_9_full_n fifo_status 0 1 }  { bPipes_9_write fifo_port_we 1 1 } } }
	cPipes_8 { ap_fifo {  { cPipes_8_din fifo_data_in 1 256 }  { cPipes_8_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_8_fifo_cap fifo_update 0 3 }  { cPipes_8_full_n fifo_status 0 1 }  { cPipes_8_write fifo_port_we 1 1 } } }
	cPipes_9 { ap_fifo {  { cPipes_9_dout fifo_data_in 0 256 }  { cPipes_9_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_9_fifo_cap fifo_update 0 3 }  { cPipes_9_empty_n fifo_status 0 1 }  { cPipes_9_read fifo_port_we 1 1 } } }
	size_n { ap_none {  { size_n in_data 0 32 } } }
	size_k { ap_none {  { size_k in_data 0 32 } } }
	size_m { ap_none {  { size_m in_data 0 32 } } }
}
