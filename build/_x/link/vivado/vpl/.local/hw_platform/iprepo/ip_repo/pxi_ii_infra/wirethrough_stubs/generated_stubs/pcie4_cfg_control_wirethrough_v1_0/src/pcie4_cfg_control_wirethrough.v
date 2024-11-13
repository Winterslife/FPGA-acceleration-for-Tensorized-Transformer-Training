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
module pcie4_cfg_control_wirethrough
#(
parameter integer C_HOT_RESET_IN_WIDTH = 1,
parameter integer C_HAS_HOT_RESET_IN = 1,
parameter integer C_HOT_RESET_OUT_WIDTH = 1,
parameter integer C_HAS_HOT_RESET_OUT = 1,
parameter integer C_CONFIG_SPACE_ENABLE_WIDTH = 1,
parameter integer C_HAS_CONFIG_SPACE_ENABLE = 1,
parameter integer C_DSN_WIDTH = 64,
parameter integer C_HAS_DSN = 1,
parameter integer C_POWER_STATE_CHANGE_ACK_WIDTH = 1,
parameter integer C_HAS_POWER_STATE_CHANGE_ACK = 1,
parameter integer C_POWER_STATE_CHANGE_INTERRUPT_WIDTH = 1,
parameter integer C_HAS_POWER_STATE_CHANGE_INTERRUPT = 1,
parameter integer C_ERR_COR_IN_WIDTH = 1,
parameter integer C_HAS_ERR_COR_IN = 1,
parameter integer C_ERR_UNCOR_IN_WIDTH = 1,
parameter integer C_HAS_ERR_UNCOR_IN = 1,
parameter integer C_FLR_IN_PROCESS_WIDTH = 4,
parameter integer C_HAS_FLR_IN_PROCESS = 1,
parameter integer C_FLR_DONE_WIDTH = 4,
parameter integer C_HAS_FLR_DONE = 1,
parameter integer C_VF_FLR_IN_PROCESS_WIDTH = 252,
parameter integer C_HAS_VF_FLR_IN_PROCESS = 1,
parameter integer C_VF_FLR_DONE_WIDTH = 1,
parameter integer C_HAS_VF_FLR_DONE = 1,
parameter integer C_LINK_TRAINING_ENABLE_WIDTH = 1,
parameter integer C_HAS_LINK_TRAINING_ENABLE = 1,
parameter integer C_REQ_PM_TRANSITION_L23_READY_WIDTH = 1,
parameter integer C_HAS_REQ_PM_TRANSITION_L23_READY = 1,
parameter integer C_DS_PORT_NUMBER_WIDTH = 8,
parameter integer C_HAS_DS_PORT_NUMBER = 1,
parameter integer C_DS_BUS_NUMBER_WIDTH = 8,
parameter integer C_HAS_DS_BUS_NUMBER = 1,
parameter integer C_DS_DEVICE_NUMBER_WIDTH = 5,
parameter integer C_HAS_DS_DEVICE_NUMBER = 1,
parameter integer C_BUS_NUMBER_WIDTH = 8,
parameter integer C_HAS_BUS_NUMBER = 1,
parameter integer C_VF_FLR_FUNC_NUM_WIDTH = 8,
parameter integer C_HAS_VF_FLR_FUNC_NUM = 1,
parameter integer C_DS_FUNCTION_NUMBER_WIDTH = 3,
parameter integer C_HAS_DS_FUNCTION_NUMBER = 1,
parameter integer C_PM_ASPM_L1ENTRY_REJECT_WIDTH = 1,
parameter integer C_HAS_PM_ASPM_L1ENTRY_REJECT = 1,
parameter integer C_PM_ASPM_TX_L0S_ENTRY_DISABLE_WIDTH = 1,
parameter integer C_HAS_PM_ASPM_TX_L0S_ENTRY_DISABLE = 1,
parameter integer C_RBAR_SIZE_WIDTH = 7,
parameter integer C_HAS_RBAR_SIZE = 1,
parameter integer C_RBAR_FUNCTION_NUMBER_WIDTH = 9,
parameter integer C_HAS_RBAR_FUNCTION_NUMBER = 1,
parameter integer C_WRITE_ENABLE_RBAR0_WIDTH = 1,
parameter integer C_HAS_WRITE_ENABLE_RBAR0 = 1,
parameter integer C_WRITE_ENABLE_RBAR1_WIDTH = 1,
parameter integer C_HAS_WRITE_ENABLE_RBAR1 = 1,
parameter integer C_WRITE_ENABLE_RBAR2_WIDTH = 1,
parameter integer C_HAS_WRITE_ENABLE_RBAR2 = 1,
parameter integer C_WRITE_ENABLE_RBAR3_WIDTH = 1,
parameter integer C_HAS_WRITE_ENABLE_RBAR3 = 1,
parameter integer C_WRITE_ENABLE_RBAR4_WIDTH = 1,
parameter integer C_HAS_WRITE_ENABLE_RBAR4 = 1,
parameter integer C_WRITE_ENABLE_RBAR5_WIDTH = 1,
parameter integer C_HAS_WRITE_ENABLE_RBAR5 = 1
)
(
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL hot_reset_in " *)
 output wire [((C_HOT_RESET_IN_WIDTH>0)?C_HOT_RESET_IN_WIDTH:1)-1:0] m_hot_reset_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL hot_reset_out " *)
 input wire [((C_HOT_RESET_OUT_WIDTH>0)?C_HOT_RESET_OUT_WIDTH:1)-1:0] m_hot_reset_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL config_space_enable " *)
 output wire [((C_CONFIG_SPACE_ENABLE_WIDTH>0)?C_CONFIG_SPACE_ENABLE_WIDTH:1)-1:0] m_config_space_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL dsn " *)
 output wire [((C_DSN_WIDTH>0)?C_DSN_WIDTH:1)-1:0] m_dsn,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL power_state_change_ack " *)
 output wire [((C_POWER_STATE_CHANGE_ACK_WIDTH>0)?C_POWER_STATE_CHANGE_ACK_WIDTH:1)-1:0] m_power_state_change_ack,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL power_state_change_interrupt " *)
 input wire [((C_POWER_STATE_CHANGE_INTERRUPT_WIDTH>0)?C_POWER_STATE_CHANGE_INTERRUPT_WIDTH:1)-1:0] m_power_state_change_interrupt,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL err_cor_in " *)
 output wire [((C_ERR_COR_IN_WIDTH>0)?C_ERR_COR_IN_WIDTH:1)-1:0] m_err_cor_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL err_uncor_in " *)
 output wire [((C_ERR_UNCOR_IN_WIDTH>0)?C_ERR_UNCOR_IN_WIDTH:1)-1:0] m_err_uncor_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL flr_in_process " *)
 input wire [((C_FLR_IN_PROCESS_WIDTH>0)?C_FLR_IN_PROCESS_WIDTH:1)-1:0] m_flr_in_process,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL flr_done " *)
 output wire [((C_FLR_DONE_WIDTH>0)?C_FLR_DONE_WIDTH:1)-1:0] m_flr_done,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL vf_flr_in_process " *)
 input wire [((C_VF_FLR_IN_PROCESS_WIDTH>0)?C_VF_FLR_IN_PROCESS_WIDTH:1)-1:0] m_vf_flr_in_process,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL vf_flr_done " *)
 output wire [((C_VF_FLR_DONE_WIDTH>0)?C_VF_FLR_DONE_WIDTH:1)-1:0] m_vf_flr_done,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL link_training_enable " *)
 output wire [((C_LINK_TRAINING_ENABLE_WIDTH>0)?C_LINK_TRAINING_ENABLE_WIDTH:1)-1:0] m_link_training_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL req_pm_transition_l23_ready " *)
 output wire [((C_REQ_PM_TRANSITION_L23_READY_WIDTH>0)?C_REQ_PM_TRANSITION_L23_READY_WIDTH:1)-1:0] m_req_pm_transition_l23_ready,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL ds_port_number " *)
 output wire [((C_DS_PORT_NUMBER_WIDTH>0)?C_DS_PORT_NUMBER_WIDTH:1)-1:0] m_ds_port_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL ds_bus_number " *)
 output wire [((C_DS_BUS_NUMBER_WIDTH>0)?C_DS_BUS_NUMBER_WIDTH:1)-1:0] m_ds_bus_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL ds_device_number " *)
 output wire [((C_DS_DEVICE_NUMBER_WIDTH>0)?C_DS_DEVICE_NUMBER_WIDTH:1)-1:0] m_ds_device_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL bus_number " *)
 input wire [((C_BUS_NUMBER_WIDTH>0)?C_BUS_NUMBER_WIDTH:1)-1:0] m_bus_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL vf_flr_func_num " *)
 output wire [((C_VF_FLR_FUNC_NUM_WIDTH>0)?C_VF_FLR_FUNC_NUM_WIDTH:1)-1:0] m_vf_flr_func_num,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL ds_function_number " *)
 output wire [((C_DS_FUNCTION_NUMBER_WIDTH>0)?C_DS_FUNCTION_NUMBER_WIDTH:1)-1:0] m_ds_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL pm_aspm_l1entry_reject " *)
 output wire [((C_PM_ASPM_L1ENTRY_REJECT_WIDTH>0)?C_PM_ASPM_L1ENTRY_REJECT_WIDTH:1)-1:0] m_pm_aspm_l1entry_reject,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL pm_aspm_tx_l0s_entry_disable " *)
 output wire [((C_PM_ASPM_TX_L0S_ENTRY_DISABLE_WIDTH>0)?C_PM_ASPM_TX_L0S_ENTRY_DISABLE_WIDTH:1)-1:0] m_pm_aspm_tx_l0s_entry_disable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL rbar_size " *)
 input wire [((C_RBAR_SIZE_WIDTH>0)?C_RBAR_SIZE_WIDTH:1)-1:0] m_rbar_size,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL rbar_function_number " *)
 input wire [((C_RBAR_FUNCTION_NUMBER_WIDTH>0)?C_RBAR_FUNCTION_NUMBER_WIDTH:1)-1:0] m_rbar_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL write_enable_rbar0 " *)
 input wire [((C_WRITE_ENABLE_RBAR0_WIDTH>0)?C_WRITE_ENABLE_RBAR0_WIDTH:1)-1:0] m_write_enable_rbar0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL write_enable_rbar1 " *)
 input wire [((C_WRITE_ENABLE_RBAR1_WIDTH>0)?C_WRITE_ENABLE_RBAR1_WIDTH:1)-1:0] m_write_enable_rbar1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL write_enable_rbar2 " *)
 input wire [((C_WRITE_ENABLE_RBAR2_WIDTH>0)?C_WRITE_ENABLE_RBAR2_WIDTH:1)-1:0] m_write_enable_rbar2,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL write_enable_rbar3 " *)
 input wire [((C_WRITE_ENABLE_RBAR3_WIDTH>0)?C_WRITE_ENABLE_RBAR3_WIDTH:1)-1:0] m_write_enable_rbar3,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL write_enable_rbar4 " *)
 input wire [((C_WRITE_ENABLE_RBAR4_WIDTH>0)?C_WRITE_ENABLE_RBAR4_WIDTH:1)-1:0] m_write_enable_rbar4,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 M_PCIE4_CFG_CONTROL write_enable_rbar5 " *)
 input wire [((C_WRITE_ENABLE_RBAR5_WIDTH>0)?C_WRITE_ENABLE_RBAR5_WIDTH:1)-1:0] m_write_enable_rbar5,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL hot_reset_in " *)
input wire [((C_HOT_RESET_IN_WIDTH>0)?C_HOT_RESET_IN_WIDTH:1)-1:0] s_hot_reset_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL hot_reset_out " *)
output wire [((C_HOT_RESET_OUT_WIDTH>0)?C_HOT_RESET_OUT_WIDTH:1)-1:0] s_hot_reset_out,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL config_space_enable " *)
input wire [((C_CONFIG_SPACE_ENABLE_WIDTH>0)?C_CONFIG_SPACE_ENABLE_WIDTH:1)-1:0] s_config_space_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL dsn " *)
input wire [((C_DSN_WIDTH>0)?C_DSN_WIDTH:1)-1:0] s_dsn,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL power_state_change_ack " *)
input wire [((C_POWER_STATE_CHANGE_ACK_WIDTH>0)?C_POWER_STATE_CHANGE_ACK_WIDTH:1)-1:0] s_power_state_change_ack,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL power_state_change_interrupt " *)
output wire [((C_POWER_STATE_CHANGE_INTERRUPT_WIDTH>0)?C_POWER_STATE_CHANGE_INTERRUPT_WIDTH:1)-1:0] s_power_state_change_interrupt,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL err_cor_in " *)
input wire [((C_ERR_COR_IN_WIDTH>0)?C_ERR_COR_IN_WIDTH:1)-1:0] s_err_cor_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL err_uncor_in " *)
input wire [((C_ERR_UNCOR_IN_WIDTH>0)?C_ERR_UNCOR_IN_WIDTH:1)-1:0] s_err_uncor_in,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL flr_in_process " *)
output wire [((C_FLR_IN_PROCESS_WIDTH>0)?C_FLR_IN_PROCESS_WIDTH:1)-1:0] s_flr_in_process,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL flr_done " *)
input wire [((C_FLR_DONE_WIDTH>0)?C_FLR_DONE_WIDTH:1)-1:0] s_flr_done,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL vf_flr_in_process " *)
output wire [((C_VF_FLR_IN_PROCESS_WIDTH>0)?C_VF_FLR_IN_PROCESS_WIDTH:1)-1:0] s_vf_flr_in_process,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL vf_flr_done " *)
input wire [((C_VF_FLR_DONE_WIDTH>0)?C_VF_FLR_DONE_WIDTH:1)-1:0] s_vf_flr_done,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL link_training_enable " *)
input wire [((C_LINK_TRAINING_ENABLE_WIDTH>0)?C_LINK_TRAINING_ENABLE_WIDTH:1)-1:0] s_link_training_enable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL req_pm_transition_l23_ready " *)
input wire [((C_REQ_PM_TRANSITION_L23_READY_WIDTH>0)?C_REQ_PM_TRANSITION_L23_READY_WIDTH:1)-1:0] s_req_pm_transition_l23_ready,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL ds_port_number " *)
input wire [((C_DS_PORT_NUMBER_WIDTH>0)?C_DS_PORT_NUMBER_WIDTH:1)-1:0] s_ds_port_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL ds_bus_number " *)
input wire [((C_DS_BUS_NUMBER_WIDTH>0)?C_DS_BUS_NUMBER_WIDTH:1)-1:0] s_ds_bus_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL ds_device_number " *)
input wire [((C_DS_DEVICE_NUMBER_WIDTH>0)?C_DS_DEVICE_NUMBER_WIDTH:1)-1:0] s_ds_device_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL bus_number " *)
output wire [((C_BUS_NUMBER_WIDTH>0)?C_BUS_NUMBER_WIDTH:1)-1:0] s_bus_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL vf_flr_func_num " *)
input wire [((C_VF_FLR_FUNC_NUM_WIDTH>0)?C_VF_FLR_FUNC_NUM_WIDTH:1)-1:0] s_vf_flr_func_num,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL ds_function_number " *)
input wire [((C_DS_FUNCTION_NUMBER_WIDTH>0)?C_DS_FUNCTION_NUMBER_WIDTH:1)-1:0] s_ds_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL pm_aspm_l1entry_reject " *)
input wire [((C_PM_ASPM_L1ENTRY_REJECT_WIDTH>0)?C_PM_ASPM_L1ENTRY_REJECT_WIDTH:1)-1:0] s_pm_aspm_l1entry_reject,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL pm_aspm_tx_l0s_entry_disable " *)
input wire [((C_PM_ASPM_TX_L0S_ENTRY_DISABLE_WIDTH>0)?C_PM_ASPM_TX_L0S_ENTRY_DISABLE_WIDTH:1)-1:0] s_pm_aspm_tx_l0s_entry_disable,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL rbar_size " *)
output wire [((C_RBAR_SIZE_WIDTH>0)?C_RBAR_SIZE_WIDTH:1)-1:0] s_rbar_size,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL rbar_function_number " *)
output wire [((C_RBAR_FUNCTION_NUMBER_WIDTH>0)?C_RBAR_FUNCTION_NUMBER_WIDTH:1)-1:0] s_rbar_function_number,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL write_enable_rbar0 " *)
output wire [((C_WRITE_ENABLE_RBAR0_WIDTH>0)?C_WRITE_ENABLE_RBAR0_WIDTH:1)-1:0] s_write_enable_rbar0,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL write_enable_rbar1 " *)
output wire [((C_WRITE_ENABLE_RBAR1_WIDTH>0)?C_WRITE_ENABLE_RBAR1_WIDTH:1)-1:0] s_write_enable_rbar1,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL write_enable_rbar2 " *)
output wire [((C_WRITE_ENABLE_RBAR2_WIDTH>0)?C_WRITE_ENABLE_RBAR2_WIDTH:1)-1:0] s_write_enable_rbar2,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL write_enable_rbar3 " *)
output wire [((C_WRITE_ENABLE_RBAR3_WIDTH>0)?C_WRITE_ENABLE_RBAR3_WIDTH:1)-1:0] s_write_enable_rbar3,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL write_enable_rbar4 " *)
output wire [((C_WRITE_ENABLE_RBAR4_WIDTH>0)?C_WRITE_ENABLE_RBAR4_WIDTH:1)-1:0] s_write_enable_rbar4,
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_control_rtl:1.0 S_PCIE4_CFG_CONTROL write_enable_rbar5 " *)
output wire [((C_WRITE_ENABLE_RBAR5_WIDTH>0)?C_WRITE_ENABLE_RBAR5_WIDTH:1)-1:0] s_write_enable_rbar5
);
assign m_hot_reset_in = s_hot_reset_in;
assign s_hot_reset_out = m_hot_reset_out;
assign m_config_space_enable = s_config_space_enable;
assign m_dsn = s_dsn;
assign m_power_state_change_ack = s_power_state_change_ack;
assign s_power_state_change_interrupt = m_power_state_change_interrupt;
assign m_err_cor_in = s_err_cor_in;
assign m_err_uncor_in = s_err_uncor_in;
assign s_flr_in_process = m_flr_in_process;
assign m_flr_done = s_flr_done;
assign s_vf_flr_in_process = m_vf_flr_in_process;
assign m_vf_flr_done = s_vf_flr_done;
assign m_link_training_enable = s_link_training_enable;
assign m_req_pm_transition_l23_ready = s_req_pm_transition_l23_ready;
assign m_ds_port_number = s_ds_port_number;
assign m_ds_bus_number = s_ds_bus_number;
assign m_ds_device_number = s_ds_device_number;
assign s_bus_number = m_bus_number;
assign m_vf_flr_func_num = s_vf_flr_func_num;
assign m_ds_function_number = s_ds_function_number;
assign m_pm_aspm_l1entry_reject = s_pm_aspm_l1entry_reject;
assign m_pm_aspm_tx_l0s_entry_disable = s_pm_aspm_tx_l0s_entry_disable;
assign s_rbar_size = m_rbar_size;
assign s_rbar_function_number = m_rbar_function_number;
assign s_write_enable_rbar0 = m_write_enable_rbar0;
assign s_write_enable_rbar1 = m_write_enable_rbar1;
assign s_write_enable_rbar2 = m_write_enable_rbar2;
assign s_write_enable_rbar3 = m_write_enable_rbar3;
assign s_write_enable_rbar4 = m_write_enable_rbar4;
assign s_write_enable_rbar5 = m_write_enable_rbar5;
endmodule
