// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:shell_ucs_subsystem:3.0
// IP Revision: 5

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module ulp_ss_ucs_0 (
  aclk_freerun,
  aclk_ctrl,
  aclk_pcie,
  aclk_kernel_00,
  aclk_kernel_01,
  aresetn_ctrl,
  aresetn_pcie,
  aresetn_ctrl_slr0,
  aresetn_ctrl_slr1,
  aresetn_ctrl_slr2,
  aresetn_ctrl_slr3,
  aresetn_pcie_slr0,
  aresetn_pcie_slr1,
  aresetn_pcie_slr2,
  aresetn_pcie_slr3,
  aresetn_kernel_00_slr0,
  aresetn_kernel_00_slr1,
  aresetn_kernel_00_slr2,
  aresetn_kernel_00_slr3,
  aresetn_kernel_01_slr0,
  aresetn_kernel_01_slr1,
  aresetn_kernel_01_slr2,
  aresetn_kernel_01_slr3,
  shutdown_clocks,
  s_axi_ctrl_mgmt_awaddr,
  s_axi_ctrl_mgmt_awprot,
  s_axi_ctrl_mgmt_awvalid,
  s_axi_ctrl_mgmt_awready,
  s_axi_ctrl_mgmt_wdata,
  s_axi_ctrl_mgmt_wstrb,
  s_axi_ctrl_mgmt_wvalid,
  s_axi_ctrl_mgmt_wready,
  s_axi_ctrl_mgmt_bresp,
  s_axi_ctrl_mgmt_bvalid,
  s_axi_ctrl_mgmt_bready,
  s_axi_ctrl_mgmt_araddr,
  s_axi_ctrl_mgmt_arprot,
  s_axi_ctrl_mgmt_arvalid,
  s_axi_ctrl_mgmt_arready,
  s_axi_ctrl_mgmt_rdata,
  s_axi_ctrl_mgmt_rresp,
  s_axi_ctrl_mgmt_rvalid,
  s_axi_ctrl_mgmt_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_freerun, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_freerun_ref_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_freerun CLK" *)
input wire aclk_freerun;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_RESET aresetn_ctrl:aresetn_ctrl_slr0:aresetn_ctrl_slr1:aresetn_ctrl_slr2:aresetn_ctrl_slr3, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *)
input wire aclk_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_pcie, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_pcie_user_00, ASSOCIATED_RESET aresetn_pcie:aresetn_pcie_slr0:aresetn_pcie_slr1:aresetn_pcie_slr2:aresetn_pcie_slr3, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_pcie CLK" *)
input wire aclk_pcie;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_kernel_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, ASSOCIATED_RESET aresetn_kernel_00_slr0:aresetn_kernel_00_slr1:aresetn_kernel_00_slr2:aresetn_kernel_00_slr3, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_kernel_00 CLK" *)
output wire aclk_kernel_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_kernel_01, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_01, ASSOCIATED_RESET aresetn_kernel_01_slr0:aresetn_kernel_01_slr1:aresetn_kernel_01_slr2:aresetn_kernel_01_slr3, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_kernel_01 CLK" *)
output wire aclk_kernel_01;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *)
input wire aresetn_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie RST" *)
input wire aresetn_pcie;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr0 RST" *)
output wire [0 : 0] aresetn_ctrl_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr1 RST" *)
output wire [0 : 0] aresetn_ctrl_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr2, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr2 RST" *)
output wire [0 : 0] aresetn_ctrl_slr2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl_slr3, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl_slr3 RST" *)
output wire [0 : 0] aresetn_ctrl_slr3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr0 RST" *)
output wire [0 : 0] aresetn_pcie_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr1 RST" *)
output wire [0 : 0] aresetn_pcie_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr2, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr2 RST" *)
output wire [0 : 0] aresetn_pcie_slr2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_pcie_slr3, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_pcie_slr3 RST" *)
output wire [0 : 0] aresetn_pcie_slr3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_00_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr0 RST" *)
output wire [0 : 0] aresetn_kernel_00_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_00_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr1 RST" *)
output wire [0 : 0] aresetn_kernel_00_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_00_slr2, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr2 RST" *)
output wire [0 : 0] aresetn_kernel_00_slr2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_00_slr3, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_00_slr3 RST" *)
output wire [0 : 0] aresetn_kernel_00_slr3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_01_slr0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr0 RST" *)
output wire [0 : 0] aresetn_kernel_01_slr0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_01_slr1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr1 RST" *)
output wire [0 : 0] aresetn_kernel_01_slr1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_01_slr2, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr2 RST" *)
output wire [0 : 0] aresetn_kernel_01_slr2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_kernel_01_slr3, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_kernel_01_slr3 RST" *)
output wire [0 : 0] aresetn_kernel_01_slr3;
input wire shutdown_clocks;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *)
input wire [23 : 0] s_axi_ctrl_mgmt_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *)
input wire [2 : 0] s_axi_ctrl_mgmt_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *)
input wire [0 : 0] s_axi_ctrl_mgmt_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *)
output wire [0 : 0] s_axi_ctrl_mgmt_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *)
input wire [31 : 0] s_axi_ctrl_mgmt_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *)
input wire [3 : 0] s_axi_ctrl_mgmt_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *)
input wire [0 : 0] s_axi_ctrl_mgmt_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *)
output wire [0 : 0] s_axi_ctrl_mgmt_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *)
output wire [0 : 0] s_axi_ctrl_mgmt_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *)
input wire [0 : 0] s_axi_ctrl_mgmt_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *)
input wire [23 : 0] s_axi_ctrl_mgmt_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *)
input wire [2 : 0] s_axi_ctrl_mgmt_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *)
input wire [0 : 0] s_axi_ctrl_mgmt_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *)
output wire [0 : 0] s_axi_ctrl_mgmt_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *)
output wire [31 : 0] s_axi_ctrl_mgmt_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *)
output wire [0 : 0] s_axi_ctrl_mgmt_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, \
RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *)
input wire [0 : 0] s_axi_ctrl_mgmt_rready;

  // Begin VIP insertion code
  // Wire declarations for VIP ulp_ss_ucs_0_s_axi_ctrl_mgmt
  wire [23:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWADDR;
  wire [2:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWPROT;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWVALID;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWREADY;
  wire [31:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_WDATA;
  wire [3:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_WSTRB;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_WVALID;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_WREADY;
  wire [1:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_BRESP;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_BVALID;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_BREADY;
  wire [23:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARADDR;
  wire [2:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARPROT;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARVALID;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARREADY;
  wire [31:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_RDATA;
  wire [1:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_RRESP;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_RVALID;
  wire [0:0] ulp_ss_ucs_0_s_axi_ctrl_mgmt_RREADY;

  // Instantiation of VIP ulp_ss_ucs_0_s_axi_ctrl_mgmt
  ulp_ss_ucs_0_s_axi_ctrl_mgmt VIP_0 (
    .aclk(aclk_ctrl),
    .aresetn(aresetn_ctrl),
    .s_axi_awaddr(s_axi_ctrl_mgmt_awaddr[23:0]),
    .s_axi_awprot(s_axi_ctrl_mgmt_awprot[2:0]),
    .s_axi_awvalid(s_axi_ctrl_mgmt_awvalid[0:0]),
    .s_axi_awready(s_axi_ctrl_mgmt_awready[0:0]),
    .s_axi_wdata(s_axi_ctrl_mgmt_wdata[31:0]),
    .s_axi_wstrb(s_axi_ctrl_mgmt_wstrb[3:0]),
    .s_axi_wvalid(s_axi_ctrl_mgmt_wvalid[0:0]),
    .s_axi_wready(s_axi_ctrl_mgmt_wready[0:0]),
    .s_axi_bresp(s_axi_ctrl_mgmt_bresp[1:0]),
    .s_axi_bvalid(s_axi_ctrl_mgmt_bvalid[0:0]),
    .s_axi_bready(s_axi_ctrl_mgmt_bready[0:0]),
    .s_axi_araddr(s_axi_ctrl_mgmt_araddr[23:0]),
    .s_axi_arprot(s_axi_ctrl_mgmt_arprot[2:0]),
    .s_axi_arvalid(s_axi_ctrl_mgmt_arvalid[0:0]),
    .s_axi_arready(s_axi_ctrl_mgmt_arready[0:0]),
    .s_axi_rdata(s_axi_ctrl_mgmt_rdata[31:0]),
    .s_axi_rresp(s_axi_ctrl_mgmt_rresp[1:0]),
    .s_axi_rvalid(s_axi_ctrl_mgmt_rvalid[0:0]),
    .s_axi_rready(s_axi_ctrl_mgmt_rready[0:0]),
    .m_axi_awaddr(ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWADDR[23:0]),
    .m_axi_awprot(ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWPROT[2:0]),
    .m_axi_awvalid(ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWVALID[0:0]),
    .m_axi_awready(ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWREADY[0:0]),
    .m_axi_wdata(ulp_ss_ucs_0_s_axi_ctrl_mgmt_WDATA[31:0]),
    .m_axi_wstrb(ulp_ss_ucs_0_s_axi_ctrl_mgmt_WSTRB[3:0]),
    .m_axi_wvalid(ulp_ss_ucs_0_s_axi_ctrl_mgmt_WVALID[0:0]),
    .m_axi_wready(ulp_ss_ucs_0_s_axi_ctrl_mgmt_WREADY[0:0]),
    .m_axi_bresp(ulp_ss_ucs_0_s_axi_ctrl_mgmt_BRESP[1:0]),
    .m_axi_bvalid(ulp_ss_ucs_0_s_axi_ctrl_mgmt_BVALID[0:0]),
    .m_axi_bready(ulp_ss_ucs_0_s_axi_ctrl_mgmt_BREADY[0:0]),
    .m_axi_araddr(ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARADDR[23:0]),
    .m_axi_arprot(ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARPROT[2:0]),
    .m_axi_arvalid(ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARVALID[0:0]),
    .m_axi_arready(ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARREADY[0:0]),
    .m_axi_rdata(ulp_ss_ucs_0_s_axi_ctrl_mgmt_RDATA[31:0]),
    .m_axi_rresp(ulp_ss_ucs_0_s_axi_ctrl_mgmt_RRESP[1:0]),
    .m_axi_rvalid(ulp_ss_ucs_0_s_axi_ctrl_mgmt_RVALID[0:0]),
    .m_axi_rready(ulp_ss_ucs_0_s_axi_ctrl_mgmt_RREADY[0:0])
  );

  wire [23:0] s_axi_ctrl_mgmt_awaddr_joined;
  assign s_axi_ctrl_mgmt_awaddr_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWADDR};
  wire [2:0] s_axi_ctrl_mgmt_awprot_joined;
  assign s_axi_ctrl_mgmt_awprot_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWPROT};
  wire [0:0] s_axi_ctrl_mgmt_awvalid_joined;
  assign s_axi_ctrl_mgmt_awvalid_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWVALID};
  wire [31:0] s_axi_ctrl_mgmt_wdata_joined;
  assign s_axi_ctrl_mgmt_wdata_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_WDATA};
  wire [3:0] s_axi_ctrl_mgmt_wstrb_joined;
  assign s_axi_ctrl_mgmt_wstrb_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_WSTRB};
  wire [0:0] s_axi_ctrl_mgmt_wvalid_joined;
  assign s_axi_ctrl_mgmt_wvalid_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_WVALID};
  wire [0:0] s_axi_ctrl_mgmt_bready_joined;
  assign s_axi_ctrl_mgmt_bready_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_BREADY};
  wire [23:0] s_axi_ctrl_mgmt_araddr_joined;
  assign s_axi_ctrl_mgmt_araddr_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARADDR};
  wire [2:0] s_axi_ctrl_mgmt_arprot_joined;
  assign s_axi_ctrl_mgmt_arprot_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARPROT};
  wire [0:0] s_axi_ctrl_mgmt_arvalid_joined;
  assign s_axi_ctrl_mgmt_arvalid_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARVALID};
  wire [0:0] s_axi_ctrl_mgmt_rready_joined;
  assign s_axi_ctrl_mgmt_rready_joined = {ulp_ss_ucs_0_s_axi_ctrl_mgmt_RREADY};
  wire [0:0] s_axi_ctrl_mgmt_awready_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_AWREADY = s_axi_ctrl_mgmt_awready_split[0:0];
  wire [0:0] s_axi_ctrl_mgmt_wready_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_WREADY = s_axi_ctrl_mgmt_wready_split[0:0];
  wire [1:0] s_axi_ctrl_mgmt_bresp_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_BRESP = s_axi_ctrl_mgmt_bresp_split[1:0];
  wire [0:0] s_axi_ctrl_mgmt_bvalid_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_BVALID = s_axi_ctrl_mgmt_bvalid_split[0:0];
  wire [0:0] s_axi_ctrl_mgmt_arready_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_ARREADY = s_axi_ctrl_mgmt_arready_split[0:0];
  wire [31:0] s_axi_ctrl_mgmt_rdata_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_RDATA = s_axi_ctrl_mgmt_rdata_split[31:0];
  wire [1:0] s_axi_ctrl_mgmt_rresp_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_RRESP = s_axi_ctrl_mgmt_rresp_split[1:0];
  wire [0:0] s_axi_ctrl_mgmt_rvalid_split;
  assign ulp_ss_ucs_0_s_axi_ctrl_mgmt_RVALID = s_axi_ctrl_mgmt_rvalid_split[0:0];

  // End of VIP insertion

  bd_1361 inst (
    .aclk_freerun(aclk_freerun),
    .aclk_ctrl(aclk_ctrl),
    .aclk_pcie(aclk_pcie),
    .aclk_kernel_00(aclk_kernel_00),
    .aclk_kernel_01(aclk_kernel_01),
    .aresetn_ctrl(aresetn_ctrl),
    .aresetn_pcie(aresetn_pcie),
    .aresetn_ctrl_slr0(aresetn_ctrl_slr0),
    .aresetn_ctrl_slr1(aresetn_ctrl_slr1),
    .aresetn_ctrl_slr2(aresetn_ctrl_slr2),
    .aresetn_ctrl_slr3(aresetn_ctrl_slr3),
    .aresetn_pcie_slr0(aresetn_pcie_slr0),
    .aresetn_pcie_slr1(aresetn_pcie_slr1),
    .aresetn_pcie_slr2(aresetn_pcie_slr2),
    .aresetn_pcie_slr3(aresetn_pcie_slr3),
    .aresetn_kernel_00_slr0(aresetn_kernel_00_slr0),
    .aresetn_kernel_00_slr1(aresetn_kernel_00_slr1),
    .aresetn_kernel_00_slr2(aresetn_kernel_00_slr2),
    .aresetn_kernel_00_slr3(aresetn_kernel_00_slr3),
    .aresetn_kernel_01_slr0(aresetn_kernel_01_slr0),
    .aresetn_kernel_01_slr1(aresetn_kernel_01_slr1),
    .aresetn_kernel_01_slr2(aresetn_kernel_01_slr2),
    .aresetn_kernel_01_slr3(aresetn_kernel_01_slr3),
    .shutdown_clocks(shutdown_clocks),
    .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr_joined),
    .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot_joined),
    .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid_joined),
    .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready_split),
    .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata_joined),
    .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb_joined),
    .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid_joined),
    .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready_split),
    .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp_split),
    .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid_split),
    .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready_joined),
    .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr_joined),
    .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot_joined),
    .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid_joined),
    .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready_split),
    .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata_split),
    .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp_split),
    .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid_split),
    .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready_joined)
  );
endmodule
