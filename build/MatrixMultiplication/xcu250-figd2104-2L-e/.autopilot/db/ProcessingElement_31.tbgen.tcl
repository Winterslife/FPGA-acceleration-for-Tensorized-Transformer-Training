set moduleName ProcessingElement_31
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
set C_modelName {ProcessingElement.31}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ aPipes_30 int 32 regular {fifo 0 volatile }  }
	{ aPipes_31 int 32 regular {fifo 1 volatile }  }
	{ bPipes_30 int 256 regular {fifo 0 volatile }  }
	{ bPipes_31 int 256 regular {fifo 1 volatile }  }
	{ cPipes_30 int 256 regular {fifo 1 volatile }  }
	{ cPipes_31 int 256 regular {fifo 0 volatile }  }
	{ size_n int 32 regular  }
	{ size_k int 32 regular  }
	{ size_m int 32 regular  }
	{ size_n_c2 int 32 regular {fifo 1}  }
	{ size_k_c int 32 regular {fifo 1}  }
	{ size_m_c10 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "aPipes_30", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aPipes_31", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bPipes_30", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "bPipes_31", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cPipes_30", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cPipes_31", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "size_n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_k", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_m", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_n_c2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_k_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_m_c10", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
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
	{ aPipes_30_dout sc_in sc_lv 32 signal 0 } 
	{ aPipes_30_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ aPipes_30_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ aPipes_30_empty_n sc_in sc_logic 1 signal 0 } 
	{ aPipes_30_read sc_out sc_logic 1 signal 0 } 
	{ aPipes_31_din sc_out sc_lv 32 signal 1 } 
	{ aPipes_31_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ aPipes_31_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ aPipes_31_full_n sc_in sc_logic 1 signal 1 } 
	{ aPipes_31_write sc_out sc_logic 1 signal 1 } 
	{ bPipes_30_dout sc_in sc_lv 256 signal 2 } 
	{ bPipes_30_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ bPipes_30_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ bPipes_30_empty_n sc_in sc_logic 1 signal 2 } 
	{ bPipes_30_read sc_out sc_logic 1 signal 2 } 
	{ bPipes_31_din sc_out sc_lv 256 signal 3 } 
	{ bPipes_31_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ bPipes_31_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ bPipes_31_full_n sc_in sc_logic 1 signal 3 } 
	{ bPipes_31_write sc_out sc_logic 1 signal 3 } 
	{ cPipes_30_din sc_out sc_lv 256 signal 4 } 
	{ cPipes_30_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ cPipes_30_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ cPipes_30_full_n sc_in sc_logic 1 signal 4 } 
	{ cPipes_30_write sc_out sc_logic 1 signal 4 } 
	{ cPipes_31_dout sc_in sc_lv 256 signal 5 } 
	{ cPipes_31_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ cPipes_31_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ cPipes_31_empty_n sc_in sc_logic 1 signal 5 } 
	{ cPipes_31_read sc_out sc_logic 1 signal 5 } 
	{ size_n sc_in sc_lv 32 signal 6 } 
	{ size_k sc_in sc_lv 32 signal 7 } 
	{ size_m sc_in sc_lv 32 signal 8 } 
	{ size_n_c2_din sc_out sc_lv 32 signal 9 } 
	{ size_n_c2_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ size_n_c2_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ size_n_c2_full_n sc_in sc_logic 1 signal 9 } 
	{ size_n_c2_write sc_out sc_logic 1 signal 9 } 
	{ size_k_c_din sc_out sc_lv 32 signal 10 } 
	{ size_k_c_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ size_k_c_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ size_k_c_full_n sc_in sc_logic 1 signal 10 } 
	{ size_k_c_write sc_out sc_logic 1 signal 10 } 
	{ size_m_c10_din sc_out sc_lv 32 signal 11 } 
	{ size_m_c10_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ size_m_c10_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ size_m_c10_full_n sc_in sc_logic 1 signal 11 } 
	{ size_m_c10_write sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "bPipes_30_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bPipes_30", "role": "dout" }} , 
 	{ "name": "bPipes_30_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_30", "role": "num_data_valid" }} , 
 	{ "name": "bPipes_30_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_30", "role": "fifo_cap" }} , 
 	{ "name": "bPipes_30_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_30", "role": "empty_n" }} , 
 	{ "name": "bPipes_30_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_30", "role": "read" }} , 
 	{ "name": "bPipes_31_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bPipes_31", "role": "din" }} , 
 	{ "name": "bPipes_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_31", "role": "num_data_valid" }} , 
 	{ "name": "bPipes_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bPipes_31", "role": "fifo_cap" }} , 
 	{ "name": "bPipes_31_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_31", "role": "full_n" }} , 
 	{ "name": "bPipes_31_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bPipes_31", "role": "write" }} , 
 	{ "name": "cPipes_30_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cPipes_30", "role": "din" }} , 
 	{ "name": "cPipes_30_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_30", "role": "num_data_valid" }} , 
 	{ "name": "cPipes_30_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_30", "role": "fifo_cap" }} , 
 	{ "name": "cPipes_30_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_30", "role": "full_n" }} , 
 	{ "name": "cPipes_30_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_30", "role": "write" }} , 
 	{ "name": "cPipes_31_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cPipes_31", "role": "dout" }} , 
 	{ "name": "cPipes_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_31", "role": "num_data_valid" }} , 
 	{ "name": "cPipes_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cPipes_31", "role": "fifo_cap" }} , 
 	{ "name": "cPipes_31_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_31", "role": "empty_n" }} , 
 	{ "name": "cPipes_31_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cPipes_31", "role": "read" }} , 
 	{ "name": "size_n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n", "role": "default" }} , 
 	{ "name": "size_k", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_k", "role": "default" }} , 
 	{ "name": "size_m", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m", "role": "default" }} , 
 	{ "name": "size_n_c2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_n_c2", "role": "din" }} , 
 	{ "name": "size_n_c2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n_c2", "role": "num_data_valid" }} , 
 	{ "name": "size_n_c2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_n_c2", "role": "fifo_cap" }} , 
 	{ "name": "size_n_c2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n_c2", "role": "full_n" }} , 
 	{ "name": "size_n_c2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_n_c2", "role": "write" }} , 
 	{ "name": "size_k_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_k_c", "role": "din" }} , 
 	{ "name": "size_k_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k_c", "role": "num_data_valid" }} , 
 	{ "name": "size_k_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_k_c", "role": "fifo_cap" }} , 
 	{ "name": "size_k_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k_c", "role": "full_n" }} , 
 	{ "name": "size_k_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_k_c", "role": "write" }} , 
 	{ "name": "size_m_c10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_m_c10", "role": "din" }} , 
 	{ "name": "size_m_c10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m_c10", "role": "num_data_valid" }} , 
 	{ "name": "size_m_c10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_m_c10", "role": "fifo_cap" }} , 
 	{ "name": "size_m_c10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m_c10", "role": "full_n" }} , 
 	{ "name": "size_m_c10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_m_c10", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "27"],
		"CDFG" : "ProcessingElement_31",
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
			{"Name" : "aPipes_30", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190", "Port" : "aPipes_30", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "aPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190", "Port" : "aPipes_31", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "aPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_30", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "bPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "bPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221", "Port" : "cPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_31", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221", "Port" : "cPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Collapse_K", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_M", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_N", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aBuffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cBuffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_1_fu_178", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "ProcessingElement_31_Pipeline_1",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_1_fu_178.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_2_fu_184", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "ProcessingElement_31_Pipeline_2",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_2_fu_184.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190", "Parent" : "0", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_30", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_31", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_31_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_30", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_31", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1625", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1626", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1627", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1628", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1629", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1630", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1631", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1632", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1633", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1634", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1635", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1636", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1637", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1638", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1639", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1640", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "ProcessingElement_31_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_30", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_31", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"}]}


