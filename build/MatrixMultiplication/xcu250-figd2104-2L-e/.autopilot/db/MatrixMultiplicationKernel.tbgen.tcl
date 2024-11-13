set moduleName MatrixMultiplicationKernel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {MatrixMultiplicationKernel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ gmem1 int 512 regular {axi_master 0}  }
	{ gmem2 int 512 regular {axi_master 1}  }
	{ a int 64 regular {axi_slave 0}  }
	{ b int 64 regular {axi_slave 0}  }
	{ c int 64 regular {axi_slave 0}  }
	{ size_n int 32 regular {axi_slave 0}  }
	{ size_k int 32 regular {axi_slave 0}  }
	{ size_m int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a","offset": { "type": "dynamic","port_name": "a","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b","offset": { "type": "dynamic","port_name": "b","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "a", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "size_n", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "size_k", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "size_m", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":75}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"MatrixMultiplicationKernel","role":"start","value":"0","valid_bit":"0"},{"name":"MatrixMultiplicationKernel","role":"continue","value":"0","valid_bit":"4"},{"name":"MatrixMultiplicationKernel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"28"},{"name":"c","role":"data","value":"40"},{"name":"size_n","role":"data","value":"52"},{"name":"size_k","role":"data","value":"60"},{"name":"size_m","role":"data","value":"68"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"MatrixMultiplicationKernel","role":"start","value":"0","valid_bit":"0"},{"name":"MatrixMultiplicationKernel","role":"done","value":"0","valid_bit":"1"},{"name":"MatrixMultiplicationKernel","role":"idle","value":"0","valid_bit":"2"},{"name":"MatrixMultiplicationKernel","role":"ready","value":"0","valid_bit":"3"},{"name":"MatrixMultiplicationKernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "12", "17", "23", "28", "34", "63", "92", "121", "150", "179", "208", "237", "266", "295", "324", "353", "382", "411", "440", "469", "498", "527", "556", "585", "614", "643", "672", "701", "730", "759", "788", "817", "846", "875", "904", "933", "962", "966", "971", "972", "973", "974", "975", "976", "977", "978", "979", "980", "981", "982", "983", "984", "985", "986", "987", "988", "989", "990", "991", "992", "993", "994", "995", "996", "997", "998", "999", "1000", "1001", "1002", "1003", "1004", "1005", "1006", "1007", "1008", "1009", "1010", "1011", "1012", "1013", "1014", "1015", "1016", "1017", "1018", "1019", "1020", "1021", "1022", "1023", "1024", "1025", "1026", "1027", "1028", "1029", "1030", "1031", "1032", "1033", "1034", "1035", "1036", "1037", "1038", "1039", "1040", "1041", "1042", "1043", "1044", "1045", "1046", "1047", "1048", "1049", "1050", "1051", "1052", "1053", "1054", "1055", "1056", "1057", "1058", "1059", "1060", "1061", "1062", "1063", "1064", "1065", "1066", "1067", "1068", "1069", "1070", "1071", "1072", "1073", "1074", "1075", "1076", "1077", "1078", "1079", "1080", "1081", "1082", "1083", "1084", "1085", "1086", "1087", "1088", "1089", "1090", "1091", "1092", "1093", "1094", "1095", "1096", "1097", "1098", "1099", "1100", "1101", "1102", "1103", "1104", "1105", "1106", "1107", "1108"],
		"CDFG" : "MatrixMultiplicationKernel",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "entry_proc_U0"},
			{"ID" : "6", "Name" : "ReadA_U0"},
			{"ID" : "17", "Name" : "ReadB_U0"},
			{"ID" : "34", "Name" : "ProcessingElement_1_U0"},
			{"ID" : "63", "Name" : "ProcessingElement_2_U0"},
			{"ID" : "92", "Name" : "ProcessingElement_3_U0"},
			{"ID" : "121", "Name" : "ProcessingElement_4_U0"},
			{"ID" : "150", "Name" : "ProcessingElement_5_U0"},
			{"ID" : "179", "Name" : "ProcessingElement_6_U0"},
			{"ID" : "208", "Name" : "ProcessingElement_7_U0"},
			{"ID" : "237", "Name" : "ProcessingElement_8_U0"},
			{"ID" : "266", "Name" : "ProcessingElement_9_U0"},
			{"ID" : "295", "Name" : "ProcessingElement_10_U0"},
			{"ID" : "324", "Name" : "ProcessingElement_11_U0"},
			{"ID" : "353", "Name" : "ProcessingElement_12_U0"},
			{"ID" : "382", "Name" : "ProcessingElement_13_U0"},
			{"ID" : "411", "Name" : "ProcessingElement_14_U0"},
			{"ID" : "440", "Name" : "ProcessingElement_15_U0"},
			{"ID" : "469", "Name" : "ProcessingElement_16_U0"},
			{"ID" : "498", "Name" : "ProcessingElement_17_U0"},
			{"ID" : "527", "Name" : "ProcessingElement_18_U0"},
			{"ID" : "556", "Name" : "ProcessingElement_19_U0"},
			{"ID" : "585", "Name" : "ProcessingElement_20_U0"},
			{"ID" : "614", "Name" : "ProcessingElement_21_U0"},
			{"ID" : "643", "Name" : "ProcessingElement_22_U0"},
			{"ID" : "672", "Name" : "ProcessingElement_23_U0"},
			{"ID" : "701", "Name" : "ProcessingElement_24_U0"},
			{"ID" : "730", "Name" : "ProcessingElement_25_U0"},
			{"ID" : "759", "Name" : "ProcessingElement_26_U0"},
			{"ID" : "788", "Name" : "ProcessingElement_27_U0"},
			{"ID" : "817", "Name" : "ProcessingElement_28_U0"},
			{"ID" : "846", "Name" : "ProcessingElement_29_U0"},
			{"ID" : "875", "Name" : "ProcessingElement_30_U0"},
			{"ID" : "904", "Name" : "ProcessingElement_31_U0"}],
		"OutputProcess" : [
			{"ID" : "933", "Name" : "ProcessingElement_U0"},
			{"ID" : "966", "Name" : "WriteC_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "ReadA_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "ReadB_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "966", "SubInstance" : "WriteC_U0", "Port" : "gmem2"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["966"], "DependentChan" : "971", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "c_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ReadA_U0", "Parent" : "0", "Child" : ["7", "10", "11"],
		"CDFG" : "ReadA",
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
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "gmem0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "aSplit_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "972", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "973", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "974", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "975", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "976", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "977", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "978", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "979", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "980", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "981", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "982", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "983", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "984", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "985", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "986", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aSplit_15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "987", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Port" : "aSplit_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n_c5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "988", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k_c8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "989", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_c8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "990", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c13_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ReadA_U0.grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152", "Parent" : "6", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ReadA_U0.grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152.mul_32s_28ns_32_1_1_U3", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ReadA_U0.grp_ReadA_Pipeline_ReadA_N0_ReadA_M0_ReadA_K0_ReadA_N1_ReadA_N2_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ReadA_U0.mul_24ns_37ns_60_1_1_U28", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ReadA_U0.mul_24ns_60ns_83_1_1_U29", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.TransposeA_U0", "Parent" : "0", "Child" : ["13", "15", "16"],
		"CDFG" : "TransposeA",
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
		"StartSource" : "6",
		"StartFifo" : "start_for_TransposeA_U0_U",
		"Port" : [
			{"Name" : "aSplit_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "972", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "973", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "974", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "975", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "976", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "977", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "978", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "979", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "980", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "981", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "982", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "983", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "984", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "985", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "986", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aSplit_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "987", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aSplit_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "aPipes_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["34"], "DependentChan" : "991", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Port" : "aPipes_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "988", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "989", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "990", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.TransposeA_U0.grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96", "Parent" : "12", "Child" : ["14"],
		"CDFG" : "TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1",
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
			{"Name" : "bound16", "Type" : "None", "Direction" : "I"},
			{"Name" : "aPipes_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "aSplit_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aSplit_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aSplit_15_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.TransposeA_U0.grp_TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.TransposeA_U0.mul_24ns_41ns_64_1_1_U77", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.TransposeA_U0.mul_24ns_64ns_87_1_1_U78", "Parent" : "12"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ReadB_U0", "Parent" : "0", "Child" : ["18", "21", "22"],
		"CDFG" : "ReadB",
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
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_ReadB_Pipeline_ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1_fu_122", "Port" : "gmem1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "memory", "Type" : "None", "Direction" : "I"},
			{"Name" : "bMemory", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "992", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_ReadB_Pipeline_ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1_fu_122", "Port" : "bMemory", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n_c4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "993", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k_c7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "994", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_c7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "995", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c12_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ReadB_U0.grp_ReadB_Pipeline_ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1_fu_122", "Parent" : "17", "Child" : ["19", "20"],
		"CDFG" : "ReadB_Pipeline_ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1",
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
			{"Name" : "bound18", "Type" : "None", "Direction" : "I"},
			{"Name" : "bMemory", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bMemory_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "memory", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter75", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter75", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ReadB_U0.grp_ReadB_Pipeline_ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1_fu_122.mul_32s_28ns_32_1_1_U101", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ReadB_U0.grp_ReadB_Pipeline_ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ReadB_U0.mul_24ns_37ns_60_1_1_U110", "Parent" : "17"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ReadB_U0.mul_24ns_60ns_83_1_1_U111", "Parent" : "17"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvertWidthB_U0", "Parent" : "0", "Child" : ["24", "26", "27"],
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
		"StartSource" : "17",
		"StartFifo" : "start_for_ConvertWidthB_U0_U",
		"Port" : [
			{"Name" : "bMemory", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "992", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98", "Port" : "bMemory", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bFeed", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "996", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98", "Port" : "bFeed", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "993", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "994", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "995", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_n_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "997", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k_c6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "998", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_c6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "999", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c11_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertWidthB_U0.grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98", "Parent" : "23", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvertWidthB_U0.grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertWidthB_U0.mul_24ns_32ns_55_1_1_U124", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertWidthB_U0.mul_55s_24ns_55_1_1_U125", "Parent" : "23"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FeedB_U0", "Parent" : "0", "Child" : ["29", "30", "32"],
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
		"StartSource" : "23",
		"StartFifo" : "start_for_FeedB_U0_U",
		"Port" : [
			{"Name" : "bFeed", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "996", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123", "Port" : "bFeed", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "bPipes_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["34"], "DependentChan" : "1000", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123", "Port" : "bPipes_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "997", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "998", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "999", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "FeedB_K", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FeedB_OuterTile_M", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FeedB_OuterTile_N", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FeedB_U0.buffer_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FeedB_U0.grp_FeedB_Pipeline_1_fu_118", "Parent" : "28", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FeedB_U0.grp_FeedB_Pipeline_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FeedB_U0.grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123", "Parent" : "28", "Child" : ["33"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.FeedB_U0.grp_FeedB_Pipeline_FeedB_Pipeline_N_FeedB_Pipeline_M_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0", "Parent" : "0", "Child" : ["35", "36", "37", "39", "41", "43", "61"],
		"CDFG" : "ProcessingElement_1",
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
			{"Name" : "aPipes_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "991", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_ProcessingElement_1_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_180", "Port" : "aPipes_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "43", "SubInstance" : "grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189", "Port" : "aPipes_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "1001", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_ProcessingElement_1_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_180", "Port" : "aPipes_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "43", "SubInstance" : "grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189", "Port" : "aPipes_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["28"], "DependentChan" : "1000", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189", "Port" : "bPipes_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "1002", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189", "Port" : "bPipes_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["962"], "DependentChan" : "1003", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_ProcessingElement_1_Pipeline_WriteC_Flattened_fu_211", "Port" : "cPipes_0", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "1004", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_ProcessingElement_1_Pipeline_WriteC_Flattened_fu_211", "Port" : "cPipes_1", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n_c1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["962"], "DependentChan" : "1005", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["962"], "DependentChan" : "1006", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Collapse_K", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_M", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_N", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.aBuffer_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.cBuffer_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_1_fu_168", "Parent" : "34", "Child" : ["38"],
		"CDFG" : "ProcessingElement_1_Pipeline_1",
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
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_1_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_2_fu_174", "Parent" : "34", "Child" : ["40"],
		"CDFG" : "ProcessingElement_1_Pipeline_2",
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_2_fu_174.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_180", "Parent" : "34", "Child" : ["42"],
		"CDFG" : "ProcessingElement_1_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189", "Parent" : "34", "Child" : ["44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_1_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U151", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U152", "Parent" : "43"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U153", "Parent" : "43"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U154", "Parent" : "43"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U155", "Parent" : "43"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U156", "Parent" : "43"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U157", "Parent" : "43"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fadd_32ns_32ns_32_3_full_dsp_1_U158", "Parent" : "43"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U159", "Parent" : "43"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U160", "Parent" : "43"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U161", "Parent" : "43"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U162", "Parent" : "43"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U163", "Parent" : "43"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U164", "Parent" : "43"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U165", "Parent" : "43"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.fmul_32ns_32ns_32_2_max_dsp_1_U166", "Parent" : "43"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M_fu_189.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_WriteC_Flattened_fu_211", "Parent" : "34", "Child" : ["62"],
		"CDFG" : "ProcessingElement_1_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32770", "EstimateLatencyMax" : "32770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_1_U0.grp_ProcessingElement_1_Pipeline_WriteC_Flattened_fu_211.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0", "Parent" : "0", "Child" : ["64", "65", "66", "68", "70", "72", "90"],
		"CDFG" : "ProcessingElement_2",
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
			{"Name" : "aPipes_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "1001", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_1", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "70", "SubInstance" : "grp_ProcessingElement_2_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["92"], "DependentChan" : "1007", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_2", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "70", "SubInstance" : "grp_ProcessingElement_2_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "1002", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["92"], "DependentChan" : "1008", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["34"], "DependentChan" : "1004", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_ProcessingElement_2_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_1", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["92"], "DependentChan" : "1009", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_ProcessingElement_2_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_2", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.aBuffer_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.cBuffer_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_1_fu_136", "Parent" : "63", "Child" : ["67"],
		"CDFG" : "ProcessingElement_2_Pipeline_1",
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
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_2_fu_142", "Parent" : "63", "Child" : ["69"],
		"CDFG" : "ProcessingElement_2_Pipeline_2",
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "63", "Child" : ["71"],
		"CDFG" : "ProcessingElement_2_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "498", "EstimateLatencyMax" : "498",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "63", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
		"CDFG" : "ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_2_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U204", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U205", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U206", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U207", "Parent" : "72"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U208", "Parent" : "72"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U209", "Parent" : "72"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U210", "Parent" : "72"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U211", "Parent" : "72"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U212", "Parent" : "72"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U213", "Parent" : "72"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U214", "Parent" : "72"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U215", "Parent" : "72"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U216", "Parent" : "72"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U217", "Parent" : "72"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U218", "Parent" : "72"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U219", "Parent" : "72"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_WriteC_Flattened_fu_179", "Parent" : "63", "Child" : ["91"],
		"CDFG" : "ProcessingElement_2_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31746", "EstimateLatencyMax" : "31746",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_2_U0.grp_ProcessingElement_2_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0", "Parent" : "0", "Child" : ["93", "94", "95", "97", "99", "101", "119"],
		"CDFG" : "ProcessingElement_3",
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
			{"Name" : "aPipes_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "1007", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_ProcessingElement_3_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_2", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "101", "SubInstance" : "grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["121"], "DependentChan" : "1010", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_ProcessingElement_3_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_3", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "101", "SubInstance" : "grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "1008", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["121"], "DependentChan" : "1011", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "1009", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_ProcessingElement_3_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_2", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["121"], "DependentChan" : "1012", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_ProcessingElement_3_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_3", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.aBuffer_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.cBuffer_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_1_fu_136", "Parent" : "92", "Child" : ["96"],
		"CDFG" : "ProcessingElement_3_Pipeline_1",
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
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_2_fu_142", "Parent" : "92", "Child" : ["98"],
		"CDFG" : "ProcessingElement_3_Pipeline_2",
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
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "92", "Child" : ["100"],
		"CDFG" : "ProcessingElement_3_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "482", "EstimateLatencyMax" : "482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "92", "Child" : ["102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118"],
		"CDFG" : "ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_3_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U253", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U254", "Parent" : "101"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U255", "Parent" : "101"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U256", "Parent" : "101"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U257", "Parent" : "101"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U258", "Parent" : "101"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U259", "Parent" : "101"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U260", "Parent" : "101"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U261", "Parent" : "101"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U262", "Parent" : "101"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U263", "Parent" : "101"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U264", "Parent" : "101"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U265", "Parent" : "101"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U266", "Parent" : "101"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U267", "Parent" : "101"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U268", "Parent" : "101"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_WriteC_Flattened_fu_179", "Parent" : "92", "Child" : ["120"],
		"CDFG" : "ProcessingElement_3_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30722", "EstimateLatencyMax" : "30722",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_3_U0.grp_ProcessingElement_3_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0", "Parent" : "0", "Child" : ["122", "123", "124", "126", "128", "130", "148"],
		"CDFG" : "ProcessingElement_4",
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
			{"Name" : "aPipes_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["92"], "DependentChan" : "1010", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_3", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "128", "SubInstance" : "grp_ProcessingElement_4_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["150"], "DependentChan" : "1013", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_4", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "128", "SubInstance" : "grp_ProcessingElement_4_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["92"], "DependentChan" : "1011", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["150"], "DependentChan" : "1014", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["92"], "DependentChan" : "1012", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_ProcessingElement_4_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_3", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["150"], "DependentChan" : "1015", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_ProcessingElement_4_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_4", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.aBuffer_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.cBuffer_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_1_fu_136", "Parent" : "121", "Child" : ["125"],
		"CDFG" : "ProcessingElement_4_Pipeline_1",
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
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_2_fu_142", "Parent" : "121", "Child" : ["127"],
		"CDFG" : "ProcessingElement_4_Pipeline_2",
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
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "121", "Child" : ["129"],
		"CDFG" : "ProcessingElement_4_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "466", "EstimateLatencyMax" : "466",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "121", "Child" : ["131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147"],
		"CDFG" : "ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_4_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U302", "Parent" : "130"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U303", "Parent" : "130"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U304", "Parent" : "130"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U305", "Parent" : "130"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U306", "Parent" : "130"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U307", "Parent" : "130"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U308", "Parent" : "130"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U309", "Parent" : "130"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U310", "Parent" : "130"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U311", "Parent" : "130"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U312", "Parent" : "130"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U313", "Parent" : "130"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U314", "Parent" : "130"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U315", "Parent" : "130"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U316", "Parent" : "130"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U317", "Parent" : "130"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_WriteC_Flattened_fu_179", "Parent" : "121", "Child" : ["149"],
		"CDFG" : "ProcessingElement_4_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29698", "EstimateLatencyMax" : "29698",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_4_U0.grp_ProcessingElement_4_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0", "Parent" : "0", "Child" : ["151", "152", "153", "155", "157", "159", "177"],
		"CDFG" : "ProcessingElement_5",
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
			{"Name" : "aPipes_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["121"], "DependentChan" : "1013", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_ProcessingElement_5_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_4", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "159", "SubInstance" : "grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["179"], "DependentChan" : "1016", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_ProcessingElement_5_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_5", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "159", "SubInstance" : "grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["121"], "DependentChan" : "1014", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["179"], "DependentChan" : "1017", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["121"], "DependentChan" : "1015", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_ProcessingElement_5_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_4", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["179"], "DependentChan" : "1018", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_ProcessingElement_5_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_5", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.aBuffer_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.cBuffer_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_1_fu_136", "Parent" : "150", "Child" : ["154"],
		"CDFG" : "ProcessingElement_5_Pipeline_1",
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
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_2_fu_142", "Parent" : "150", "Child" : ["156"],
		"CDFG" : "ProcessingElement_5_Pipeline_2",
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
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "150", "Child" : ["158"],
		"CDFG" : "ProcessingElement_5_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "450", "EstimateLatencyMax" : "450",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "150", "Child" : ["160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176"],
		"CDFG" : "ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_5_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U351", "Parent" : "159"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U352", "Parent" : "159"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U353", "Parent" : "159"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U354", "Parent" : "159"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U355", "Parent" : "159"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U356", "Parent" : "159"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U357", "Parent" : "159"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U358", "Parent" : "159"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U359", "Parent" : "159"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U360", "Parent" : "159"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U361", "Parent" : "159"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U362", "Parent" : "159"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U363", "Parent" : "159"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U364", "Parent" : "159"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U365", "Parent" : "159"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U366", "Parent" : "159"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "159"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_WriteC_Flattened_fu_179", "Parent" : "150", "Child" : ["178"],
		"CDFG" : "ProcessingElement_5_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28674", "EstimateLatencyMax" : "28674",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_5_U0.grp_ProcessingElement_5_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0", "Parent" : "0", "Child" : ["180", "181", "182", "184", "186", "188", "206"],
		"CDFG" : "ProcessingElement_6",
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
			{"Name" : "aPipes_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["150"], "DependentChan" : "1016", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_5", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "186", "SubInstance" : "grp_ProcessingElement_6_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["208"], "DependentChan" : "1019", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_6", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "186", "SubInstance" : "grp_ProcessingElement_6_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["150"], "DependentChan" : "1017", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["208"], "DependentChan" : "1020", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["150"], "DependentChan" : "1018", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_ProcessingElement_6_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_5", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["208"], "DependentChan" : "1021", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_ProcessingElement_6_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_6", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.aBuffer_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.cBuffer_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_1_fu_136", "Parent" : "179", "Child" : ["183"],
		"CDFG" : "ProcessingElement_6_Pipeline_1",
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
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_2_fu_142", "Parent" : "179", "Child" : ["185"],
		"CDFG" : "ProcessingElement_6_Pipeline_2",
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
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "179", "Child" : ["187"],
		"CDFG" : "ProcessingElement_6_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "434", "EstimateLatencyMax" : "434",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "179", "Child" : ["189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205"],
		"CDFG" : "ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_6_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U400", "Parent" : "188"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U401", "Parent" : "188"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U402", "Parent" : "188"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U403", "Parent" : "188"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U404", "Parent" : "188"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U405", "Parent" : "188"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U406", "Parent" : "188"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U407", "Parent" : "188"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U408", "Parent" : "188"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U409", "Parent" : "188"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U410", "Parent" : "188"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U411", "Parent" : "188"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U412", "Parent" : "188"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U413", "Parent" : "188"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U414", "Parent" : "188"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U415", "Parent" : "188"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_WriteC_Flattened_fu_179", "Parent" : "179", "Child" : ["207"],
		"CDFG" : "ProcessingElement_6_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27650", "EstimateLatencyMax" : "27650",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_6_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_6_U0.grp_ProcessingElement_6_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0", "Parent" : "0", "Child" : ["209", "210", "211", "213", "215", "217", "235"],
		"CDFG" : "ProcessingElement_7",
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
			{"Name" : "aPipes_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["179"], "DependentChan" : "1019", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_ProcessingElement_7_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_6", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "217", "SubInstance" : "grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["237"], "DependentChan" : "1022", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_ProcessingElement_7_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_7", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "217", "SubInstance" : "grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["179"], "DependentChan" : "1020", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["237"], "DependentChan" : "1023", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["179"], "DependentChan" : "1021", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_ProcessingElement_7_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_6", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["237"], "DependentChan" : "1024", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_ProcessingElement_7_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_7", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.aBuffer_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.cBuffer_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_1_fu_136", "Parent" : "208", "Child" : ["212"],
		"CDFG" : "ProcessingElement_7_Pipeline_1",
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
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_2_fu_142", "Parent" : "208", "Child" : ["214"],
		"CDFG" : "ProcessingElement_7_Pipeline_2",
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
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "208", "Child" : ["216"],
		"CDFG" : "ProcessingElement_7_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "418", "EstimateLatencyMax" : "418",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "208", "Child" : ["218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234"],
		"CDFG" : "ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_7_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U449", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U450", "Parent" : "217"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U451", "Parent" : "217"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U452", "Parent" : "217"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U453", "Parent" : "217"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U454", "Parent" : "217"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U455", "Parent" : "217"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U456", "Parent" : "217"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U457", "Parent" : "217"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U458", "Parent" : "217"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U459", "Parent" : "217"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U460", "Parent" : "217"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U461", "Parent" : "217"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U462", "Parent" : "217"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U463", "Parent" : "217"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U464", "Parent" : "217"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "217"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_WriteC_Flattened_fu_179", "Parent" : "208", "Child" : ["236"],
		"CDFG" : "ProcessingElement_7_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26626", "EstimateLatencyMax" : "26626",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_7_U0.grp_ProcessingElement_7_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0", "Parent" : "0", "Child" : ["238", "239", "240", "242", "244", "246", "264"],
		"CDFG" : "ProcessingElement_8",
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
			{"Name" : "aPipes_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["208"], "DependentChan" : "1022", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_7", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "244", "SubInstance" : "grp_ProcessingElement_8_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "1025", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "244", "SubInstance" : "grp_ProcessingElement_8_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["208"], "DependentChan" : "1023", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "1026", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["208"], "DependentChan" : "1024", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_ProcessingElement_8_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_7", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["266"], "DependentChan" : "1027", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_ProcessingElement_8_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.aBuffer_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.cBuffer_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_1_fu_136", "Parent" : "237", "Child" : ["241"],
		"CDFG" : "ProcessingElement_8_Pipeline_1",
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
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_2_fu_142", "Parent" : "237", "Child" : ["243"],
		"CDFG" : "ProcessingElement_8_Pipeline_2",
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
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "237", "Child" : ["245"],
		"CDFG" : "ProcessingElement_8_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_8_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "237", "Child" : ["247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263"],
		"CDFG" : "ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_8_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_8_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U498", "Parent" : "246"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U499", "Parent" : "246"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U500", "Parent" : "246"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U501", "Parent" : "246"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U502", "Parent" : "246"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U503", "Parent" : "246"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U504", "Parent" : "246"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U505", "Parent" : "246"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U506", "Parent" : "246"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U507", "Parent" : "246"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U508", "Parent" : "246"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U509", "Parent" : "246"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U510", "Parent" : "246"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U511", "Parent" : "246"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U512", "Parent" : "246"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U513", "Parent" : "246"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "246"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_WriteC_Flattened_fu_179", "Parent" : "237", "Child" : ["265"],
		"CDFG" : "ProcessingElement_8_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25602", "EstimateLatencyMax" : "25602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_8_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_8_U0.grp_ProcessingElement_8_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0", "Parent" : "0", "Child" : ["267", "268", "269", "271", "273", "275", "293"],
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
			{"Name" : "aPipes_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["237"], "DependentChan" : "1025", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "273", "SubInstance" : "grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["295"], "DependentChan" : "1028", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "273", "SubInstance" : "grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["237"], "DependentChan" : "1026", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["295"], "DependentChan" : "1029", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["237"], "DependentChan" : "1027", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_8", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["295"], "DependentChan" : "1030", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.aBuffer_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.cBuffer_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_1_fu_136", "Parent" : "266", "Child" : ["270"],
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
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_2_fu_142", "Parent" : "266", "Child" : ["272"],
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
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "266", "Child" : ["274"],
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
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "266", "Child" : ["276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292"],
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
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U547", "Parent" : "275"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U548", "Parent" : "275"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U549", "Parent" : "275"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U550", "Parent" : "275"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U551", "Parent" : "275"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U552", "Parent" : "275"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U553", "Parent" : "275"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U554", "Parent" : "275"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U555", "Parent" : "275"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U556", "Parent" : "275"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U557", "Parent" : "275"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U558", "Parent" : "275"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U559", "Parent" : "275"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U560", "Parent" : "275"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U561", "Parent" : "275"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U562", "Parent" : "275"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179", "Parent" : "266", "Child" : ["294"],
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
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_9_U0.grp_ProcessingElement_9_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0", "Parent" : "0", "Child" : ["296", "297", "298", "300", "302", "304", "322"],
		"CDFG" : "ProcessingElement_10",
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
			{"Name" : "aPipes_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["266"], "DependentChan" : "1028", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "302", "SubInstance" : "grp_ProcessingElement_10_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["324"], "DependentChan" : "1031", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_10", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "302", "SubInstance" : "grp_ProcessingElement_10_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["266"], "DependentChan" : "1029", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["324"], "DependentChan" : "1032", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["266"], "DependentChan" : "1030", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "322", "SubInstance" : "grp_ProcessingElement_10_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_9", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["324"], "DependentChan" : "1033", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "322", "SubInstance" : "grp_ProcessingElement_10_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_10", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.aBuffer_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.cBuffer_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_1_fu_136", "Parent" : "295", "Child" : ["299"],
		"CDFG" : "ProcessingElement_10_Pipeline_1",
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
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_2_fu_142", "Parent" : "295", "Child" : ["301"],
		"CDFG" : "ProcessingElement_10_Pipeline_2",
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
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "295", "Child" : ["303"],
		"CDFG" : "ProcessingElement_10_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "370", "EstimateLatencyMax" : "370",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "295", "Child" : ["305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321"],
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
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U596", "Parent" : "304"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U597", "Parent" : "304"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U598", "Parent" : "304"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U599", "Parent" : "304"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U600", "Parent" : "304"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U601", "Parent" : "304"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U602", "Parent" : "304"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U603", "Parent" : "304"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U604", "Parent" : "304"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U605", "Parent" : "304"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U606", "Parent" : "304"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U607", "Parent" : "304"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U608", "Parent" : "304"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U609", "Parent" : "304"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U610", "Parent" : "304"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U611", "Parent" : "304"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_WriteC_Flattened_fu_179", "Parent" : "295", "Child" : ["323"],
		"CDFG" : "ProcessingElement_10_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23554", "EstimateLatencyMax" : "23554",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_10_U0.grp_ProcessingElement_10_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0", "Parent" : "0", "Child" : ["325", "326", "327", "329", "331", "333", "351"],
		"CDFG" : "ProcessingElement_11",
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
			{"Name" : "aPipes_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["295"], "DependentChan" : "1031", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_ProcessingElement_11_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_10", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "333", "SubInstance" : "grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["353"], "DependentChan" : "1034", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_ProcessingElement_11_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_11", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "333", "SubInstance" : "grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["295"], "DependentChan" : "1032", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["353"], "DependentChan" : "1035", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["295"], "DependentChan" : "1033", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_ProcessingElement_11_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_10", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["353"], "DependentChan" : "1036", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "351", "SubInstance" : "grp_ProcessingElement_11_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_11", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.aBuffer_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.cBuffer_U", "Parent" : "324"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_1_fu_136", "Parent" : "324", "Child" : ["328"],
		"CDFG" : "ProcessingElement_11_Pipeline_1",
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
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_2_fu_142", "Parent" : "324", "Child" : ["330"],
		"CDFG" : "ProcessingElement_11_Pipeline_2",
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
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "324", "Child" : ["332"],
		"CDFG" : "ProcessingElement_11_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "354", "EstimateLatencyMax" : "354",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "324", "Child" : ["334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350"],
		"CDFG" : "ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_11_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U645", "Parent" : "333"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U646", "Parent" : "333"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U647", "Parent" : "333"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U648", "Parent" : "333"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U649", "Parent" : "333"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U650", "Parent" : "333"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U651", "Parent" : "333"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U652", "Parent" : "333"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U653", "Parent" : "333"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U654", "Parent" : "333"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U655", "Parent" : "333"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U656", "Parent" : "333"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U657", "Parent" : "333"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U658", "Parent" : "333"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U659", "Parent" : "333"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U660", "Parent" : "333"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_WriteC_Flattened_fu_179", "Parent" : "324", "Child" : ["352"],
		"CDFG" : "ProcessingElement_11_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22530", "EstimateLatencyMax" : "22530",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_11_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_11_U0.grp_ProcessingElement_11_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0", "Parent" : "0", "Child" : ["354", "355", "356", "358", "360", "362", "380"],
		"CDFG" : "ProcessingElement_12",
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
			{"Name" : "aPipes_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["324"], "DependentChan" : "1034", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_11", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "360", "SubInstance" : "grp_ProcessingElement_12_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["382"], "DependentChan" : "1037", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_12", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "360", "SubInstance" : "grp_ProcessingElement_12_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["324"], "DependentChan" : "1035", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["382"], "DependentChan" : "1038", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["324"], "DependentChan" : "1036", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_ProcessingElement_12_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_11", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["382"], "DependentChan" : "1039", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_ProcessingElement_12_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_12", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.aBuffer_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.cBuffer_U", "Parent" : "353"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_1_fu_136", "Parent" : "353", "Child" : ["357"],
		"CDFG" : "ProcessingElement_12_Pipeline_1",
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
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_2_fu_142", "Parent" : "353", "Child" : ["359"],
		"CDFG" : "ProcessingElement_12_Pipeline_2",
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
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "358"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "353", "Child" : ["361"],
		"CDFG" : "ProcessingElement_12_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "338", "EstimateLatencyMax" : "338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_12_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "353", "Child" : ["363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379"],
		"CDFG" : "ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_12_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_12_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U694", "Parent" : "362"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U695", "Parent" : "362"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U696", "Parent" : "362"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U697", "Parent" : "362"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U698", "Parent" : "362"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U699", "Parent" : "362"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U700", "Parent" : "362"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U701", "Parent" : "362"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U702", "Parent" : "362"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U703", "Parent" : "362"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U704", "Parent" : "362"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U705", "Parent" : "362"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U706", "Parent" : "362"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U707", "Parent" : "362"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U708", "Parent" : "362"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U709", "Parent" : "362"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "362"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_WriteC_Flattened_fu_179", "Parent" : "353", "Child" : ["381"],
		"CDFG" : "ProcessingElement_12_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21506", "EstimateLatencyMax" : "21506",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_12_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_12_U0.grp_ProcessingElement_12_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0", "Parent" : "0", "Child" : ["383", "384", "385", "387", "389", "391", "409"],
		"CDFG" : "ProcessingElement_13",
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
			{"Name" : "aPipes_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["353"], "DependentChan" : "1037", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_12", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "389", "SubInstance" : "grp_ProcessingElement_13_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["411"], "DependentChan" : "1040", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_13", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "389", "SubInstance" : "grp_ProcessingElement_13_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["353"], "DependentChan" : "1038", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["411"], "DependentChan" : "1041", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["353"], "DependentChan" : "1039", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_ProcessingElement_13_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_12", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["411"], "DependentChan" : "1042", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_ProcessingElement_13_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_13", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.aBuffer_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.cBuffer_U", "Parent" : "382"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_1_fu_136", "Parent" : "382", "Child" : ["386"],
		"CDFG" : "ProcessingElement_13_Pipeline_1",
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
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_2_fu_142", "Parent" : "382", "Child" : ["388"],
		"CDFG" : "ProcessingElement_13_Pipeline_2",
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
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "382", "Child" : ["390"],
		"CDFG" : "ProcessingElement_13_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "322", "EstimateLatencyMax" : "322",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "382", "Child" : ["392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408"],
		"CDFG" : "ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_13_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U743", "Parent" : "391"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U744", "Parent" : "391"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U745", "Parent" : "391"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U746", "Parent" : "391"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U747", "Parent" : "391"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U748", "Parent" : "391"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U749", "Parent" : "391"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U750", "Parent" : "391"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U751", "Parent" : "391"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U752", "Parent" : "391"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U753", "Parent" : "391"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U754", "Parent" : "391"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U755", "Parent" : "391"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U756", "Parent" : "391"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U757", "Parent" : "391"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U758", "Parent" : "391"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "391"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_WriteC_Flattened_fu_179", "Parent" : "382", "Child" : ["410"],
		"CDFG" : "ProcessingElement_13_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20482", "EstimateLatencyMax" : "20482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_13_U0.grp_ProcessingElement_13_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0", "Parent" : "0", "Child" : ["412", "413", "414", "416", "418", "420", "438"],
		"CDFG" : "ProcessingElement_14",
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
			{"Name" : "aPipes_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["382"], "DependentChan" : "1040", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "418", "SubInstance" : "grp_ProcessingElement_14_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_13", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "420", "SubInstance" : "grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["440"], "DependentChan" : "1043", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "418", "SubInstance" : "grp_ProcessingElement_14_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_14", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "420", "SubInstance" : "grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["382"], "DependentChan" : "1041", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["440"], "DependentChan" : "1044", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["382"], "DependentChan" : "1042", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "438", "SubInstance" : "grp_ProcessingElement_14_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_13", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["440"], "DependentChan" : "1045", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "438", "SubInstance" : "grp_ProcessingElement_14_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_14", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.aBuffer_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.cBuffer_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_1_fu_136", "Parent" : "411", "Child" : ["415"],
		"CDFG" : "ProcessingElement_14_Pipeline_1",
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
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_2_fu_142", "Parent" : "411", "Child" : ["417"],
		"CDFG" : "ProcessingElement_14_Pipeline_2",
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
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "411", "Child" : ["419"],
		"CDFG" : "ProcessingElement_14_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "306", "EstimateLatencyMax" : "306",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_14_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "411", "Child" : ["421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437"],
		"CDFG" : "ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_14_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_14_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U792", "Parent" : "420"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U793", "Parent" : "420"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U794", "Parent" : "420"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U795", "Parent" : "420"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U796", "Parent" : "420"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U797", "Parent" : "420"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U798", "Parent" : "420"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U799", "Parent" : "420"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U800", "Parent" : "420"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U801", "Parent" : "420"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U802", "Parent" : "420"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U803", "Parent" : "420"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U804", "Parent" : "420"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U805", "Parent" : "420"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U806", "Parent" : "420"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U807", "Parent" : "420"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "420"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_WriteC_Flattened_fu_179", "Parent" : "411", "Child" : ["439"],
		"CDFG" : "ProcessingElement_14_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19458", "EstimateLatencyMax" : "19458",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_14_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_14_U0.grp_ProcessingElement_14_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0", "Parent" : "0", "Child" : ["441", "442", "443", "445", "447", "449", "467"],
		"CDFG" : "ProcessingElement_15",
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
			{"Name" : "aPipes_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["411"], "DependentChan" : "1043", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "447", "SubInstance" : "grp_ProcessingElement_15_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_14", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "449", "SubInstance" : "grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["469"], "DependentChan" : "1046", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "447", "SubInstance" : "grp_ProcessingElement_15_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_15", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "449", "SubInstance" : "grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["411"], "DependentChan" : "1044", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["469"], "DependentChan" : "1047", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["411"], "DependentChan" : "1045", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "467", "SubInstance" : "grp_ProcessingElement_15_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_14", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["469"], "DependentChan" : "1048", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "467", "SubInstance" : "grp_ProcessingElement_15_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_15", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.aBuffer_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.cBuffer_U", "Parent" : "440"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_1_fu_136", "Parent" : "440", "Child" : ["444"],
		"CDFG" : "ProcessingElement_15_Pipeline_1",
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
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_2_fu_142", "Parent" : "440", "Child" : ["446"],
		"CDFG" : "ProcessingElement_15_Pipeline_2",
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
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "440", "Child" : ["448"],
		"CDFG" : "ProcessingElement_15_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290", "EstimateLatencyMax" : "290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_15_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "447"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "440", "Child" : ["450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466"],
		"CDFG" : "ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_15_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_15_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U841", "Parent" : "449"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U842", "Parent" : "449"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U843", "Parent" : "449"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U844", "Parent" : "449"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U845", "Parent" : "449"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U846", "Parent" : "449"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U847", "Parent" : "449"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U848", "Parent" : "449"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U849", "Parent" : "449"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U850", "Parent" : "449"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U851", "Parent" : "449"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U852", "Parent" : "449"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U853", "Parent" : "449"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U854", "Parent" : "449"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U855", "Parent" : "449"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U856", "Parent" : "449"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "449"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_WriteC_Flattened_fu_179", "Parent" : "440", "Child" : ["468"],
		"CDFG" : "ProcessingElement_15_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18434", "EstimateLatencyMax" : "18434",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_15_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_15_U0.grp_ProcessingElement_15_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0", "Parent" : "0", "Child" : ["470", "471", "472", "474", "476", "478", "496"],
		"CDFG" : "ProcessingElement_16",
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
			{"Name" : "aPipes_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["440"], "DependentChan" : "1046", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "478", "SubInstance" : "grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_15", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "476", "SubInstance" : "grp_ProcessingElement_16_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["498"], "DependentChan" : "1049", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "478", "SubInstance" : "grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_16", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "476", "SubInstance" : "grp_ProcessingElement_16_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_16", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["440"], "DependentChan" : "1047", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "478", "SubInstance" : "grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["498"], "DependentChan" : "1050", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "478", "SubInstance" : "grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["440"], "DependentChan" : "1048", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "496", "SubInstance" : "grp_ProcessingElement_16_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_15", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["498"], "DependentChan" : "1051", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "496", "SubInstance" : "grp_ProcessingElement_16_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_16", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.aBuffer_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.cBuffer_U", "Parent" : "469"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_1_fu_136", "Parent" : "469", "Child" : ["473"],
		"CDFG" : "ProcessingElement_16_Pipeline_1",
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
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "472"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_2_fu_142", "Parent" : "469", "Child" : ["475"],
		"CDFG" : "ProcessingElement_16_Pipeline_2",
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
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "474"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "469", "Child" : ["477"],
		"CDFG" : "ProcessingElement_16_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "274", "EstimateLatencyMax" : "274",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_16_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "476"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "469", "Child" : ["479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495"],
		"CDFG" : "ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_16_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_16_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U890", "Parent" : "478"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U891", "Parent" : "478"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U892", "Parent" : "478"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U893", "Parent" : "478"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U894", "Parent" : "478"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U895", "Parent" : "478"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U896", "Parent" : "478"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U897", "Parent" : "478"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U898", "Parent" : "478"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U899", "Parent" : "478"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U900", "Parent" : "478"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U901", "Parent" : "478"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U902", "Parent" : "478"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U903", "Parent" : "478"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U904", "Parent" : "478"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U905", "Parent" : "478"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "478"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_WriteC_Flattened_fu_179", "Parent" : "469", "Child" : ["497"],
		"CDFG" : "ProcessingElement_16_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17410", "EstimateLatencyMax" : "17410",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_16_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_16_U0.grp_ProcessingElement_16_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "496"},
	{"ID" : "498", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0", "Parent" : "0", "Child" : ["499", "500", "501", "503", "505", "507", "525"],
		"CDFG" : "ProcessingElement_17",
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
			{"Name" : "aPipes_16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["469"], "DependentChan" : "1049", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "505", "SubInstance" : "grp_ProcessingElement_17_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_16", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "507", "SubInstance" : "grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["527"], "DependentChan" : "1052", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "505", "SubInstance" : "grp_ProcessingElement_17_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_17", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "507", "SubInstance" : "grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["469"], "DependentChan" : "1050", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "507", "SubInstance" : "grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["527"], "DependentChan" : "1053", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "507", "SubInstance" : "grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["469"], "DependentChan" : "1051", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "525", "SubInstance" : "grp_ProcessingElement_17_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_16", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["527"], "DependentChan" : "1054", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "525", "SubInstance" : "grp_ProcessingElement_17_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_17", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.aBuffer_U", "Parent" : "498"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.cBuffer_U", "Parent" : "498"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_1_fu_136", "Parent" : "498", "Child" : ["502"],
		"CDFG" : "ProcessingElement_17_Pipeline_1",
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
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "501"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_2_fu_142", "Parent" : "498", "Child" : ["504"],
		"CDFG" : "ProcessingElement_17_Pipeline_2",
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
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "503"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "498", "Child" : ["506"],
		"CDFG" : "ProcessingElement_17_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_17_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "505"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "498", "Child" : ["508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524"],
		"CDFG" : "ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_17_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_17_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U939", "Parent" : "507"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U940", "Parent" : "507"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U941", "Parent" : "507"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U942", "Parent" : "507"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U943", "Parent" : "507"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U944", "Parent" : "507"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U945", "Parent" : "507"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U946", "Parent" : "507"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U947", "Parent" : "507"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U948", "Parent" : "507"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U949", "Parent" : "507"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U950", "Parent" : "507"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U951", "Parent" : "507"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U952", "Parent" : "507"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U953", "Parent" : "507"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U954", "Parent" : "507"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "507"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_WriteC_Flattened_fu_179", "Parent" : "498", "Child" : ["526"],
		"CDFG" : "ProcessingElement_17_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_17", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_17_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_17_U0.grp_ProcessingElement_17_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "525"},
	{"ID" : "527", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0", "Parent" : "0", "Child" : ["528", "529", "530", "532", "534", "536", "554"],
		"CDFG" : "ProcessingElement_18",
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
			{"Name" : "aPipes_17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["498"], "DependentChan" : "1052", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "534", "SubInstance" : "grp_ProcessingElement_18_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_17", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "536", "SubInstance" : "grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["556"], "DependentChan" : "1055", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "534", "SubInstance" : "grp_ProcessingElement_18_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_18", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "536", "SubInstance" : "grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_18", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["498"], "DependentChan" : "1053", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "536", "SubInstance" : "grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_17", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["556"], "DependentChan" : "1056", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "536", "SubInstance" : "grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_18", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["498"], "DependentChan" : "1054", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "554", "SubInstance" : "grp_ProcessingElement_18_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_17", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["556"], "DependentChan" : "1057", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "554", "SubInstance" : "grp_ProcessingElement_18_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_18", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.aBuffer_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.cBuffer_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_1_fu_136", "Parent" : "527", "Child" : ["531"],
		"CDFG" : "ProcessingElement_18_Pipeline_1",
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
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_2_fu_142", "Parent" : "527", "Child" : ["533"],
		"CDFG" : "ProcessingElement_18_Pipeline_2",
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
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "532"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "527", "Child" : ["535"],
		"CDFG" : "ProcessingElement_18_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242", "EstimateLatencyMax" : "242",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_17", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_18", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_18_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "534"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "527", "Child" : ["537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553"],
		"CDFG" : "ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_17", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_18", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_18_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_17", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_18", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_18_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U988", "Parent" : "536"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U989", "Parent" : "536"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U990", "Parent" : "536"},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U991", "Parent" : "536"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U992", "Parent" : "536"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U993", "Parent" : "536"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U994", "Parent" : "536"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U995", "Parent" : "536"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U996", "Parent" : "536"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U997", "Parent" : "536"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U998", "Parent" : "536"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U999", "Parent" : "536"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1000", "Parent" : "536"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1001", "Parent" : "536"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1002", "Parent" : "536"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1003", "Parent" : "536"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "536"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_WriteC_Flattened_fu_179", "Parent" : "527", "Child" : ["555"],
		"CDFG" : "ProcessingElement_18_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15362", "EstimateLatencyMax" : "15362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_18", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_18_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_18_U0.grp_ProcessingElement_18_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "554"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0", "Parent" : "0", "Child" : ["557", "558", "559", "561", "563", "565", "583"],
		"CDFG" : "ProcessingElement_19",
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
			{"Name" : "aPipes_18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["527"], "DependentChan" : "1055", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_18", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "563", "SubInstance" : "grp_ProcessingElement_19_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_18", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["585"], "DependentChan" : "1058", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_19", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "563", "SubInstance" : "grp_ProcessingElement_19_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_19", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["527"], "DependentChan" : "1056", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_18", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["585"], "DependentChan" : "1059", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_19", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["527"], "DependentChan" : "1057", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "583", "SubInstance" : "grp_ProcessingElement_19_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_18", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["585"], "DependentChan" : "1060", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "583", "SubInstance" : "grp_ProcessingElement_19_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_19", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.aBuffer_U", "Parent" : "556"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.cBuffer_U", "Parent" : "556"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_1_fu_136", "Parent" : "556", "Child" : ["560"],
		"CDFG" : "ProcessingElement_19_Pipeline_1",
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
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "559"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_2_fu_142", "Parent" : "556", "Child" : ["562"],
		"CDFG" : "ProcessingElement_19_Pipeline_2",
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
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "561"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "556", "Child" : ["564"],
		"CDFG" : "ProcessingElement_19_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "226", "EstimateLatencyMax" : "226",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_18", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_19", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_19_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "556", "Child" : ["566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582"],
		"CDFG" : "ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_18", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_19", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_19_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_18", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_19", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_19_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1037", "Parent" : "565"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1038", "Parent" : "565"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1039", "Parent" : "565"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1040", "Parent" : "565"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1041", "Parent" : "565"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1042", "Parent" : "565"},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1043", "Parent" : "565"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1044", "Parent" : "565"},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1045", "Parent" : "565"},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1046", "Parent" : "565"},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1047", "Parent" : "565"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1048", "Parent" : "565"},
	{"ID" : "578", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1049", "Parent" : "565"},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1050", "Parent" : "565"},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1051", "Parent" : "565"},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1052", "Parent" : "565"},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "565"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_WriteC_Flattened_fu_179", "Parent" : "556", "Child" : ["584"],
		"CDFG" : "ProcessingElement_19_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14338", "EstimateLatencyMax" : "14338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_18", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_19", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_19_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_19_U0.grp_ProcessingElement_19_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "583"},
	{"ID" : "585", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0", "Parent" : "0", "Child" : ["586", "587", "588", "590", "592", "594", "612"],
		"CDFG" : "ProcessingElement_20",
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
			{"Name" : "aPipes_19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["556"], "DependentChan" : "1058", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "592", "SubInstance" : "grp_ProcessingElement_20_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_19", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "594", "SubInstance" : "grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_19", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["614"], "DependentChan" : "1061", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "592", "SubInstance" : "grp_ProcessingElement_20_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_20", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "594", "SubInstance" : "grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_20", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["556"], "DependentChan" : "1059", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "594", "SubInstance" : "grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_19", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["614"], "DependentChan" : "1062", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "594", "SubInstance" : "grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_20", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["556"], "DependentChan" : "1060", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "grp_ProcessingElement_20_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_19", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_20", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["614"], "DependentChan" : "1063", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "grp_ProcessingElement_20_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_20", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.aBuffer_U", "Parent" : "585"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.cBuffer_U", "Parent" : "585"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_1_fu_136", "Parent" : "585", "Child" : ["589"],
		"CDFG" : "ProcessingElement_20_Pipeline_1",
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
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "588"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_2_fu_142", "Parent" : "585", "Child" : ["591"],
		"CDFG" : "ProcessingElement_20_Pipeline_2",
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
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "590"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "585", "Child" : ["593"],
		"CDFG" : "ProcessingElement_20_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "210", "EstimateLatencyMax" : "210",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_19", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_20", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_20_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "593", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "592"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "585", "Child" : ["595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611"],
		"CDFG" : "ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_19", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_20", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_20_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_19", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_20", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_20_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1086", "Parent" : "594"},
	{"ID" : "596", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1087", "Parent" : "594"},
	{"ID" : "597", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1088", "Parent" : "594"},
	{"ID" : "598", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1089", "Parent" : "594"},
	{"ID" : "599", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1090", "Parent" : "594"},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1091", "Parent" : "594"},
	{"ID" : "601", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1092", "Parent" : "594"},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1093", "Parent" : "594"},
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1094", "Parent" : "594"},
	{"ID" : "604", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1095", "Parent" : "594"},
	{"ID" : "605", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1096", "Parent" : "594"},
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1097", "Parent" : "594"},
	{"ID" : "607", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1098", "Parent" : "594"},
	{"ID" : "608", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1099", "Parent" : "594"},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1100", "Parent" : "594"},
	{"ID" : "610", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1101", "Parent" : "594"},
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "594"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_WriteC_Flattened_fu_179", "Parent" : "585", "Child" : ["613"],
		"CDFG" : "ProcessingElement_20_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13314", "EstimateLatencyMax" : "13314",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_19", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_20", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_20_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_20_U0.grp_ProcessingElement_20_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "612"},
	{"ID" : "614", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0", "Parent" : "0", "Child" : ["615", "616", "617", "619", "621", "623", "641"],
		"CDFG" : "ProcessingElement_21",
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
			{"Name" : "aPipes_20", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["585"], "DependentChan" : "1061", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "623", "SubInstance" : "grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_20", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "621", "SubInstance" : "grp_ProcessingElement_21_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_20", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["643"], "DependentChan" : "1064", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "623", "SubInstance" : "grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_21", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "621", "SubInstance" : "grp_ProcessingElement_21_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_21", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_20", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["585"], "DependentChan" : "1062", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "623", "SubInstance" : "grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_20", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["643"], "DependentChan" : "1065", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "623", "SubInstance" : "grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_21", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["585"], "DependentChan" : "1063", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "641", "SubInstance" : "grp_ProcessingElement_21_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_20", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["643"], "DependentChan" : "1066", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "641", "SubInstance" : "grp_ProcessingElement_21_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_21", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.aBuffer_U", "Parent" : "614"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.cBuffer_U", "Parent" : "614"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_1_fu_136", "Parent" : "614", "Child" : ["618"],
		"CDFG" : "ProcessingElement_21_Pipeline_1",
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
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "617"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_2_fu_142", "Parent" : "614", "Child" : ["620"],
		"CDFG" : "ProcessingElement_21_Pipeline_2",
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
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "619"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "614", "Child" : ["622"],
		"CDFG" : "ProcessingElement_21_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_20", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_21", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_21_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "621"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "614", "Child" : ["624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640"],
		"CDFG" : "ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_20", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_21", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_21_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_20", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_21", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_21_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1135", "Parent" : "623"},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1136", "Parent" : "623"},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1137", "Parent" : "623"},
	{"ID" : "627", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1138", "Parent" : "623"},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1139", "Parent" : "623"},
	{"ID" : "629", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1140", "Parent" : "623"},
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1141", "Parent" : "623"},
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1142", "Parent" : "623"},
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1143", "Parent" : "623"},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1144", "Parent" : "623"},
	{"ID" : "634", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1145", "Parent" : "623"},
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1146", "Parent" : "623"},
	{"ID" : "636", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1147", "Parent" : "623"},
	{"ID" : "637", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1148", "Parent" : "623"},
	{"ID" : "638", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1149", "Parent" : "623"},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1150", "Parent" : "623"},
	{"ID" : "640", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "623"},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_WriteC_Flattened_fu_179", "Parent" : "614", "Child" : ["642"],
		"CDFG" : "ProcessingElement_21_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12290", "EstimateLatencyMax" : "12290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_20", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_21", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_21_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "642", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_21_U0.grp_ProcessingElement_21_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "641"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0", "Parent" : "0", "Child" : ["644", "645", "646", "648", "650", "652", "670"],
		"CDFG" : "ProcessingElement_22",
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
			{"Name" : "aPipes_21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["614"], "DependentChan" : "1064", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "grp_ProcessingElement_22_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_21", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "652", "SubInstance" : "grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_21", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["672"], "DependentChan" : "1067", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "650", "SubInstance" : "grp_ProcessingElement_22_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_22", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "652", "SubInstance" : "grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["614"], "DependentChan" : "1065", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_21", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["672"], "DependentChan" : "1068", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "652", "SubInstance" : "grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["614"], "DependentChan" : "1066", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "670", "SubInstance" : "grp_ProcessingElement_22_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_21", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["672"], "DependentChan" : "1069", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "670", "SubInstance" : "grp_ProcessingElement_22_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_22", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.aBuffer_U", "Parent" : "643"},
	{"ID" : "645", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.cBuffer_U", "Parent" : "643"},
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_1_fu_136", "Parent" : "643", "Child" : ["647"],
		"CDFG" : "ProcessingElement_22_Pipeline_1",
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
	{"ID" : "647", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "646"},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_2_fu_142", "Parent" : "643", "Child" : ["649"],
		"CDFG" : "ProcessingElement_22_Pipeline_2",
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
	{"ID" : "649", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "648"},
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "643", "Child" : ["651"],
		"CDFG" : "ProcessingElement_22_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "178", "EstimateLatencyMax" : "178",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_21", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_22", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_22_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "651", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "650"},
	{"ID" : "652", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "643", "Child" : ["653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669"],
		"CDFG" : "ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_21", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_22", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_22_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_21", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_22", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_22_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1184", "Parent" : "652"},
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1185", "Parent" : "652"},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1186", "Parent" : "652"},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1187", "Parent" : "652"},
	{"ID" : "657", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1188", "Parent" : "652"},
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1189", "Parent" : "652"},
	{"ID" : "659", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1190", "Parent" : "652"},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1191", "Parent" : "652"},
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1192", "Parent" : "652"},
	{"ID" : "662", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1193", "Parent" : "652"},
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1194", "Parent" : "652"},
	{"ID" : "664", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1195", "Parent" : "652"},
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1196", "Parent" : "652"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1197", "Parent" : "652"},
	{"ID" : "667", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1198", "Parent" : "652"},
	{"ID" : "668", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1199", "Parent" : "652"},
	{"ID" : "669", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "652"},
	{"ID" : "670", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_WriteC_Flattened_fu_179", "Parent" : "643", "Child" : ["671"],
		"CDFG" : "ProcessingElement_22_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11266", "EstimateLatencyMax" : "11266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_21", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_22", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_22_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "671", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_22_U0.grp_ProcessingElement_22_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "670"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0", "Parent" : "0", "Child" : ["673", "674", "675", "677", "679", "681", "699"],
		"CDFG" : "ProcessingElement_23",
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
			{"Name" : "aPipes_22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["643"], "DependentChan" : "1067", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "679", "SubInstance" : "grp_ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_22", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "681", "SubInstance" : "grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["701"], "DependentChan" : "1070", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "679", "SubInstance" : "grp_ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_23", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "681", "SubInstance" : "grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["643"], "DependentChan" : "1068", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "681", "SubInstance" : "grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_22", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["701"], "DependentChan" : "1071", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "681", "SubInstance" : "grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["643"], "DependentChan" : "1069", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "699", "SubInstance" : "grp_ProcessingElement_23_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_22", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["701"], "DependentChan" : "1072", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "699", "SubInstance" : "grp_ProcessingElement_23_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_23", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.aBuffer_U", "Parent" : "672"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.cBuffer_U", "Parent" : "672"},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_1_fu_136", "Parent" : "672", "Child" : ["676"],
		"CDFG" : "ProcessingElement_23_Pipeline_1",
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
	{"ID" : "676", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "675"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_2_fu_142", "Parent" : "672", "Child" : ["678"],
		"CDFG" : "ProcessingElement_23_Pipeline_2",
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
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "677"},
	{"ID" : "679", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "672", "Child" : ["680"],
		"CDFG" : "ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_22", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "680", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "679"},
	{"ID" : "681", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "672", "Child" : ["682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698"],
		"CDFG" : "ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_22", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_23_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_22", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "682", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1233", "Parent" : "681"},
	{"ID" : "683", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1234", "Parent" : "681"},
	{"ID" : "684", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1235", "Parent" : "681"},
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1236", "Parent" : "681"},
	{"ID" : "686", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1237", "Parent" : "681"},
	{"ID" : "687", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1238", "Parent" : "681"},
	{"ID" : "688", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1239", "Parent" : "681"},
	{"ID" : "689", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1240", "Parent" : "681"},
	{"ID" : "690", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1241", "Parent" : "681"},
	{"ID" : "691", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1242", "Parent" : "681"},
	{"ID" : "692", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1243", "Parent" : "681"},
	{"ID" : "693", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1244", "Parent" : "681"},
	{"ID" : "694", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1245", "Parent" : "681"},
	{"ID" : "695", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1246", "Parent" : "681"},
	{"ID" : "696", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1247", "Parent" : "681"},
	{"ID" : "697", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1248", "Parent" : "681"},
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "681"},
	{"ID" : "699", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_WriteC_Flattened_fu_179", "Parent" : "672", "Child" : ["700"],
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
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_23_U0.grp_ProcessingElement_23_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "699"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0", "Parent" : "0", "Child" : ["702", "703", "704", "706", "708", "710", "728"],
		"CDFG" : "ProcessingElement_24",
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
			{"Name" : "aPipes_23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["672"], "DependentChan" : "1070", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "708", "SubInstance" : "grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_23", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "710", "SubInstance" : "grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["730"], "DependentChan" : "1073", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "708", "SubInstance" : "grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_24", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "710", "SubInstance" : "grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["672"], "DependentChan" : "1071", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "710", "SubInstance" : "grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_23", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["730"], "DependentChan" : "1074", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "710", "SubInstance" : "grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["672"], "DependentChan" : "1072", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "728", "SubInstance" : "grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_23", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["730"], "DependentChan" : "1075", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "728", "SubInstance" : "grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_24", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.aBuffer_U", "Parent" : "701"},
	{"ID" : "703", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.cBuffer_U", "Parent" : "701"},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_1_fu_136", "Parent" : "701", "Child" : ["705"],
		"CDFG" : "ProcessingElement_24_Pipeline_1",
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
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "704"},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_2_fu_142", "Parent" : "701", "Child" : ["707"],
		"CDFG" : "ProcessingElement_24_Pipeline_2",
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
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "706"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "701", "Child" : ["709"],
		"CDFG" : "ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_24", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "708"},
	{"ID" : "710", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "701", "Child" : ["711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727"],
		"CDFG" : "ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_24", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_24_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_24", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1282", "Parent" : "710"},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1283", "Parent" : "710"},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1284", "Parent" : "710"},
	{"ID" : "714", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1285", "Parent" : "710"},
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1286", "Parent" : "710"},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1287", "Parent" : "710"},
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1288", "Parent" : "710"},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1289", "Parent" : "710"},
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1290", "Parent" : "710"},
	{"ID" : "720", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1291", "Parent" : "710"},
	{"ID" : "721", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1292", "Parent" : "710"},
	{"ID" : "722", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1293", "Parent" : "710"},
	{"ID" : "723", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1294", "Parent" : "710"},
	{"ID" : "724", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1295", "Parent" : "710"},
	{"ID" : "725", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1296", "Parent" : "710"},
	{"ID" : "726", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1297", "Parent" : "710"},
	{"ID" : "727", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "710"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179", "Parent" : "701", "Child" : ["729"],
		"CDFG" : "ProcessingElement_24_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9218", "EstimateLatencyMax" : "9218",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_24", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "729", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_24_U0.grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "728"},
	{"ID" : "730", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0", "Parent" : "0", "Child" : ["731", "732", "733", "735", "737", "739", "757"],
		"CDFG" : "ProcessingElement_25",
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
			{"Name" : "aPipes_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["701"], "DependentChan" : "1073", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "739", "SubInstance" : "grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_24", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "737", "SubInstance" : "grp_ProcessingElement_25_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_24", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["759"], "DependentChan" : "1076", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "739", "SubInstance" : "grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_25", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "737", "SubInstance" : "grp_ProcessingElement_25_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_25", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["701"], "DependentChan" : "1074", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "739", "SubInstance" : "grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_24", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["759"], "DependentChan" : "1077", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "739", "SubInstance" : "grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_25", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["701"], "DependentChan" : "1075", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "757", "SubInstance" : "grp_ProcessingElement_25_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_24", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["759"], "DependentChan" : "1078", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "757", "SubInstance" : "grp_ProcessingElement_25_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_25", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.aBuffer_U", "Parent" : "730"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.cBuffer_U", "Parent" : "730"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_1_fu_136", "Parent" : "730", "Child" : ["734"],
		"CDFG" : "ProcessingElement_25_Pipeline_1",
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
	{"ID" : "734", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "733"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_2_fu_142", "Parent" : "730", "Child" : ["736"],
		"CDFG" : "ProcessingElement_25_Pipeline_2",
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
	{"ID" : "736", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "735"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "730", "Child" : ["738"],
		"CDFG" : "ProcessingElement_25_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_24", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_25", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_25_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "738", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "737"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "730", "Child" : ["740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756"],
		"CDFG" : "ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_24", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_25", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_25_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_24", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_25", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_25_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "740", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1331", "Parent" : "739"},
	{"ID" : "741", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1332", "Parent" : "739"},
	{"ID" : "742", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1333", "Parent" : "739"},
	{"ID" : "743", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1334", "Parent" : "739"},
	{"ID" : "744", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1335", "Parent" : "739"},
	{"ID" : "745", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1336", "Parent" : "739"},
	{"ID" : "746", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1337", "Parent" : "739"},
	{"ID" : "747", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1338", "Parent" : "739"},
	{"ID" : "748", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1339", "Parent" : "739"},
	{"ID" : "749", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1340", "Parent" : "739"},
	{"ID" : "750", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1341", "Parent" : "739"},
	{"ID" : "751", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1342", "Parent" : "739"},
	{"ID" : "752", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1343", "Parent" : "739"},
	{"ID" : "753", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1344", "Parent" : "739"},
	{"ID" : "754", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1345", "Parent" : "739"},
	{"ID" : "755", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1346", "Parent" : "739"},
	{"ID" : "756", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "739"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_WriteC_Flattened_fu_179", "Parent" : "730", "Child" : ["758"],
		"CDFG" : "ProcessingElement_25_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8194", "EstimateLatencyMax" : "8194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_24", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_25", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_25_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "758", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_25_U0.grp_ProcessingElement_25_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "757"},
	{"ID" : "759", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0", "Parent" : "0", "Child" : ["760", "761", "762", "764", "766", "768", "786"],
		"CDFG" : "ProcessingElement_26",
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
			{"Name" : "aPipes_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["730"], "DependentChan" : "1076", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "768", "SubInstance" : "grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_25", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "766", "SubInstance" : "grp_ProcessingElement_26_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_25", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["788"], "DependentChan" : "1079", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "768", "SubInstance" : "grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_26", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "766", "SubInstance" : "grp_ProcessingElement_26_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_26", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["730"], "DependentChan" : "1077", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "768", "SubInstance" : "grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_25", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["788"], "DependentChan" : "1080", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "768", "SubInstance" : "grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_26", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["730"], "DependentChan" : "1078", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "786", "SubInstance" : "grp_ProcessingElement_26_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_25", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["788"], "DependentChan" : "1081", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "786", "SubInstance" : "grp_ProcessingElement_26_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_26", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.aBuffer_U", "Parent" : "759"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.cBuffer_U", "Parent" : "759"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_1_fu_136", "Parent" : "759", "Child" : ["763"],
		"CDFG" : "ProcessingElement_26_Pipeline_1",
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
	{"ID" : "763", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "762"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_2_fu_142", "Parent" : "759", "Child" : ["765"],
		"CDFG" : "ProcessingElement_26_Pipeline_2",
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
	{"ID" : "765", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "764"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "759", "Child" : ["767"],
		"CDFG" : "ProcessingElement_26_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "114", "EstimateLatencyMax" : "114",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_25", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_26", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_26_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "767", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "766"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "759", "Child" : ["769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785"],
		"CDFG" : "ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_25", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_26", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_26_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_25", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_26", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_26_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "769", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1380", "Parent" : "768"},
	{"ID" : "770", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1381", "Parent" : "768"},
	{"ID" : "771", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1382", "Parent" : "768"},
	{"ID" : "772", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1383", "Parent" : "768"},
	{"ID" : "773", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1384", "Parent" : "768"},
	{"ID" : "774", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1385", "Parent" : "768"},
	{"ID" : "775", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1386", "Parent" : "768"},
	{"ID" : "776", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1387", "Parent" : "768"},
	{"ID" : "777", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1388", "Parent" : "768"},
	{"ID" : "778", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1389", "Parent" : "768"},
	{"ID" : "779", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1390", "Parent" : "768"},
	{"ID" : "780", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1391", "Parent" : "768"},
	{"ID" : "781", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1392", "Parent" : "768"},
	{"ID" : "782", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1393", "Parent" : "768"},
	{"ID" : "783", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1394", "Parent" : "768"},
	{"ID" : "784", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1395", "Parent" : "768"},
	{"ID" : "785", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "768"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_WriteC_Flattened_fu_179", "Parent" : "759", "Child" : ["787"],
		"CDFG" : "ProcessingElement_26_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7170", "EstimateLatencyMax" : "7170",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_25", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_26", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_26_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "787", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_26_U0.grp_ProcessingElement_26_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "786"},
	{"ID" : "788", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0", "Parent" : "0", "Child" : ["789", "790", "791", "793", "795", "797", "815"],
		"CDFG" : "ProcessingElement_27",
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
			{"Name" : "aPipes_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["759"], "DependentChan" : "1079", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "797", "SubInstance" : "grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_26", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "795", "SubInstance" : "grp_ProcessingElement_27_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_26", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "aPipes_27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["817"], "DependentChan" : "1082", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "797", "SubInstance" : "grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_27", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "795", "SubInstance" : "grp_ProcessingElement_27_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_27", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["759"], "DependentChan" : "1080", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "797", "SubInstance" : "grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_26", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["817"], "DependentChan" : "1083", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "797", "SubInstance" : "grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["759"], "DependentChan" : "1081", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "815", "SubInstance" : "grp_ProcessingElement_27_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_26", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["817"], "DependentChan" : "1084", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "815", "SubInstance" : "grp_ProcessingElement_27_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_27", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.aBuffer_U", "Parent" : "788"},
	{"ID" : "790", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.cBuffer_U", "Parent" : "788"},
	{"ID" : "791", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_1_fu_136", "Parent" : "788", "Child" : ["792"],
		"CDFG" : "ProcessingElement_27_Pipeline_1",
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
	{"ID" : "792", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "791"},
	{"ID" : "793", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_2_fu_142", "Parent" : "788", "Child" : ["794"],
		"CDFG" : "ProcessingElement_27_Pipeline_2",
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
	{"ID" : "794", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "793"},
	{"ID" : "795", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "788", "Child" : ["796"],
		"CDFG" : "ProcessingElement_27_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98", "EstimateLatencyMax" : "98",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_26", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_27", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_27_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "796", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "795"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "788", "Child" : ["798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814"],
		"CDFG" : "ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_26", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_27", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_27_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_26", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_27", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_27_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "798", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1429", "Parent" : "797"},
	{"ID" : "799", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1430", "Parent" : "797"},
	{"ID" : "800", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1431", "Parent" : "797"},
	{"ID" : "801", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1432", "Parent" : "797"},
	{"ID" : "802", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1433", "Parent" : "797"},
	{"ID" : "803", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1434", "Parent" : "797"},
	{"ID" : "804", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1435", "Parent" : "797"},
	{"ID" : "805", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1436", "Parent" : "797"},
	{"ID" : "806", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1437", "Parent" : "797"},
	{"ID" : "807", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1438", "Parent" : "797"},
	{"ID" : "808", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1439", "Parent" : "797"},
	{"ID" : "809", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1440", "Parent" : "797"},
	{"ID" : "810", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1441", "Parent" : "797"},
	{"ID" : "811", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1442", "Parent" : "797"},
	{"ID" : "812", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1443", "Parent" : "797"},
	{"ID" : "813", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1444", "Parent" : "797"},
	{"ID" : "814", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "797"},
	{"ID" : "815", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_WriteC_Flattened_fu_179", "Parent" : "788", "Child" : ["816"],
		"CDFG" : "ProcessingElement_27_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6146", "EstimateLatencyMax" : "6146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_26", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_27", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_27_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "816", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_27_U0.grp_ProcessingElement_27_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "815"},
	{"ID" : "817", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0", "Parent" : "0", "Child" : ["818", "819", "820", "822", "824", "826", "844"],
		"CDFG" : "ProcessingElement_28",
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
			{"Name" : "aPipes_27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["788"], "DependentChan" : "1082", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "824", "SubInstance" : "grp_ProcessingElement_28_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_27", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "826", "SubInstance" : "grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["846"], "DependentChan" : "1085", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "824", "SubInstance" : "grp_ProcessingElement_28_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_28", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "826", "SubInstance" : "grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["788"], "DependentChan" : "1083", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "826", "SubInstance" : "grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_27", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["846"], "DependentChan" : "1086", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "826", "SubInstance" : "grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["788"], "DependentChan" : "1084", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "844", "SubInstance" : "grp_ProcessingElement_28_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_27", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["846"], "DependentChan" : "1087", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "844", "SubInstance" : "grp_ProcessingElement_28_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_28", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.aBuffer_U", "Parent" : "817"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.cBuffer_U", "Parent" : "817"},
	{"ID" : "820", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_1_fu_136", "Parent" : "817", "Child" : ["821"],
		"CDFG" : "ProcessingElement_28_Pipeline_1",
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
	{"ID" : "821", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "820"},
	{"ID" : "822", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_2_fu_142", "Parent" : "817", "Child" : ["823"],
		"CDFG" : "ProcessingElement_28_Pipeline_2",
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
	{"ID" : "823", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "822"},
	{"ID" : "824", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "817", "Child" : ["825"],
		"CDFG" : "ProcessingElement_28_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_27", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_28", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_28_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "825", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "824"},
	{"ID" : "826", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "817", "Child" : ["827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843"],
		"CDFG" : "ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_27", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_28", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_28_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_27", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_28", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_28_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "827", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1478", "Parent" : "826"},
	{"ID" : "828", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1479", "Parent" : "826"},
	{"ID" : "829", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1480", "Parent" : "826"},
	{"ID" : "830", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1481", "Parent" : "826"},
	{"ID" : "831", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1482", "Parent" : "826"},
	{"ID" : "832", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1483", "Parent" : "826"},
	{"ID" : "833", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1484", "Parent" : "826"},
	{"ID" : "834", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1485", "Parent" : "826"},
	{"ID" : "835", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1486", "Parent" : "826"},
	{"ID" : "836", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1487", "Parent" : "826"},
	{"ID" : "837", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1488", "Parent" : "826"},
	{"ID" : "838", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1489", "Parent" : "826"},
	{"ID" : "839", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1490", "Parent" : "826"},
	{"ID" : "840", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1491", "Parent" : "826"},
	{"ID" : "841", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1492", "Parent" : "826"},
	{"ID" : "842", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1493", "Parent" : "826"},
	{"ID" : "843", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "826"},
	{"ID" : "844", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_WriteC_Flattened_fu_179", "Parent" : "817", "Child" : ["845"],
		"CDFG" : "ProcessingElement_28_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5122", "EstimateLatencyMax" : "5122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_27", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_28", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_28_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "845", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_28_U0.grp_ProcessingElement_28_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "844"},
	{"ID" : "846", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0", "Parent" : "0", "Child" : ["847", "848", "849", "851", "853", "855", "873"],
		"CDFG" : "ProcessingElement_29",
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
			{"Name" : "aPipes_28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["817"], "DependentChan" : "1085", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "853", "SubInstance" : "grp_ProcessingElement_29_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_28", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "855", "SubInstance" : "grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["875"], "DependentChan" : "1088", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "853", "SubInstance" : "grp_ProcessingElement_29_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_29", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "855", "SubInstance" : "grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["817"], "DependentChan" : "1086", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "855", "SubInstance" : "grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_28", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["875"], "DependentChan" : "1089", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "855", "SubInstance" : "grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["817"], "DependentChan" : "1087", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "873", "SubInstance" : "grp_ProcessingElement_29_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_28", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["875"], "DependentChan" : "1090", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "873", "SubInstance" : "grp_ProcessingElement_29_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_29", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "847", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.aBuffer_U", "Parent" : "846"},
	{"ID" : "848", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.cBuffer_U", "Parent" : "846"},
	{"ID" : "849", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_1_fu_136", "Parent" : "846", "Child" : ["850"],
		"CDFG" : "ProcessingElement_29_Pipeline_1",
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
	{"ID" : "850", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "849"},
	{"ID" : "851", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_2_fu_142", "Parent" : "846", "Child" : ["852"],
		"CDFG" : "ProcessingElement_29_Pipeline_2",
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
	{"ID" : "852", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "851"},
	{"ID" : "853", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "846", "Child" : ["854"],
		"CDFG" : "ProcessingElement_29_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_28", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_29", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_29_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "854", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "853"},
	{"ID" : "855", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "846", "Child" : ["856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872"],
		"CDFG" : "ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_28", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_29", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_29_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_28", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_29", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_29_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "856", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1527", "Parent" : "855"},
	{"ID" : "857", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1528", "Parent" : "855"},
	{"ID" : "858", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1529", "Parent" : "855"},
	{"ID" : "859", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1530", "Parent" : "855"},
	{"ID" : "860", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1531", "Parent" : "855"},
	{"ID" : "861", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1532", "Parent" : "855"},
	{"ID" : "862", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1533", "Parent" : "855"},
	{"ID" : "863", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1534", "Parent" : "855"},
	{"ID" : "864", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1535", "Parent" : "855"},
	{"ID" : "865", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1536", "Parent" : "855"},
	{"ID" : "866", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1537", "Parent" : "855"},
	{"ID" : "867", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1538", "Parent" : "855"},
	{"ID" : "868", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1539", "Parent" : "855"},
	{"ID" : "869", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1540", "Parent" : "855"},
	{"ID" : "870", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1541", "Parent" : "855"},
	{"ID" : "871", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1542", "Parent" : "855"},
	{"ID" : "872", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "855"},
	{"ID" : "873", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_WriteC_Flattened_fu_179", "Parent" : "846", "Child" : ["874"],
		"CDFG" : "ProcessingElement_29_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_28", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_29", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_29_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "874", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_29_U0.grp_ProcessingElement_29_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "873"},
	{"ID" : "875", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0", "Parent" : "0", "Child" : ["876", "877", "878", "880", "882", "884", "902"],
		"CDFG" : "ProcessingElement_30",
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
			{"Name" : "aPipes_29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["846"], "DependentChan" : "1088", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "882", "SubInstance" : "grp_ProcessingElement_30_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_29", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "884", "SubInstance" : "grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["904"], "DependentChan" : "1091", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "882", "SubInstance" : "grp_ProcessingElement_30_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Port" : "aPipes_30", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "884", "SubInstance" : "grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "aPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["846"], "DependentChan" : "1089", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "884", "SubInstance" : "grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_29", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["904"], "DependentChan" : "1092", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "884", "SubInstance" : "grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Port" : "bPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["846"], "DependentChan" : "1090", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "902", "SubInstance" : "grp_ProcessingElement_30_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_29", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_30", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["904"], "DependentChan" : "1093", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "902", "SubInstance" : "grp_ProcessingElement_30_Pipeline_WriteC_Flattened_fu_179", "Port" : "cPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
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
	{"ID" : "876", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.aBuffer_U", "Parent" : "875"},
	{"ID" : "877", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.cBuffer_U", "Parent" : "875"},
	{"ID" : "878", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_1_fu_136", "Parent" : "875", "Child" : ["879"],
		"CDFG" : "ProcessingElement_30_Pipeline_1",
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
	{"ID" : "879", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "878"},
	{"ID" : "880", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_2_fu_142", "Parent" : "875", "Child" : ["881"],
		"CDFG" : "ProcessingElement_30_Pipeline_2",
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
	{"ID" : "881", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "880"},
	{"ID" : "882", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148", "Parent" : "875", "Child" : ["883"],
		"CDFG" : "ProcessingElement_30_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aPipes_29", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_30", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_30_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner_InitializeABuffer_Outer", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "883", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "882"},
	{"ID" : "884", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157", "Parent" : "875", "Child" : ["885", "886", "887", "888", "889", "890", "891", "892", "893", "894", "895", "896", "897", "898", "899", "900", "901"],
		"CDFG" : "ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_29", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bPipes_30", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bPipes_30_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "aPipes_29", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aPipes_30", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aPipes_30_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "885", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1576", "Parent" : "884"},
	{"ID" : "886", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1577", "Parent" : "884"},
	{"ID" : "887", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1578", "Parent" : "884"},
	{"ID" : "888", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1579", "Parent" : "884"},
	{"ID" : "889", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1580", "Parent" : "884"},
	{"ID" : "890", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1581", "Parent" : "884"},
	{"ID" : "891", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1582", "Parent" : "884"},
	{"ID" : "892", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fadd_32ns_32ns_32_3_full_dsp_1_U1583", "Parent" : "884"},
	{"ID" : "893", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1584", "Parent" : "884"},
	{"ID" : "894", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1585", "Parent" : "884"},
	{"ID" : "895", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1586", "Parent" : "884"},
	{"ID" : "896", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1587", "Parent" : "884"},
	{"ID" : "897", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1588", "Parent" : "884"},
	{"ID" : "898", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1589", "Parent" : "884"},
	{"ID" : "899", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1590", "Parent" : "884"},
	{"ID" : "900", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.fmul_32ns_32ns_32_2_max_dsp_1_U1591", "Parent" : "884"},
	{"ID" : "901", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "884"},
	{"ID" : "902", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_WriteC_Flattened_fu_179", "Parent" : "875", "Child" : ["903"],
		"CDFG" : "ProcessingElement_30_Pipeline_WriteC_Flattened",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3074", "EstimateLatencyMax" : "3074",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_29", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cPipes_30", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cPipes_30_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "903", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_30_U0.grp_ProcessingElement_30_Pipeline_WriteC_Flattened_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "902"},
	{"ID" : "904", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0", "Parent" : "0", "Child" : ["905", "906", "907", "909", "911", "913", "931"],
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
			{"Name" : "aPipes_30", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["875"], "DependentChan" : "1091", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "911", "SubInstance" : "grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190", "Port" : "aPipes_30", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "913", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "aPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "aPipes_31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["933"], "DependentChan" : "1094", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "911", "SubInstance" : "grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190", "Port" : "aPipes_31", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "913", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "aPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_30", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["875"], "DependentChan" : "1092", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "913", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "bPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bPipes_31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["933"], "DependentChan" : "1095", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "913", "SubInstance" : "grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Port" : "bPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["875"], "DependentChan" : "1093", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "931", "SubInstance" : "grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221", "Port" : "cPipes_30", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "cPipes_31", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["933"], "DependentChan" : "1096", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "931", "SubInstance" : "grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221", "Port" : "cPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "size_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_k", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["933"], "DependentChan" : "1097", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["933"], "DependentChan" : "1098", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["933"], "DependentChan" : "1099", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Collapse_K", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_M", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_N", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "905", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.aBuffer_U", "Parent" : "904"},
	{"ID" : "906", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.cBuffer_U", "Parent" : "904"},
	{"ID" : "907", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_1_fu_178", "Parent" : "904", "Child" : ["908"],
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
	{"ID" : "908", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_1_fu_178.flow_control_loop_pipe_sequential_init_U", "Parent" : "907"},
	{"ID" : "909", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_2_fu_184", "Parent" : "904", "Child" : ["910"],
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
	{"ID" : "910", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_2_fu_184.flow_control_loop_pipe_sequential_init_U", "Parent" : "909"},
	{"ID" : "911", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190", "Parent" : "904", "Child" : ["912"],
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
	{"ID" : "912", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "911"},
	{"ID" : "913", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199", "Parent" : "904", "Child" : ["914", "915", "916", "917", "918", "919", "920", "921", "922", "923", "924", "925", "926", "927", "928", "929", "930"],
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
	{"ID" : "914", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1625", "Parent" : "913"},
	{"ID" : "915", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1626", "Parent" : "913"},
	{"ID" : "916", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1627", "Parent" : "913"},
	{"ID" : "917", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1628", "Parent" : "913"},
	{"ID" : "918", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1629", "Parent" : "913"},
	{"ID" : "919", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1630", "Parent" : "913"},
	{"ID" : "920", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1631", "Parent" : "913"},
	{"ID" : "921", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fadd_32ns_32ns_32_3_full_dsp_1_U1632", "Parent" : "913"},
	{"ID" : "922", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1633", "Parent" : "913"},
	{"ID" : "923", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1634", "Parent" : "913"},
	{"ID" : "924", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1635", "Parent" : "913"},
	{"ID" : "925", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1636", "Parent" : "913"},
	{"ID" : "926", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1637", "Parent" : "913"},
	{"ID" : "927", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1638", "Parent" : "913"},
	{"ID" : "928", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1639", "Parent" : "913"},
	{"ID" : "929", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.fmul_32ns_32ns_32_2_max_dsp_1_U1640", "Parent" : "913"},
	{"ID" : "930", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_Pipeline_N_Pipeline_M_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "913"},
	{"ID" : "931", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221", "Parent" : "904", "Child" : ["932"],
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
	{"ID" : "932", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_31_U0.grp_ProcessingElement_31_Pipeline_WriteC_Flattened_fu_221.flow_control_loop_pipe_sequential_init_U", "Parent" : "931"},
	{"ID" : "933", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0", "Parent" : "0", "Child" : ["934", "935", "936", "938", "940", "942", "960"],
		"CDFG" : "ProcessingElement",
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
		"StartSource" : "904",
		"StartFifo" : "start_for_ProcessingElement_U0_U",
		"Port" : [
			{"Name" : "aPipes_31", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["904"], "DependentChan" : "1094", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "942", "SubInstance" : "grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159", "Port" : "aPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "940", "SubInstance" : "grp_ProcessingElement_Pipeline_InitializeABuffer_Inner_fu_152", "Port" : "aPipes_31", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bPipes_31", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["904"], "DependentChan" : "1095", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "942", "SubInstance" : "grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159", "Port" : "bPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "cPipes_31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["904"], "DependentChan" : "1096", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "960", "SubInstance" : "grp_ProcessingElement_Pipeline_WriteC_Flattened_fu_177", "Port" : "cPipes_31", "Inst_start_state" : "8", "Inst_end_state" : "10"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["904"], "DependentChan" : "1097", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_k", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["904"], "DependentChan" : "1098", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_k_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["904"], "DependentChan" : "1099", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Collapse_K", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_M", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "OuterTile_N", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "934", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.aBuffer_U", "Parent" : "933"},
	{"ID" : "935", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.cBuffer_U", "Parent" : "933"},
	{"ID" : "936", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_1_fu_140", "Parent" : "933", "Child" : ["937"],
		"CDFG" : "ProcessingElement_Pipeline_1",
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
	{"ID" : "937", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_1_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "936"},
	{"ID" : "938", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_2_fu_146", "Parent" : "933", "Child" : ["939"],
		"CDFG" : "ProcessingElement_Pipeline_2",
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
	{"ID" : "939", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_2_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "938"},
	{"ID" : "940", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_InitializeABuffer_Inner_fu_152", "Parent" : "933", "Child" : ["941"],
		"CDFG" : "ProcessingElement_Pipeline_InitializeABuffer_Inner",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aPipes_31", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "InitializeABuffer_Inner", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "941", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_InitializeABuffer_Inner_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "940"},
	{"ID" : "942", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159", "Parent" : "933", "Child" : ["943", "944", "945", "946", "947", "948", "949", "950", "951", "952", "953", "954", "955", "956", "957", "958", "959"],
		"CDFG" : "ProcessingElement_Pipeline_Pipeline_N_Pipeline_M",
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
			{"Name" : "bPipes_31", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bPipes_31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp111", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_m_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "cond90", "Type" : "None", "Direction" : "I"},
			{"Name" : "aBuffer", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "cond", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "brmerge282", "Type" : "None", "Direction" : "I"},
			{"Name" : "aPipes_31", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aPipes_31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Pipeline_N_Pipeline_M", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "943", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1676", "Parent" : "942"},
	{"ID" : "944", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1677", "Parent" : "942"},
	{"ID" : "945", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1678", "Parent" : "942"},
	{"ID" : "946", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1679", "Parent" : "942"},
	{"ID" : "947", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1680", "Parent" : "942"},
	{"ID" : "948", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1681", "Parent" : "942"},
	{"ID" : "949", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1682", "Parent" : "942"},
	{"ID" : "950", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fadd_32ns_32ns_32_3_full_dsp_1_U1683", "Parent" : "942"},
	{"ID" : "951", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1684", "Parent" : "942"},
	{"ID" : "952", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1685", "Parent" : "942"},
	{"ID" : "953", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1686", "Parent" : "942"},
	{"ID" : "954", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1687", "Parent" : "942"},
	{"ID" : "955", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1688", "Parent" : "942"},
	{"ID" : "956", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1689", "Parent" : "942"},
	{"ID" : "957", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1690", "Parent" : "942"},
	{"ID" : "958", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.fmul_32ns_32ns_32_2_max_dsp_1_U1691", "Parent" : "942"},
	{"ID" : "959", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_Pipeline_N_Pipeline_M_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "942"},
	{"ID" : "960", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_WriteC_Flattened_fu_177", "Parent" : "933", "Child" : ["961"],
		"CDFG" : "ProcessingElement_Pipeline_WriteC_Flattened",
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
			{"Name" : "cBuffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cPipes_31", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cPipes_31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_Flattened", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "961", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ProcessingElement_U0.grp_ProcessingElement_Pipeline_WriteC_Flattened_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "960"},
	{"ID" : "962", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvertWidthC_U0", "Parent" : "0", "Child" : ["963", "965"],
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
		"StartSource" : "34",
		"StartFifo" : "start_for_ConvertWidthC_U0_U",
		"Port" : [
			{"Name" : "cPipes_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "1003", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "963", "SubInstance" : "grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84", "Port" : "cPipes_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "cMemory", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["966"], "DependentChan" : "1100", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "963", "SubInstance" : "grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84", "Port" : "cMemory", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "1005", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "1006", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_n_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["966"], "DependentChan" : "1101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["966"], "DependentChan" : "1102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "963", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertWidthC_U0.grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84", "Parent" : "962", "Child" : ["964"],
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
	{"ID" : "964", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.ConvertWidthC_U0.grp_ConvertWidthC_Pipeline_ConvertWidthC_N_ConvertWidthC_M_VITIS_LOOP_339_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "963"},
	{"ID" : "965", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertWidthC_U0.mul_33ns_30ns_63_1_1_U1718", "Parent" : "962"},
	{"ID" : "966", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WriteC_U0", "Parent" : "0", "Child" : ["967", "970"],
		"CDFG" : "WriteC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "1152921504606847050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_WriteC_U0_U",
		"Port" : [
			{"Name" : "cMemory", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["962"], "DependentChan" : "1100", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "967", "SubInstance" : "grp_WriteC_Pipeline_WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1_fu_82", "Port" : "cMemory", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "967", "SubInstance" : "grp_WriteC_Pipeline_WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1_fu_82", "Port" : "gmem2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "memory", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "971", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "memory_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_n", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["962"], "DependentChan" : "1101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_n_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_m", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["962"], "DependentChan" : "1102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "size_m_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "967", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.WriteC_U0.grp_WriteC_Pipeline_WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1_fu_82", "Parent" : "966", "Child" : ["968", "969"],
		"CDFG" : "WriteC_Pipeline_WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1152921504606847048",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound17", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound4", "Type" : "None", "Direction" : "I"},
			{"Name" : "size_n_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "cMemory", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cMemory_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "div_i1", "Type" : "None", "Direction" : "I"},
			{"Name" : "memory_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter72", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter72", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "968", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.WriteC_U0.grp_WriteC_Pipeline_WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1_fu_82.mul_32s_28ns_32_1_1_U1726", "Parent" : "967"},
	{"ID" : "969", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.WriteC_U0.grp_WriteC_Pipeline_WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "967"},
	{"ID" : "970", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.WriteC_U0.mul_24ns_38ns_61_1_1_U1735", "Parent" : "966"},
	{"ID" : "971", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_c_U", "Parent" : "0"},
	{"ID" : "972", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_0_U", "Parent" : "0"},
	{"ID" : "973", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_1_U", "Parent" : "0"},
	{"ID" : "974", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_2_U", "Parent" : "0"},
	{"ID" : "975", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_3_U", "Parent" : "0"},
	{"ID" : "976", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_4_U", "Parent" : "0"},
	{"ID" : "977", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_5_U", "Parent" : "0"},
	{"ID" : "978", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_6_U", "Parent" : "0"},
	{"ID" : "979", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_7_U", "Parent" : "0"},
	{"ID" : "980", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_8_U", "Parent" : "0"},
	{"ID" : "981", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_9_U", "Parent" : "0"},
	{"ID" : "982", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_10_U", "Parent" : "0"},
	{"ID" : "983", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_11_U", "Parent" : "0"},
	{"ID" : "984", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_12_U", "Parent" : "0"},
	{"ID" : "985", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_13_U", "Parent" : "0"},
	{"ID" : "986", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_14_U", "Parent" : "0"},
	{"ID" : "987", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aSplit_15_U", "Parent" : "0"},
	{"ID" : "988", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_n_c5_U", "Parent" : "0"},
	{"ID" : "989", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_k_c8_U", "Parent" : "0"},
	{"ID" : "990", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_m_c13_U", "Parent" : "0"},
	{"ID" : "991", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_0_U", "Parent" : "0"},
	{"ID" : "992", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bMemory_U", "Parent" : "0"},
	{"ID" : "993", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_n_c4_U", "Parent" : "0"},
	{"ID" : "994", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_k_c7_U", "Parent" : "0"},
	{"ID" : "995", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_m_c12_U", "Parent" : "0"},
	{"ID" : "996", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bFeed_U", "Parent" : "0"},
	{"ID" : "997", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_n_c3_U", "Parent" : "0"},
	{"ID" : "998", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_k_c6_U", "Parent" : "0"},
	{"ID" : "999", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_m_c11_U", "Parent" : "0"},
	{"ID" : "1000", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_0_U", "Parent" : "0"},
	{"ID" : "1001", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_1_U", "Parent" : "0"},
	{"ID" : "1002", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_1_U", "Parent" : "0"},
	{"ID" : "1003", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_0_U", "Parent" : "0"},
	{"ID" : "1004", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_1_U", "Parent" : "0"},
	{"ID" : "1005", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_n_c1_U", "Parent" : "0"},
	{"ID" : "1006", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_m_c9_U", "Parent" : "0"},
	{"ID" : "1007", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_2_U", "Parent" : "0"},
	{"ID" : "1008", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_2_U", "Parent" : "0"},
	{"ID" : "1009", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_2_U", "Parent" : "0"},
	{"ID" : "1010", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_3_U", "Parent" : "0"},
	{"ID" : "1011", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_3_U", "Parent" : "0"},
	{"ID" : "1012", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_3_U", "Parent" : "0"},
	{"ID" : "1013", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_4_U", "Parent" : "0"},
	{"ID" : "1014", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_4_U", "Parent" : "0"},
	{"ID" : "1015", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_4_U", "Parent" : "0"},
	{"ID" : "1016", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_5_U", "Parent" : "0"},
	{"ID" : "1017", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_5_U", "Parent" : "0"},
	{"ID" : "1018", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_5_U", "Parent" : "0"},
	{"ID" : "1019", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_6_U", "Parent" : "0"},
	{"ID" : "1020", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_6_U", "Parent" : "0"},
	{"ID" : "1021", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_6_U", "Parent" : "0"},
	{"ID" : "1022", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_7_U", "Parent" : "0"},
	{"ID" : "1023", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_7_U", "Parent" : "0"},
	{"ID" : "1024", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_7_U", "Parent" : "0"},
	{"ID" : "1025", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_8_U", "Parent" : "0"},
	{"ID" : "1026", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_8_U", "Parent" : "0"},
	{"ID" : "1027", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_8_U", "Parent" : "0"},
	{"ID" : "1028", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_9_U", "Parent" : "0"},
	{"ID" : "1029", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_9_U", "Parent" : "0"},
	{"ID" : "1030", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_9_U", "Parent" : "0"},
	{"ID" : "1031", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_10_U", "Parent" : "0"},
	{"ID" : "1032", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_10_U", "Parent" : "0"},
	{"ID" : "1033", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_10_U", "Parent" : "0"},
	{"ID" : "1034", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_11_U", "Parent" : "0"},
	{"ID" : "1035", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_11_U", "Parent" : "0"},
	{"ID" : "1036", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_11_U", "Parent" : "0"},
	{"ID" : "1037", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_12_U", "Parent" : "0"},
	{"ID" : "1038", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_12_U", "Parent" : "0"},
	{"ID" : "1039", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_12_U", "Parent" : "0"},
	{"ID" : "1040", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_13_U", "Parent" : "0"},
	{"ID" : "1041", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_13_U", "Parent" : "0"},
	{"ID" : "1042", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_13_U", "Parent" : "0"},
	{"ID" : "1043", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_14_U", "Parent" : "0"},
	{"ID" : "1044", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_14_U", "Parent" : "0"},
	{"ID" : "1045", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_14_U", "Parent" : "0"},
	{"ID" : "1046", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_15_U", "Parent" : "0"},
	{"ID" : "1047", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_15_U", "Parent" : "0"},
	{"ID" : "1048", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_15_U", "Parent" : "0"},
	{"ID" : "1049", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_16_U", "Parent" : "0"},
	{"ID" : "1050", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_16_U", "Parent" : "0"},
	{"ID" : "1051", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_16_U", "Parent" : "0"},
	{"ID" : "1052", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_17_U", "Parent" : "0"},
	{"ID" : "1053", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_17_U", "Parent" : "0"},
	{"ID" : "1054", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_17_U", "Parent" : "0"},
	{"ID" : "1055", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_18_U", "Parent" : "0"},
	{"ID" : "1056", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_18_U", "Parent" : "0"},
	{"ID" : "1057", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_18_U", "Parent" : "0"},
	{"ID" : "1058", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_19_U", "Parent" : "0"},
	{"ID" : "1059", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_19_U", "Parent" : "0"},
	{"ID" : "1060", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_19_U", "Parent" : "0"},
	{"ID" : "1061", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_20_U", "Parent" : "0"},
	{"ID" : "1062", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_20_U", "Parent" : "0"},
	{"ID" : "1063", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_20_U", "Parent" : "0"},
	{"ID" : "1064", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_21_U", "Parent" : "0"},
	{"ID" : "1065", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_21_U", "Parent" : "0"},
	{"ID" : "1066", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_21_U", "Parent" : "0"},
	{"ID" : "1067", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_22_U", "Parent" : "0"},
	{"ID" : "1068", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_22_U", "Parent" : "0"},
	{"ID" : "1069", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_22_U", "Parent" : "0"},
	{"ID" : "1070", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_23_U", "Parent" : "0"},
	{"ID" : "1071", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_23_U", "Parent" : "0"},
	{"ID" : "1072", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_23_U", "Parent" : "0"},
	{"ID" : "1073", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_24_U", "Parent" : "0"},
	{"ID" : "1074", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_24_U", "Parent" : "0"},
	{"ID" : "1075", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_24_U", "Parent" : "0"},
	{"ID" : "1076", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_25_U", "Parent" : "0"},
	{"ID" : "1077", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_25_U", "Parent" : "0"},
	{"ID" : "1078", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_25_U", "Parent" : "0"},
	{"ID" : "1079", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_26_U", "Parent" : "0"},
	{"ID" : "1080", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_26_U", "Parent" : "0"},
	{"ID" : "1081", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_26_U", "Parent" : "0"},
	{"ID" : "1082", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_27_U", "Parent" : "0"},
	{"ID" : "1083", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_27_U", "Parent" : "0"},
	{"ID" : "1084", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_27_U", "Parent" : "0"},
	{"ID" : "1085", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_28_U", "Parent" : "0"},
	{"ID" : "1086", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_28_U", "Parent" : "0"},
	{"ID" : "1087", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_28_U", "Parent" : "0"},
	{"ID" : "1088", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_29_U", "Parent" : "0"},
	{"ID" : "1089", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_29_U", "Parent" : "0"},
	{"ID" : "1090", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_29_U", "Parent" : "0"},
	{"ID" : "1091", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_30_U", "Parent" : "0"},
	{"ID" : "1092", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_30_U", "Parent" : "0"},
	{"ID" : "1093", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_30_U", "Parent" : "0"},
	{"ID" : "1094", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aPipes_31_U", "Parent" : "0"},
	{"ID" : "1095", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bPipes_31_U", "Parent" : "0"},
	{"ID" : "1096", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cPipes_31_U", "Parent" : "0"},
	{"ID" : "1097", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_n_c2_U", "Parent" : "0"},
	{"ID" : "1098", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_k_c_U", "Parent" : "0"},
	{"ID" : "1099", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_m_c10_U", "Parent" : "0"},
	{"ID" : "1100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cMemory_U", "Parent" : "0"},
	{"ID" : "1101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_n_c_U", "Parent" : "0"},
	{"ID" : "1102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_m_c_U", "Parent" : "0"},
	{"ID" : "1103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_WriteC_U0_U", "Parent" : "0"},
	{"ID" : "1104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_TransposeA_U0_U", "Parent" : "0"},
	{"ID" : "1105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvertWidthB_U0_U", "Parent" : "0"},
	{"ID" : "1106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_FeedB_U0_U", "Parent" : "0"},
	{"ID" : "1107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvertWidthC_U0_U", "Parent" : "0"},
	{"ID" : "1108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ProcessingElement_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MatrixMultiplicationKernel {
		gmem0 {Type I LastRead 74 FirstWrite -1}
		gmem1 {Type I LastRead 74 FirstWrite -1}
		gmem2 {Type O LastRead 5 FirstWrite 4}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}}
	entry_proc {
		c {Type I LastRead 0 FirstWrite -1}
		c_c {Type O LastRead -1 FirstWrite 0}}
	ReadA {
		gmem0 {Type I LastRead 74 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
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
		aSplit_15 {Type O LastRead -1 FirstWrite 75}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}
		size_n_c5 {Type O LastRead -1 FirstWrite 0}
		size_k_c8 {Type O LastRead -1 FirstWrite 0}
		size_m_c13 {Type O LastRead -1 FirstWrite 0}}
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
		aSplit_15 {Type O LastRead -1 FirstWrite 75}}
	TransposeA {
		aSplit_0 {Type I LastRead 2 FirstWrite -1}
		aSplit_1 {Type I LastRead 2 FirstWrite -1}
		aSplit_2 {Type I LastRead 2 FirstWrite -1}
		aSplit_3 {Type I LastRead 2 FirstWrite -1}
		aSplit_4 {Type I LastRead 2 FirstWrite -1}
		aSplit_5 {Type I LastRead 2 FirstWrite -1}
		aSplit_6 {Type I LastRead 2 FirstWrite -1}
		aSplit_7 {Type I LastRead 2 FirstWrite -1}
		aSplit_8 {Type I LastRead 2 FirstWrite -1}
		aSplit_9 {Type I LastRead 2 FirstWrite -1}
		aSplit_10 {Type I LastRead 2 FirstWrite -1}
		aSplit_11 {Type I LastRead 2 FirstWrite -1}
		aSplit_12 {Type I LastRead 2 FirstWrite -1}
		aSplit_13 {Type I LastRead 2 FirstWrite -1}
		aSplit_14 {Type I LastRead 2 FirstWrite -1}
		aSplit_15 {Type I LastRead 2 FirstWrite -1}
		aPipes_0 {Type O LastRead -1 FirstWrite 2}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}}
	TransposeA_Pipeline_TransposeA_N0_TransposeA_M0_TransposeA_K_VITIS_LOOP_153_1 {
		bound16 {Type I LastRead 0 FirstWrite -1}
		aPipes_0 {Type O LastRead -1 FirstWrite 2}
		aSplit_0 {Type I LastRead 2 FirstWrite -1}
		bound4 {Type I LastRead 0 FirstWrite -1}
		size_k_1 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		aSplit_1 {Type I LastRead 2 FirstWrite -1}
		aSplit_2 {Type I LastRead 2 FirstWrite -1}
		aSplit_3 {Type I LastRead 2 FirstWrite -1}
		aSplit_4 {Type I LastRead 2 FirstWrite -1}
		aSplit_5 {Type I LastRead 2 FirstWrite -1}
		aSplit_6 {Type I LastRead 2 FirstWrite -1}
		aSplit_7 {Type I LastRead 2 FirstWrite -1}
		aSplit_8 {Type I LastRead 2 FirstWrite -1}
		aSplit_9 {Type I LastRead 2 FirstWrite -1}
		aSplit_10 {Type I LastRead 2 FirstWrite -1}
		aSplit_11 {Type I LastRead 2 FirstWrite -1}
		aSplit_12 {Type I LastRead 2 FirstWrite -1}
		aSplit_13 {Type I LastRead 2 FirstWrite -1}
		aSplit_14 {Type I LastRead 2 FirstWrite -1}
		aSplit_15 {Type I LastRead 2 FirstWrite -1}}
	ReadB {
		gmem1 {Type I LastRead 74 FirstWrite -1}
		memory {Type I LastRead 1 FirstWrite -1}
		bMemory {Type O LastRead -1 FirstWrite 75}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}
		size_n_c4 {Type O LastRead -1 FirstWrite 0}
		size_k_c7 {Type O LastRead -1 FirstWrite 0}
		size_m_c12 {Type O LastRead -1 FirstWrite 0}}
	ReadB_Pipeline_ReadB_OuterTile_N_ReadB_OuterTile_M_ReadB_K_ReadB_BufferB_M1 {
		bound18 {Type I LastRead 0 FirstWrite -1}
		bMemory {Type O LastRead -1 FirstWrite 75}
		bound4 {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		memory {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 74 FirstWrite -1}}
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
		bMemory {Type I LastRead 2 FirstWrite -1}}
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
		buffer_r {Type IO LastRead 0 FirstWrite 1}}
	ProcessingElement_1 {
		aPipes_0 {Type I LastRead 1 FirstWrite -1}
		aPipes_1 {Type O LastRead -1 FirstWrite 1}
		bPipes_0 {Type I LastRead 3 FirstWrite -1}
		bPipes_1 {Type O LastRead -1 FirstWrite 3}
		cPipes_0 {Type O LastRead -1 FirstWrite 2}
		cPipes_1 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}
		size_n_c1 {Type O LastRead -1 FirstWrite 0}
		size_m_c9 {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_1_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_1_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_1_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_0 {Type I LastRead 1 FirstWrite -1}
		aPipes_1 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_1_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_0 {Type I LastRead 3 FirstWrite -1}
		bPipes_1 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_0 {Type I LastRead 1 FirstWrite -1}
		aPipes_1 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_1_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_0 {Type O LastRead -1 FirstWrite 2}
		cPipes_1 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_2 {
		aPipes_1 {Type I LastRead 1 FirstWrite -1}
		aPipes_2 {Type O LastRead -1 FirstWrite 1}
		bPipes_1 {Type I LastRead 3 FirstWrite -1}
		bPipes_2 {Type O LastRead -1 FirstWrite 3}
		cPipes_1 {Type O LastRead -1 FirstWrite 2}
		cPipes_2 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_2_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_2_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_2_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_1 {Type I LastRead 1 FirstWrite -1}
		aPipes_2 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_2_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_1 {Type I LastRead 3 FirstWrite -1}
		bPipes_2 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_1 {Type I LastRead 1 FirstWrite -1}
		aPipes_2 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_2_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_1 {Type O LastRead -1 FirstWrite 2}
		cPipes_2 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_3 {
		aPipes_2 {Type I LastRead 1 FirstWrite -1}
		aPipes_3 {Type O LastRead -1 FirstWrite 1}
		bPipes_2 {Type I LastRead 3 FirstWrite -1}
		bPipes_3 {Type O LastRead -1 FirstWrite 3}
		cPipes_2 {Type O LastRead -1 FirstWrite 2}
		cPipes_3 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_3_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_3_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_3_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_2 {Type I LastRead 1 FirstWrite -1}
		aPipes_3 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_3_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_2 {Type I LastRead 3 FirstWrite -1}
		bPipes_3 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_2 {Type I LastRead 1 FirstWrite -1}
		aPipes_3 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_3_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_2 {Type O LastRead -1 FirstWrite 2}
		cPipes_3 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_4 {
		aPipes_3 {Type I LastRead 1 FirstWrite -1}
		aPipes_4 {Type O LastRead -1 FirstWrite 1}
		bPipes_3 {Type I LastRead 3 FirstWrite -1}
		bPipes_4 {Type O LastRead -1 FirstWrite 3}
		cPipes_3 {Type O LastRead -1 FirstWrite 2}
		cPipes_4 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_4_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_4_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_4_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_3 {Type I LastRead 1 FirstWrite -1}
		aPipes_4 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_4_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_3 {Type I LastRead 3 FirstWrite -1}
		bPipes_4 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_3 {Type I LastRead 1 FirstWrite -1}
		aPipes_4 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_4_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_3 {Type O LastRead -1 FirstWrite 2}
		cPipes_4 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_5 {
		aPipes_4 {Type I LastRead 1 FirstWrite -1}
		aPipes_5 {Type O LastRead -1 FirstWrite 1}
		bPipes_4 {Type I LastRead 3 FirstWrite -1}
		bPipes_5 {Type O LastRead -1 FirstWrite 3}
		cPipes_4 {Type O LastRead -1 FirstWrite 2}
		cPipes_5 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_5_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_5_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_5_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_4 {Type I LastRead 1 FirstWrite -1}
		aPipes_5 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_5_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_4 {Type I LastRead 3 FirstWrite -1}
		bPipes_5 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_4 {Type I LastRead 1 FirstWrite -1}
		aPipes_5 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_5_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_4 {Type O LastRead -1 FirstWrite 2}
		cPipes_5 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_6 {
		aPipes_5 {Type I LastRead 1 FirstWrite -1}
		aPipes_6 {Type O LastRead -1 FirstWrite 1}
		bPipes_5 {Type I LastRead 3 FirstWrite -1}
		bPipes_6 {Type O LastRead -1 FirstWrite 3}
		cPipes_5 {Type O LastRead -1 FirstWrite 2}
		cPipes_6 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_6_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_6_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_6_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_5 {Type I LastRead 1 FirstWrite -1}
		aPipes_6 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_6_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_5 {Type I LastRead 3 FirstWrite -1}
		bPipes_6 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_5 {Type I LastRead 1 FirstWrite -1}
		aPipes_6 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_6_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_5 {Type O LastRead -1 FirstWrite 2}
		cPipes_6 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_7 {
		aPipes_6 {Type I LastRead 1 FirstWrite -1}
		aPipes_7 {Type O LastRead -1 FirstWrite 1}
		bPipes_6 {Type I LastRead 3 FirstWrite -1}
		bPipes_7 {Type O LastRead -1 FirstWrite 3}
		cPipes_6 {Type O LastRead -1 FirstWrite 2}
		cPipes_7 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_7_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_7_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_7_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_6 {Type I LastRead 1 FirstWrite -1}
		aPipes_7 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_7_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_6 {Type I LastRead 3 FirstWrite -1}
		bPipes_7 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_6 {Type I LastRead 1 FirstWrite -1}
		aPipes_7 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_7_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_6 {Type O LastRead -1 FirstWrite 2}
		cPipes_7 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_8 {
		aPipes_7 {Type I LastRead 1 FirstWrite -1}
		aPipes_8 {Type O LastRead -1 FirstWrite 1}
		bPipes_7 {Type I LastRead 3 FirstWrite -1}
		bPipes_8 {Type O LastRead -1 FirstWrite 3}
		cPipes_7 {Type O LastRead -1 FirstWrite 2}
		cPipes_8 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_8_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_8_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_8_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_7 {Type I LastRead 1 FirstWrite -1}
		aPipes_8 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_8_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_7 {Type I LastRead 3 FirstWrite -1}
		bPipes_8 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_7 {Type I LastRead 1 FirstWrite -1}
		aPipes_8 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_8_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_7 {Type O LastRead -1 FirstWrite 2}
		cPipes_8 {Type I LastRead 2 FirstWrite -1}}
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
		cPipes_9 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_10 {
		aPipes_9 {Type I LastRead 1 FirstWrite -1}
		aPipes_10 {Type O LastRead -1 FirstWrite 1}
		bPipes_9 {Type I LastRead 3 FirstWrite -1}
		bPipes_10 {Type O LastRead -1 FirstWrite 3}
		cPipes_9 {Type O LastRead -1 FirstWrite 2}
		cPipes_10 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_10_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_10_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_10_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_9 {Type I LastRead 1 FirstWrite -1}
		aPipes_10 {Type O LastRead -1 FirstWrite 1}}
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
		aPipes_10 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_10_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_9 {Type O LastRead -1 FirstWrite 2}
		cPipes_10 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_11 {
		aPipes_10 {Type I LastRead 1 FirstWrite -1}
		aPipes_11 {Type O LastRead -1 FirstWrite 1}
		bPipes_10 {Type I LastRead 3 FirstWrite -1}
		bPipes_11 {Type O LastRead -1 FirstWrite 3}
		cPipes_10 {Type O LastRead -1 FirstWrite 2}
		cPipes_11 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_11_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_11_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_11_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_10 {Type I LastRead 1 FirstWrite -1}
		aPipes_11 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_11_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_10 {Type I LastRead 3 FirstWrite -1}
		bPipes_11 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_10 {Type I LastRead 1 FirstWrite -1}
		aPipes_11 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_11_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_10 {Type O LastRead -1 FirstWrite 2}
		cPipes_11 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_12 {
		aPipes_11 {Type I LastRead 1 FirstWrite -1}
		aPipes_12 {Type O LastRead -1 FirstWrite 1}
		bPipes_11 {Type I LastRead 3 FirstWrite -1}
		bPipes_12 {Type O LastRead -1 FirstWrite 3}
		cPipes_11 {Type O LastRead -1 FirstWrite 2}
		cPipes_12 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_12_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_12_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_12_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_11 {Type I LastRead 1 FirstWrite -1}
		aPipes_12 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_12_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_11 {Type I LastRead 3 FirstWrite -1}
		bPipes_12 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_11 {Type I LastRead 1 FirstWrite -1}
		aPipes_12 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_12_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_11 {Type O LastRead -1 FirstWrite 2}
		cPipes_12 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_13 {
		aPipes_12 {Type I LastRead 1 FirstWrite -1}
		aPipes_13 {Type O LastRead -1 FirstWrite 1}
		bPipes_12 {Type I LastRead 3 FirstWrite -1}
		bPipes_13 {Type O LastRead -1 FirstWrite 3}
		cPipes_12 {Type O LastRead -1 FirstWrite 2}
		cPipes_13 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_13_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_13_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_13_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_12 {Type I LastRead 1 FirstWrite -1}
		aPipes_13 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_13_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_12 {Type I LastRead 3 FirstWrite -1}
		bPipes_13 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_12 {Type I LastRead 1 FirstWrite -1}
		aPipes_13 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_13_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_12 {Type O LastRead -1 FirstWrite 2}
		cPipes_13 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_14 {
		aPipes_13 {Type I LastRead 1 FirstWrite -1}
		aPipes_14 {Type O LastRead -1 FirstWrite 1}
		bPipes_13 {Type I LastRead 3 FirstWrite -1}
		bPipes_14 {Type O LastRead -1 FirstWrite 3}
		cPipes_13 {Type O LastRead -1 FirstWrite 2}
		cPipes_14 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_14_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_14_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_14_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_13 {Type I LastRead 1 FirstWrite -1}
		aPipes_14 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_14_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_13 {Type I LastRead 3 FirstWrite -1}
		bPipes_14 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_13 {Type I LastRead 1 FirstWrite -1}
		aPipes_14 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_14_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_13 {Type O LastRead -1 FirstWrite 2}
		cPipes_14 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_15 {
		aPipes_14 {Type I LastRead 1 FirstWrite -1}
		aPipes_15 {Type O LastRead -1 FirstWrite 1}
		bPipes_14 {Type I LastRead 3 FirstWrite -1}
		bPipes_15 {Type O LastRead -1 FirstWrite 3}
		cPipes_14 {Type O LastRead -1 FirstWrite 2}
		cPipes_15 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_15_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_15_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_15_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_14 {Type I LastRead 1 FirstWrite -1}
		aPipes_15 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_15_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_14 {Type I LastRead 3 FirstWrite -1}
		bPipes_15 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_14 {Type I LastRead 1 FirstWrite -1}
		aPipes_15 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_15_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_14 {Type O LastRead -1 FirstWrite 2}
		cPipes_15 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_16 {
		aPipes_15 {Type I LastRead 1 FirstWrite -1}
		aPipes_16 {Type O LastRead -1 FirstWrite 1}
		bPipes_15 {Type I LastRead 3 FirstWrite -1}
		bPipes_16 {Type O LastRead -1 FirstWrite 3}
		cPipes_15 {Type O LastRead -1 FirstWrite 2}
		cPipes_16 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_16_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_16_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_16_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_15 {Type I LastRead 1 FirstWrite -1}
		aPipes_16 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_16_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_15 {Type I LastRead 3 FirstWrite -1}
		bPipes_16 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_15 {Type I LastRead 1 FirstWrite -1}
		aPipes_16 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_16_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_15 {Type O LastRead -1 FirstWrite 2}
		cPipes_16 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_17 {
		aPipes_16 {Type I LastRead 1 FirstWrite -1}
		aPipes_17 {Type O LastRead -1 FirstWrite 1}
		bPipes_16 {Type I LastRead 3 FirstWrite -1}
		bPipes_17 {Type O LastRead -1 FirstWrite 3}
		cPipes_16 {Type O LastRead -1 FirstWrite 2}
		cPipes_17 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_17_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_17_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_17_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_16 {Type I LastRead 1 FirstWrite -1}
		aPipes_17 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_17_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_16 {Type I LastRead 3 FirstWrite -1}
		bPipes_17 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_16 {Type I LastRead 1 FirstWrite -1}
		aPipes_17 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_17_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_16 {Type O LastRead -1 FirstWrite 2}
		cPipes_17 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_18 {
		aPipes_17 {Type I LastRead 1 FirstWrite -1}
		aPipes_18 {Type O LastRead -1 FirstWrite 1}
		bPipes_17 {Type I LastRead 3 FirstWrite -1}
		bPipes_18 {Type O LastRead -1 FirstWrite 3}
		cPipes_17 {Type O LastRead -1 FirstWrite 2}
		cPipes_18 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_18_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_18_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_18_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_17 {Type I LastRead 1 FirstWrite -1}
		aPipes_18 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_18_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_17 {Type I LastRead 3 FirstWrite -1}
		bPipes_18 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_17 {Type I LastRead 1 FirstWrite -1}
		aPipes_18 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_18_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_17 {Type O LastRead -1 FirstWrite 2}
		cPipes_18 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_19 {
		aPipes_18 {Type I LastRead 1 FirstWrite -1}
		aPipes_19 {Type O LastRead -1 FirstWrite 1}
		bPipes_18 {Type I LastRead 3 FirstWrite -1}
		bPipes_19 {Type O LastRead -1 FirstWrite 3}
		cPipes_18 {Type O LastRead -1 FirstWrite 2}
		cPipes_19 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_19_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_19_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_19_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_18 {Type I LastRead 1 FirstWrite -1}
		aPipes_19 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_19_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_18 {Type I LastRead 3 FirstWrite -1}
		bPipes_19 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_18 {Type I LastRead 1 FirstWrite -1}
		aPipes_19 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_19_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_18 {Type O LastRead -1 FirstWrite 2}
		cPipes_19 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_20 {
		aPipes_19 {Type I LastRead 1 FirstWrite -1}
		aPipes_20 {Type O LastRead -1 FirstWrite 1}
		bPipes_19 {Type I LastRead 3 FirstWrite -1}
		bPipes_20 {Type O LastRead -1 FirstWrite 3}
		cPipes_19 {Type O LastRead -1 FirstWrite 2}
		cPipes_20 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_20_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_20_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_20_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_19 {Type I LastRead 1 FirstWrite -1}
		aPipes_20 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_20_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_19 {Type I LastRead 3 FirstWrite -1}
		bPipes_20 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_19 {Type I LastRead 1 FirstWrite -1}
		aPipes_20 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_20_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_19 {Type O LastRead -1 FirstWrite 2}
		cPipes_20 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_21 {
		aPipes_20 {Type I LastRead 1 FirstWrite -1}
		aPipes_21 {Type O LastRead -1 FirstWrite 1}
		bPipes_20 {Type I LastRead 3 FirstWrite -1}
		bPipes_21 {Type O LastRead -1 FirstWrite 3}
		cPipes_20 {Type O LastRead -1 FirstWrite 2}
		cPipes_21 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_21_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_21_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_21_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_20 {Type I LastRead 1 FirstWrite -1}
		aPipes_21 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_21_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_20 {Type I LastRead 3 FirstWrite -1}
		bPipes_21 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_20 {Type I LastRead 1 FirstWrite -1}
		aPipes_21 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_21_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_20 {Type O LastRead -1 FirstWrite 2}
		cPipes_21 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_22 {
		aPipes_21 {Type I LastRead 1 FirstWrite -1}
		aPipes_22 {Type O LastRead -1 FirstWrite 1}
		bPipes_21 {Type I LastRead 3 FirstWrite -1}
		bPipes_22 {Type O LastRead -1 FirstWrite 3}
		cPipes_21 {Type O LastRead -1 FirstWrite 2}
		cPipes_22 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_22_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_22_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_22_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_21 {Type I LastRead 1 FirstWrite -1}
		aPipes_22 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_22_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_21 {Type I LastRead 3 FirstWrite -1}
		bPipes_22 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_21 {Type I LastRead 1 FirstWrite -1}
		aPipes_22 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_22_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_21 {Type O LastRead -1 FirstWrite 2}
		cPipes_22 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_23 {
		aPipes_22 {Type I LastRead 1 FirstWrite -1}
		aPipes_23 {Type O LastRead -1 FirstWrite 1}
		bPipes_22 {Type I LastRead 3 FirstWrite -1}
		bPipes_23 {Type O LastRead -1 FirstWrite 3}
		cPipes_22 {Type O LastRead -1 FirstWrite 2}
		cPipes_23 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_23_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_23_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_22 {Type I LastRead 1 FirstWrite -1}
		aPipes_23 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_23_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_22 {Type I LastRead 3 FirstWrite -1}
		bPipes_23 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_22 {Type I LastRead 1 FirstWrite -1}
		aPipes_23 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_23_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_22 {Type O LastRead -1 FirstWrite 2}
		cPipes_23 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_24 {
		aPipes_23 {Type I LastRead 1 FirstWrite -1}
		aPipes_24 {Type O LastRead -1 FirstWrite 1}
		bPipes_23 {Type I LastRead 3 FirstWrite -1}
		bPipes_24 {Type O LastRead -1 FirstWrite 3}
		cPipes_23 {Type O LastRead -1 FirstWrite 2}
		cPipes_24 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_24_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_24_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_23 {Type I LastRead 1 FirstWrite -1}
		aPipes_24 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_23 {Type I LastRead 3 FirstWrite -1}
		bPipes_24 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_23 {Type I LastRead 1 FirstWrite -1}
		aPipes_24 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_24_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_23 {Type O LastRead -1 FirstWrite 2}
		cPipes_24 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_25 {
		aPipes_24 {Type I LastRead 1 FirstWrite -1}
		aPipes_25 {Type O LastRead -1 FirstWrite 1}
		bPipes_24 {Type I LastRead 3 FirstWrite -1}
		bPipes_25 {Type O LastRead -1 FirstWrite 3}
		cPipes_24 {Type O LastRead -1 FirstWrite 2}
		cPipes_25 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_25_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_25_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_25_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_24 {Type I LastRead 1 FirstWrite -1}
		aPipes_25 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_25_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_24 {Type I LastRead 3 FirstWrite -1}
		bPipes_25 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_24 {Type I LastRead 1 FirstWrite -1}
		aPipes_25 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_25_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_24 {Type O LastRead -1 FirstWrite 2}
		cPipes_25 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_26 {
		aPipes_25 {Type I LastRead 1 FirstWrite -1}
		aPipes_26 {Type O LastRead -1 FirstWrite 1}
		bPipes_25 {Type I LastRead 3 FirstWrite -1}
		bPipes_26 {Type O LastRead -1 FirstWrite 3}
		cPipes_25 {Type O LastRead -1 FirstWrite 2}
		cPipes_26 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_26_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_26_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_26_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_25 {Type I LastRead 1 FirstWrite -1}
		aPipes_26 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_26_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_25 {Type I LastRead 3 FirstWrite -1}
		bPipes_26 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_25 {Type I LastRead 1 FirstWrite -1}
		aPipes_26 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_26_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_25 {Type O LastRead -1 FirstWrite 2}
		cPipes_26 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_27 {
		aPipes_26 {Type I LastRead 1 FirstWrite -1}
		aPipes_27 {Type O LastRead -1 FirstWrite 1}
		bPipes_26 {Type I LastRead 3 FirstWrite -1}
		bPipes_27 {Type O LastRead -1 FirstWrite 3}
		cPipes_26 {Type O LastRead -1 FirstWrite 2}
		cPipes_27 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_27_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_27_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_27_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_26 {Type I LastRead 1 FirstWrite -1}
		aPipes_27 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_27_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_26 {Type I LastRead 3 FirstWrite -1}
		bPipes_27 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_26 {Type I LastRead 1 FirstWrite -1}
		aPipes_27 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_27_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_26 {Type O LastRead -1 FirstWrite 2}
		cPipes_27 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_28 {
		aPipes_27 {Type I LastRead 1 FirstWrite -1}
		aPipes_28 {Type O LastRead -1 FirstWrite 1}
		bPipes_27 {Type I LastRead 3 FirstWrite -1}
		bPipes_28 {Type O LastRead -1 FirstWrite 3}
		cPipes_27 {Type O LastRead -1 FirstWrite 2}
		cPipes_28 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_28_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_28_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_28_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_27 {Type I LastRead 1 FirstWrite -1}
		aPipes_28 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_28_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_27 {Type I LastRead 3 FirstWrite -1}
		bPipes_28 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_27 {Type I LastRead 1 FirstWrite -1}
		aPipes_28 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_28_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_27 {Type O LastRead -1 FirstWrite 2}
		cPipes_28 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_29 {
		aPipes_28 {Type I LastRead 1 FirstWrite -1}
		aPipes_29 {Type O LastRead -1 FirstWrite 1}
		bPipes_28 {Type I LastRead 3 FirstWrite -1}
		bPipes_29 {Type O LastRead -1 FirstWrite 3}
		cPipes_28 {Type O LastRead -1 FirstWrite 2}
		cPipes_29 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_29_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_29_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_29_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_28 {Type I LastRead 1 FirstWrite -1}
		aPipes_29 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_29_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_28 {Type I LastRead 3 FirstWrite -1}
		bPipes_29 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_28 {Type I LastRead 1 FirstWrite -1}
		aPipes_29 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_29_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_28 {Type O LastRead -1 FirstWrite 2}
		cPipes_29 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement_30 {
		aPipes_29 {Type I LastRead 1 FirstWrite -1}
		aPipes_30 {Type O LastRead -1 FirstWrite 1}
		bPipes_29 {Type I LastRead 3 FirstWrite -1}
		bPipes_30 {Type O LastRead -1 FirstWrite 3}
		cPipes_29 {Type O LastRead -1 FirstWrite 2}
		cPipes_30 {Type I LastRead 2 FirstWrite -1}
		size_n {Type I LastRead 1 FirstWrite -1}
		size_k {Type I LastRead 1 FirstWrite -1}
		size_m {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_30_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_30_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_30_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer {
		aBuffer {Type O LastRead -1 FirstWrite 1}
		aPipes_29 {Type I LastRead 1 FirstWrite -1}
		aPipes_30 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_30_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_29 {Type I LastRead 3 FirstWrite -1}
		bPipes_30 {Type O LastRead -1 FirstWrite 3}
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
		aPipes_29 {Type I LastRead 1 FirstWrite -1}
		aPipes_30 {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_30_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_29 {Type O LastRead -1 FirstWrite 2}
		cPipes_30 {Type I LastRead 2 FirstWrite -1}}
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
		cPipes_31 {Type I LastRead 2 FirstWrite -1}}
	ProcessingElement {
		aPipes_31 {Type I LastRead 1 FirstWrite -1}
		bPipes_31 {Type I LastRead 3 FirstWrite -1}
		cPipes_31 {Type O LastRead -1 FirstWrite 2}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_k {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}}
	ProcessingElement_Pipeline_1 {
		aBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_Pipeline_2 {
		cBuffer {Type O LastRead -1 FirstWrite 0}}
	ProcessingElement_Pipeline_InitializeABuffer_Inner {
		aPipes_31 {Type I LastRead 1 FirstWrite -1}
		aBuffer {Type O LastRead -1 FirstWrite 1}}
	ProcessingElement_Pipeline_Pipeline_N_Pipeline_M {
		bPipes_31 {Type I LastRead 3 FirstWrite -1}
		m0 {Type I LastRead 0 FirstWrite -1}
		cBuffer {Type IO LastRead 3 FirstWrite 8}
		cmp111 {Type I LastRead 0 FirstWrite -1}
		size_m_load {Type I LastRead 0 FirstWrite -1}
		cond90 {Type I LastRead 0 FirstWrite -1}
		aBuffer {Type IO LastRead 2 FirstWrite 1}
		mul {Type I LastRead 0 FirstWrite -1}
		cond {Type I LastRead 0 FirstWrite -1}
		size_n_load {Type I LastRead 0 FirstWrite -1}
		brmerge282 {Type I LastRead 0 FirstWrite -1}
		aPipes_31 {Type I LastRead 1 FirstWrite -1}}
	ProcessingElement_Pipeline_WriteC_Flattened {
		cBuffer {Type I LastRead 1 FirstWrite -1}
		cPipes_31 {Type O LastRead -1 FirstWrite 2}}
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
		cMemory {Type O LastRead -1 FirstWrite 2}}
	WriteC {
		cMemory {Type I LastRead 3 FirstWrite -1}
		gmem2 {Type O LastRead 5 FirstWrite 4}
		memory {Type I LastRead 0 FirstWrite -1}
		size_n {Type I LastRead 0 FirstWrite -1}
		size_m {Type I LastRead 0 FirstWrite -1}}
	WriteC_Pipeline_WriteC_OuterTile_N_WriteC_OuterTile_M_WriteC_N1_WriteC_M1 {
		bound17 {Type I LastRead 0 FirstWrite -1}
		bound4 {Type I LastRead 0 FirstWrite -1}
		size_n_load {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		cMemory {Type I LastRead 3 FirstWrite -1}
		div_i1 {Type I LastRead 0 FirstWrite -1}
		memory_load {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type O LastRead 5 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 512 }  { m_axi_gmem1_WSTRB STRB 1 64 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 512 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 512 }  { m_axi_gmem2_WSTRB STRB 1 64 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 512 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 { CHANNEL_NUM 0 BUNDLE gmem1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 { CHANNEL_NUM 0 BUNDLE gmem2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
