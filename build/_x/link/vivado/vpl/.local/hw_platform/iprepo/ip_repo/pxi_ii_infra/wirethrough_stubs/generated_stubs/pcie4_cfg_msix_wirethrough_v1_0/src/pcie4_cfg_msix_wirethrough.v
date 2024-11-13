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
module pcie4_cfg_msix_wirethrough
#(
parameter integer C_ENABLE_WIDTH = 4,
parameter integer C_HAS_ENABLE = 1,
parameter integer C_MASK_WIDTH = 4,
parameter integer C_HAS_MASK = 1,
parameter integer C_VF_ENABLE_WIDTH = 252,
parameter integer C_HAS_VF_ENABLE = 1,
parameter integer C_VF_MASK_WIDTH = 252,
parameter integer C_HAS_VF_MASK = 1,
parameter integer C_DATA_WIDTH = 32,
parameter integer C_HAS_DATA = 1,
parameter integer C_ADDRESS_WIDTH = 64,
parameter integer C_HAS_ADDRESS = 1,
parameter integer C_INT_VECTOR_WIDTH = 1,
parameter integer C_HAS_INT_VECTOR = 1,
parameter integer C_SENT_WIDTH = 1,
parameter integer C_HAS_SENT = 1,
parameter integer C_FAIL_WIDTH = 1,
parameter integer C_HAS_FAIL = 1,
parameter integer C_VEC_PENDING_WIDTH = 2,
parameter integer C_HAS_VEC_PENDING = 1,
parameter integer C_VEC_PENDING_STATUS_WIDTH = 1,
parameter integer C_HAS_VEC_PENDING_STATUS = 1,
parameter integer C_FUNCTION_NUMBER_WIDTH = 8,
parameter integer C_HAS_FUNCTION_NUMBER = 1,
parameter integer C_MINT_VECTOR_WIDTH = 1,
parameter integer C_HAS_MINT_VECTOR = 1,
parameter integer C_ATTR_WIDTH = 3,
parameter integer C_HAS_ATTR = 1,
parameter integer C_TPH_PRESENT_WIDTH = 1,
parameter integer C_HAS_TPH_PRESENT = 1,
parameter integer C_TPH_TYPE_WIDTH = 2,
parameter integer C_HAS_TPH_TYPE = 1,
parameter integer C_TPH_ST_TAG_WIDTH = 8,
parameter integer C_HAS_TPH_ST_TAG = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX enable " *)
 input wire [((C_ENABLE_WIDTH>0)?C_ENABLE_WIDTH:1)-1:0] m_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX mask " *)
 input wire [((C_MASK_WIDTH>0)?C_MASK_WIDTH:1)-1:0] m_mask,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX vf_enable " *)
 input wire [((C_VF_ENABLE_WIDTH>0)?C_VF_ENABLE_WIDTH:1)-1:0] m_vf_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX vf_mask " *)
 input wire [((C_VF_MASK_WIDTH>0)?C_VF_MASK_WIDTH:1)-1:0] m_vf_mask,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX data " *)
 output wire [((C_DATA_WIDTH>0)?C_DATA_WIDTH:1)-1:0] m_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX address " *)
 output wire [((C_ADDRESS_WIDTH>0)?C_ADDRESS_WIDTH:1)-1:0] m_address,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX int_vector " *)
 output wire [((C_INT_VECTOR_WIDTH>0)?C_INT_VECTOR_WIDTH:1)-1:0] m_int_vector,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX sent " *)
 input wire [((C_SENT_WIDTH>0)?C_SENT_WIDTH:1)-1:0] m_sent,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX fail " *)
 input wire [((C_FAIL_WIDTH>0)?C_FAIL_WIDTH:1)-1:0] m_fail,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX vec_pending " *)
 output wire [((C_VEC_PENDING_WIDTH>0)?C_VEC_PENDING_WIDTH:1)-1:0] m_vec_pending,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX vec_pending_status " *)
 input wire [((C_VEC_PENDING_STATUS_WIDTH>0)?C_VEC_PENDING_STATUS_WIDTH:1)-1:0] m_vec_pending_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX function_number " *)
 output wire [((C_FUNCTION_NUMBER_WIDTH>0)?C_FUNCTION_NUMBER_WIDTH:1)-1:0] m_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX mint_vector " *)
 output wire [((C_MINT_VECTOR_WIDTH>0)?C_MINT_VECTOR_WIDTH:1)-1:0] m_mint_vector,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX attr " *)
 output wire [((C_ATTR_WIDTH>0)?C_ATTR_WIDTH:1)-1:0] m_attr,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX tph_present " *)
 output wire [((C_TPH_PRESENT_WIDTH>0)?C_TPH_PRESENT_WIDTH:1)-1:0] m_tph_present,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX tph_type " *)
 output wire [((C_TPH_TYPE_WIDTH>0)?C_TPH_TYPE_WIDTH:1)-1:0] m_tph_type,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 M_PCIE4_CFG_MSIX tph_st_tag " *)
 output wire [((C_TPH_ST_TAG_WIDTH>0)?C_TPH_ST_TAG_WIDTH:1)-1:0] m_tph_st_tag,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX enable " *)