set ArgLastReadFirstWriteLatency {
	ProcessingElement_31 {
		aPipes_30 {Type I LastRead 1 FirstWrite -1}
		aPipes_31 {Type O LastRead -1 FirstWrite 1}
		bPipes_30 {Type I LastRead 3 FirstWrite -1}
		bPipes_31 {Type O LastRead -1 FirstWrite 3}
		cPipes_30 {Type O LastRead -1 FirstWrite 2}
		cPipes_31 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}
		size_n_c2 {Type O LastRead -1 FirstWrite 0}
		size_k_c {Type O LastRead -1 FirstWrite 0}
		size_m_c10 {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_31_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_31_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_30 {Type I LastRead 1 FirstWrite -1}
		aPipes_31 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_30 {Type I LastRead 3 FirstWrite -1}
		bPipes_31 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_30 {Type I LastRead 1 FirstWrite -1}
		aPipes_31 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_31_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_30 {Type O LastRead -1 FirstWrite 2}
		cPipes_31 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	aPipes_30 { ap_fifo {  { aPipes_30_dout fifo_data_in 0 32 }  { aPipes_30_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_30_fifo_cap fifo_update 0 3 }  { aPipes_30_empty_n fifo_status 0 1 }  { aPipes_30_read fifo_port_we 1 1 } } }
	aPipes_31 { ap_fifo {  { aPipes_31_din fifo_data_in 1 32 }  { aPipes_31_num_data_valid fifo_status_num_data_valid 0 3 }  { aPipes_31_fifo_cap fifo_update 0 3 }  { aPipes_31_full_n fifo_status 0 1 }  { aPipes_31_write fifo_port_we 1 1 } } }
	bPipes_30 { ap_fifo {  { bPipes_30_dout fifo_data_in 0 256 }  { bPipes_30_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_30_fifo_cap fifo_update 0 3 }  { bPipes_30_empty_n fifo_status 0 1 }  { bPipes_30_read fifo_port_we 1 1 } } }
	bPipes_31 { ap_fifo {  { bPipes_31_din fifo_data_in 1 256 }  { bPipes_31_num_data_valid fifo_status_num_data_valid 0 3 }  { bPipes_31_fifo_cap fifo_update 0 3 }  { bPipes_31_full_n fifo_status 0 1 }  { bPipes_31_write fifo_port_we 1 1 } } }
	cPipes_30 { ap_fifo {  { cPipes_30_din fifo_data_in 1 256 }  { cPipes_30_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_30_fifo_cap fifo_update 0 3 }  { cPipes_30_full_n fifo_status 0 1 }  { cPipes_30_write fifo_port_we 1 1 } } }
	cPipes_31 { ap_fifo {  { cPipes_31_dout fifo_data_in 0 256 }  { cPipes_31_num_data_valid fifo_status_num_data_valid 0 3 }  { cPipes_31_fifo_cap fifo_update 0 3 }  { cPipes_31_empty_n fifo_status 0 1 }  { cPipes_31_read fifo_port_we 1 1 } } }
	size_n { ap_none {  { size_n in_data 0 32 } } }
	size_k { ap_none {  { size_k in_data 0 32 } } }
	size_m { ap_none {  { size_m in_data 0 32 } } }
	size_n_c2 { ap_fifo {  { size_n_c2_din fifo_data_in 1 32 }  { size_n_c2_num_data_valid fifo_status_num_data_valid 0 3 }  { size_n_c2_fifo_cap fifo_update 0 3 }  { size_n_c2_full_n fifo_status 0 1 }  { size_n_c2_write fifo_port_we 1 1 } } }
	size_k_c { ap_fifo {  { size_k_c_din fifo_data_in 1 32 }  { size_k_c_num_data_valid fifo_status_num_data_valid 0 3 }  { size_k_c_fifo_cap fifo_update 0 3 }  { size_k_c_full_n fifo_status 0 1 }  { size_k_c_write fifo_port_we 1 1 } } }
	size_m_c10 { ap_fifo {  { size_m_c10_din fifo_data_in 1 32 }  { size_m_c10_num_data_valid fifo_status_num_data_valid 0 3 }  { size_m_c10_fifo_cap fifo_update 0 3 }  { size_m_c10_full_n fifo_status 0 1 }  { size_m_c10_write fifo_port_we 1 1 } } }
}
