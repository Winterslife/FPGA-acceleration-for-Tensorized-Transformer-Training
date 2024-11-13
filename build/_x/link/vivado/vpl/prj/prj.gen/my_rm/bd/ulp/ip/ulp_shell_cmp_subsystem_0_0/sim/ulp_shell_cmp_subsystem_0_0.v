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


// IP VLNV: xilinx.com:ip:shell_cmp_subsystem:3.0
// IP Revision: 6

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module ulp_shell_cmp_subsystem_0_0 (
  aclk_ctrl,
  aresetn_ctrl,
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
  s_axi_ctrl_user_debug_wvalid,
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
  s_axi_ctrl_mgmt_wvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, ASSOCIATED_BUSIF s_axi_ctrl_mgmt:s_axi_ctrl_user_debug, ASSOCIATED_RESET aresetn_ctrl, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *)
input wire aclk_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *)
input wire aresetn_ctrl;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARADDR" *)
input wire [4 : 0] s_axi_ctrl_user_debug_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARPROT" *)
input wire [2 : 0] s_axi_ctrl_user_debug_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARREADY" *)
output wire s_axi_ctrl_user_debug_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug ARVALID" *)
input wire s_axi_ctrl_user_debug_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWADDR" *)
input wire [4 : 0] s_axi_ctrl_user_debug_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWPROT" *)
input wire [2 : 0] s_axi_ctrl_user_debug_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWREADY" *)
output wire s_axi_ctrl_user_debug_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug AWVALID" *)
input wire s_axi_ctrl_user_debug_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BREADY" *)
input wire s_axi_ctrl_user_debug_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BRESP" *)
output wire [1 : 0] s_axi_ctrl_user_debug_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug BVALID" *)
output wire s_axi_ctrl_user_debug_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RDATA" *)
output wire [31 : 0] s_axi_ctrl_user_debug_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RREADY" *)
input wire s_axi_ctrl_user_debug_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RRESP" *)
output wire [1 : 0] s_axi_ctrl_user_debug_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug RVALID" *)
output wire s_axi_ctrl_user_debug_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WDATA" *)
input wire [31 : 0] s_axi_ctrl_user_debug_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WREADY" *)
output wire s_axi_ctrl_user_debug_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WSTRB" *)
input wire [3 : 0] s_axi_ctrl_user_debug_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_user_debug, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1, ASSOCIATED_BUSIF S_AXI" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_user_debug WVALID" *)
input wire s_axi_ctrl_user_debug_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *)
input wire [4 : 0] s_axi_ctrl_mgmt_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *)
output wire s_axi_ctrl_mgmt_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *)
input wire s_axi_ctrl_mgmt_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *)
input wire [4 : 0] s_axi_ctrl_mgmt_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *)
output wire s_axi_ctrl_mgmt_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *)
input wire s_axi_ctrl_mgmt_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *)
input wire s_axi_ctrl_mgmt_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *)
output wire s_axi_ctrl_mgmt_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *)
output wire [31 : 0] s_axi_ctrl_mgmt_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *)
input wire s_axi_ctrl_mgmt_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *)
output wire s_axi_ctrl_mgmt_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *)
input wire [31 : 0] s_axi_ctrl_mgmt_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *)
output wire s_axi_ctrl_mgmt_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *)
input wire [3 : 0] s_axi_ctrl_mgmt_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, \
RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *)
input wire s_axi_ctrl_mgmt_wvalid;

  // Begin VIP insertion code
  // Wire declarations for VIP ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt
  wire [4:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARADDR;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARREADY;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARVALID;
  wire [4:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWADDR;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWREADY;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWVALID;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BREADY;
  wire [1:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BRESP;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BVALID;
  wire [31:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RDATA;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RREADY;
  wire [1:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RRESP;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RVALID;
  wire [31:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WDATA;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WREADY;
  wire [3:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WSTRB;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WVALID;

  // Instantiation of VIP ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt
  ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt VIP_0 (
    .aclk(aclk_ctrl),
    .aresetn(aresetn_ctrl),
    .s_axi_awaddr({{20{1'b0}}, s_axi_ctrl_mgmt_awaddr[4:0]}),
    .s_axi_awvalid(s_axi_ctrl_mgmt_awvalid),
    .s_axi_awready(s_axi_ctrl_mgmt_awready),
    .s_axi_wdata(s_axi_ctrl_mgmt_wdata[31:0]),
    .s_axi_wstrb(s_axi_ctrl_mgmt_wstrb[3:0]),
    .s_axi_wvalid(s_axi_ctrl_mgmt_wvalid),
    .s_axi_wready(s_axi_ctrl_mgmt_wready),
    .s_axi_bresp(s_axi_ctrl_mgmt_bresp[1:0]),
    .s_axi_bvalid(s_axi_ctrl_mgmt_bvalid),
    .s_axi_bready(s_axi_ctrl_mgmt_bready),
    .s_axi_araddr({{20{1'b0}}, s_axi_ctrl_mgmt_araddr[4:0]}),
    .s_axi_arvalid(s_axi_ctrl_mgmt_arvalid),
    .s_axi_arready(s_axi_ctrl_mgmt_arready),
    .s_axi_rdata(s_axi_ctrl_mgmt_rdata[31:0]),
    .s_axi_rresp(s_axi_ctrl_mgmt_rresp[1:0]),
    .s_axi_rvalid(s_axi_ctrl_mgmt_rvalid),
    .s_axi_rready(s_axi_ctrl_mgmt_rready),
    .m_axi_awaddr(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWADDR[4:0]),
    .m_axi_awvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWVALID),
    .m_axi_awready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWREADY),
    .m_axi_wdata(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WDATA[31:0]),
    .m_axi_wstrb(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WSTRB[3:0]),
    .m_axi_wvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WVALID),
    .m_axi_wready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WREADY),
    .m_axi_bresp(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BRESP[1:0]),
    .m_axi_bvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BVALID),
    .m_axi_bready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BREADY),
    .m_axi_araddr(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARADDR[4:0]),
    .m_axi_arvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARVALID),
    .m_axi_arready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARREADY),
    .m_axi_rdata(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RDATA[31:0]),
    .m_axi_rresp(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RRESP[1:0]),
    .m_axi_rvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RVALID),
    .m_axi_rready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RREADY)
  );

  // Wire declarations for VIP ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug
  wire [4:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARADDR;
  wire [2:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARPROT;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARREADY;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARVALID;
  wire [4:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWADDR;
  wire [2:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWPROT;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWREADY;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWVALID;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BREADY;
  wire [1:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BRESP;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BVALID;
  wire [31:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RDATA;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RREADY;
  wire [1:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RRESP;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RVALID;
  wire [31:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WDATA;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WREADY;
  wire [3:0] ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WSTRB;
  wire ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WVALID;

  // Instantiation of VIP ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug
  ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug VIP_1 (
    .aclk(aclk_ctrl),
    .aresetn(aresetn_ctrl),
    .s_axi_awaddr({{20{1'b0}}, s_axi_ctrl_user_debug_awaddr[4:0]}),
    .s_axi_awprot(s_axi_ctrl_user_debug_awprot[2:0]),
    .s_axi_awvalid(s_axi_ctrl_user_debug_awvalid),
    .s_axi_awready(s_axi_ctrl_user_debug_awready),
    .s_axi_wdata(s_axi_ctrl_user_debug_wdata[31:0]),
    .s_axi_wstrb(s_axi_ctrl_user_debug_wstrb[3:0]),
    .s_axi_wvalid(s_axi_ctrl_user_debug_wvalid),
    .s_axi_wready(s_axi_ctrl_user_debug_wready),
    .s_axi_bresp(s_axi_ctrl_user_debug_bresp[1:0]),
    .s_axi_bvalid(s_axi_ctrl_user_debug_bvalid),
    .s_axi_bready(s_axi_ctrl_user_debug_bready),
    .s_axi_araddr({{20{1'b0}}, s_axi_ctrl_user_debug_araddr[4:0]}),
    .s_axi_arprot(s_axi_ctrl_user_debug_arprot[2:0]),
    .s_axi_arvalid(s_axi_ctrl_user_debug_arvalid),
    .s_axi_arready(s_axi_ctrl_user_debug_arready),
    .s_axi_rdata(s_axi_ctrl_user_debug_rdata[31:0]),
    .s_axi_rresp(s_axi_ctrl_user_debug_rresp[1:0]),
    .s_axi_rvalid(s_axi_ctrl_user_debug_rvalid),
    .s_axi_rready(s_axi_ctrl_user_debug_rready),
    .m_axi_awaddr(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWADDR[4:0]),
    .m_axi_awprot(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWPROT[2:0]),
    .m_axi_awvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWVALID),
    .m_axi_awready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWREADY),
    .m_axi_wdata(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WDATA[31:0]),
    .m_axi_wstrb(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WSTRB[3:0]),
    .m_axi_wvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WVALID),
    .m_axi_wready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WREADY),
    .m_axi_bresp(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BRESP[1:0]),
    .m_axi_bvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BVALID),
    .m_axi_bready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BREADY),
    .m_axi_araddr(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARADDR[4:0]),
    .m_axi_arprot(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARPROT[2:0]),
    .m_axi_arvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARVALID),
    .m_axi_arready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARREADY),
    .m_axi_rdata(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RDATA[31:0]),
    .m_axi_rresp(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RRESP[1:0]),
    .m_axi_rvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RVALID),
    .m_axi_rready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RREADY)
  );

  wire [4:0] s_axi_ctrl_user_debug_araddr_joined;
  assign s_axi_ctrl_user_debug_araddr_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARADDR};
  wire [2:0] s_axi_ctrl_user_debug_arprot_joined;
  assign s_axi_ctrl_user_debug_arprot_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARPROT};
  wire [4:0] s_axi_ctrl_user_debug_awaddr_joined;
  assign s_axi_ctrl_user_debug_awaddr_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWADDR};
  wire [2:0] s_axi_ctrl_user_debug_awprot_joined;
  assign s_axi_ctrl_user_debug_awprot_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWPROT};
  wire [31:0] s_axi_ctrl_user_debug_wdata_joined;
  assign s_axi_ctrl_user_debug_wdata_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WDATA};
  wire [3:0] s_axi_ctrl_user_debug_wstrb_joined;
  assign s_axi_ctrl_user_debug_wstrb_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WSTRB};
  wire [4:0] s_axi_ctrl_mgmt_araddr_joined;
  assign s_axi_ctrl_mgmt_araddr_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARADDR};
  wire [4:0] s_axi_ctrl_mgmt_awaddr_joined;
  assign s_axi_ctrl_mgmt_awaddr_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWADDR};
  wire [31:0] s_axi_ctrl_mgmt_wdata_joined;
  assign s_axi_ctrl_mgmt_wdata_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WDATA};
  wire [3:0] s_axi_ctrl_mgmt_wstrb_joined;
  assign s_axi_ctrl_mgmt_wstrb_joined = {ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WSTRB};
  wire [1:0] s_axi_ctrl_user_debug_bresp_split;
  assign ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BRESP = s_axi_ctrl_user_debug_bresp_split[1:0];
  wire [31:0] s_axi_ctrl_user_debug_rdata_split;
  assign ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RDATA = s_axi_ctrl_user_debug_rdata_split[31:0];
  wire [1:0] s_axi_ctrl_user_debug_rresp_split;
  assign ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RRESP = s_axi_ctrl_user_debug_rresp_split[1:0];
  wire [1:0] s_axi_ctrl_mgmt_bresp_split;
  assign ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BRESP = s_axi_ctrl_mgmt_bresp_split[1:0];
  wire [31:0] s_axi_ctrl_mgmt_rdata_split;
  assign ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RDATA = s_axi_ctrl_mgmt_rdata_split[31:0];
  wire [1:0] s_axi_ctrl_mgmt_rresp_split;
  assign ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RRESP = s_axi_ctrl_mgmt_rresp_split[1:0];

  // End of VIP insertion

  bd_3f43 inst (
    .aclk_ctrl(aclk_ctrl),
    .aresetn_ctrl(aresetn_ctrl),
    .s_axi_ctrl_user_debug_araddr(s_axi_ctrl_user_debug_araddr_joined),
    .s_axi_ctrl_user_debug_arprot(s_axi_ctrl_user_debug_arprot_joined),
    .s_axi_ctrl_user_debug_arready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARREADY),
    .s_axi_ctrl_user_debug_arvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_ARVALID),
    .s_axi_ctrl_user_debug_awaddr(s_axi_ctrl_user_debug_awaddr_joined),
    .s_axi_ctrl_user_debug_awprot(s_axi_ctrl_user_debug_awprot_joined),
    .s_axi_ctrl_user_debug_awready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWREADY),
    .s_axi_ctrl_user_debug_awvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_AWVALID),
    .s_axi_ctrl_user_debug_bready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BREADY),
    .s_axi_ctrl_user_debug_bresp(s_axi_ctrl_user_debug_bresp_split),
    .s_axi_ctrl_user_debug_bvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_BVALID),
    .s_axi_ctrl_user_debug_rdata(s_axi_ctrl_user_debug_rdata_split),
    .s_axi_ctrl_user_debug_rready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RREADY),
    .s_axi_ctrl_user_debug_rresp(s_axi_ctrl_user_debug_rresp_split),
    .s_axi_ctrl_user_debug_rvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_RVALID),
    .s_axi_ctrl_user_debug_wdata(s_axi_ctrl_user_debug_wdata_joined),
    .s_axi_ctrl_user_debug_wready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WREADY),
    .s_axi_ctrl_user_debug_wstrb(s_axi_ctrl_user_debug_wstrb_joined),
    .s_axi_ctrl_user_debug_wvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_user_debug_WVALID),
    .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr_joined),
    .s_axi_ctrl_mgmt_arready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARREADY),
    .s_axi_ctrl_mgmt_arvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_ARVALID),
    .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr_joined),
    .s_axi_ctrl_mgmt_awready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWREADY),
    .s_axi_ctrl_mgmt_awvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_AWVALID),
    .s_axi_ctrl_mgmt_bready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BREADY),
    .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp_split),
    .s_axi_ctrl_mgmt_bvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_BVALID),
    .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata_split),
    .s_axi_ctrl_mgmt_rready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RREADY),
    .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp_split),
    .s_axi_ctrl_mgmt_rvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_RVALID),
    .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata_joined),
    .s_axi_ctrl_mgmt_wready(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WREADY),
    .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb_joined),
    .s_axi_ctrl_mgmt_wvalid(ulp_shell_cmp_subsystem_0_0_s_axi_ctrl_mgmt_WVALID)
  );
endmodule
