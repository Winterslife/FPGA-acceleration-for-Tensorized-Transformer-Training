//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_3f43_wrapper.bd
//Design : bd_3f43_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_3f43_wrapper
   (aclk_ctrl,
    aresetn_ctrl,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    s_axi_ctrl_user_debug_araddr,
    s_axi_ctrl_user_debug_arprot,
    s_axi_ctrl_user_debug_arready,
    s_axi_ctrl_user_debug_arvalid,
    s_axi_ctrl_user_debug_awaddr,
    s_axi_ctrl_user_debug_awprot,
    s_axi_ctrl_user_debug_awready,
    s_axi_ctrl_user_debug_awvalid,
    s_axi_ctrl_user_debug_bready,
    s_axi_ctrl_user_debug_bresp,
    s_axi_ctrl_user_debug_bvalid,
    s_axi_ctrl_user_debug_rdata,
    s_axi_ctrl_user_debug_rready,
    s_axi_ctrl_user_debug_rresp,
    s_axi_ctrl_user_debug_rvalid,
    s_axi_ctrl_user_debug_wdata,
    s_axi_ctrl_user_debug_wready,
    s_axi_ctrl_user_debug_wstrb,
    s_axi_ctrl_user_debug_wvalid);
  input aclk_ctrl;
  input aresetn_ctrl;
  input [4:0]s_axi_ctrl_mgmt_araddr;
  output s_axi_ctrl_mgmt_arready;
  input s_axi_ctrl_mgmt_arvalid;
  input [4:0]s_axi_ctrl_mgmt_awaddr;
  output s_axi_ctrl_mgmt_awready;
  input s_axi_ctrl_mgmt_awvalid;
  input s_axi_ctrl_mgmt_bready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output s_axi_ctrl_mgmt_bvalid;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  input s_axi_ctrl_mgmt_rready;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output s_axi_ctrl_mgmt_rvalid;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  output s_axi_ctrl_mgmt_wready;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input s_axi_ctrl_mgmt_wvalid;
  input [4:0]s_axi_ctrl_user_debug_araddr;
  input [2:0]s_axi_ctrl_user_debug_arprot;
  output s_axi_ctrl_user_debug_arready;
  input s_axi_ctrl_user_debug_arvalid;
  input [4:0]s_axi_ctrl_user_debug_awaddr;
  input [2:0]s_axi_ctrl_user_debug_awprot;
  output s_axi_ctrl_user_debug_awready;
  input s_axi_ctrl_user_debug_awvalid;
  input s_axi_ctrl_user_debug_bready;
  output [1:0]s_axi_ctrl_user_debug_bresp;
  output s_axi_ctrl_user_debug_bvalid;
  output [31:0]s_axi_ctrl_user_debug_rdata;
  input s_axi_ctrl_user_debug_rready;
  output [1:0]s_axi_ctrl_user_debug_rresp;
  output s_axi_ctrl_user_debug_rvalid;
  input [31:0]s_axi_ctrl_user_debug_wdata;
  output s_axi_ctrl_user_debug_wready;
  input [3:0]s_axi_ctrl_user_debug_wstrb;
  input s_axi_ctrl_user_debug_wvalid;

  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [4:0]s_axi_ctrl_mgmt_araddr;
  wire s_axi_ctrl_mgmt_arready;
  wire s_axi_ctrl_mgmt_arvalid;
  wire [4:0]s_axi_ctrl_mgmt_awaddr;
  wire s_axi_ctrl_mgmt_awready;
  wire s_axi_ctrl_mgmt_awvalid;
  wire s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire s_axi_ctrl_mgmt_wvalid;
  wire [4:0]s_axi_ctrl_user_debug_araddr;
  wire [2:0]s_axi_ctrl_user_debug_arprot;
  wire s_axi_ctrl_user_debug_arready;
  wire s_axi_ctrl_user_debug_arvalid;
  wire [4:0]s_axi_ctrl_user_debug_awaddr;
  wire [2:0]s_axi_ctrl_user_debug_awprot;
  wire s_axi_ctrl_user_debug_awready;
  wire s_axi_ctrl_user_debug_awvalid;
  wire s_axi_ctrl_user_debug_bready;
  wire [1:0]s_axi_ctrl_user_debug_bresp;
  wire s_axi_ctrl_user_debug_bvalid;
  wire [31:0]s_axi_ctrl_user_debug_rdata;
  wire s_axi_ctrl_user_debug_rready;
  wire [1:0]s_axi_ctrl_user_debug_rresp;
  wire s_axi_ctrl_user_debug_rvalid;
  wire [31:0]s_axi_ctrl_user_debug_wdata;
  wire s_axi_ctrl_user_debug_wready;
  wire [3:0]s_axi_ctrl_user_debug_wstrb;
  wire s_axi_ctrl_user_debug_wvalid;

  bd_3f43 bd_3f43_i
       (.aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready),
        .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready),
        .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid),
        .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready),
        .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid),
        .s_axi_ctrl_user_debug_araddr(s_axi_ctrl_user_debug_araddr),
        .s_axi_ctrl_user_debug_arprot(s_axi_ctrl_user_debug_arprot),
        .s_axi_ctrl_user_debug_arready(s_axi_ctrl_user_debug_arready),
        .s_axi_ctrl_user_debug_arvalid(s_axi_ctrl_user_debug_arvalid),
        .s_axi_ctrl_user_debug_awaddr(s_axi_ctrl_user_debug_awaddr),
        .s_axi_ctrl_user_debug_awprot(s_axi_ctrl_user_debug_awprot),
        .s_axi_ctrl_user_debug_awready(s_axi_ctrl_user_debug_awready),
        .s_axi_ctrl_user_debug_awvalid(s_axi_ctrl_user_debug_awvalid),
        .s_axi_ctrl_user_debug_bready(s_axi_ctrl_user_debug_bready),
        .s_axi_ctrl_user_debug_bresp(s_axi_ctrl_user_debug_bresp),
        .s_axi_ctrl_user_debug_bvalid(s_axi_ctrl_user_debug_bvalid),
        .s_axi_ctrl_user_debug_rdata(s_axi_ctrl_user_debug_rdata),
        .s_axi_ctrl_user_debug_rready(s_axi_ctrl_user_debug_rready),
        .s_axi_ctrl_user_debug_rresp(s_axi_ctrl_user_debug_rresp),
        .s_axi_ctrl_user_debug_rvalid(s_axi_ctrl_user_debug_rvalid),
        .s_axi_ctrl_user_debug_wdata(s_axi_ctrl_user_debug_wdata),
        .s_axi_ctrl_user_debug_wready(s_axi_ctrl_user_debug_wready),
        .s_axi_ctrl_user_debug_wstrb(s_axi_ctrl_user_debug_wstrb),
        .s_axi_ctrl_user_debug_wvalid(s_axi_ctrl_user_debug_wvalid));
endmodule
