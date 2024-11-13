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

(* X_CORE_INFO = "bd_3f43,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "ulp_shell_cmp_subsystem_0_0,bd_3f43,{}" *)
(* CORE_GENERATION_INFO = "ulp_shell_cmp_subsystem_0_0,bd_3f43,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_cmp_subsystem,x_ipVersion=3.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Component_Name=ulp_shell_cmp_subsystem_0_0,VERSION.SUBSYSTEM_ID=0x03,VERSION.MAJOR_VERSION=3,VERSION.MINOR_VERSION=0,VERSION.CORE_REVISION=6,VERSION.PATCH_REVISION=0,VERSION.RESERVED_TAG=0x00000000,PARTITION_NAME=ULP,DESIGN_TYPE=1RP,HAS_JTAG_AXI_MASTER=false,HAS_USER_DEBUG=true,HAS_UUID_ROM=f\
alse,HAS_MEMORY_CALIB_STATUS=false,HAS_AXI_HWICAP=false,HAS_AXI_ICAP_ARB=false,HAS_MGMT_DEBUG=false,HAS_DDR4_RESET_GATE=false,USE_MDM_UART=0,NUM_MEMORY_CALIB=1,NUM_MB_DEBUG_PORTS=2,INIT_LOGIC_UUID=00000000000000000000000000000000,REGSLICE_USER_DEBUG_BRIDGE=NONE,REGSLICE_UUID_ROM=NONE,REGSLICE_MEMORY_CALIB_STATUS=NONE,REGSLICE_AXI_HWICAP=NONE,REGSLICE_MGMT_DEBUG=NONE,REGSLICE_DDR4_RESET_GATE=NONE,ENABLE_FULL_ADDRESS_ASSIGNMENTS=true,MGMT_PF_BASE_ADDRESS_BLP=0x01E80000,MGMT_PF_BASE_ADDRESS_PLP=0x0\
0060000,MGMT_PF_BASE_ADDRESS_ULP=0x01020000,USER_PF_BASE_ADDRESS_ULP=0x01C00000,SUPPORT_NEW_INTERRUPT_SCHEMA=true,EP_CMP_BUILD_INFO_00_OFFSET=0x00000000,EP_CMP_BUILD_INFO_00_RANGE=4k,EP_ICAP_ARB_00_OFFSET=0x00001000,EP_ICAP_ARB_00_RANGE=4k,EP_ICAP_ARB_00_PF=0x0,EP_ICAP_ARB_00_BAR=0x0,EP_ICAP_ARB_00_REGABS=xilinx.com_reg_abs_icap_arb_1.0,EP_UUID_ROM_PLP_00_OFFSET=0x00002000,EP_UUID_ROM_PLP_00_RANGE=4k,EP_UUID_ROM_PLP_00_PF=0x0,EP_UUID_ROM_PLP_00_BAR=0x0,EP_UUID_ROM_PLP_00_REGABS=xilinx.com_reg_ab\
s_uuid_rom_1.0,EP_DDR_MEM_CALIB_00_OFFSET=0x00003000,EP_DDR_MEM_CALIB_00_RANGE=4k,EP_DDR_MEM_CALIB_00_PF=0x0,EP_DDR_MEM_CALIB_00_BAR=0x0,EP_DDR_MEM_CALIB_00_REGABS=xilinx.com_reg_abs_cmp_ddr_calib_1.0,EP_DDR_MEM_SRSR_GATE_00_OFFSET=0x00004000,EP_DDR_MEM_SRSR_GATE_00_RANGE=4k,EP_DDR_MEM_SRSR_GATE_00_PF=0x0,EP_DDR_MEM_SRSR_GATE_00_BAR=0x0,EP_DDR_MEM_SRSR_GATE_00_REGABS=xilinx.com_reg_abs_gpio_srsr_gate_1.0,EP_FPGA_CONFIGURATION_00_OFFSET=0x00008000,EP_FPGA_CONFIGURATION_00_RANGE=32k,EP_FPGA_CONFIG\
URATION_00_PF=0x0,EP_FPGA_CONFIGURATION_00_BAR=0x0,EP_FPGA_CONFIGURATION_00_REGABS=xilinx.com_reg_abs_axi_hwicap_1.0,EP_FPGA_CONFIGURATION_00_MSIX_START=0x1,EP_FPGA_CONFIGURATION_00_MSIX_END=0x1,EP_FPGA_CONFIGURATION_00_INTERRUPT_ALIAS=interrupt_fpga_configuration_00,EP_DEBUG_BSCAN_MGMT_00_OFFSET=0x00010000,EP_DEBUG_BSCAN_MGMT_00_RANGE=64k,EP_DEBUG_BSCAN_MGMT_00_PF=0x0,EP_DEBUG_BSCAN_MGMT_00_BAR=0x0,EP_DEBUG_BSCAN_MGMT_00_REGABS=xilinx.com_reg_abs_debug_bridge_1.0,EP_DEBUG_BSCAN_USER_00_OFFSET=0\
x00000000,EP_DEBUG_BSCAN_USER_00_RANGE=64k,EP_DEBUG_BSCAN_USER_00_PF=0x1,EP_DEBUG_BSCAN_USER_00_BAR=0x0,EP_DEBUG_BSCAN_USER_00_REGABS=xilinx.com_reg_abs_debug_bridge_1.0,OFFSET_MDM_SEG=0x01F40000,RANGE_MDM_SEG=4k,VERSION.PERFORCE_CL=3478949,VERSION.VIV_VERSION=0x202210,SLR_ASSIGNMENTS=}" *)
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

  bd_3f43 inst (
    .aclk_ctrl(aclk_ctrl),
    .aresetn_ctrl(aresetn_ctrl),
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
    .s_axi_ctrl_user_debug_wvalid(s_axi_ctrl_user_debug_wvalid),
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
    .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid)
  );
endmodule
