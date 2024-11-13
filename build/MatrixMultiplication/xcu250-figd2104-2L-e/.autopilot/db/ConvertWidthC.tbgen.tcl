set moduleName ConvertWidthC
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
set C_modelName {ConvertWidthC}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cPipes_0 int 256 regular {fifo 0 volatile }  }
	{ cMemory int 512 regular {fifo 1 volatile }  }
	{ size_n int 32 regular {fifo 0}  }
	{ size_m int 32 regular {fifo 0}  }
	{ size_n_c int 32 regular {fifo 1}  }
	{ size_m_c int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cPipes_0", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cMemory", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_n", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_m", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_n_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_m_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cPipes_0_dout sc_in sc_lv 256 signal 0 } 
	{ cPipes_0_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ cPipes_0_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cPipes_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ cPipes_0_read sc_out sc_logic 1 signal 0 } 
	{ cMemory_din sc_out sc_lv 512 signal 1 } 
	{ cMemory_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ cMemory_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ cMemory_full_n sc_in sc_logic 1 signal 1 } 
	{ cMemory_write sc_out sc_logic 1 signal 1 } 
	{ size_n_dout sc_in sc_lv 32 signal 2 } 
	{ size_n_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ size_n_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ size_n_empty_n sc_in sc_logic 1 signal 2 } 
	{ size_n_read sc_out sc_logic 1 signal 2 } 
	{ size_m_dout sc_in sc_lv 32 signal 3 } 
	{ size_m_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ size_m_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ size_m_empty_n sc_in sc_logic 1 signal 3 } 
	{ size_m_read sc_out sc_logic 1 signal 3 } 
	{ size_n_c_din sc_out sc_lv 32 signal 4 } 
	{ size_n_c_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ size_n_c_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ size_n_c_full_n sc_in sc_logic 1 signal 4 } 
	{ size_n_c_write sc_out sc_logic 1 signal 4 } 
	{ size_m_c_din sc_out sc_lv 32 signal 5 } 
	{ size_m_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ size_m_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ size_m_c_full_n sc_in sc_logic 1 signal 5 } 
	{ size_m_c_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "size_n_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n", "role": "dout" }} , 
 	{ "name": "size_n_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n", "role": "num_data_valid" }} , 
 	{ "name": "size_n_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n", "role": "fifo_cap" }} , 
 	{ "name": "size_n_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n", "role": "empty_n" }} , 
 	{ "name": "size_n_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n", "role": "read" }} , 
 	{ "name": "size_m_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m", "role": "dout" }} , 
 	{ "name": "size_m_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m", "role": "num_data_valid" }} , 
 	{ "name": "size_m_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m", "role": "fifo_cap" }} , 
 	{ "name": "size_m_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m", "role": "empty_n" }} , 
 	{ "name": "size_m_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m", "role": "read" }} , 
 	{ "name": "size_n_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n_c", "role": "din" }} , 
 	{ "name": "size_n_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n_c", "role": "num_data_valid" }} , 
 	{ "name": "size_n_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n_c", "role": "fifo_cap" }} , 
 	{ "name": "size_n_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n_c", "role": "full_n" }} , 
 	{ "name": "size_n_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n_c", "role": "write" }} , 
 	{ "name": "size_m_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m_c", "role": "din" }} , 
 	{ "name": "size_m_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m_c", "role": "num_data_valid" }} , 
 	{ "name": "size_m_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m_c", "role": "fifo_cap" }} , 
 	{ "name": "size_m_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m_c", "role": "full_n" }} , 
 	{ "name": "size_m_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "ConvertWidthC",
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
			{"Name" : "cPipes_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84", "Port" : "cPipes_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "cMemory", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84", "Port" : "cMemory", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_n_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_33ns_30ns_63_1_1_U1718", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ConvertWidthC {
		cPipes_0 {Type I LastRead 2 FirstWrite -1}
		cMemory {Type O LastRead -1 FirstWrite 2}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}
		size_n_c {Type O LastRead -1 FirstWrite 0}
		size_m_c {Type O LastRead -1 FirstWrite 0}}
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
]}

set Spec2ImplPortList { 
	cPipes_0 { ap_fifo {  { cPipes_0_dout fifo_data_in 0 256 }  { cPipes_0_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_0_fifo_cap fifo_update 0 3 }  { cPipes_0_empty_n fifo_status 0 1 }  { cPipes_0_read fifo_port_we 1 1 } } }
	cMemory { ap_fifo {  { cMemory_din fifo_data_in 1 512 }  { cMemory_num_data_valid fifo_status_num_data_valid 0 7 }  { cMemory_fifo_cap fifo_update 0 7 }  { cMemory_full_n fifo_status 0 1 }  { cMemory_write fifo_port_we 1 1 } } }
	size_n { ap_fifo {  { size_n_dout fifo_data_in 0 32 }  { size_n_num_data_valid fifo_status_num_data_valid 0 3 }  { size_n_fifo_cap fifo_update 0 3 }  { size_n_empty_n fifo_status 0 1 }  { size_n_read fifo_port_we 1 1 } } }
	size_m { ap_fifo {  { size_m_dout fifo_data_in 0 32 }  { size_m_num_data_valid fifo_status_num_data_valid 0 3 }  { size_m_fifo_cap fifo_update 0 3 }  { size_m_empty_n fifo_status 0 1 }  { size_m_read fifo_port_we 1 1 } } }
	size_n_c { ap_fifo {  { size_n_c_din fifo_data_in 1 32 }  { size_n_c_num_data_valid fifo_status_num_data_valid 0 3 }  { size_n_c_fifo_cap fifo_update 0 3 }  { size_n_c_full_n fifo_status 0 1 }  { size_n_c_write fifo_port_we 1 1 } } }
	size_m_c { ap_fifo {  { size_m_c_din fifo_data_in 1 32 }  { size_m_c_num_data_valid fifo_status_num_data_valid 0 3 }  { size_m_c_fifo_cap fifo_update 0 3 }  { size_m_c_full_n fifo_status 0 1 }  { size_m_c_write fifo_port_we 1 1 } } }
}
