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
module pcie_cfg_fc_wirethrough
#(
parameter integer C_PH_WIDTH = 8,
parameter integer C_HAS_PH = 1,
parameter integer C_PD_WIDTH = 12,
parameter integer C_HAS_PD = 1,
parameter integer C_NPH_WIDTH = 8,
parameter integer C_HAS_NPH = 1,
parameter integer C_NPD_WIDTH = 12,
parameter integer C_HAS_NPD = 1,
parameter integer C_CPLH_WIDTH = 8,
parameter integer C_HAS_CPLH = 1,
parameter integer C_CPLD_WIDTH = 12,
parameter integer C_HAS_CPLD = 1,
parameter integer C_SEL_WIDTH = 3,
parameter integer C_HAS_SEL = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 M_PCIE_CFG_FC PH " *)
 output wire [((C_PH_WIDTH>0)?C_PH_WIDTH:1)-1:0] m_ph,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 M_PCIE_CFG_FC PD " *)
 output wire [((C_PD_WIDTH>0)?C_PD_WIDTH:1)-1:0] m_pd,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 M_PCIE_CFG_FC NPH " *)
 output wire [((C_NPH_WIDTH>0)?C_NPH_WIDTH:1)-1:0] m_nph,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 M_PCIE_CFG_FC NPD " *)
 output wire [((C_NPD_WIDTH>0)?C_NPD_WIDTH:1)-1:0] m_npd,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 M_PCIE_CFG_FC CPLH " *)
 output wire [((C_CPLH_WIDTH>0)?C_CPLH_WIDTH:1)-1:0] m_cplh,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 M_PCIE_CFG_FC CPLD " *)
 output wire [((C_CPLD_WIDTH>0)?C_CPLD_WIDTH:1)-1:0] m_cpld,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 M_PCIE_CFG_FC SEL " *)
 input wire [((C_SEL_WIDTH>0)?C_SEL_WIDTH:1)-1:0] m_sel,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 S_PCIE_CFG_FC PH " *)
input wire [((C_PH_WIDTH>0)?C_PH_WIDTH:1)-1:0] s_ph,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 S_PCIE_CFG_FC PD " *)
input wire [((C_PD_WIDTH>0)?C_PD_WIDTH:1)-1:0] s_pd,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 S_PCIE_CFG_FC NPH " *)
input wire [((C_NPH_WIDTH>0)?C_NPH_WIDTH:1)-1:0] s_nph,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 S_PCIE_CFG_FC NPD " *)
input wire [((C_NPD_WIDTH>0)?C_NPD_WIDTH:1)-1:0] s_npd,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 S_PCIE_CFG_FC CPLH " *)
input wire [((C_CPLH_WIDTH>0)?C_CPLH_WIDTH:1)-1:0] s_cplh,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 S_PCIE_CFG_FC CPLD " *)
input wire [((C_CPLD_WIDTH>0)?C_CPLD_WIDTH:1)-1:0] s_cpld,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc_rtl:1.0 S_PCIE_CFG_FC SEL " *)
output wire [((C_SEL_WIDTH>0)?C_SEL_WIDTH:1)-1:0] s_sel
);
assign m_ph = s_ph;
assign m_pd = s_pd;
assign m_nph = s_nph;
assign m_npd = s_npd;
assign m_cplh = s_cplh;
assign m_cpld = s_cpld;
assign s_sel = m_sel;
endmodule
