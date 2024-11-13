// d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
// (c) Copyright 2022 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
(* black_box="yes" *) module io_bb_ddr4_master
#(
parameter integer C_DQ_WIDTH = 64,
parameter integer C_HAS_DQ = 1,
parameter integer C_DQS_T_WIDTH = 8,
parameter integer C_HAS_DQS_T = 1,
parameter integer C_DQS_C_WIDTH = 8,
parameter integer C_HAS_DQS_C = 1,
parameter integer C_ADR_WIDTH = 13,
parameter integer C_HAS_ADR = 1,
parameter integer C_BA_WIDTH = 3,
parameter integer C_HAS_BA = 1,
parameter integer C_BG_WIDTH = 1,
parameter integer C_HAS_BG = 1,
parameter integer C_ACT_N_WIDTH = 1,
parameter integer C_HAS_ACT_N = 1,
parameter integer C_RESET_N_WIDTH = 1,
parameter integer C_HAS_RESET_N = 1,
parameter integer C_CK_T_WIDTH = 1,
parameter integer C_HAS_CK_T = 1,
parameter integer C_CK_C_WIDTH = 1,
parameter integer C_HAS_CK_C = 1,
parameter integer C_CKE_WIDTH = 1,
parameter integer C_HAS_CKE = 1,
parameter integer C_CS_N_WIDTH = 1,
parameter integer C_HAS_CS_N = 1,
parameter integer C_DM_N_WIDTH = 8,
parameter integer C_HAS_DM_N = 1,
parameter integer C_ODT_WIDTH = 1,
parameter integer C_HAS_ODT = 1,
parameter integer C_PAR_WIDTH = 1,
parameter integer C_HAS_PAR = 1,
parameter integer C_C_ID_WIDTH = 1,
parameter integer C_HAS_C_ID = 1,
parameter integer C_ALERT_N_WIDTH = 1,
parameter integer C_HAS_ALERT_N = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 DQ " *)
 inout wire [((C_DQ_WIDTH>0)?C_DQ_WIDTH:1)-1:0] m_dq,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 DQS_T " *)
 inout wire [((C_DQS_T_WIDTH>0)?C_DQS_T_WIDTH:1)-1:0] m_dqs_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 DQS_C " *)
 inout wire [((C_DQS_C_WIDTH>0)?C_DQS_C_WIDTH:1)-1:0] m_dqs_c,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 ADR " *)
 output wire [((C_ADR_WIDTH>0)?C_ADR_WIDTH:1)-1:0] m_adr,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 BA " *)
 output wire [((C_BA_WIDTH>0)?C_BA_WIDTH:1)-1:0] m_ba,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 BG " *)
 output wire [((C_BG_WIDTH>0)?C_BG_WIDTH:1)-1:0] m_bg,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 ACT_N " *)
 output wire [((C_ACT_N_WIDTH>0)?C_ACT_N_WIDTH:1)-1:0] m_act_n,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 RESET_N " *)
 output wire [((C_RESET_N_WIDTH>0)?C_RESET_N_WIDTH:1)-1:0] m_reset_n,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 CK_T " *)
 output wire [((C_CK_T_WIDTH>0)?C_CK_T_WIDTH:1)-1:0] m_ck_t,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 CK_C " *)
 output wire [((C_CK_C_WIDTH>0)?C_CK_C_WIDTH:1)-1:0] m_ck_c,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 CKE " *)
 output wire [((C_CKE_WIDTH>0)?C_CKE_WIDTH:1)-1:0] m_cke,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 CS_N " *)
 output wire [((C_CS_N_WIDTH>0)?C_CS_N_WIDTH:1)-1:0] m_cs_n,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 DM_N " *)
 inout wire [((C_DM_N_WIDTH>0)?C_DM_N_WIDTH:1)-1:0] m_dm_n,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 ODT " *)
 output wire [((C_ODT_WIDTH>0)?C_ODT_WIDTH:1)-1:0] m_odt,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 PAR " *)
 output wire [((C_PAR_WIDTH>0)?C_PAR_WIDTH:1)-1:0] m_par,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 C_ID " *)
 output wire [((C_C_ID_WIDTH>0)?C_C_ID_WIDTH:1)-1:0] m_c_id,
(* X_INTERFACE_INFO = "xilinx.com:interface:ddr4_rtl:1.0 M_DDR4 ALERT_N " *)
 input wire [((C_ALERT_N_WIDTH>0)?C_ALERT_N_WIDTH:1)-1:0] m_alert_n
);
endmodule
