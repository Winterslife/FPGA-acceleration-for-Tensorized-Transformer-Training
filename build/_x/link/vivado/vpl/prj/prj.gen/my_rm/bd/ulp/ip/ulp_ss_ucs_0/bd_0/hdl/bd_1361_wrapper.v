//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1361_wrapper.bd
//Design : bd_1361_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_1361_wrapper
   (aclk_ctrl,
    aclk_freerun,
    aclk_kernel_00,
    aclk_kernel_01,
    aclk_pcie,
    aresetn_ctrl,
    aresetn_ctrl_slr0,
    aresetn_ctrl_slr1,
    aresetn_ctrl_slr2,
    aresetn_ctrl_slr3,
    aresetn_kernel_00_slr0,
    aresetn_kernel_00_slr1,
    aresetn_kernel_00_slr2,
    aresetn_kernel_00_slr3,
    aresetn_kernel_01_slr0,
    aresetn_kernel_01_slr1,
    aresetn_kernel_01_slr2,
    aresetn_kernel_01_slr3,
    aresetn_pcie,
    aresetn_pcie_slr0,
    aresetn_pcie_slr1,
    aresetn_pcie_slr2,
    aresetn_pcie_slr3,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
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
    shutdown_clocks);
  input aclk_ctrl;
  input aclk_freerun;
  output aclk_kernel_00;
  output aclk_kernel_01;
  input aclk_pcie;
  input aresetn_ctrl;
  output [0:0]aresetn_ctrl_slr0;
  output [0:0]aresetn_ctrl_slr1;
  output [0:0]aresetn_ctrl_slr2;
  output [0:0]aresetn_ctrl_slr3;
  output [0:0]aresetn_kernel_00_slr0;
  output [0:0]aresetn_kernel_00_slr1;
  output [0:0]aresetn_kernel_00_slr2;
  output [0:0]aresetn_kernel_00_slr3;
  output [0:0]aresetn_kernel_01_slr0;
  output [0:0]aresetn_kernel_01_slr1;
  output [0:0]aresetn_kernel_01_slr2;
  output [0:0]aresetn_kernel_01_slr3;
  input aresetn_pcie;
  output [0:0]aresetn_pcie_slr0;
  output [0:0]aresetn_pcie_slr1;
  output [0:0]aresetn_pcie_slr2;
  output [0:0]aresetn_pcie_slr3;
  input [23:0]s_axi_ctrl_mgmt_araddr;
  input [2:0]s_axi_ctrl_mgmt_arprot;
  output [0:0]s_axi_ctrl_mgmt_arready;
  input [0:0]s_axi_ctrl_mgmt_arvalid;
  input [23:0]s_axi_ctrl_mgmt_awaddr;
  input [2:0]s_axi_ctrl_mgmt_awprot;
  output [0:0]s_axi_ctrl_mgmt_awready;
  input [0:0]s_axi_ctrl_mgmt_awvalid;
  input [0:0]s_axi_ctrl_mgmt_bready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output [0:0]s_axi_ctrl_mgmt_bvalid;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  input [0:0]s_axi_ctrl_mgmt_rready;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output [0:0]s_axi_ctrl_mgmt_rvalid;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  output [0:0]s_axi_ctrl_mgmt_wready;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input [0:0]s_axi_ctrl_mgmt_wvalid;
  input shutdown_clocks;

  wire aclk_ctrl;
  wire aclk_freerun;
  wire aclk_kernel_00;
  wire aclk_kernel_01;
  wire aclk_pcie;
  wire aresetn_ctrl;
  wire [0:0]aresetn_ctrl_slr0;
  wire [0:0]aresetn_ctrl_slr1;
  wire [0:0]aresetn_ctrl_slr2;
  wire [0:0]aresetn_ctrl_slr3;
  wire [0:0]aresetn_kernel_00_slr0;
  wire [0:0]aresetn_kernel_00_slr1;
  wire [0:0]aresetn_kernel_00_slr2;
  wire [0:0]aresetn_kernel_00_slr3;
  wire [0:0]aresetn_kernel_01_slr0;
  wire [0:0]aresetn_kernel_01_slr1;
  wire [0:0]aresetn_kernel_01_slr2;
  wire [0:0]aresetn_kernel_01_slr3;
  wire aresetn_pcie;
  wire [0:0]aresetn_pcie_slr0;
  wire [0:0]aresetn_pcie_slr1;
  wire [0:0]aresetn_pcie_slr2;
  wire [0:0]aresetn_pcie_slr3;
  wire [23:0]s_axi_ctrl_mgmt_araddr;
  wire [2:0]s_axi_ctrl_mgmt_arprot;
  wire [0:0]s_axi_ctrl_mgmt_arready;
  wire [0:0]s_axi_ctrl_mgmt_arvalid;
  wire [23:0]s_axi_ctrl_mgmt_awaddr;
  wire [2:0]s_axi_ctrl_mgmt_awprot;
  wire [0:0]s_axi_ctrl_mgmt_awready;
  wire [0:0]s_axi_ctrl_mgmt_awvalid;
  wire [0:0]s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire [0:0]s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire [0:0]s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire [0:0]s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire [0:0]s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire [0:0]s_axi_ctrl_mgmt_wvalid;
  wire shutdown_clocks;

  bd_1361 bd_1361_i
       (.aclk_ctrl(aclk_ctrl),
        .aclk_freerun(aclk_freerun),
        .aclk_kernel_00(aclk_kernel_00),
        .aclk_kernel_01(aclk_kernel_01),
        .aclk_pcie(aclk_pcie),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
        .aresetn_ctrl_slr1(aresetn_ctrl_slr1),
        .aresetn_ctrl_slr2(aresetn_ctrl_slr2),
        .aresetn_ctrl_slr3(aresetn_ctrl_slr3),
        .aresetn_kernel_00_slr0(aresetn_kernel_00_slr0),
        .aresetn_kernel_00_slr1(aresetn_kernel_00_slr1),
        .aresetn_kernel_00_slr2(aresetn_kernel_00_slr2),
        .aresetn_kernel_00_slr3(aresetn_kernel_00_slr3),
        .aresetn_kernel_01_slr0(aresetn_kernel_01_slr0),
        .aresetn_kernel_01_slr1(aresetn_kernel_01_slr1),
        .aresetn_kernel_01_slr2(aresetn_kernel_01_slr2),
        .aresetn_kernel_01_slr3(aresetn_kernel_01_slr3),
        .aresetn_pcie(aresetn_pcie),
        .aresetn_pcie_slr0(aresetn_pcie_slr0),
        .aresetn_pcie_slr1(aresetn_pcie_slr1),
        .aresetn_pcie_slr2(aresetn_pcie_slr2),
        .aresetn_pcie_slr3(aresetn_pcie_slr3),
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr),
        .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr),
        .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot),
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
        .shutdown_clocks(shutdown_clocks));
endmodule
