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
(* black_box="yes" *) module io_bb_qsfp_2rp_master
#(
parameter integer C_LPMODE_WIDTH = 1,
parameter integer C_HAS_LPMODE = 1,
parameter integer C_RESET_L_WIDTH = 1,
parameter integer C_HAS_RESET_L = 1,
parameter integer C_MODPRS_L_WIDTH = 1,
parameter integer C_HAS_MODPRS_L = 1,
parameter integer C_INT_L_WIDTH = 1,
parameter integer C_HAS_INT_L = 1,
parameter integer C_MODSEL_L_WIDTH = 1,
parameter integer C_HAS_MODSEL_L = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:qsfp_2rp_rtl:1.0 M_QSFP_2RP LPMODE " *)
 output wire [((C_LPMODE_WIDTH>0)?C_LPMODE_WIDTH:1)-1:0] m_lpmode,
(* X_INTERFACE_INFO = "xilinx.com:interface:qsfp_2rp_rtl:1.0 M_QSFP_2RP RESET_L " *)
 output wire [((C_RESET_L_WIDTH>0)?C_RESET_L_WIDTH:1)-1:0] m_reset_l,
(* X_INTERFACE_INFO = "xilinx.com:interface:qsfp_2rp_rtl:1.0 M_QSFP_2RP MODPRS_L " *)
 input wire [((C_MODPRS_L_WIDTH>0)?C_MODPRS_L_WIDTH:1)-1:0] m_modprs_l,
(* X_INTERFACE_INFO = "xilinx.com:interface:qsfp_2rp_rtl:1.0 M_QSFP_2RP INT_L " *)
 input wire [((C_INT_L_WIDTH>0)?C_INT_L_WIDTH:1)-1:0] m_int_l,
(* X_INTERFACE_INFO = "xilinx.com:interface:qsfp_2rp_rtl:1.0 M_QSFP_2RP MODSEL_L " *)
 output wire [((C_MODSEL_L_WIDTH>0)?C_MODSEL_L_WIDTH:1)-1:0] m_modsel_l
);
endmodule
