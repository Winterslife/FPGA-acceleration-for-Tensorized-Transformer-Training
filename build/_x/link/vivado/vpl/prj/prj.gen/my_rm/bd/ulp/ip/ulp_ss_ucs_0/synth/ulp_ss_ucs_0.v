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

(* X_CORE_INFO = "bd_1361,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "ulp_ss_ucs_0,bd_1361,{}" *)
(* CORE_GENERATION_INFO = "ulp_ss_ucs_0,bd_1361,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_ucs_subsystem,x_ipVersion=3.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Component_Name=ulp_ss_ucs_0,NUM_SLR=4,NUM_RESET_FANOUT_FLOPS_SLR0=4,NUM_RESET_FANOUT_FLOPS_SLR1=4,NUM_RESET_FANOUT_FLOPS_SLR2=4,NUM_RESET_FANOUT_FLOPS_SLR3=6,HAS_HBM_CLK=1,FREQ_CNT_REF_CLK_HZ=100000,DISABLE_THROTTLING=false,ENABLE_SHUTDOWN_CLOCKS=true,DISABLE_MGMT_JSON_METADATA=false,FREQ_HZ_KERNEL_CLOCK_00\
=300,FREQ_HZ_KERNEL_CLOCK_01=500,FREQ_HZ_KERNEL_CLOCK_02=0,FREQ_HZ_KERNEL_CLOCK_03=0,FREQ_HZ_KERNEL_CLOCK_04=0,FREQ_HZ_KERNEL_CLOCK_05=0,ENABLE_SCALABLE_KERNEL_CLOCK_00=true,ENABLE_SCALABLE_KERNEL_CLOCK_01=true,ENABLE_SCALABLE_KERNEL_CLOCK_02=true,ENABLE_SCALABLE_KERNEL_CLOCK_03=true,ENABLE_SCALABLE_KERNEL_CLOCK_04=true,ENABLE_SCALABLE_KERNEL_CLOCK_05=true,ENABLE_THROTTLING_KERNEL_CLOCK_00=true,ENABLE_THROTTLING_KERNEL_CLOCK_01=true,ENABLE_THROTTLING_KERNEL_CLOCK_02=true,ENABLE_THROTTLING_KERNEL\
_CLOCK_03=true,ENABLE_THROTTLING_KERNEL_CLOCK_04=true,ENABLE_THROTTLING_KERNEL_CLOCK_05=true,ENABLE_CONT_KERNEL_CLOCK_00=false,ENABLE_CONT_KERNEL_CLOCK_01=false,ENABLE_CONT_KERNEL_CLOCK_02=false,ENABLE_CONT_KERNEL_CLOCK_03=false,ENABLE_CONT_KERNEL_CLOCK_04=false,ENABLE_CONT_KERNEL_CLOCK_05=false,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_00=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_01=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_02=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_03=1,EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_04=1,EDGE_ALI\
GNED_KERNEL_CLOCK_DIVISOR_05=1,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_00=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_01=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_02=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_03=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_04=0,MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_05=0,CLK_DOMAIN_ACLK_KERNEL_00=cd_aclk_kernel_00,CLK_DOMAIN_ACLK_KERNEL_01=cd_aclk_kernel_01,CLK_DOMAIN_ACLK_KERNEL_02=cd_aclk_kernel_02,CLK_DOMAIN_ACLK_KERNEL_03=cd_aclk_kernel_03,CLK_DOMAIN_ACLK_KERNEL_04=cd_aclk_kernel_04,CLK_DOMAIN_ACLK_KERNE\
L_05=cd_aclk_kernel_05,CLK_DOMAIN_CLK_HBM=cd_aclk_hbm_00,VERSION.SUBSYSTEM_ID=0x07,VERSION.MAJOR_VERSION=3,VERSION.MINOR_VERSION=0,VERSION.CORE_REVISION=5,VERSION.PATCH_REVISION=0,VERSION.RESERVED_TAG=0x00000000,ENABLE_FULL_ADDRESS_ASSIGNMENTS=true,MGMT_PF_BASE_ADDRESS=0x00980000,SUPPORT_NEW_INTERRUPT_SCHEMA=true,EP_UCS_BUILD_INFO_00_OFFSET=0x00000000,EP_UCS_BUILD_INFO_00_RANGE=4k,EP_GAPPING_DEMAND_00_OFFSET=0x00001000,EP_GAPPING_DEMAND_00_RANGE=4k,EP_GAPPING_DEMAND_00_PF=0x0,EP_GAPPING_DEMAND_0\
0_BAR=0x0,EP_GAPPING_DEMAND_00_REGABS=xilinx.com_reg_abs_ucs_gapping_demand_1.0,EP_UCS_CONTROL_STATUS_00_OFFSET=0x00002000,EP_UCS_CONTROL_STATUS_00_RANGE=4k,EP_UCS_CONTROL_STATUS_00_PF=0x0,EP_UCS_CONTROL_STATUS_00_BAR=0x0,EP_UCS_CONTROL_STATUS_00_REGABS=xilinx.com_reg_abs_ucs_control_status_1.0,EP_ACLK_KERNEL_00_OFFSET=0x00003000,EP_ACLK_KERNEL_00_RANGE=4k,EP_ACLK_KERNEL_00_PF=0x0,EP_ACLK_KERNEL_00_BAR=0x0,EP_ACLK_KERNEL_00_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_01_OFFSET=0x00004000\
,EP_ACLK_KERNEL_01_RANGE=4k,EP_ACLK_KERNEL_01_PF=0x0,EP_ACLK_KERNEL_01_BAR=0x0,EP_ACLK_KERNEL_01_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_02_OFFSET=0x00005000,EP_ACLK_KERNEL_02_RANGE=4k,EP_ACLK_KERNEL_02_PF=0x0,EP_ACLK_KERNEL_02_BAR=0x0,EP_ACLK_KERNEL_02_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_03_OFFSET=0x00006000,EP_ACLK_KERNEL_03_RANGE=4k,EP_ACLK_KERNEL_03_PF=0x0,EP_ACLK_KERNEL_03_BAR=0x0,EP_ACLK_KERNEL_03_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_04_OFFSET=0x0\
0007000,EP_ACLK_KERNEL_04_RANGE=4k,EP_ACLK_KERNEL_04_PF=0x0,EP_ACLK_KERNEL_04_BAR=0x0,EP_ACLK_KERNEL_04_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_ACLK_KERNEL_05_OFFSET=0x00008000,EP_ACLK_KERNEL_05_RANGE=4k,EP_ACLK_KERNEL_05_PF=0x0,EP_ACLK_KERNEL_05_BAR=0x0,EP_ACLK_KERNEL_05_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_FREQ_CNT_ACLK_KERNEL_00_OFFSET=0x00009000,EP_FREQ_CNT_ACLK_KERNEL_00_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_00_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_00_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_00_REGABS=xilinx\
.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_01_OFFSET=0x0000A000,EP_FREQ_CNT_ACLK_KERNEL_01_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_01_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_01_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_01_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_02_OFFSET=0x0000B000,EP_FREQ_CNT_ACLK_KERNEL_02_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_02_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_02_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_02_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACL\
K_KERNEL_03_OFFSET=0x0000C000,EP_FREQ_CNT_ACLK_KERNEL_03_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_03_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_03_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_03_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_04_OFFSET=0x0000D000,EP_FREQ_CNT_ACLK_KERNEL_04_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_04_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_04_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_04_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_FREQ_CNT_ACLK_KERNEL_05_OFFSET=0x0000E000,EP_FREQ_CNT_ACLK_KER\
NEL_05_RANGE=4k,EP_FREQ_CNT_ACLK_KERNEL_05_PF=0x0,EP_FREQ_CNT_ACLK_KERNEL_05_BAR=0x0,EP_FREQ_CNT_ACLK_KERNEL_05_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,EP_ACLK_HBM_00_OFFSET=0x0000F000,EP_ACLK_HBM_00_RANGE=4k,EP_ACLK_HBM_00_PF=0x0,EP_ACLK_HBM_00_BAR=0x0,EP_ACLK_HBM_00_REGABS=xilinx.com_reg_abs_clkwiz_1.0,EP_FREQ_CNT_ACLK_HBM_00_OFFSET=0x00010000,EP_FREQ_CNT_ACLK_HBM_00_RANGE=4k,EP_FREQ_CNT_ACLK_HBM_00_PF=0x0,EP_FREQ_CNT_ACLK_HBM_00_BAR=0x0,EP_FREQ_CNT_ACLK_HBM_00_REGABS=xilinx.com_reg_ab\
s_frequency_counter_1.0,EP_FREQ_CNT_ACLK_00_OFFSET=0x00011000,EP_FREQ_CNT_ACLK_00_RANGE=4k,EP_FREQ_CNT_ACLK_00_PF=0x0,EP_FREQ_CNT_ACLK_00_BAR=0x0,EP_FREQ_CNT_ACLK_00_REGABS=xilinx.com_reg_abs_frequency_counter_1.0,VERSION.PERFORCE_CL=3478949,VERSION.VIV_VERSION=0x202210,SLR_ASSIGNMENTS=}" *)
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
    .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr),
    .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot),
    .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid),
    .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready),
    .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata),
    .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb),
    .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid),
    .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready),
    .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp),
    .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid),
    .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready),
    .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr),
    .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot),
    .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
    .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
    .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata),
    .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp),
    .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid),
    .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready)
  );
endmodule
