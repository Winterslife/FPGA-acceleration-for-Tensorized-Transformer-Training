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
module pcie4_cfg_status_wirethrough
#(
parameter integer C_PHY_LINK_DOWN_WIDTH = 1,
parameter integer C_HAS_PHY_LINK_DOWN = 1,
parameter integer C_PHY_LINK_STATUS_WIDTH = 2,
parameter integer C_HAS_PHY_LINK_STATUS = 1,
parameter integer C_NEGOTIATED_WIDTH_WIDTH = 3,
parameter integer C_HAS_NEGOTIATED_WIDTH = 1,
parameter integer C_CURRENT_SPEED_WIDTH = 2,
parameter integer C_HAS_CURRENT_SPEED = 1,
parameter integer C_MAX_PAYLOAD_WIDTH = 2,
parameter integer C_HAS_MAX_PAYLOAD = 1,
parameter integer C_MAX_READ_REQ_WIDTH = 3,
parameter integer C_HAS_MAX_READ_REQ = 1,
parameter integer C_FUNCTION_STATUS_WIDTH = 1,
parameter integer C_HAS_FUNCTION_STATUS = 1,
parameter integer C_FUNCTION_POWER_STATE_WIDTH = 12,
parameter integer C_HAS_FUNCTION_POWER_STATE = 1,
parameter integer C_VF_STATUS_WIDTH = 1,
parameter integer C_HAS_VF_STATUS = 1,
parameter integer C_VF_POWER_STATE_WIDTH = 756,
parameter integer C_HAS_VF_POWER_STATE = 1,
parameter integer C_LINK_POWER_STATE_WIDTH = 2,
parameter integer C_HAS_LINK_POWER_STATE = 1,
parameter integer C_ERR_COR_OUT_WIDTH = 1,
parameter integer C_HAS_ERR_COR_OUT = 1,
parameter integer C_ERR_NONFATAL_OUT_WIDTH = 1,
parameter integer C_HAS_ERR_NONFATAL_OUT = 1,
parameter integer C_ERR_FATAL_OUT_WIDTH = 1,
parameter integer C_HAS_ERR_FATAL_OUT = 1,
parameter integer C_LTSSM_STATE_WIDTH = 6,
parameter integer C_HAS_LTSSM_STATE = 1,
parameter integer C_RCB_STATUS_WIDTH = 1,
parameter integer C_HAS_RCB_STATUS = 1,
parameter integer C_OBFF_ENABLE_WIDTH = 2,
parameter integer C_HAS_OBFF_ENABLE = 1,
parameter integer C_PL_STATUS_CHANGE_WIDTH = 1,
parameter integer C_HAS_PL_STATUS_CHANGE = 1,
parameter integer C_TPH_REQUESTER_ENABLE_WIDTH = 4,
parameter integer C_HAS_TPH_REQUESTER_ENABLE = 1,
parameter integer C_TPH_ST_MODE_WIDTH = 12,
parameter integer C_HAS_TPH_ST_MODE = 1,
parameter integer C_VF_TPH_REQUESTER_ENABLE_WIDTH = 252,
parameter integer C_HAS_VF_TPH_REQUESTER_ENABLE = 1,
parameter integer C_VF_TPH_ST_MODE_WIDTH = 756,
parameter integer C_HAS_VF_TPH_ST_MODE = 1,
parameter integer C_RQ_SEQ_NUM0_WIDTH = 6,
parameter integer C_HAS_RQ_SEQ_NUM0 = 1,
parameter integer C_RQ_SEQ_NUM_VLD0_WIDTH = 1,
parameter integer C_HAS_RQ_SEQ_NUM_VLD0 = 1,
parameter integer C_LOCAL_ERROR_VALID_WIDTH = 1,
parameter integer C_HAS_LOCAL_ERROR_VALID = 1,
parameter integer C_RX_PM_STATE_WIDTH = 2,
parameter integer C_HAS_RX_PM_STATE = 1,
parameter integer C_TX_PM_STATE_WIDTH = 2,
parameter integer C_HAS_TX_PM_STATE = 1,
parameter integer C_RQ_TAG0_WIDTH = 8,
parameter integer C_HAS_RQ_TAG0 = 1,
parameter integer C_RQ_TAG_VLD0_WIDTH = 1,
parameter integer C_HAS_RQ_TAG_VLD0 = 1,
parameter integer C_RQ_SEQ_NUM1_WIDTH = 6,
parameter integer C_HAS_RQ_SEQ_NUM1 = 1,
parameter integer C_RQ_SEQ_NUM_VLD1_WIDTH = 1,
parameter integer C_HAS_RQ_SEQ_NUM_VLD1 = 1,
parameter integer C_RQ_TAG1_WIDTH = 8,
parameter integer C_HAS_RQ_TAG1 = 1,
parameter integer C_RQ_TAG_VLD1_WIDTH = 1,
parameter integer C_HAS_RQ_TAG_VLD1 = 1,
parameter integer C_CQ_NP_REQ_WIDTH = 2,
parameter integer C_HAS_CQ_NP_REQ = 1,
parameter integer C_CQ_NP_REQ_COUNT_WIDTH = 6,
parameter integer C_HAS_CQ_NP_REQ_COUNT = 1,
parameter integer C_RQ_TAG_AV_WIDTH = 2,
parameter integer C_HAS_RQ_TAG_AV = 1,
parameter integer C_LOCAL_ERROR_OUT_WIDTH = 5,
parameter integer C_HAS_LOCAL_ERROR_OUT = 1,
parameter integer C_EXT_TAG_ENABLE_WIDTH = 1,
parameter integer C_HAS_EXT_TAG_ENABLE = 1,
parameter integer C_ATOMIC_REQUESTER_ENABLE_WIDTH = 1,
parameter integer C_HAS_ATOMIC_REQUESTER_ENABLE = 1,
parameter integer C_10B_TAG_REQUESTER_ENABLE_WIDTH = 1,
parameter integer C_HAS_10B_TAG_REQUESTER_ENABLE = 1,
parameter integer C_PASID_ENABLE_WIDTH = 1,
parameter integer C_HAS_PASID_ENABLE = 1,
parameter integer C_PASID_EXEC_PERMISSION_ENABLE_WIDTH = 1,
parameter integer C_HAS_PASID_EXEC_PERMISSION_ENABLE = 1,
parameter integer C_PASID_PRIVIL_MODE_ENABLE_WIDTH = 1,
parameter integer C_HAS_PASID_PRIVIL_MODE_ENABLE = 1,
parameter integer C_VC1_ENABLE_WIDTH = 1,
parameter integer C_HAS_VC1_ENABLE = 1,
parameter integer C_VC1_NEGOTIATION_PENDING_WIDTH = 1,
parameter integer C_HAS_VC1_NEGOTIATION_PENDING = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS phy_link_down " *)
 output wire [((C_PHY_LINK_DOWN_WIDTH>0)?C_PHY_LINK_DOWN_WIDTH:1)-1:0] m_phy_link_down,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS phy_link_status " *)
 output wire [((C_PHY_LINK_STATUS_WIDTH>0)?C_PHY_LINK_STATUS_WIDTH:1)-1:0] m_phy_link_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS negotiated_width " *)
 output wire [((C_NEGOTIATED_WIDTH_WIDTH>0)?C_NEGOTIATED_WIDTH_WIDTH:1)-1:0] m_negotiated_width,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS current_speed " *)
 output wire [((C_CURRENT_SPEED_WIDTH>0)?C_CURRENT_SPEED_WIDTH:1)-1:0] m_current_speed,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS max_payload " *)
 output wire [((C_MAX_PAYLOAD_WIDTH>0)?C_MAX_PAYLOAD_WIDTH:1)-1:0] m_max_payload,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS max_read_req " *)
 output wire [((C_MAX_READ_REQ_WIDTH>0)?C_MAX_READ_REQ_WIDTH:1)-1:0] m_max_read_req,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS function_status " *)
 output wire [((C_FUNCTION_STATUS_WIDTH>0)?C_FUNCTION_STATUS_WIDTH:1)-1:0] m_function_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS function_power_state " *)
 output wire [((C_FUNCTION_POWER_STATE_WIDTH>0)?C_FUNCTION_POWER_STATE_WIDTH:1)-1:0] m_function_power_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS vf_status " *)
 output wire [((C_VF_STATUS_WIDTH>0)?C_VF_STATUS_WIDTH:1)-1:0] m_vf_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS vf_power_state " *)
 output wire [((C_VF_POWER_STATE_WIDTH>0)?C_VF_POWER_STATE_WIDTH:1)-1:0] m_vf_power_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS link_power_state " *)
 output wire [((C_LINK_POWER_STATE_WIDTH>0)?C_LINK_POWER_STATE_WIDTH:1)-1:0] m_link_power_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS err_cor_out " *)
 output wire [((C_ERR_COR_OUT_WIDTH>0)?C_ERR_COR_OUT_WIDTH:1)-1:0] m_err_cor_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS err_nonfatal_out " *)
 output wire [((C_ERR_NONFATAL_OUT_WIDTH>0)?C_ERR_NONFATAL_OUT_WIDTH:1)-1:0] m_err_nonfatal_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS err_fatal_out " *)
 output wire [((C_ERR_FATAL_OUT_WIDTH>0)?C_ERR_FATAL_OUT_WIDTH:1)-1:0] m_err_fatal_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS ltssm_state " *)
 output wire [((C_LTSSM_STATE_WIDTH>0)?C_LTSSM_STATE_WIDTH:1)-1:0] m_ltssm_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rcb_status " *)
 output wire [((C_RCB_STATUS_WIDTH>0)?C_RCB_STATUS_WIDTH:1)-1:0] m_rcb_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS obff_enable " *)
 output wire [((C_OBFF_ENABLE_WIDTH>0)?C_OBFF_ENABLE_WIDTH:1)-1:0] m_obff_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS pl_status_change " *)
 output wire [((C_PL_STATUS_CHANGE_WIDTH>0)?C_PL_STATUS_CHANGE_WIDTH:1)-1:0] m_pl_status_change,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS tph_requester_enable " *)
 output wire [((C_TPH_REQUESTER_ENABLE_WIDTH>0)?C_TPH_REQUESTER_ENABLE_WIDTH:1)-1:0] m_tph_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS tph_st_mode " *)
 output wire [((C_TPH_ST_MODE_WIDTH>0)?C_TPH_ST_MODE_WIDTH:1)-1:0] m_tph_st_mode,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS vf_tph_requester_enable " *)
 output wire [((C_VF_TPH_REQUESTER_ENABLE_WIDTH>0)?C_VF_TPH_REQUESTER_ENABLE_WIDTH:1)-1:0] m_vf_tph_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS vf_tph_st_mode " *)
 output wire [((C_VF_TPH_ST_MODE_WIDTH>0)?C_VF_TPH_ST_MODE_WIDTH:1)-1:0] m_vf_tph_st_mode,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_seq_num0 " *)
 output wire [((C_RQ_SEQ_NUM0_WIDTH>0)?C_RQ_SEQ_NUM0_WIDTH:1)-1:0] m_rq_seq_num0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_seq_num_vld0 " *)
 output wire [((C_RQ_SEQ_NUM_VLD0_WIDTH>0)?C_RQ_SEQ_NUM_VLD0_WIDTH:1)-1:0] m_rq_seq_num_vld0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS local_error_valid " *)
 output wire [((C_LOCAL_ERROR_VALID_WIDTH>0)?C_LOCAL_ERROR_VALID_WIDTH:1)-1:0] m_local_error_valid,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rx_pm_state " *)
 output wire [((C_RX_PM_STATE_WIDTH>0)?C_RX_PM_STATE_WIDTH:1)-1:0] m_rx_pm_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS tx_pm_state " *)
 output wire [((C_TX_PM_STATE_WIDTH>0)?C_TX_PM_STATE_WIDTH:1)-1:0] m_tx_pm_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_tag0 " *)
 output wire [((C_RQ_TAG0_WIDTH>0)?C_RQ_TAG0_WIDTH:1)-1:0] m_rq_tag0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_tag_vld0 " *)
 output wire [((C_RQ_TAG_VLD0_WIDTH>0)?C_RQ_TAG_VLD0_WIDTH:1)-1:0] m_rq_tag_vld0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_seq_num1 " *)
 output wire [((C_RQ_SEQ_NUM1_WIDTH>0)?C_RQ_SEQ_NUM1_WIDTH:1)-1:0] m_rq_seq_num1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_seq_num_vld1 " *)
 output wire [((C_RQ_SEQ_NUM_VLD1_WIDTH>0)?C_RQ_SEQ_NUM_VLD1_WIDTH:1)-1:0] m_rq_seq_num_vld1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_tag1 " *)
 output wire [((C_RQ_TAG1_WIDTH>0)?C_RQ_TAG1_WIDTH:1)-1:0] m_rq_tag1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_tag_vld1 " *)
 output wire [((C_RQ_TAG_VLD1_WIDTH>0)?C_RQ_TAG_VLD1_WIDTH:1)-1:0] m_rq_tag_vld1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS cq_np_req " *)
 input wire [((C_CQ_NP_REQ_WIDTH>0)?C_CQ_NP_REQ_WIDTH:1)-1:0] m_cq_np_req,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS cq_np_req_count " *)
 output wire [((C_CQ_NP_REQ_COUNT_WIDTH>0)?C_CQ_NP_REQ_COUNT_WIDTH:1)-1:0] m_cq_np_req_count,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS rq_tag_av " *)
 output wire [((C_RQ_TAG_AV_WIDTH>0)?C_RQ_TAG_AV_WIDTH:1)-1:0] m_rq_tag_av,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS local_error_out " *)
 output wire [((C_LOCAL_ERROR_OUT_WIDTH>0)?C_LOCAL_ERROR_OUT_WIDTH:1)-1:0] m_local_error_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS ext_tag_enable " *)
 output wire [((C_EXT_TAG_ENABLE_WIDTH>0)?C_EXT_TAG_ENABLE_WIDTH:1)-1:0] m_ext_tag_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS atomic_requester_enable " *)
 output wire [((C_ATOMIC_REQUESTER_ENABLE_WIDTH>0)?C_ATOMIC_REQUESTER_ENABLE_WIDTH:1)-1:0] m_atomic_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS 10b_tag_requester_enable " *)
 output wire [((C_10B_TAG_REQUESTER_ENABLE_WIDTH>0)?C_10B_TAG_REQUESTER_ENABLE_WIDTH:1)-1:0] m_10b_tag_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS pasid_enable " *)
 output wire [((C_PASID_ENABLE_WIDTH>0)?C_PASID_ENABLE_WIDTH:1)-1:0] m_pasid_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS pasid_exec_permission_enable " *)
 output wire [((C_PASID_EXEC_PERMISSION_ENABLE_WIDTH>0)?C_PASID_EXEC_PERMISSION_ENABLE_WIDTH:1)-1:0] m_pasid_exec_permission_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS pasid_privil_mode_enable " *)
 output wire [((C_PASID_PRIVIL_MODE_ENABLE_WIDTH>0)?C_PASID_PRIVIL_MODE_ENABLE_WIDTH:1)-1:0] m_pasid_privil_mode_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS vc1_enable " *)
 output wire [((C_VC1_ENABLE_WIDTH>0)?C_VC1_ENABLE_WIDTH:1)-1:0] m_vc1_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 M_PCIE4_CFG_STATUS vc1_negotiation_pending " *)
 output wire [((C_VC1_NEGOTIATION_PENDING_WIDTH>0)?C_VC1_NEGOTIATION_PENDING_WIDTH:1)-1:0] m_vc1_negotiation_pending,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS phy_link_down " *)