output wire [((C_ENABLE_WIDTH>0)?C_ENABLE_WIDTH:1)-1:0] s_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX mask " *)
output wire [((C_MASK_WIDTH>0)?C_MASK_WIDTH:1)-1:0] s_mask,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX vf_enable " *)
output wire [((C_VF_ENABLE_WIDTH>0)?C_VF_ENABLE_WIDTH:1)-1:0] s_vf_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX vf_mask " *)
output wire [((C_VF_MASK_WIDTH>0)?C_VF_MASK_WIDTH:1)-1:0] s_vf_mask,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX data " *)
input wire [((C_DATA_WIDTH>0)?C_DATA_WIDTH:1)-1:0] s_data,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX address " *)
input wire [((C_ADDRESS_WIDTH>0)?C_ADDRESS_WIDTH:1)-1:0] s_address,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX int_vector " *)
input wire [((C_INT_VECTOR_WIDTH>0)?C_INT_VECTOR_WIDTH:1)-1:0] s_int_vector,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX sent " *)
output wire [((C_SENT_WIDTH>0)?C_SENT_WIDTH:1)-1:0] s_sent,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX fail " *)
output wire [((C_FAIL_WIDTH>0)?C_FAIL_WIDTH:1)-1:0] s_fail,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX vec_pending " *)
input wire [((C_VEC_PENDING_WIDTH>0)?C_VEC_PENDING_WIDTH:1)-1:0] s_vec_pending,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX vec_pending_status " *)
output wire [((C_VEC_PENDING_STATUS_WIDTH>0)?C_VEC_PENDING_STATUS_WIDTH:1)-1:0] s_vec_pending_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX function_number " *)
input wire [((C_FUNCTION_NUMBER_WIDTH>0)?C_FUNCTION_NUMBER_WIDTH:1)-1:0] s_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX mint_vector " *)
input wire [((C_MINT_VECTOR_WIDTH>0)?C_MINT_VECTOR_WIDTH:1)-1:0] s_mint_vector,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX attr " *)
input wire [((C_ATTR_WIDTH>0)?C_ATTR_WIDTH:1)-1:0] s_attr,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX tph_present " *)
input wire [((C_TPH_PRESENT_WIDTH>0)?C_TPH_PRESENT_WIDTH:1)-1:0] s_tph_present,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX tph_type " *)
input wire [((C_TPH_TYPE_WIDTH>0)?C_TPH_TYPE_WIDTH:1)-1:0] s_tph_type,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix_rtl:1.0 S_PCIE4_CFG_MSIX tph_st_tag " *)
input wire [((C_TPH_ST_TAG_WIDTH>0)?C_TPH_ST_TAG_WIDTH:1)-1:0] s_tph_st_tag
);
assign s_enable = m_enable;
assign s_mask = m_mask;
assign s_vf_enable = m_vf_enable;
assign s_vf_mask = m_vf_mask;
assign m_data = s_data;
assign m_address = s_address;
assign m_int_vector = s_int_vector;
assign s_sent = m_sent;
assign s_fail = m_fail;
assign m_vec_pending = s_vec_pending;
assign s_vec_pending_status = m_vec_pending_status;
assign m_function_number = s_function_number;
assign m_mint_vector = s_mint_vector;
assign m_attr = s_attr;
assign m_tph_present = s_tph_present;
assign m_tph_type = s_tph_type;
assign m_tph_st_tag = s_tph_st_tag;
endmodule
