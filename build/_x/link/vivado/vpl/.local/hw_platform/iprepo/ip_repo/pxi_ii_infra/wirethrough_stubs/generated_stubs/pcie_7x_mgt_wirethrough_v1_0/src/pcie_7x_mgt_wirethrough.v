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
module pcie_7x_mgt_wirethrough
#(
parameter integer C_TXN_WIDTH = 1,
parameter integer C_HAS_TXN = 1,
parameter integer C_RXN_WIDTH = 1,
parameter integer C_HAS_RXN = 1,
parameter integer C_TXP_WIDTH = 1,
parameter integer C_HAS_TXP = 1,
parameter integer C_RXP_WIDTH = 1,
parameter integer C_HAS_RXP = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 M_PCIE_7X_MGT txn " *)
 output wire [((C_TXN_WIDTH>0)?C_TXN_WIDTH:1)-1:0] m_txn,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 M_PCIE_7X_MGT rxn " *)
 input wire [((C_RXN_WIDTH>0)?C_RXN_WIDTH:1)-1:0] m_rxn,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 M_PCIE_7X_MGT txp " *)
 output wire [((C_TXP_WIDTH>0)?C_TXP_WIDTH:1)-1:0] m_txp,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 M_PCIE_7X_MGT rxp " *)
 input wire [((C_RXP_WIDTH>0)?C_RXP_WIDTH:1)-1:0] m_rxp,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 S_PCIE_7X_MGT txn " *)
output wire [((C_TXN_WIDTH>0)?C_TXN_WIDTH:1)-1:0] s_txn,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 S_PCIE_7X_MGT rxn " *)
input wire [((C_RXN_WIDTH>0)?C_RXN_WIDTH:1)-1:0] s_rxn,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 S_PCIE_7X_MGT txp " *)
output wire [((C_TXP_WIDTH>0)?C_TXP_WIDTH:1)-1:0] s_txp,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt_rtl:1.0 S_PCIE_7X_MGT rxp " *)
input wire [((C_RXP_WIDTH>0)?C_RXP_WIDTH:1)-1:0] s_rxp
);
assign m_txn = s_txn;
assign s_rxn = m_rxn;
assign m_txp = s_txp;
assign s_rxp = m_rxp;
endmodule
