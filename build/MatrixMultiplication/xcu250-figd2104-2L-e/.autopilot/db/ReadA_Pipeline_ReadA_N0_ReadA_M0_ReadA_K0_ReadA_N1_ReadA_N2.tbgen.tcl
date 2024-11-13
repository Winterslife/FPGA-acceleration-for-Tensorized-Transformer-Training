set moduleName ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2
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
set C_modelName {ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bound40 int 83 regular  }
	{ bound17 int 60 regular  }
	{ lshr_ln2 int 28 regular  }
	{ bound4 int 37 regular  }
	{ zext_ln109_3 int 28 regular  }
	{ a int 64 regular  }
	{ gmem0 int 512 regular {axi_master 0}  }
	{ aSplit_0 int 32 regular {fifo 1 volatile }  }
	{ aSplit_1 int 32 regular {fifo 1 volatile }  }
	{ aSplit_2 int 32 regular {fifo 1 volatile }  }
	{ aSplit_3 int 32 regular {fifo 1 volatile }  }
	{ aSplit_4 int 32 regular {fifo 1 volatile }  }
	{ aSplit_5 int 32 regular {fifo 1 volatile }  }
	{ aSplit_6 int 32 regular {fifo 1 volatile }  }
	{ aSplit_7 int 32 regular {fifo 1 volatile }  }
	{ aSplit_8 int 32 regular {fifo 1 volatile }  }
	{ aSplit_9 int 32 regular {fifo 1 volatile }  }
	{ aSplit_10 int 32 regular {fifo 1 volatile }  }
	{ aSplit_11 int 32 regular {fifo 1 volatile }  }
	{ aSplit_12 int 32 regular {fifo 1 volatile }  }
	{ aSplit_13 int 32 regular {fifo 1 volatile }  }
	{ aSplit_14 int 32 regular {fifo 1 volatile }  }
	{ aSplit_15 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bound40", "interface" : "wire", "bitwidth" : 83, "direction" : "READONLY"} , 
 	{ "Name" : "bound17", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "lshr_ln2", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "bound4", "interface" : "wire", "bitwidth" : 37, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln109_3", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a","offset": { "type": "dynamic","port_name": "a","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "aSplit_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_8", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_10", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_11", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_12", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_13", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_14", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aSplit_15", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 138
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 6 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 6 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 6 } 
	{ aSplit_0_din sc_out sc_lv 32 signal 7 } 
	{ aSplit_0_num_data_valid sc_in sc_lv 11 signal 7 } 
	{ aSplit_0_fifo_cap sc_in sc_lv 11 signal 7 } 
	{ aSplit_0_full_n sc_in sc_logic 1 signal 7 } 
	{ aSplit_0_write sc_out sc_logic 1 signal 7 } 
	{ aSplit_1_din sc_out sc_lv 32 signal 8 } 
	{ aSplit_1_num_data_valid sc_in sc_lv 11 signal 8 } 
	{ aSplit_1_fifo_cap sc_in sc_lv 11 signal 8 } 
	{ aSplit_1_full_n sc_in sc_logic 1 signal 8 } 
	{ aSplit_1_write sc_out sc_logic 1 signal 8 } 
	{ aSplit_2_din sc_out sc_lv 32 signal 9 } 
	{ aSplit_2_num_data_valid sc_in sc_lv 11 signal 9 } 
	{ aSplit_2_fifo_cap sc_in sc_lv 11 signal 9 } 
	{ aSplit_2_full_n sc_in sc_logic 1 signal 9 } 
	{ aSplit_2_write sc_out sc_logic 1 signal 9 } 
	{ aSplit_3_din sc_out sc_lv 32 signal 10 } 
	{ aSplit_3_num_data_valid sc_in sc_lv 11 signal 10 } 
	{ aSplit_3_fifo_cap sc_in sc_lv 11 signal 10 } 
	{ aSplit_3_full_n sc_in sc_logic 1 signal 10 } 
	{ aSplit_3_write sc_out sc_logic 1 signal 10 } 
	{ aSplit_4_din sc_out sc_lv 32 signal 11 } 
	{ aSplit_4_num_data_valid sc_in sc_lv 11 signal 11 } 
	{ aSplit_4_fifo_cap sc_in sc_lv 11 signal 11 } 
	{ aSplit_4_full_n sc_in sc_logic 1 signal 11 } 
	{ aSplit_4_write sc_out sc_logic 1 signal 11 } 
	{ aSplit_5_din sc_out sc_lv 32 signal 12 } 
	{ aSplit_5_num_data_valid sc_in sc_lv 11 signal 12 } 
	{ aSplit_5_fifo_cap sc_in sc_lv 11 signal 12 } 
	{ aSplit_5_full_n sc_in sc_logic 1 signal 12 } 
	{ aSplit_5_write sc_out sc_logic 1 signal 12 } 
	{ aSplit_6_din sc_out sc_lv 32 signal 13 } 
	{ aSplit_6_num_data_valid sc_in sc_lv 11 signal 13 } 
	{ aSplit_6_fifo_cap sc_in sc_lv 11 signal 13 } 
	{ aSplit_6_full_n sc_in sc_logic 1 signal 13 } 
	{ aSplit_6_write sc_out sc_logic 1 signal 13 } 
	{ aSplit_7_din sc_out sc_lv 32 signal 14 } 
	{ aSplit_7_num_data_valid sc_in sc_lv 11 signal 14 } 
	{ aSplit_7_fifo_cap sc_in sc_lv 11 signal 14 } 
	{ aSplit_7_full_n sc_in sc_logic 1 signal 14 } 
	{ aSplit_7_write sc_out sc_logic 1 signal 14 } 
	{ aSplit_8_din sc_out sc_lv 32 signal 15 } 
	{ aSplit_8_num_data_valid sc_in sc_lv 11 signal 15 } 
	{ aSplit_8_fifo_cap sc_in sc_lv 11 signal 15 } 
	{ aSplit_8_full_n sc_in sc_logic 1 signal 15 } 
	{ aSplit_8_write sc_out sc_logic 1 signal 15 } 
	{ aSplit_9_din sc_out sc_lv 32 signal 16 } 
	{ aSplit_9_num_data_valid sc_in sc_lv 11 signal 16 } 
	{ aSplit_9_fifo_cap sc_in sc_lv 11 signal 16 } 
	{ aSplit_9_full_n sc_in sc_logic 1 signal 16 } 
	{ aSplit_9_write sc_out sc_logic 1 signal 16 } 
	{ aSplit_10_din sc_out sc_lv 32 signal 17 } 
	{ aSplit_10_num_data_valid sc_in sc_lv 11 signal 17 } 
	{ aSplit_10_fifo_cap sc_in sc_lv 11 signal 17 } 
	{ aSplit_10_full_n sc_in sc_logic 1 signal 17 } 
	{ aSplit_10_write sc_out sc_logic 1 signal 17 } 
	{ aSplit_11_din sc_out sc_lv 32 signal 18 } 
	{ aSplit_11_num_data_valid sc_in sc_lv 11 signal 18 } 
	{ aSplit_11_fifo_cap sc_in sc_lv 11 signal 18 } 
	{ aSplit_11_full_n sc_in sc_logic 1 signal 18 } 
	{ aSplit_11_write sc_out sc_logic 1 signal 18 } 
	{ aSplit_12_din sc_out sc_lv 32 signal 19 } 
	{ aSplit_12_num_data_valid sc_in sc_lv 11 signal 19 } 
	{ aSplit_12_fifo_cap sc_in sc_lv 11 signal 19 } 
	{ aSplit_12_full_n sc_in sc_logic 1 signal 19 } 
	{ aSplit_12_write sc_out sc_logic 1 signal 19 } 
	{ aSplit_13_din sc_out sc_lv 32 signal 20 } 
	{ aSplit_13_num_data_valid sc_in sc_lv 11 signal 20 } 
	{ aSplit_13_fifo_cap sc_in sc_lv 11 signal 20 } 
	{ aSplit_13_full_n sc_in sc_logic 1 signal 20 } 
	{ aSplit_13_write sc_out sc_logic 1 signal 20 } 
	{ aSplit_14_din sc_out sc_lv 32 signal 21 } 
	{ aSplit_14_num_data_valid sc_in sc_lv 11 signal 21 } 
	{ aSplit_14_fifo_cap sc_in sc_lv 11 signal 21 } 
	{ aSplit_14_full_n sc_in sc_logic 1 signal 21 } 
	{ aSplit_14_write sc_out sc_logic 1 signal 21 } 
	{ aSplit_15_din sc_out sc_lv 32 signal 22 } 
	{ aSplit_15_num_data_valid sc_in sc_lv 11 signal 22 } 
	{ aSplit_15_fifo_cap sc_in sc_lv 11 signal 22 } 
	{ aSplit_15_full_n sc_in sc_logic 1 signal 22 } 
	{ aSplit_15_write sc_out sc_logic 1 signal 22 } 
	{ bound40 sc_in sc_lv 83 signal 0 } 
	{ bound17 sc_in sc_lv 60 signal 1 } 
	{ lshr_ln2 sc_in sc_lv 28 signal 2 } 
	{ bound4 sc_in sc_lv 37 signal 3 } 
	{ zext_ln109_3 sc_in sc_lv 28 signal 4 } 
	{ a sc_in sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "aSplit_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_0", "role": "din" }} , 
 	{ "name": "aSplit_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_0", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_0", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_0", "role": "full_n" }} , 
 	{ "name": "aSplit_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_0", "role": "write" }} , 
 	{ "name": "aSplit_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_1", "role": "din" }} , 
 	{ "name": "aSplit_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_1", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_1", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_1", "role": "full_n" }} , 
 	{ "name": "aSplit_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_1", "role": "write" }} , 
 	{ "name": "aSplit_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_2", "role": "din" }} , 
 	{ "name": "aSplit_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_2", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_2", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_2", "role": "full_n" }} , 
 	{ "name": "aSplit_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_2", "role": "write" }} , 
 	{ "name": "aSplit_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_3", "role": "din" }} , 
 	{ "name": "aSplit_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_3", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_3", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_3", "role": "full_n" }} , 
 	{ "name": "aSplit_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_3", "role": "write" }} , 
 	{ "name": "aSplit_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_4", "role": "din" }} , 
 	{ "name": "aSplit_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_4", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_4", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_4", "role": "full_n" }} , 
 	{ "name": "aSplit_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_4", "role": "write" }} , 
 	{ "name": "aSplit_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_5", "role": "din" }} , 
 	{ "name": "aSplit_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_5", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_5", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_5", "role": "full_n" }} , 
 	{ "name": "aSplit_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_5", "role": "write" }} , 
 	{ "name": "aSplit_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_6", "role": "din" }} , 
 	{ "name": "aSplit_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_6", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_6", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_6", "role": "full_n" }} , 
 	{ "name": "aSplit_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_6", "role": "write" }} , 
 	{ "name": "aSplit_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_7", "role": "din" }} , 
 	{ "name": "aSplit_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_7", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_7", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_7", "role": "full_n" }} , 
 	{ "name": "aSplit_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_7", "role": "write" }} , 
 	{ "name": "aSplit_8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_8", "role": "din" }} , 
 	{ "name": "aSplit_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_8", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_8", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_8", "role": "full_n" }} , 
 	{ "name": "aSplit_8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_8", "role": "write" }} , 
 	{ "name": "aSplit_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_9", "role": "din" }} , 
 	{ "name": "aSplit_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_9", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_9", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_9", "role": "full_n" }} , 
 	{ "name": "aSplit_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_9", "role": "write" }} , 
 	{ "name": "aSplit_10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_10", "role": "din" }} , 
 	{ "name": "aSplit_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_10", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_10", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_10", "role": "full_n" }} , 
 	{ "name": "aSplit_10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_10", "role": "write" }} , 
 	{ "name": "aSplit_11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_11", "role": "din" }} , 
 	{ "name": "aSplit_11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_11", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_11", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_11", "role": "full_n" }} , 
 	{ "name": "aSplit_11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_11", "role": "write" }} , 
 	{ "name": "aSplit_12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_12", "role": "din" }} , 
 	{ "name": "aSplit_12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_12", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_12", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_12", "role": "full_n" }} , 
 	{ "name": "aSplit_12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_12", "role": "write" }} , 
 	{ "name": "aSplit_13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_13", "role": "din" }} , 
 	{ "name": "aSplit_13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_13", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_13", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_13", "role": "full_n" }} , 
 	{ "name": "aSplit_13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_13", "role": "write" }} , 
 	{ "name": "aSplit_14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_14", "role": "din" }} , 
 	{ "name": "aSplit_14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_14", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_14", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_14", "role": "full_n" }} , 
 	{ "name": "aSplit_14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_14", "role": "write" }} , 
 	{ "name": "aSplit_15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aSplit_15", "role": "din" }} , 
 	{ "name": "aSplit_15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_15", "role": "num_data_valid" }} , 
 	{ "name": "aSplit_15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "aSplit_15", "role": "fifo_cap" }} , 
 	{ "name": "aSplit_15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_15", "role": "full_n" }} , 
 	{ "name": "aSplit_15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aSplit_15", "role": "write" }} , 
 	{ "name": "bound40", "direction": "in", "datatype": "sc_lv", "bitwidth":83, "type": "signal", "bundle":{"name": "bound40", "role": "default" }} , 
 	{ "name": "bound17", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "bound17", "role": "default" }} , 
 	{ "name": "lshr_ln2", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "lshr_ln2", "role": "default" }} , 
 	{ "name": "bound4", "direction": "in", "datatype": "sc_lv", "bitwidth":37, "type": "signal", "bundle":{"name": "bound4", "role": "default" }} , 
 	{ "name": "zext_ln109_3", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "zext_ln109_3", "role": "default" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2",
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
			{"Name" : "bound40", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound17", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln109_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aSplit_15_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter75", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter75", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_28ns_32_1_1_U3", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2 {
		bound40 {Type I LastRead 0 FirstWrite -1}
		bound17 {Type I LastRead 0 FirstWrite -1}
		lshr_ln2 {Type I LastRead 0 FirstWrite -1}
		bound4 {Type I LastRead 0 FirstWrite -1}
		zext_ln109_3 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 74 FirstWrite -1}
		aSplit_0 {Type O LastRead -1 FirstWrite 75}
		aSplit_1 {Type O LastRead -1 FirstWrite 75}
		aSplit_2 {Type O LastRead -1 FirstWrite 75}
		aSplit_3 {Type O LastRead -1 FirstWrite 75}
		aSplit_4 {Type O LastRead -1 FirstWrite 75}
		aSplit_5 {Type O LastRead -1 FirstWrite 75}
		aSplit_6 {Type O LastRead -1 FirstWrite 75}
		aSplit_7 {Type O LastRead -1 FirstWrite 75}
		aSplit_8 {Type O LastRead -1 FirstWrite 75}
		aSplit_9 {Type O LastRead -1 FirstWrite 75}
		aSplit_10 {Type O LastRead -1 FirstWrite 75}
		aSplit_11 {Type O LastRead -1 FirstWrite 75}
		aSplit_12 {Type O LastRead -1 FirstWrite 75}
		aSplit_13 {Type O LastRead -1 FirstWrite 75}
		aSplit_14 {Type O LastRead -1 FirstWrite 75}
		aSplit_15 {Type O LastRead -1 FirstWrite 75}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound40 { ap_none {  { bound40 in_data 0 83 } } }
	bound17 { ap_none {  { bound17 in_data 0 60 } } }
	lshr_ln2 { ap_none {  { lshr_ln2 in_data 0 28 } } }
	bound4 { ap_none {  { bound4 in_data 0 37 } } }
	zext_ln109_3 { ap_none {  { zext_ln109_3 in_data 0 28 } } }
	a { ap_none {  { a in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	aSplit_0 { ap_fifo {  { aSplit_0_din fifo_data_in 1 32 }  { aSplit_0_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_0_fifo_cap fifo_update 0 11 }  { aSplit_0_full_n fifo_status 0 1 }  { aSplit_0_write fifo_port_we 1 1 } } }
	aSplit_1 { ap_fifo {  { aSplit_1_din fifo_data_in 1 32 }  { aSplit_1_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_1_fifo_cap fifo_update 0 11 }  { aSplit_1_full_n fifo_status 0 1 }  { aSplit_1_write fifo_port_we 1 1 } } }
	aSplit_2 { ap_fifo {  { aSplit_2_din fifo_data_in 1 32 }  { aSplit_2_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_2_fifo_cap fifo_update 0 11 }  { aSplit_2_full_n fifo_status 0 1 }  { aSplit_2_write fifo_port_we 1 1 } } }
	aSplit_3 { ap_fifo {  { aSplit_3_din fifo_data_in 1 32 }  { aSplit_3_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_3_fifo_cap fifo_update 0 11 }  { aSplit_3_full_n fifo_status 0 1 }  { aSplit_3_write fifo_port_we 1 1 } } }
	aSplit_4 { ap_fifo {  { aSplit_4_din fifo_data_in 1 32 }  { aSplit_4_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_4_fifo_cap fifo_update 0 11 }  { aSplit_4_full_n fifo_status 0 1 }  { aSplit_4_write fifo_port_we 1 1 } } }
	aSplit_5 { ap_fifo {  { aSplit_5_din fifo_data_in 1 32 }  { aSplit_5_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_5_fifo_cap fifo_update 0 11 }  { aSplit_5_full_n fifo_status 0 1 }  { aSplit_5_write fifo_port_we 1 1 } } }
	aSplit_6 { ap_fifo {  { aSplit_6_din fifo_data_in 1 32 }  { aSplit_6_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_6_fifo_cap fifo_update 0 11 }  { aSplit_6_full_n fifo_status 0 1 }  { aSplit_6_write fifo_port_we 1 1 } } }
	aSplit_7 { ap_fifo {  { aSplit_7_din fifo_data_in 1 32 }  { aSplit_7_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_7_fifo_cap fifo_update 0 11 }  { aSplit_7_full_n fifo_status 0 1 }  { aSplit_7_write fifo_port_we 1 1 } } }
	aSplit_8 { ap_fifo {  { aSplit_8_din fifo_data_in 1 32 }  { aSplit_8_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_8_fifo_cap fifo_update 0 11 }  { aSplit_8_full_n fifo_status 0 1 }  { aSplit_8_write fifo_port_we 1 1 } } }
	aSplit_9 { ap_fifo {  { aSplit_9_din fifo_data_in 1 32 }  { aSplit_9_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_9_fifo_cap fifo_update 0 11 }  { aSplit_9_full_n fifo_status 0 1 }  { aSplit_9_write fifo_port_we 1 1 } } }
	aSplit_10 { ap_fifo {  { aSplit_10_din fifo_data_in 1 32 }  { aSplit_10_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_10_fifo_cap fifo_update 0 11 }  { aSplit_10_full_n fifo_status 0 1 }  { aSplit_10_write fifo_port_we 1 1 } } }
	aSplit_11 { ap_fifo {  { aSplit_11_din fifo_data_in 1 32 }  { aSplit_11_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_11_fifo_cap fifo_update 0 11 }  { aSplit_11_full_n fifo_status 0 1 }  { aSplit_11_write fifo_port_we 1 1 } } }
	aSplit_12 { ap_fifo {  { aSplit_12_din fifo_data_in 1 32 }  { aSplit_12_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_12_fifo_cap fifo_update 0 11 }  { aSplit_12_full_n fifo_status 0 1 }  { aSplit_12_write fifo_port_we 1 1 } } }
	aSplit_13 { ap_fifo {  { aSplit_13_din fifo_data_in 1 32 }  { aSplit_13_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_13_fifo_cap fifo_update 0 11 }  { aSplit_13_full_n fifo_status 0 1 }  { aSplit_13_write fifo_port_we 1 1 } } }
	aSplit_14 { ap_fifo {  { aSplit_14_din fifo_data_in 1 32 }  { aSplit_14_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_14_fifo_cap fifo_update 0 11 }  { aSplit_14_full_n fifo_status 0 1 }  { aSplit_14_write fifo_port_we 1 1 } } }
	aSplit_15 { ap_fifo {  { aSplit_15_din fifo_data_in 1 32 }  { aSplit_15_num_data_valid fifo_status_num_data_valid 0 11 }  { aSplit_15_fifo_cap fifo_update 0 11 }  { aSplit_15_full_n fifo_status 0 1 }  { aSplit_15_write fifo_port_we 1 1 } } }
}
