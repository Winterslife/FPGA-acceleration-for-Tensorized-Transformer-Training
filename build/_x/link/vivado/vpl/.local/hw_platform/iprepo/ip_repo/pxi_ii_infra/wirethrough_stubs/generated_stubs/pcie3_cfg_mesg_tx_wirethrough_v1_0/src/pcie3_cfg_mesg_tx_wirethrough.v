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
module pcie3_cfg_mesg_tx_wirethrough
#(
parameter integer C_TRANSMIT_WIDTH = 1,
parameter integer C_HAS_TRANSMIT = 1,
parameter integer C_TRANSMIT_TYPE_WIDTH = 3,
parameter integer C_HAS_TRANSMIT_TYPE = 1,
parameter integer C_TRANSMIT_DATA_WIDTH = 32,
parameter integer C_HAS_TRANSMIT_DATA = 1,
parameter integer C_TRANSMIT_DONE_WIDTH = 1,
parameter integer C_HAS_TRANSMIT_DONE = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 M_PCIE3_CFG_MESG_TX TRANSMIT " *)
 input wire [((C_TRANSMIT_WIDTH>0)?C_TRANSMIT_WIDTH:1)-1:0] m_transmit,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 M_PCIE3_CFG_MESG_TX TRANSMIT_TYPE " *)
 input wire [((C_TRANSMIT_TYPE_WIDTH>0)?C_TRANSMIT_TYPE_WIDTH:1)-1:0] m_transmit_type,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 M_PCIE3_CFG_MESG_TX TRANSMIT_DATA " *)
 input wire [((C_TRANSMIT_DATA_WIDTH>0)?C_TRANSMIT_DATA_WIDTH:1)-1:0] m_transmit_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 M_PCIE3_CFG_MESG_TX TRANSMIT_DONE " *)
 output wire [((C_TRANSMIT_DONE_WIDTH>0)?C_TRANSMIT_DONE_WIDTH:1)-1:0] m_transmit_done,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 S_PCIE3_CFG_MESG_TX TRANSMIT " *)
output wire [((C_TRANSMIT_WIDTH>0)?C_TRANSMIT_WIDTH:1)-1:0] s_transmit,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 S_PCIE3_CFG_MESG_TX TRANSMIT_TYPE " *)
output wire [((C_TRANSMIT_TYPE_WIDTH>0)?C_TRANSMIT_TYPE_WIDTH:1)-1:0] s_transmit_type,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 S_PCIE3_CFG_MESG_TX TRANSMIT_DATA " *)
output wire [((C_TRANSMIT_DATA_WIDTH>0)?C_TRANSMIT_DATA_WIDTH:1)-1:0] s_transmit_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx_rtl:1.0 S_PCIE3_CFG_MESG_TX TRANSMIT_DONE " *)
input wire [((C_TRANSMIT_DONE_WIDTH>0)?C_TRANSMIT_DONE_WIDTH:1)-1:0] s_transmit_done
);
assign s_transmit = m_transmit;
assign s_transmit_type = m_transmit_type;
assign s_transmit_data = m_transmit_data;
assign m_transmit_done = s_transmit_done;
endmodule
