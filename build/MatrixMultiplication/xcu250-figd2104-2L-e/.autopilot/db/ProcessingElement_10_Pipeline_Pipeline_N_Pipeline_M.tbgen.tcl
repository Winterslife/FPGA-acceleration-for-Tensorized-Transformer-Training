set moduleName ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M
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
set C_modelName {ProcessingElement.10_Pipeline_Pipeline_N_Pipeline_M}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict cBuffer { MEM_WIDTH 256 MEM_SIZE 32768 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict aBuffer { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ bPipes_9 int 256 regular {fifo 0 volatile }  }
	{ bPipes_10 int 256 regular {fifo 1 volatile }  }
	{ m0 int 23 regular  }
	{ cBuffer int 256 regular {array 1024 { 0 1 } 1 1 }  }
	{ cmp111 int 1 regular  }
	{ size_m int 32 regular  }
	{ cond90 int 5 regular  }
	{ aBuffer int 32 regular {array 32 { 0 1 } 1 1 }  }
	{ mul int 27 regular  }
	{ cond int 5 regular  }
	{ size_n int 32 regular  }
	{ brmerge282 int 1 regular  }
	{ aPipes_9 int 32 regular {fifo 0 volatile }  }
	{ aPipes_10 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bPipes_9", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "bPipes_10", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m0", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "cBuffer", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "cmp111", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "size_m", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cond90", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "aBuffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "mul", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "cond", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "size_n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "brmerge282", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "aPipes_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aPipes_10", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ aPipes_9_dout sc_in sc_lv 32 signal 12 } 
	{ aPipes_9_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ aPipes_9_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ aPipes_9_empty_n sc_in sc_logic 1 signal 12 } 
	{ aPipes_9_read sc_out sc_logic 1 signal 12 } 
	{ aPipes_10_din sc_out sc_lv 32 signal 13 } 
	{ aPipes_10_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ aPipes_10_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ aPipes_10_full_n sc_in sc_logic 1 signal 13 } 
	{ aPipes_10_write sc_out sc_logic 1 signal 13 } 
	{ bPipes_9_dout sc_in sc_lv 256 signal 0 } 
	{ bPipes_9_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ bPipes_9_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ bPipes_9_empty_n sc_in sc_logic 1 signal 0 } 
	{ bPipes_9_read sc_out sc_logic 1 signal 0 } 
	{ bPipes_10_din sc_out sc_lv 256 signal 1 } 
	{ bPipes_10_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ bPipes_10_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ bPipes_10_full_n sc_in sc_logic 1 signal 1 } 
	{ bPipes_10_write sc_out sc_logic 1 signal 1 } 
	{ m0 sc_in sc_lv 23 signal 2 } 
	{ cBuffer_address0 sc_out sc_lv 10 signal 3 } 
	{ cBuffer_ce0 sc_out sc_logic 1 signal 3 } 
	{ cBuffer_we0 sc_out sc_logic 1 signal 3 } 
	{ cBuffer_d0 sc_out sc_lv 256 signal 3 } 
	{ cBuffer_address1 sc_out sc_lv 10 signal 3 } 
	{ cBuffer_ce1 sc_out sc_logic 1 signal 3 } 
	{ cBuffer_q1 sc_in sc_lv 256 signal 3 } 
	{ cmp111 sc_in sc_lv 1 signal 4 } 
	{ size_m sc_in sc_lv 32 signal 5 } 
	{ cond90 sc_in sc_lv 5 signal 6 } 
	{ aBuffer_address0 sc_out sc_lv 5 signal 7 } 
	{ aBuffer_ce0 sc_out sc_logic 1 signal 7 } 
	{ aBuffer_we0 sc_out sc_logic 1 signal 7 } 
	{ aBuffer_d0 sc_out sc_lv 32 signal 7 } 
	{ aBuffer_address1 sc_out sc_lv 5 signal 7 } 
	{ aBuffer_ce1 sc_out sc_logic 1 signal 7 } 
	{ aBuffer_q1 sc_in sc_lv 32 signal 7 } 
	{ mul sc_in sc_lv 27 signal 8 } 
	{ cond sc_in sc_lv 5 signal 9 } 
	{ size_n sc_in sc_lv 32 signal 10 } 
	{ brmerge282 sc_in sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "aPipes_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aPipes_9", "role": "dout" }} , 
 	{ "name": "aPipes_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_9", "role": "num_data_valid" }} , 
 	{ "name": "aPipes_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_9", "role": "fifo_cap" }} , 
 	{ "name": "aPipes_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_9", "role": "empty_n" }} , 
 	{ "name": "aPipes_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_9", "role": "read" }} , 
 	{ "name": "aPipes_10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aPipes_10", "role": "din" }} , 
 	{ "name": "aPipes_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_10", "role": "num_data_valid" }} , 
 	{ "name": "aPipes_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aPipes_10", "role": "fifo_cap" }} , 
 	{ "name": "aPipes_10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_10", "role": "full_n" }} , 
 	{ "name": "aPipes_10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aPipes_10", "role": "write" }} , 
 	{ "name": "bPipes_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bPipes_9", "role": "dout" }} , 
 	{ "name": "bPipes_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_9", "role": "num_data_valid" }} , 
 	{ "name": "bPipes_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_9", "role": "fifo_cap" }} , 
 	{ "name": "bPipes_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_9", "role": "empty_n" }} , 
 	{ "name": "bPipes_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_9", "role": "read" }} , 
 	{ "name": "bPipes_10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bPipes_10", "role": "din" }} , 
 	{ "name": "bPipes_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_10", "role": "num_data_valid" }} , 
 	{ "name": "bPipes_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_10", "role": "fifo_cap" }} , 
 	{ "name": "bPipes_10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_10", "role": "full_n" }} , 
 	{ "name": "bPipes_10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_10", "role": "write" }} , 
 	{ "name": "m0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "m0", "role": "default" }} , 
 	{ "name": "cBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cBuffer", "role": "address0" }} , 
 	{ "name": "cBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cBuffer", "role": "ce0" }} , 
 	{ "name": "cBuffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cBuffer", "role": "we0" }} , 
 	{ "name": "cBuffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cBuffer", "role": "d0" }} , 
 	{ "name": "cBuffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "cBuffer", "role": "address1" }} , 
 	{ "name": "cBuffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cBuffer", "role": "ce1" }} , 
 	{ "name": "cBuffer_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cBuffer", "role": "q1" }} , 
 	{ "name": "cmp111", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp111", "role": "default" }} , 
 	{ "name": "size_m", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m", "role": "default" }} , 
 	{ "name": "cond90", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "cond90", "role": "default" }} , 
 	{ "name": "aBuffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "aBuffer", "role": "address0" }} , 
 	{ "name": "aBuffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aBuffer", "role": "ce0" }} , 
 	{ "name": "aBuffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aBuffer", "role": "we0" }} , 
 	{ "name": "aBuffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aBuffer", "role": "d0" }} , 
 	{ "name": "aBuffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "aBuffer", "role": "address1" }} , 
 	{ "name": "aBuffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aBuffer", "role": "ce1" }} , 
 	{ "name": "aBuffer_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aBuffer", "role": "q1" }} , 
 	{ "name": "mul", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "mul", "role": "default" }} , 
 	{ "name": "cond", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "cond", "role": "default" }} , 
 	{ "name": "size_n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n", "role": "default" }} , 
 	{ "name": "brmerge282", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brmerge282", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_10_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U596", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U597", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U598", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U599", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U600", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U601", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U602", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U603", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U604", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U605", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U606", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U607", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U608", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U609", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U610", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U611", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_9 {Type I LastRead 3 FirstWrite -1}
		bPipes_10 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_9 {Type I LastRead 1 FirstWrite -1}
		aPipes_10 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1033", "Max" : "1033"}
	, {"Name" : "Interval", "Min" : "1033", "Max" : "1033"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bPipes_9 { ap_fifo {  { bPipes_9_dout fifo_data_in 0 256 }  { bPipes_9_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_9_fifo_cap fifo_update 0 3 }  { bPipes_9_empty_n fifo_status 0 1 }  { bPipes_9_read fifo_port_we 1 1 } } }
	bPipes_10 { ap_fifo {  { bPipes_10_din fifo_data_in 1 256 }  { bPipes_10_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_10_fifo_cap fifo_update 0 3 }  { bPipes_10_full_n fifo_status 0 1 }  { bPipes_10_write fifo_port_we 1 1 } } }
	m0 { ap_none {  { m0 in_data 0 23 } } }
	cBuffer { ap_memory {  { cBuffer_address0 mem_address 1 10 }  { cBuffer_ce0 mem_ce 1 1 }  { cBuffer_we0 mem_we 1 1 }  { cBuffer_d0 mem_din 1 256 }  { cBuffer_address1 MemPortADDR2 1 10 }  { cBuffer_ce1 MemPortCE2 1 1 }  { cBuffer_q1 MemPortDOUT2 0 256 } } }
	cmp111 { ap_none {  { cmp111 in_data 0 1 } } }
	size_m { ap_none {  { size_m in_data 0 32 } } }
	cond90 { ap_none {  { cond90 in_data 0 5 } } }
	aBuffer { ap_memory {  { aBuffer_address0 mem_address 1 5 }  { aBuffer_ce0 mem_ce 1 1 }  { aBuffer_we0 mem_we 1 1 }  { aBuffer_d0 mem_din 1 32 }  { aBuffer_address1 MemPortADDR2 1 5 }  { aBuffer_ce1 MemPortCE2 1 1 }  { aBuffer_q1 in_data 0 32 } } }
	mul { ap_none {  { mul in_data 0 27 } } }
	cond { ap_none {  { cond in_data 0 5 } } }
	size_n { ap_none {  { size_n in_data 0 32 } } }
	brmerge282 { ap_none {  { brmerge282 in_data 0 1 } } }
	aPipes_9 { ap_fifo {  { aPipes_9_dout fifo_data_in 0 32 }  { aPipes_9_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_9_fifo_cap fifo_update 0 3 }  { aPipes_9_empty_n fifo_status 0 1 }  { aPipes_9_read fifo_port_we 1 1 } } }
	aPipes_10 { ap_fifo {  { aPipes_10_din fifo_data_in 1 32 }  { aPipes_10_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_10_fifo_cap fifo_update 0 3 }  { aPipes_10_full_n fifo_status 0 1 }  { aPipes_10_write fifo_port_we 1 1 } } }
}