input wire [((C_PHY_LINK_DOWN_WIDTH>0)?C_PHY_LINK_DOWN_WIDTH:1)-1:0] s_phy_link_down,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS phy_link_status " *)
input wire [((C_PHY_LINK_STATUS_WIDTH>0)?C_PHY_LINK_STATUS_WIDTH:1)-1:0] s_phy_link_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS negotiated_width " *)
input wire [((C_NEGOTIATED_WIDTH_WIDTH>0)?C_NEGOTIATED_WIDTH_WIDTH:1)-1:0] s_negotiated_width,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS current_speed " *)
input wire [((C_CURRENT_SPEED_WIDTH>0)?C_CURRENT_SPEED_WIDTH:1)-1:0] s_current_speed,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS max_payload " *)
input wire [((C_MAX_PAYLOAD_WIDTH>0)?C_MAX_PAYLOAD_WIDTH:1)-1:0] s_max_payload,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS max_read_req " *)
input wire [((C_MAX_READ_REQ_WIDTH>0)?C_MAX_READ_REQ_WIDTH:1)-1:0] s_max_read_req,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS function_status " *)
input wire [((C_FUNCTION_STATUS_WIDTH>0)?C_FUNCTION_STATUS_WIDTH:1)-1:0] s_function_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS function_power_state " *)
input wire [((C_FUNCTION_POWER_STATE_WIDTH>0)?C_FUNCTION_POWER_STATE_WIDTH:1)-1:0] s_function_power_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS vf_status " *)
input wire [((C_VF_STATUS_WIDTH>0)?C_VF_STATUS_WIDTH:1)-1:0] s_vf_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS vf_power_state " *)
input wire [((C_VF_POWER_STATE_WIDTH>0)?C_VF_POWER_STATE_WIDTH:1)-1:0] s_vf_power_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS link_power_state " *)
input wire [((C_LINK_POWER_STATE_WIDTH>0)?C_LINK_POWER_STATE_WIDTH:1)-1:0] s_link_power_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS err_cor_out " *)
input wire [((C_ERR_COR_OUT_WIDTH>0)?C_ERR_COR_OUT_WIDTH:1)-1:0] s_err_cor_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS err_nonfatal_out " *)
input wire [((C_ERR_NONFATAL_OUT_WIDTH>0)?C_ERR_NONFATAL_OUT_WIDTH:1)-1:0] s_err_nonfatal_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS err_fatal_out " *)
input wire [((C_ERR_FATAL_OUT_WIDTH>0)?C_ERR_FATAL_OUT_WIDTH:1)-1:0] s_err_fatal_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS ltssm_state " *)
input wire [((C_LTSSM_STATE_WIDTH>0)?C_LTSSM_STATE_WIDTH:1)-1:0] s_ltssm_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rcb_status " *)
input wire [((C_RCB_STATUS_WIDTH>0)?C_RCB_STATUS_WIDTH:1)-1:0] s_rcb_status,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS obff_enable " *)
input wire [((C_OBFF_ENABLE_WIDTH>0)?C_OBFF_ENABLE_WIDTH:1)-1:0] s_obff_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS pl_status_change " *)
input wire [((C_PL_STATUS_CHANGE_WIDTH>0)?C_PL_STATUS_CHANGE_WIDTH:1)-1:0] s_pl_status_change,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS tph_requester_enable " *)
input wire [((C_TPH_REQUESTER_ENABLE_WIDTH>0)?C_TPH_REQUESTER_ENABLE_WIDTH:1)-1:0] s_tph_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS tph_st_mode " *)
input wire [((C_TPH_ST_MODE_WIDTH>0)?C_TPH_ST_MODE_WIDTH:1)-1:0] s_tph_st_mode,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS vf_tph_requester_enable " *)
input wire [((C_VF_TPH_REQUESTER_ENABLE_WIDTH>0)?C_VF_TPH_REQUESTER_ENABLE_WIDTH:1)-1:0] s_vf_tph_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS vf_tph_st_mode " *)
input wire [((C_VF_TPH_ST_MODE_WIDTH>0)?C_VF_TPH_ST_MODE_WIDTH:1)-1:0] s_vf_tph_st_mode,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_seq_num0 " *)
input wire [((C_RQ_SEQ_NUM0_WIDTH>0)?C_RQ_SEQ_NUM0_WIDTH:1)-1:0] s_rq_seq_num0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_seq_num_vld0 " *)
input wire [((C_RQ_SEQ_NUM_VLD0_WIDTH>0)?C_RQ_SEQ_NUM_VLD0_WIDTH:1)-1:0] s_rq_seq_num_vld0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS local_error_valid " *)
input wire [((C_LOCAL_ERROR_VALID_WIDTH>0)?C_LOCAL_ERROR_VALID_WIDTH:1)-1:0] s_local_error_valid,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rx_pm_state " *)
input wire [((C_RX_PM_STATE_WIDTH>0)?C_RX_PM_STATE_WIDTH:1)-1:0] s_rx_pm_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS tx_pm_state " *)
input wire [((C_TX_PM_STATE_WIDTH>0)?C_TX_PM_STATE_WIDTH:1)-1:0] s_tx_pm_state,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_tag0 " *)
input wire [((C_RQ_TAG0_WIDTH>0)?C_RQ_TAG0_WIDTH:1)-1:0] s_rq_tag0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_tag_vld0 " *)
input wire [((C_RQ_TAG_VLD0_WIDTH>0)?C_RQ_TAG_VLD0_WIDTH:1)-1:0] s_rq_tag_vld0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_seq_num1 " *)
input wire [((C_RQ_SEQ_NUM1_WIDTH>0)?C_RQ_SEQ_NUM1_WIDTH:1)-1:0] s_rq_seq_num1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_seq_num_vld1 " *)
input wire [((C_RQ_SEQ_NUM_VLD1_WIDTH>0)?C_RQ_SEQ_NUM_VLD1_WIDTH:1)-1:0] s_rq_seq_num_vld1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_tag1 " *)
input wire [((C_RQ_TAG1_WIDTH>0)?C_RQ_TAG1_WIDTH:1)-1:0] s_rq_tag1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_tag_vld1 " *)
input wire [((C_RQ_TAG_VLD1_WIDTH>0)?C_RQ_TAG_VLD1_WIDTH:1)-1:0] s_rq_tag_vld1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS cq_np_req " *)
output wire [((C_CQ_NP_REQ_WIDTH>0)?C_CQ_NP_REQ_WIDTH:1)-1:0] s_cq_np_req,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS cq_np_req_count " *)
input wire [((C_CQ_NP_REQ_COUNT_WIDTH>0)?C_CQ_NP_REQ_COUNT_WIDTH:1)-1:0] s_cq_np_req_count,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS rq_tag_av " *)
input wire [((C_RQ_TAG_AV_WIDTH>0)?C_RQ_TAG_AV_WIDTH:1)-1:0] s_rq_tag_av,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS local_error_out " *)
input wire [((C_LOCAL_ERROR_OUT_WIDTH>0)?C_LOCAL_ERROR_OUT_WIDTH:1)-1:0] s_local_error_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS ext_tag_enable " *)
input wire [((C_EXT_TAG_ENABLE_WIDTH>0)?C_EXT_TAG_ENABLE_WIDTH:1)-1:0] s_ext_tag_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS atomic_requester_enable " *)
input wire [((C_ATOMIC_REQUESTER_ENABLE_WIDTH>0)?C_ATOMIC_REQUESTER_ENABLE_WIDTH:1)-1:0] s_atomic_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS 10b_tag_requester_enable " *)
input wire [((C_10B_TAG_REQUESTER_ENABLE_WIDTH>0)?C_10B_TAG_REQUESTER_ENABLE_WIDTH:1)-1:0] s_10b_tag_requester_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS pasid_enable " *)
input wire [((C_PASID_ENABLE_WIDTH>0)?C_PASID_ENABLE_WIDTH:1)-1:0] s_pasid_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS pasid_exec_permission_enable " *)
input wire [((C_PASID_EXEC_PERMISSION_ENABLE_WIDTH>0)?C_PASID_EXEC_PERMISSION_ENABLE_WIDTH:1)-1:0] s_pasid_exec_permission_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS pasid_privil_mode_enable " *)
input wire [((C_PASID_PRIVIL_MODE_ENABLE_WIDTH>0)?C_PASID_PRIVIL_MODE_ENABLE_WIDTH:1)-1:0] s_pasid_privil_mode_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS vc1_enable " *)
input wire [((C_VC1_ENABLE_WIDTH>0)?C_VC1_ENABLE_WIDTH:1)-1:0] s_vc1_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_status_rtl:1.0 S_PCIE4_CFG_STATUS vc1_negotiation_pending " *)
input wire [((C_VC1_NEGOTIATION_PENDING_WIDTH>0)?C_VC1_NEGOTIATION_PENDING_WIDTH:1)-1:0] s_vc1_negotiation_pending
);
assign m_phy_link_down = s_phy_link_down;
assign m_phy_link_status = s_phy_link_status;
assign m_negotiated_width = s_negotiated_width;
assign m_current_speed = s_current_speed;
assign m_max_payload = s_max_payload;
assign m_max_read_req = s_max_read_req;
assign m_function_status = s_function_status;
assign m_function_power_state = s_function_power_state;
assign m_vf_status = s_vf_status;
assign m_vf_power_state = s_vf_power_state;
assign m_link_power_state = s_link_power_state;
assign m_err_cor_out = s_err_cor_out;
assign m_err_nonfatal_out = s_err_nonfatal_out;
assign m_err_fatal_out = s_err_fatal_out;
assign m_ltssm_state = s_ltssm_state;
assign m_rcb_status = s_rcb_status;
assign m_obff_enable = s_obff_enable;
assign m_pl_status_change = s_pl_status_change;
assign m_tph_requester_enable = s_tph_requester_enable;
assign m_tph_st_mode = s_tph_st_mode;
assign m_vf_tph_requester_enable = s_vf_tph_requester_enable;
assign m_vf_tph_st_mode = s_vf_tph_st_mode;
assign m_rq_seq_num0 = s_rq_seq_num0;
assign m_rq_seq_num_vld0 = s_rq_seq_num_vld0;
assign m_local_error_valid = s_local_error_valid;
assign m_rx_pm_state = s_rx_pm_state;
assign m_tx_pm_state = s_tx_pm_state;
assign m_rq_tag0 = s_rq_tag0;
assign m_rq_tag_vld0 = s_rq_tag_vld0;
assign m_rq_seq_num1 = s_rq_seq_num1;
assign m_rq_seq_num_vld1 = s_rq_seq_num_vld1;
assign m_rq_tag1 = s_rq_tag1;
assign m_rq_tag_vld1 = s_rq_tag_vld1;
assign s_cq_np_req = m_cq_np_req;
assign m_cq_np_req_count = s_cq_np_req_count;
assign m_rq_tag_av = s_rq_tag_av;
assign m_local_error_out = s_local_error_out;
assign m_ext_tag_enable = s_ext_tag_enable;
assign m_atomic_requester_enable = s_atomic_requester_enable;
assign m_10b_tag_requester_enable = s_10b_tag_requester_enable;
assign m_pasid_enable = s_pasid_enable;
assign m_pasid_exec_permission_enable = s_pasid_exec_permission_enable;
assign m_pasid_privil_mode_enable = s_pasid_privil_mode_enable;
assign m_vc1_enable = s_vc1_enable;
assign m_vc1_negotiation_pending = s_vc1_negotiation_pending;
endmodule
