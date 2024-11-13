set moduleName ConvertWidthB
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
set C_modelName {ConvertWidthB}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bMemory int 512 regular {fifo 0 volatile }  }
	{ bFeed int 256 regular {fifo 1 volatile }  }
	{ size_n int 32 regular {fifo 0}  }
	{ size_k int 32 regular {fifo 0}  }
	{ size_m int 32 regular {fifo 0}  }
	{ size_n_c3 int 32 regular {fifo 1}  }
	{ size_k_c6 int 32 regular {fifo 1}  }
	{ size_m_c11 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bMemory", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "bFeed", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_n", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_k", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_m", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_n_c3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_k_c6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_m_c11", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ bMemory_dout sc_in sc_lv 512 signal 0 } 
	{ bMemory_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ bMemory_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ bMemory_empty_n sc_in sc_logic 1 signal 0 } 
	{ bMemory_read sc_out sc_logic 1 signal 0 } 
	{ bFeed_din sc_out sc_lv 256 signal 1 } 
	{ bFeed_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ bFeed_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ bFeed_full_n sc_in sc_logic 1 signal 1 } 
	{ bFeed_write sc_out sc_logic 1 signal 1 } 
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
	{ size_n_c3_din sc_out sc_lv 32 signal 5 } 
	{ size_n_c3_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ size_n_c3_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ size_n_c3_full_n sc_in sc_logic 1 signal 5 } 
	{ size_n_c3_write sc_out sc_logic 1 signal 5 } 
	{ size_k_c6_din sc_out sc_lv 32 signal 6 } 
	{ size_k_c6_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ size_k_c6_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ size_k_c6_full_n sc_in sc_logic 1 signal 6 } 
	{ size_k_c6_write sc_out sc_logic 1 signal 6 } 
	{ size_m_c11_din sc_out sc_lv 32 signal 7 } 
	{ size_m_c11_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ size_m_c11_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ size_m_c11_full_n sc_in sc_logic 1 signal 7 } 
	{ size_m_c11_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
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
 	{ "name": "size_m_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m", "role": "read" }} , 
 	{ "name": "size_n_c3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n_c3", "role": "din" }} , 
 	{ "name": "size_n_c3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n_c3", "role": "num_data_valid" }} , 
 	{ "name": "size_n_c3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n_c3", "role": "fifo_cap" }} , 
 	{ "name": "size_n_c3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n_c3", "role": "full_n" }} , 
 	{ "name": "size_n_c3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n_c3", "role": "write" }} , 
 	{ "name": "size_k_c6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_k_c6", "role": "din" }} , 
 	{ "name": "size_k_c6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k_c6", "role": "num_data_valid" }} , 
 	{ "name": "size_k_c6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k_c6", "role": "fifo_cap" }} , 
 	{ "name": "size_k_c6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k_c6", "role": "full_n" }} , 
 	{ "name": "size_k_c6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k_c6", "role": "write" }} , 
 	{ "name": "size_m_c11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m_c11", "role": "din" }} , 
 	{ "name": "size_m_c11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m_c11", "role": "num_data_valid" }} , 
 	{ "name": "size_m_c11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m_c11", "role": "fifo_cap" }} , 
 	{ "name": "size_m_c11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m_c11", "role": "full_n" }} , 
 	{ "name": "size_m_c11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m_c11", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4"],
		"CDFG" : "ConvertWidthB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "bMemory", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98", "Port" : "bMemory", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bFeed", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98", "Port" : "bFeed", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_n_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k_c6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_c6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c11_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_24ns_32ns_55_1_1_U124", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_55s_24ns_55_1_1_U125", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ConvertWidthB {
		bMemory {Type I LastRead 2 FirstWrite -1}
		bFeed {Type O LastRead -1 FirstWrite 3}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}
		size_n_c3 {Type O LastRead -1 FirstWrite 0}
		size_k_c6 {Type O LastRead -1 FirstWrite 0}
		size_m_c11 {Type O LastRead -1 FirstWrite 0}}
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
]}

set Spec2ImplPortList { 
	bMemory { ap_fifo {  { bMemory_dout fifo_data_in 0 512 }  { bMemory_num_data_valid fifo_status_num_data_valid 0 7 }  { bMemory_fifo_cap fifo_update 0 7 }  { bMemory_empty_n fifo_status 0 1 }  { bMemory_read fifo_port_we 1 1 } } }
	bFeed { ap_fifo {  { bFeed_din fifo_data_in 1 256 }  { bFeed_num_data_valid fifo_status_num_data_valid 0 3 }  { bFeed_fifo_cap fifo_update 0 3 }  { bFeed_full_n fifo_status 0 1 }  { bFeed_write fifo_port_we 1 1 } } }
	size_n { ap_fifo {  { size_n_dout fifo_data_in 0 32 }  { size_n_num_data_valid fifo_status_num_data_valid 0 3 }  { size_n_fifo_cap fifo_update 0 3 }  { size_n_empty_n fifo_status 0 1 }  { size_n_read fifo_port_we 1 1 } } }
	size_k { ap_fifo {  { size_k_dout fifo_data_in 0 32 }  { size_k_num_data_valid fifo_status_num_data_valid 0 3 }  { size_k_fifo_cap fifo_update 0 3 }  { size_k_empty_n fifo_status 0 1 }  { size_k_read fifo_port_we 1 1 } } }
	size_m { ap_fifo {  { size_m_dout fifo_data_in 0 32 }  { size_m_num_data_valid fifo_status_num_data_valid 0 3 }  { size_m_fifo_cap fifo_update 0 3 }  { size_m_empty_n fifo_status 0 1 }  { size_m_read fifo_port_we 1 1 } } }
	size_n_c3 { ap_fifo {  { size_n_c3_din fifo_data_in 1 32 }  { size_n_c3_num_data_valid fifo_status_num_data_valid 0 3 }  { size_n_c3_fifo_cap fifo_update 0 3 }  { size_n_c3_full_n fifo_status 0 1 }  { size_n_c3_write fifo_port_we 1 1 } } }
	size_k_c6 { ap_fifo {  { size_k_c6_din fifo_data_in 1 32 }  { size_k_c6_num_data_valid fifo_status_num_data_valid 0 3 }  { size_k_c6_fifo_cap fifo_update 0 3 }  { size_k_c6_full_n fifo_status 0 1 }  { size_k_c6_write fifo_port_we 1 1 } } }
	size_m_c11 { ap_fifo {  { size_m_c11_din fifo_data_in 1 32 }  { size_m_c11_num_data_valid fifo_status_num_data_valid 0 3 }  { size_m_c11_fifo_cap fifo_update 0 3 }  { size_m_c11_full_n fifo_status 0 1 }  { size_m_c11_write fifo_port_we 1 1 } } }
}
