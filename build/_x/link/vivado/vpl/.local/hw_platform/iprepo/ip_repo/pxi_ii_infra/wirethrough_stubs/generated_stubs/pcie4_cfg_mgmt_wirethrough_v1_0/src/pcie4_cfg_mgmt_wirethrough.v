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
module pcie4_cfg_mgmt_wirethrough
#(
parameter integer C_ADDR_WIDTH = 10,
parameter integer C_HAS_ADDR = 1,
parameter integer C_WRITE_EN_WIDTH = 1,
parameter integer C_HAS_WRITE_EN = 1,
parameter integer C_WRITE_DATA_WIDTH = 32,
parameter integer C_HAS_WRITE_DATA = 1,
parameter integer C_BYTE_EN_WIDTH = 4,
parameter integer C_HAS_BYTE_EN = 1,
parameter integer C_READ_EN_WIDTH = 1,
parameter integer C_HAS_READ_EN = 1,
parameter integer C_READ_DATA_WIDTH = 32,
parameter integer C_HAS_READ_DATA = 1,
parameter integer C_READ_WRITE_DONE_WIDTH = 1,
parameter integer C_HAS_READ_WRITE_DONE = 1,
parameter integer C_FUNCTION_NUMBER_WIDTH = 8,
parameter integer C_HAS_FUNCTION_NUMBER = 1,
parameter integer C_DEBUG_ACCESS_WIDTH = 1,
parameter integer C_HAS_DEBUG_ACCESS = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT ADDR " *)
 output wire [((C_ADDR_WIDTH>0)?C_ADDR_WIDTH:1)-1:0] m_addr,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT WRITE_EN " *)
 output wire [((C_WRITE_EN_WIDTH>0)?C_WRITE_EN_WIDTH:1)-1:0] m_write_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT WRITE_DATA " *)
 output wire [((C_WRITE_DATA_WIDTH>0)?C_WRITE_DATA_WIDTH:1)-1:0] m_write_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT BYTE_EN " *)
 output wire [((C_BYTE_EN_WIDTH>0)?C_BYTE_EN_WIDTH:1)-1:0] m_byte_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT READ_EN " *)
 output wire [((C_READ_EN_WIDTH>0)?C_READ_EN_WIDTH:1)-1:0] m_read_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT READ_DATA " *)
 input wire [((C_READ_DATA_WIDTH>0)?C_READ_DATA_WIDTH:1)-1:0] m_read_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT READ_WRITE_DONE " *)
 input wire [((C_READ_WRITE_DONE_WIDTH>0)?C_READ_WRITE_DONE_WIDTH:1)-1:0] m_read_write_done,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT FUNCTION_NUMBER " *)
 output wire [((C_FUNCTION_NUMBER_WIDTH>0)?C_FUNCTION_NUMBER_WIDTH:1)-1:0] m_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 M_PCIE4_CFG_MGMT DEBUG_ACCESS " *)
 output wire [((C_DEBUG_ACCESS_WIDTH>0)?C_DEBUG_ACCESS_WIDTH:1)-1:0] m_debug_access,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT ADDR " *)
input wire [((C_ADDR_WIDTH>0)?C_ADDR_WIDTH:1)-1:0] s_addr,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT WRITE_EN " *)
input wire [((C_WRITE_EN_WIDTH>0)?C_WRITE_EN_WIDTH:1)-1:0] s_write_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT WRITE_DATA " *)
input wire [((C_WRITE_DATA_WIDTH>0)?C_WRITE_DATA_WIDTH:1)-1:0] s_write_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT BYTE_EN " *)
input wire [((C_BYTE_EN_WIDTH>0)?C_BYTE_EN_WIDTH:1)-1:0] s_byte_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT READ_EN " *)
input wire [((C_READ_EN_WIDTH>0)?C_READ_EN_WIDTH:1)-1:0] s_read_en,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT READ_DATA " *)
output wire [((C_READ_DATA_WIDTH>0)?C_READ_DATA_WIDTH:1)-1:0] s_read_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT READ_WRITE_DONE " *)
output wire [((C_READ_WRITE_DONE_WIDTH>0)?C_READ_WRITE_DONE_WIDTH:1)-1:0] s_read_write_done,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT FUNCTION_NUMBER " *)
input wire [((C_FUNCTION_NUMBER_WIDTH>0)?C_FUNCTION_NUMBER_WIDTH:1)-1:0] s_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt_rtl:1.0 S_PCIE4_CFG_MGMT DEBUG_ACCESS " *)
input wire [((C_DEBUG_ACCESS_WIDTH>0)?C_DEBUG_ACCESS_WIDTH:1)-1:0] s_debug_access
);
assign m_addr = s_addr;
assign m_write_en = s_write_en;
assign m_write_data = s_write_data;
assign m_byte_en = s_byte_en;
assign m_read_en = s_read_en;
assign s_read_data = m_read_data;
assign s_read_write_done = m_read_write_done;
assign m_function_number = s_function_number;
assign m_debug_access = s_debug_access;
endmodule
