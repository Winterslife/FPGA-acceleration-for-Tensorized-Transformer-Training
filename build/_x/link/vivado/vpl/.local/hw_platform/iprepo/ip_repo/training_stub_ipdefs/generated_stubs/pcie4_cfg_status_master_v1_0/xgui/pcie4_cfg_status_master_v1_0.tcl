# d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
# (c) Copyright 2022 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################
# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_10B_TAG_REQUESTER_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ATOMIC_REQUESTER_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CQ_NP_REQ_COUNT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CQ_NP_REQ_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CURRENT_SPEED_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ERR_COR_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ERR_FATAL_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ERR_NONFATAL_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_EXT_TAG_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FUNCTION_POWER_STATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FUNCTION_STATUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_10B_TAG_REQUESTER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ATOMIC_REQUESTER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CQ_NP_REQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CQ_NP_REQ_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CURRENT_SPEED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ERR_COR_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ERR_FATAL_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ERR_NONFATAL_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_EXT_TAG_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_FUNCTION_POWER_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_FUNCTION_STATUS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_LINK_POWER_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_LOCAL_ERROR_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_LOCAL_ERROR_VALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_LTSSM_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_MAX_PAYLOAD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_MAX_READ_REQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_NEGOTIATED_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_OBFF_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PASID_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PASID_EXEC_PERMISSION_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PASID_PRIVIL_MODE_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PHY_LINK_DOWN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PHY_LINK_STATUS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PL_STATUS_CHANGE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RCB_STATUS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_SEQ_NUM0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_SEQ_NUM1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_SEQ_NUM_VLD0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_SEQ_NUM_VLD1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_TAG0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_TAG1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_TAG_AV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_TAG_VLD0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RQ_TAG_VLD1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RX_PM_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TPH_REQUESTER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TPH_ST_MODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TX_PM_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VC1_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VC1_NEGOTIATION_PENDING" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VF_POWER_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VF_STATUS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VF_TPH_REQUESTER_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VF_TPH_ST_MODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LINK_POWER_STATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LOCAL_ERROR_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LOCAL_ERROR_VALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LTSSM_STATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_PAYLOAD_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_READ_REQ_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NEGOTIATED_WIDTH_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_OBFF_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PASID_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PASID_EXEC_PERMISSION_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PASID_PRIVIL_MODE_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PHY_LINK_DOWN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PHY_LINK_STATUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PL_STATUS_CHANGE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RCB_STATUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_SEQ_NUM0_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_SEQ_NUM1_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_SEQ_NUM_VLD0_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_SEQ_NUM_VLD1_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_TAG0_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_TAG1_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_TAG_AV_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_TAG_VLD0_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RQ_TAG_VLD1_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RX_PM_STATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TPH_REQUESTER_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TPH_ST_MODE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TX_PM_STATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VC1_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VC1_NEGOTIATION_PENDING_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VF_POWER_STATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VF_STATUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VF_TPH_REQUESTER_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VF_TPH_ST_MODE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to update C_10B_TAG_REQUESTER_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to validate C_10B_TAG_REQUESTER_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to update C_ATOMIC_REQUESTER_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to validate C_ATOMIC_REQUESTER_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH { PARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH } {
	# Procedure called to update C_CQ_NP_REQ_COUNT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH { PARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH } {
	# Procedure called to validate C_CQ_NP_REQ_COUNT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CQ_NP_REQ_WIDTH { PARAM_VALUE.C_CQ_NP_REQ_WIDTH } {
	# Procedure called to update C_CQ_NP_REQ_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CQ_NP_REQ_WIDTH { PARAM_VALUE.C_CQ_NP_REQ_WIDTH } {
	# Procedure called to validate C_CQ_NP_REQ_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CURRENT_SPEED_WIDTH { PARAM_VALUE.C_CURRENT_SPEED_WIDTH } {
	# Procedure called to update C_CURRENT_SPEED_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CURRENT_SPEED_WIDTH { PARAM_VALUE.C_CURRENT_SPEED_WIDTH } {
	# Procedure called to validate C_CURRENT_SPEED_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ERR_COR_OUT_WIDTH { PARAM_VALUE.C_ERR_COR_OUT_WIDTH } {
	# Procedure called to update C_ERR_COR_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ERR_COR_OUT_WIDTH { PARAM_VALUE.C_ERR_COR_OUT_WIDTH } {
	# Procedure called to validate C_ERR_COR_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ERR_FATAL_OUT_WIDTH { PARAM_VALUE.C_ERR_FATAL_OUT_WIDTH } {
	# Procedure called to update C_ERR_FATAL_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ERR_FATAL_OUT_WIDTH { PARAM_VALUE.C_ERR_FATAL_OUT_WIDTH } {
	# Procedure called to validate C_ERR_FATAL_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH { PARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH } {
	# Procedure called to update C_ERR_NONFATAL_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH { PARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH } {
	# Procedure called to validate C_ERR_NONFATAL_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH { PARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH } {
	# Procedure called to update C_EXT_TAG_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH { PARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH } {
	# Procedure called to validate C_EXT_TAG_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH { PARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH } {
	# Procedure called to update C_FUNCTION_POWER_STATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH { PARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH } {
	# Procedure called to validate C_FUNCTION_POWER_STATE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_FUNCTION_STATUS_WIDTH { PARAM_VALUE.C_FUNCTION_STATUS_WIDTH } {
	# Procedure called to update C_FUNCTION_STATUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FUNCTION_STATUS_WIDTH { PARAM_VALUE.C_FUNCTION_STATUS_WIDTH } {
	# Procedure called to validate C_FUNCTION_STATUS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE } {
	# Procedure called to update C_HAS_10B_TAG_REQUESTER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE } {
	# Procedure called to validate C_HAS_10B_TAG_REQUESTER_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE } {
	# Procedure called to update C_HAS_ATOMIC_REQUESTER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE } {
	# Procedure called to validate C_HAS_ATOMIC_REQUESTER_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_CQ_NP_REQ { PARAM_VALUE.C_HAS_CQ_NP_REQ } {
	# Procedure called to update C_HAS_CQ_NP_REQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CQ_NP_REQ { PARAM_VALUE.C_HAS_CQ_NP_REQ } {
	# Procedure called to validate C_HAS_CQ_NP_REQ
	return true
}

proc update_PARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT { PARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT } {
	# Procedure called to update C_HAS_CQ_NP_REQ_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT { PARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT } {
	# Procedure called to validate C_HAS_CQ_NP_REQ_COUNT
	return true
}

proc update_PARAM_VALUE.C_HAS_CURRENT_SPEED { PARAM_VALUE.C_HAS_CURRENT_SPEED } {
	# Procedure called to update C_HAS_CURRENT_SPEED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CURRENT_SPEED { PARAM_VALUE.C_HAS_CURRENT_SPEED } {
	# Procedure called to validate C_HAS_CURRENT_SPEED
	return true
}

proc update_PARAM_VALUE.C_HAS_ERR_COR_OUT { PARAM_VALUE.C_HAS_ERR_COR_OUT } {
	# Procedure called to update C_HAS_ERR_COR_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ERR_COR_OUT { PARAM_VALUE.C_HAS_ERR_COR_OUT } {
	# Procedure called to validate C_HAS_ERR_COR_OUT
	return true
}

proc update_PARAM_VALUE.C_HAS_ERR_FATAL_OUT { PARAM_VALUE.C_HAS_ERR_FATAL_OUT } {
	# Procedure called to update C_HAS_ERR_FATAL_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ERR_FATAL_OUT { PARAM_VALUE.C_HAS_ERR_FATAL_OUT } {
	# Procedure called to validate C_HAS_ERR_FATAL_OUT
	return true
}

proc update_PARAM_VALUE.C_HAS_ERR_NONFATAL_OUT { PARAM_VALUE.C_HAS_ERR_NONFATAL_OUT } {
	# Procedure called to update C_HAS_ERR_NONFATAL_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ERR_NONFATAL_OUT { PARAM_VALUE.C_HAS_ERR_NONFATAL_OUT } {
	# Procedure called to validate C_HAS_ERR_NONFATAL_OUT
	return true
}

proc update_PARAM_VALUE.C_HAS_EXT_TAG_ENABLE { PARAM_VALUE.C_HAS_EXT_TAG_ENABLE } {
	# Procedure called to update C_HAS_EXT_TAG_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_EXT_TAG_ENABLE { PARAM_VALUE.C_HAS_EXT_TAG_ENABLE } {
	# Procedure called to validate C_HAS_EXT_TAG_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_FUNCTION_POWER_STATE { PARAM_VALUE.C_HAS_FUNCTION_POWER_STATE } {
	# Procedure called to update C_HAS_FUNCTION_POWER_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_FUNCTION_POWER_STATE { PARAM_VALUE.C_HAS_FUNCTION_POWER_STATE } {
	# Procedure called to validate C_HAS_FUNCTION_POWER_STATE
	return true
}

proc update_PARAM_VALUE.C_HAS_FUNCTION_STATUS { PARAM_VALUE.C_HAS_FUNCTION_STATUS } {
	# Procedure called to update C_HAS_FUNCTION_STATUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_FUNCTION_STATUS { PARAM_VALUE.C_HAS_FUNCTION_STATUS } {
	# Procedure called to validate C_HAS_FUNCTION_STATUS
	return true
}

proc update_PARAM_VALUE.C_HAS_LINK_POWER_STATE { PARAM_VALUE.C_HAS_LINK_POWER_STATE } {
	# Procedure called to update C_HAS_LINK_POWER_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_LINK_POWER_STATE { PARAM_VALUE.C_HAS_LINK_POWER_STATE } {
	# Procedure called to validate C_HAS_LINK_POWER_STATE
	return true
}

proc update_PARAM_VALUE.C_HAS_LOCAL_ERROR_OUT { PARAM_VALUE.C_HAS_LOCAL_ERROR_OUT } {
	# Procedure called to update C_HAS_LOCAL_ERROR_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_LOCAL_ERROR_OUT { PARAM_VALUE.C_HAS_LOCAL_ERROR_OUT } {
	# Procedure called to validate C_HAS_LOCAL_ERROR_OUT
	return true
}

proc update_PARAM_VALUE.C_HAS_LOCAL_ERROR_VALID { PARAM_VALUE.C_HAS_LOCAL_ERROR_VALID } {
	# Procedure called to update C_HAS_LOCAL_ERROR_VALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_LOCAL_ERROR_VALID { PARAM_VALUE.C_HAS_LOCAL_ERROR_VALID } {
	# Procedure called to validate C_HAS_LOCAL_ERROR_VALID
	return true
}

proc update_PARAM_VALUE.C_HAS_LTSSM_STATE { PARAM_VALUE.C_HAS_LTSSM_STATE } {
	# Procedure called to update C_HAS_LTSSM_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_LTSSM_STATE { PARAM_VALUE.C_HAS_LTSSM_STATE } {
	# Procedure called to validate C_HAS_LTSSM_STATE
	return true
}

proc update_PARAM_VALUE.C_HAS_MAX_PAYLOAD { PARAM_VALUE.C_HAS_MAX_PAYLOAD } {
	# Procedure called to update C_HAS_MAX_PAYLOAD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_MAX_PAYLOAD { PARAM_VALUE.C_HAS_MAX_PAYLOAD } {
	# Procedure called to validate C_HAS_MAX_PAYLOAD
	return true
}

proc update_PARAM_VALUE.C_HAS_MAX_READ_REQ { PARAM_VALUE.C_HAS_MAX_READ_REQ } {
	# Procedure called to update C_HAS_MAX_READ_REQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_MAX_READ_REQ { PARAM_VALUE.C_HAS_MAX_READ_REQ } {
	# Procedure called to validate C_HAS_MAX_READ_REQ
	return true
}

proc update_PARAM_VALUE.C_HAS_NEGOTIATED_WIDTH { PARAM_VALUE.C_HAS_NEGOTIATED_WIDTH } {
	# Procedure called to update C_HAS_NEGOTIATED_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_NEGOTIATED_WIDTH { PARAM_VALUE.C_HAS_NEGOTIATED_WIDTH } {
	# Procedure called to validate C_HAS_NEGOTIATED_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_OBFF_ENABLE { PARAM_VALUE.C_HAS_OBFF_ENABLE } {
	# Procedure called to update C_HAS_OBFF_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_OBFF_ENABLE { PARAM_VALUE.C_HAS_OBFF_ENABLE } {
	# Procedure called to validate C_HAS_OBFF_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_PASID_ENABLE { PARAM_VALUE.C_HAS_PASID_ENABLE } {
	# Procedure called to update C_HAS_PASID_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PASID_ENABLE { PARAM_VALUE.C_HAS_PASID_ENABLE } {
	# Procedure called to validate C_HAS_PASID_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE { PARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE } {
	# Procedure called to update C_HAS_PASID_EXEC_PERMISSION_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE { PARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE } {
	# Procedure called to validate C_HAS_PASID_EXEC_PERMISSION_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE { PARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE } {
	# Procedure called to update C_HAS_PASID_PRIVIL_MODE_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE { PARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE } {
	# Procedure called to validate C_HAS_PASID_PRIVIL_MODE_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_PHY_LINK_DOWN { PARAM_VALUE.C_HAS_PHY_LINK_DOWN } {
	# Procedure called to update C_HAS_PHY_LINK_DOWN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PHY_LINK_DOWN { PARAM_VALUE.C_HAS_PHY_LINK_DOWN } {
	# Procedure called to validate C_HAS_PHY_LINK_DOWN
	return true
}

proc update_PARAM_VALUE.C_HAS_PHY_LINK_STATUS { PARAM_VALUE.C_HAS_PHY_LINK_STATUS } {
	# Procedure called to update C_HAS_PHY_LINK_STATUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PHY_LINK_STATUS { PARAM_VALUE.C_HAS_PHY_LINK_STATUS } {
	# Procedure called to validate C_HAS_PHY_LINK_STATUS
	return true
}

proc update_PARAM_VALUE.C_HAS_PL_STATUS_CHANGE { PARAM_VALUE.C_HAS_PL_STATUS_CHANGE } {
	# Procedure called to update C_HAS_PL_STATUS_CHANGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PL_STATUS_CHANGE { PARAM_VALUE.C_HAS_PL_STATUS_CHANGE } {
	# Procedure called to validate C_HAS_PL_STATUS_CHANGE
	return true
}

proc update_PARAM_VALUE.C_HAS_RCB_STATUS { PARAM_VALUE.C_HAS_RCB_STATUS } {
	# Procedure called to update C_HAS_RCB_STATUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RCB_STATUS { PARAM_VALUE.C_HAS_RCB_STATUS } {
	# Procedure called to validate C_HAS_RCB_STATUS
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_SEQ_NUM0 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM0 } {
	# Procedure called to update C_HAS_RQ_SEQ_NUM0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_SEQ_NUM0 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM0 } {
	# Procedure called to validate C_HAS_RQ_SEQ_NUM0
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_SEQ_NUM1 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM1 } {
	# Procedure called to update C_HAS_RQ_SEQ_NUM1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_SEQ_NUM1 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM1 } {
	# Procedure called to validate C_HAS_RQ_SEQ_NUM1
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0 } {
	# Procedure called to update C_HAS_RQ_SEQ_NUM_VLD0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0 } {
	# Procedure called to validate C_HAS_RQ_SEQ_NUM_VLD0
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1 } {
	# Procedure called to update C_HAS_RQ_SEQ_NUM_VLD1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1 { PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1 } {
	# Procedure called to validate C_HAS_RQ_SEQ_NUM_VLD1
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_TAG0 { PARAM_VALUE.C_HAS_RQ_TAG0 } {
	# Procedure called to update C_HAS_RQ_TAG0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_TAG0 { PARAM_VALUE.C_HAS_RQ_TAG0 } {
	# Procedure called to validate C_HAS_RQ_TAG0
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_TAG1 { PARAM_VALUE.C_HAS_RQ_TAG1 } {
	# Procedure called to update C_HAS_RQ_TAG1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_TAG1 { PARAM_VALUE.C_HAS_RQ_TAG1 } {
	# Procedure called to validate C_HAS_RQ_TAG1
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_TAG_AV { PARAM_VALUE.C_HAS_RQ_TAG_AV } {
	# Procedure called to update C_HAS_RQ_TAG_AV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_TAG_AV { PARAM_VALUE.C_HAS_RQ_TAG_AV } {
	# Procedure called to validate C_HAS_RQ_TAG_AV
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_TAG_VLD0 { PARAM_VALUE.C_HAS_RQ_TAG_VLD0 } {
	# Procedure called to update C_HAS_RQ_TAG_VLD0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_TAG_VLD0 { PARAM_VALUE.C_HAS_RQ_TAG_VLD0 } {
	# Procedure called to validate C_HAS_RQ_TAG_VLD0
	return true
}

proc update_PARAM_VALUE.C_HAS_RQ_TAG_VLD1 { PARAM_VALUE.C_HAS_RQ_TAG_VLD1 } {
	# Procedure called to update C_HAS_RQ_TAG_VLD1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RQ_TAG_VLD1 { PARAM_VALUE.C_HAS_RQ_TAG_VLD1 } {
	# Procedure called to validate C_HAS_RQ_TAG_VLD1
	return true
}

proc update_PARAM_VALUE.C_HAS_RX_PM_STATE { PARAM_VALUE.C_HAS_RX_PM_STATE } {
	# Procedure called to update C_HAS_RX_PM_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RX_PM_STATE { PARAM_VALUE.C_HAS_RX_PM_STATE } {
	# Procedure called to validate C_HAS_RX_PM_STATE
	return true
}

proc update_PARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE } {
	# Procedure called to update C_HAS_TPH_REQUESTER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE } {
	# Procedure called to validate C_HAS_TPH_REQUESTER_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_TPH_ST_MODE { PARAM_VALUE.C_HAS_TPH_ST_MODE } {
	# Procedure called to update C_HAS_TPH_ST_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TPH_ST_MODE { PARAM_VALUE.C_HAS_TPH_ST_MODE } {
	# Procedure called to validate C_HAS_TPH_ST_MODE
	return true
}

proc update_PARAM_VALUE.C_HAS_TX_PM_STATE { PARAM_VALUE.C_HAS_TX_PM_STATE } {
	# Procedure called to update C_HAS_TX_PM_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TX_PM_STATE { PARAM_VALUE.C_HAS_TX_PM_STATE } {
	# Procedure called to validate C_HAS_TX_PM_STATE
	return true
}

proc update_PARAM_VALUE.C_HAS_VC1_ENABLE { PARAM_VALUE.C_HAS_VC1_ENABLE } {
	# Procedure called to update C_HAS_VC1_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VC1_ENABLE { PARAM_VALUE.C_HAS_VC1_ENABLE } {
	# Procedure called to validate C_HAS_VC1_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING { PARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING } {
	# Procedure called to update C_HAS_VC1_NEGOTIATION_PENDING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING { PARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING } {
	# Procedure called to validate C_HAS_VC1_NEGOTIATION_PENDING
	return true
}

proc update_PARAM_VALUE.C_HAS_VF_POWER_STATE { PARAM_VALUE.C_HAS_VF_POWER_STATE } {
	# Procedure called to update C_HAS_VF_POWER_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VF_POWER_STATE { PARAM_VALUE.C_HAS_VF_POWER_STATE } {
	# Procedure called to validate C_HAS_VF_POWER_STATE
	return true
}

proc update_PARAM_VALUE.C_HAS_VF_STATUS { PARAM_VALUE.C_HAS_VF_STATUS } {
	# Procedure called to update C_HAS_VF_STATUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VF_STATUS { PARAM_VALUE.C_HAS_VF_STATUS } {
	# Procedure called to validate C_HAS_VF_STATUS
	return true
}

proc update_PARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE } {
	# Procedure called to update C_HAS_VF_TPH_REQUESTER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE { PARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE } {
	# Procedure called to validate C_HAS_VF_TPH_REQUESTER_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_VF_TPH_ST_MODE { PARAM_VALUE.C_HAS_VF_TPH_ST_MODE } {
	# Procedure called to update C_HAS_VF_TPH_ST_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VF_TPH_ST_MODE { PARAM_VALUE.C_HAS_VF_TPH_ST_MODE } {
	# Procedure called to validate C_HAS_VF_TPH_ST_MODE
	return true
}

proc update_PARAM_VALUE.C_LINK_POWER_STATE_WIDTH { PARAM_VALUE.C_LINK_POWER_STATE_WIDTH } {
	# Procedure called to update C_LINK_POWER_STATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LINK_POWER_STATE_WIDTH { PARAM_VALUE.C_LINK_POWER_STATE_WIDTH } {
	# Procedure called to validate C_LINK_POWER_STATE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH { PARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH } {
	# Procedure called to update C_LOCAL_ERROR_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH { PARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH } {
	# Procedure called to validate C_LOCAL_ERROR_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH { PARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH } {
	# Procedure called to update C_LOCAL_ERROR_VALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH { PARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH } {
	# Procedure called to validate C_LOCAL_ERROR_VALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_LTSSM_STATE_WIDTH { PARAM_VALUE.C_LTSSM_STATE_WIDTH } {
	# Procedure called to update C_LTSSM_STATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LTSSM_STATE_WIDTH { PARAM_VALUE.C_LTSSM_STATE_WIDTH } {
	# Procedure called to validate C_LTSSM_STATE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_PAYLOAD_WIDTH { PARAM_VALUE.C_MAX_PAYLOAD_WIDTH } {
	# Procedure called to update C_MAX_PAYLOAD_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_PAYLOAD_WIDTH { PARAM_VALUE.C_MAX_PAYLOAD_WIDTH } {
	# Procedure called to validate C_MAX_PAYLOAD_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_READ_REQ_WIDTH { PARAM_VALUE.C_MAX_READ_REQ_WIDTH } {
	# Procedure called to update C_MAX_READ_REQ_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_READ_REQ_WIDTH { PARAM_VALUE.C_MAX_READ_REQ_WIDTH } {
	# Procedure called to validate C_MAX_READ_REQ_WIDTH
	return true
}

proc update_PARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH { PARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH } {
	# Procedure called to update C_NEGOTIATED_WIDTH_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH { PARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH } {
	# Procedure called to validate C_NEGOTIATED_WIDTH_WIDTH
	return true
}

proc update_PARAM_VALUE.C_OBFF_ENABLE_WIDTH { PARAM_VALUE.C_OBFF_ENABLE_WIDTH } {
	# Procedure called to update C_OBFF_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_OBFF_ENABLE_WIDTH { PARAM_VALUE.C_OBFF_ENABLE_WIDTH } {
	# Procedure called to validate C_OBFF_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PASID_ENABLE_WIDTH { PARAM_VALUE.C_PASID_ENABLE_WIDTH } {
	# Procedure called to update C_PASID_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PASID_ENABLE_WIDTH { PARAM_VALUE.C_PASID_ENABLE_WIDTH } {
	# Procedure called to validate C_PASID_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH { PARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH } {
	# Procedure called to update C_PASID_EXEC_PERMISSION_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH { PARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH } {
	# Procedure called to validate C_PASID_EXEC_PERMISSION_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH { PARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH } {
	# Procedure called to update C_PASID_PRIVIL_MODE_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH { PARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH } {
	# Procedure called to validate C_PASID_PRIVIL_MODE_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PHY_LINK_DOWN_WIDTH { PARAM_VALUE.C_PHY_LINK_DOWN_WIDTH } {
	# Procedure called to update C_PHY_LINK_DOWN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PHY_LINK_DOWN_WIDTH { PARAM_VALUE.C_PHY_LINK_DOWN_WIDTH } {
	# Procedure called to validate C_PHY_LINK_DOWN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PHY_LINK_STATUS_WIDTH { PARAM_VALUE.C_PHY_LINK_STATUS_WIDTH } {
	# Procedure called to update C_PHY_LINK_STATUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PHY_LINK_STATUS_WIDTH { PARAM_VALUE.C_PHY_LINK_STATUS_WIDTH } {
	# Procedure called to validate C_PHY_LINK_STATUS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH { PARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH } {
	# Procedure called to update C_PL_STATUS_CHANGE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH { PARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH } {
	# Procedure called to validate C_PL_STATUS_CHANGE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RCB_STATUS_WIDTH { PARAM_VALUE.C_RCB_STATUS_WIDTH } {
	# Procedure called to update C_RCB_STATUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RCB_STATUS_WIDTH { PARAM_VALUE.C_RCB_STATUS_WIDTH } {
	# Procedure called to validate C_RCB_STATUS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH } {
	# Procedure called to update C_RQ_SEQ_NUM0_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH } {
	# Procedure called to validate C_RQ_SEQ_NUM0_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH } {
	# Procedure called to update C_RQ_SEQ_NUM1_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH } {
	# Procedure called to validate C_RQ_SEQ_NUM1_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH } {
	# Procedure called to update C_RQ_SEQ_NUM_VLD0_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH } {
	# Procedure called to validate C_RQ_SEQ_NUM_VLD0_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH } {
	# Procedure called to update C_RQ_SEQ_NUM_VLD1_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH { PARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH } {
	# Procedure called to validate C_RQ_SEQ_NUM_VLD1_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_TAG0_WIDTH { PARAM_VALUE.C_RQ_TAG0_WIDTH } {
	# Procedure called to update C_RQ_TAG0_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_TAG0_WIDTH { PARAM_VALUE.C_RQ_TAG0_WIDTH } {
	# Procedure called to validate C_RQ_TAG0_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_TAG1_WIDTH { PARAM_VALUE.C_RQ_TAG1_WIDTH } {
	# Procedure called to update C_RQ_TAG1_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_TAG1_WIDTH { PARAM_VALUE.C_RQ_TAG1_WIDTH } {
	# Procedure called to validate C_RQ_TAG1_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_TAG_AV_WIDTH { PARAM_VALUE.C_RQ_TAG_AV_WIDTH } {
	# Procedure called to update C_RQ_TAG_AV_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_TAG_AV_WIDTH { PARAM_VALUE.C_RQ_TAG_AV_WIDTH } {
	# Procedure called to validate C_RQ_TAG_AV_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_TAG_VLD0_WIDTH { PARAM_VALUE.C_RQ_TAG_VLD0_WIDTH } {
	# Procedure called to update C_RQ_TAG_VLD0_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_TAG_VLD0_WIDTH { PARAM_VALUE.C_RQ_TAG_VLD0_WIDTH } {
	# Procedure called to validate C_RQ_TAG_VLD0_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RQ_TAG_VLD1_WIDTH { PARAM_VALUE.C_RQ_TAG_VLD1_WIDTH } {
	# Procedure called to update C_RQ_TAG_VLD1_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RQ_TAG_VLD1_WIDTH { PARAM_VALUE.C_RQ_TAG_VLD1_WIDTH } {
	# Procedure called to validate C_RQ_TAG_VLD1_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RX_PM_STATE_WIDTH { PARAM_VALUE.C_RX_PM_STATE_WIDTH } {
	# Procedure called to update C_RX_PM_STATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RX_PM_STATE_WIDTH { PARAM_VALUE.C_RX_PM_STATE_WIDTH } {
	# Procedure called to validate C_RX_PM_STATE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to update C_TPH_REQUESTER_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to validate C_TPH_REQUESTER_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TPH_ST_MODE_WIDTH { PARAM_VALUE.C_TPH_ST_MODE_WIDTH } {
	# Procedure called to update C_TPH_ST_MODE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TPH_ST_MODE_WIDTH { PARAM_VALUE.C_TPH_ST_MODE_WIDTH } {
	# Procedure called to validate C_TPH_ST_MODE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TX_PM_STATE_WIDTH { PARAM_VALUE.C_TX_PM_STATE_WIDTH } {
	# Procedure called to update C_TX_PM_STATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TX_PM_STATE_WIDTH { PARAM_VALUE.C_TX_PM_STATE_WIDTH } {
	# Procedure called to validate C_TX_PM_STATE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VC1_ENABLE_WIDTH { PARAM_VALUE.C_VC1_ENABLE_WIDTH } {
	# Procedure called to update C_VC1_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VC1_ENABLE_WIDTH { PARAM_VALUE.C_VC1_ENABLE_WIDTH } {
	# Procedure called to validate C_VC1_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH { PARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH } {
	# Procedure called to update C_VC1_NEGOTIATION_PENDING_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH { PARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH } {
	# Procedure called to validate C_VC1_NEGOTIATION_PENDING_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VF_POWER_STATE_WIDTH { PARAM_VALUE.C_VF_POWER_STATE_WIDTH } {
	# Procedure called to update C_VF_POWER_STATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VF_POWER_STATE_WIDTH { PARAM_VALUE.C_VF_POWER_STATE_WIDTH } {
	# Procedure called to validate C_VF_POWER_STATE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VF_STATUS_WIDTH { PARAM_VALUE.C_VF_STATUS_WIDTH } {
	# Procedure called to update C_VF_STATUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VF_STATUS_WIDTH { PARAM_VALUE.C_VF_STATUS_WIDTH } {
	# Procedure called to validate C_VF_STATUS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to update C_VF_TPH_REQUESTER_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH { PARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to validate C_VF_TPH_REQUESTER_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH { PARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH } {
	# Procedure called to update C_VF_TPH_ST_MODE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH { PARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH } {
	# Procedure called to validate C_VF_TPH_ST_MODE_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_PHY_LINK_DOWN_WIDTH { MODELPARAM_VALUE.C_PHY_LINK_DOWN_WIDTH PARAM_VALUE.C_PHY_LINK_DOWN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PHY_LINK_DOWN_WIDTH}] ${MODELPARAM_VALUE.C_PHY_LINK_DOWN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PHY_LINK_DOWN { MODELPARAM_VALUE.C_HAS_PHY_LINK_DOWN PARAM_VALUE.C_HAS_PHY_LINK_DOWN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PHY_LINK_DOWN}] ${MODELPARAM_VALUE.C_HAS_PHY_LINK_DOWN}
}

proc update_MODELPARAM_VALUE.C_PHY_LINK_STATUS_WIDTH { MODELPARAM_VALUE.C_PHY_LINK_STATUS_WIDTH PARAM_VALUE.C_PHY_LINK_STATUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PHY_LINK_STATUS_WIDTH}] ${MODELPARAM_VALUE.C_PHY_LINK_STATUS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PHY_LINK_STATUS { MODELPARAM_VALUE.C_HAS_PHY_LINK_STATUS PARAM_VALUE.C_HAS_PHY_LINK_STATUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PHY_LINK_STATUS}] ${MODELPARAM_VALUE.C_HAS_PHY_LINK_STATUS}
}

proc update_MODELPARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH { MODELPARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH PARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH}] ${MODELPARAM_VALUE.C_NEGOTIATED_WIDTH_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_NEGOTIATED_WIDTH { MODELPARAM_VALUE.C_HAS_NEGOTIATED_WIDTH PARAM_VALUE.C_HAS_NEGOTIATED_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_NEGOTIATED_WIDTH}] ${MODELPARAM_VALUE.C_HAS_NEGOTIATED_WIDTH}
}

proc update_MODELPARAM_VALUE.C_CURRENT_SPEED_WIDTH { MODELPARAM_VALUE.C_CURRENT_SPEED_WIDTH PARAM_VALUE.C_CURRENT_SPEED_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CURRENT_SPEED_WIDTH}] ${MODELPARAM_VALUE.C_CURRENT_SPEED_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CURRENT_SPEED { MODELPARAM_VALUE.C_HAS_CURRENT_SPEED PARAM_VALUE.C_HAS_CURRENT_SPEED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CURRENT_SPEED}] ${MODELPARAM_VALUE.C_HAS_CURRENT_SPEED}
}

proc update_MODELPARAM_VALUE.C_MAX_PAYLOAD_WIDTH { MODELPARAM_VALUE.C_MAX_PAYLOAD_WIDTH PARAM_VALUE.C_MAX_PAYLOAD_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_PAYLOAD_WIDTH}] ${MODELPARAM_VALUE.C_MAX_PAYLOAD_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_MAX_PAYLOAD { MODELPARAM_VALUE.C_HAS_MAX_PAYLOAD PARAM_VALUE.C_HAS_MAX_PAYLOAD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_MAX_PAYLOAD}] ${MODELPARAM_VALUE.C_HAS_MAX_PAYLOAD}
}

proc update_MODELPARAM_VALUE.C_MAX_READ_REQ_WIDTH { MODELPARAM_VALUE.C_MAX_READ_REQ_WIDTH PARAM_VALUE.C_MAX_READ_REQ_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_READ_REQ_WIDTH}] ${MODELPARAM_VALUE.C_MAX_READ_REQ_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_MAX_READ_REQ { MODELPARAM_VALUE.C_HAS_MAX_READ_REQ PARAM_VALUE.C_HAS_MAX_READ_REQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_MAX_READ_REQ}] ${MODELPARAM_VALUE.C_HAS_MAX_READ_REQ}
}

proc update_MODELPARAM_VALUE.C_FUNCTION_STATUS_WIDTH { MODELPARAM_VALUE.C_FUNCTION_STATUS_WIDTH PARAM_VALUE.C_FUNCTION_STATUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FUNCTION_STATUS_WIDTH}] ${MODELPARAM_VALUE.C_FUNCTION_STATUS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_FUNCTION_STATUS { MODELPARAM_VALUE.C_HAS_FUNCTION_STATUS PARAM_VALUE.C_HAS_FUNCTION_STATUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_FUNCTION_STATUS}] ${MODELPARAM_VALUE.C_HAS_FUNCTION_STATUS}
}

proc update_MODELPARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH { MODELPARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH PARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH}] ${MODELPARAM_VALUE.C_FUNCTION_POWER_STATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_FUNCTION_POWER_STATE { MODELPARAM_VALUE.C_HAS_FUNCTION_POWER_STATE PARAM_VALUE.C_HAS_FUNCTION_POWER_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_FUNCTION_POWER_STATE}] ${MODELPARAM_VALUE.C_HAS_FUNCTION_POWER_STATE}
}

proc update_MODELPARAM_VALUE.C_VF_STATUS_WIDTH { MODELPARAM_VALUE.C_VF_STATUS_WIDTH PARAM_VALUE.C_VF_STATUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VF_STATUS_WIDTH}] ${MODELPARAM_VALUE.C_VF_STATUS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VF_STATUS { MODELPARAM_VALUE.C_HAS_VF_STATUS PARAM_VALUE.C_HAS_VF_STATUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VF_STATUS}] ${MODELPARAM_VALUE.C_HAS_VF_STATUS}
}

proc update_MODELPARAM_VALUE.C_VF_POWER_STATE_WIDTH { MODELPARAM_VALUE.C_VF_POWER_STATE_WIDTH PARAM_VALUE.C_VF_POWER_STATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VF_POWER_STATE_WIDTH}] ${MODELPARAM_VALUE.C_VF_POWER_STATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VF_POWER_STATE { MODELPARAM_VALUE.C_HAS_VF_POWER_STATE PARAM_VALUE.C_HAS_VF_POWER_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VF_POWER_STATE}] ${MODELPARAM_VALUE.C_HAS_VF_POWER_STATE}
}

proc update_MODELPARAM_VALUE.C_LINK_POWER_STATE_WIDTH { MODELPARAM_VALUE.C_LINK_POWER_STATE_WIDTH PARAM_VALUE.C_LINK_POWER_STATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LINK_POWER_STATE_WIDTH}] ${MODELPARAM_VALUE.C_LINK_POWER_STATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_LINK_POWER_STATE { MODELPARAM_VALUE.C_HAS_LINK_POWER_STATE PARAM_VALUE.C_HAS_LINK_POWER_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_LINK_POWER_STATE}] ${MODELPARAM_VALUE.C_HAS_LINK_POWER_STATE}
}

proc update_MODELPARAM_VALUE.C_ERR_COR_OUT_WIDTH { MODELPARAM_VALUE.C_ERR_COR_OUT_WIDTH PARAM_VALUE.C_ERR_COR_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ERR_COR_OUT_WIDTH}] ${MODELPARAM_VALUE.C_ERR_COR_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ERR_COR_OUT { MODELPARAM_VALUE.C_HAS_ERR_COR_OUT PARAM_VALUE.C_HAS_ERR_COR_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ERR_COR_OUT}] ${MODELPARAM_VALUE.C_HAS_ERR_COR_OUT}
}

proc update_MODELPARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH { MODELPARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH PARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH}] ${MODELPARAM_VALUE.C_ERR_NONFATAL_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ERR_NONFATAL_OUT { MODELPARAM_VALUE.C_HAS_ERR_NONFATAL_OUT PARAM_VALUE.C_HAS_ERR_NONFATAL_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ERR_NONFATAL_OUT}] ${MODELPARAM_VALUE.C_HAS_ERR_NONFATAL_OUT}
}

proc update_MODELPARAM_VALUE.C_ERR_FATAL_OUT_WIDTH { MODELPARAM_VALUE.C_ERR_FATAL_OUT_WIDTH PARAM_VALUE.C_ERR_FATAL_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ERR_FATAL_OUT_WIDTH}] ${MODELPARAM_VALUE.C_ERR_FATAL_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ERR_FATAL_OUT { MODELPARAM_VALUE.C_HAS_ERR_FATAL_OUT PARAM_VALUE.C_HAS_ERR_FATAL_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ERR_FATAL_OUT}] ${MODELPARAM_VALUE.C_HAS_ERR_FATAL_OUT}
}

proc update_MODELPARAM_VALUE.C_LTSSM_STATE_WIDTH { MODELPARAM_VALUE.C_LTSSM_STATE_WIDTH PARAM_VALUE.C_LTSSM_STATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LTSSM_STATE_WIDTH}] ${MODELPARAM_VALUE.C_LTSSM_STATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_LTSSM_STATE { MODELPARAM_VALUE.C_HAS_LTSSM_STATE PARAM_VALUE.C_HAS_LTSSM_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_LTSSM_STATE}] ${MODELPARAM_VALUE.C_HAS_LTSSM_STATE}
}

proc update_MODELPARAM_VALUE.C_RCB_STATUS_WIDTH { MODELPARAM_VALUE.C_RCB_STATUS_WIDTH PARAM_VALUE.C_RCB_STATUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RCB_STATUS_WIDTH}] ${MODELPARAM_VALUE.C_RCB_STATUS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RCB_STATUS { MODELPARAM_VALUE.C_HAS_RCB_STATUS PARAM_VALUE.C_HAS_RCB_STATUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RCB_STATUS}] ${MODELPARAM_VALUE.C_HAS_RCB_STATUS}
}

proc update_MODELPARAM_VALUE.C_OBFF_ENABLE_WIDTH { MODELPARAM_VALUE.C_OBFF_ENABLE_WIDTH PARAM_VALUE.C_OBFF_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_OBFF_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_OBFF_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_OBFF_ENABLE { MODELPARAM_VALUE.C_HAS_OBFF_ENABLE PARAM_VALUE.C_HAS_OBFF_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_OBFF_ENABLE}] ${MODELPARAM_VALUE.C_HAS_OBFF_ENABLE}
}

proc update_MODELPARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH { MODELPARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH PARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH}] ${MODELPARAM_VALUE.C_PL_STATUS_CHANGE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PL_STATUS_CHANGE { MODELPARAM_VALUE.C_HAS_PL_STATUS_CHANGE PARAM_VALUE.C_HAS_PL_STATUS_CHANGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PL_STATUS_CHANGE}] ${MODELPARAM_VALUE.C_HAS_PL_STATUS_CHANGE}
}

proc update_MODELPARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH { MODELPARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH PARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_TPH_REQUESTER_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE { MODELPARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE PARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE}] ${MODELPARAM_VALUE.C_HAS_TPH_REQUESTER_ENABLE}
}

proc update_MODELPARAM_VALUE.C_TPH_ST_MODE_WIDTH { MODELPARAM_VALUE.C_TPH_ST_MODE_WIDTH PARAM_VALUE.C_TPH_ST_MODE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TPH_ST_MODE_WIDTH}] ${MODELPARAM_VALUE.C_TPH_ST_MODE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TPH_ST_MODE { MODELPARAM_VALUE.C_HAS_TPH_ST_MODE PARAM_VALUE.C_HAS_TPH_ST_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TPH_ST_MODE}] ${MODELPARAM_VALUE.C_HAS_TPH_ST_MODE}
}

proc update_MODELPARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH { MODELPARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH PARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_VF_TPH_REQUESTER_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE { MODELPARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE PARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE}] ${MODELPARAM_VALUE.C_HAS_VF_TPH_REQUESTER_ENABLE}
}

proc update_MODELPARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH { MODELPARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH PARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH}] ${MODELPARAM_VALUE.C_VF_TPH_ST_MODE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VF_TPH_ST_MODE { MODELPARAM_VALUE.C_HAS_VF_TPH_ST_MODE PARAM_VALUE.C_HAS_VF_TPH_ST_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VF_TPH_ST_MODE}] ${MODELPARAM_VALUE.C_HAS_VF_TPH_ST_MODE}
}

proc update_MODELPARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH { MODELPARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH PARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH}] ${MODELPARAM_VALUE.C_RQ_SEQ_NUM0_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM0 { MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM0 PARAM_VALUE.C_HAS_RQ_SEQ_NUM0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_SEQ_NUM0}] ${MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM0}
}

proc update_MODELPARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH { MODELPARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH PARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH}] ${MODELPARAM_VALUE.C_RQ_SEQ_NUM_VLD0_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0 { MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0 PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0}] ${MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD0}
}

proc update_MODELPARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH { MODELPARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH PARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH}] ${MODELPARAM_VALUE.C_LOCAL_ERROR_VALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_LOCAL_ERROR_VALID { MODELPARAM_VALUE.C_HAS_LOCAL_ERROR_VALID PARAM_VALUE.C_HAS_LOCAL_ERROR_VALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_LOCAL_ERROR_VALID}] ${MODELPARAM_VALUE.C_HAS_LOCAL_ERROR_VALID}
}

proc update_MODELPARAM_VALUE.C_RX_PM_STATE_WIDTH { MODELPARAM_VALUE.C_RX_PM_STATE_WIDTH PARAM_VALUE.C_RX_PM_STATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RX_PM_STATE_WIDTH}] ${MODELPARAM_VALUE.C_RX_PM_STATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RX_PM_STATE { MODELPARAM_VALUE.C_HAS_RX_PM_STATE PARAM_VALUE.C_HAS_RX_PM_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RX_PM_STATE}] ${MODELPARAM_VALUE.C_HAS_RX_PM_STATE}
}

proc update_MODELPARAM_VALUE.C_TX_PM_STATE_WIDTH { MODELPARAM_VALUE.C_TX_PM_STATE_WIDTH PARAM_VALUE.C_TX_PM_STATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TX_PM_STATE_WIDTH}] ${MODELPARAM_VALUE.C_TX_PM_STATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TX_PM_STATE { MODELPARAM_VALUE.C_HAS_TX_PM_STATE PARAM_VALUE.C_HAS_TX_PM_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TX_PM_STATE}] ${MODELPARAM_VALUE.C_HAS_TX_PM_STATE}
}

proc update_MODELPARAM_VALUE.C_RQ_TAG0_WIDTH { MODELPARAM_VALUE.C_RQ_TAG0_WIDTH PARAM_VALUE.C_RQ_TAG0_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_TAG0_WIDTH}] ${MODELPARAM_VALUE.C_RQ_TAG0_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_TAG0 { MODELPARAM_VALUE.C_HAS_RQ_TAG0 PARAM_VALUE.C_HAS_RQ_TAG0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_TAG0}] ${MODELPARAM_VALUE.C_HAS_RQ_TAG0}
}

proc update_MODELPARAM_VALUE.C_RQ_TAG_VLD0_WIDTH { MODELPARAM_VALUE.C_RQ_TAG_VLD0_WIDTH PARAM_VALUE.C_RQ_TAG_VLD0_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_TAG_VLD0_WIDTH}] ${MODELPARAM_VALUE.C_RQ_TAG_VLD0_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_TAG_VLD0 { MODELPARAM_VALUE.C_HAS_RQ_TAG_VLD0 PARAM_VALUE.C_HAS_RQ_TAG_VLD0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_TAG_VLD0}] ${MODELPARAM_VALUE.C_HAS_RQ_TAG_VLD0}
}

proc update_MODELPARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH { MODELPARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH PARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH}] ${MODELPARAM_VALUE.C_RQ_SEQ_NUM1_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM1 { MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM1 PARAM_VALUE.C_HAS_RQ_SEQ_NUM1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_SEQ_NUM1}] ${MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM1}
}

proc update_MODELPARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH { MODELPARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH PARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH}] ${MODELPARAM_VALUE.C_RQ_SEQ_NUM_VLD1_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1 { MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1 PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1}] ${MODELPARAM_VALUE.C_HAS_RQ_SEQ_NUM_VLD1}
}

proc update_MODELPARAM_VALUE.C_RQ_TAG1_WIDTH { MODELPARAM_VALUE.C_RQ_TAG1_WIDTH PARAM_VALUE.C_RQ_TAG1_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_TAG1_WIDTH}] ${MODELPARAM_VALUE.C_RQ_TAG1_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_TAG1 { MODELPARAM_VALUE.C_HAS_RQ_TAG1 PARAM_VALUE.C_HAS_RQ_TAG1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_TAG1}] ${MODELPARAM_VALUE.C_HAS_RQ_TAG1}
}

proc update_MODELPARAM_VALUE.C_RQ_TAG_VLD1_WIDTH { MODELPARAM_VALUE.C_RQ_TAG_VLD1_WIDTH PARAM_VALUE.C_RQ_TAG_VLD1_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_TAG_VLD1_WIDTH}] ${MODELPARAM_VALUE.C_RQ_TAG_VLD1_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_TAG_VLD1 { MODELPARAM_VALUE.C_HAS_RQ_TAG_VLD1 PARAM_VALUE.C_HAS_RQ_TAG_VLD1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_TAG_VLD1}] ${MODELPARAM_VALUE.C_HAS_RQ_TAG_VLD1}
}

proc update_MODELPARAM_VALUE.C_CQ_NP_REQ_WIDTH { MODELPARAM_VALUE.C_CQ_NP_REQ_WIDTH PARAM_VALUE.C_CQ_NP_REQ_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CQ_NP_REQ_WIDTH}] ${MODELPARAM_VALUE.C_CQ_NP_REQ_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CQ_NP_REQ { MODELPARAM_VALUE.C_HAS_CQ_NP_REQ PARAM_VALUE.C_HAS_CQ_NP_REQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CQ_NP_REQ}] ${MODELPARAM_VALUE.C_HAS_CQ_NP_REQ}
}

proc update_MODELPARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH { MODELPARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH PARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH}] ${MODELPARAM_VALUE.C_CQ_NP_REQ_COUNT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT { MODELPARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT PARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT}] ${MODELPARAM_VALUE.C_HAS_CQ_NP_REQ_COUNT}
}

proc update_MODELPARAM_VALUE.C_RQ_TAG_AV_WIDTH { MODELPARAM_VALUE.C_RQ_TAG_AV_WIDTH PARAM_VALUE.C_RQ_TAG_AV_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RQ_TAG_AV_WIDTH}] ${MODELPARAM_VALUE.C_RQ_TAG_AV_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RQ_TAG_AV { MODELPARAM_VALUE.C_HAS_RQ_TAG_AV PARAM_VALUE.C_HAS_RQ_TAG_AV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RQ_TAG_AV}] ${MODELPARAM_VALUE.C_HAS_RQ_TAG_AV}
}

proc update_MODELPARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH { MODELPARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH PARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH}] ${MODELPARAM_VALUE.C_LOCAL_ERROR_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_LOCAL_ERROR_OUT { MODELPARAM_VALUE.C_HAS_LOCAL_ERROR_OUT PARAM_VALUE.C_HAS_LOCAL_ERROR_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_LOCAL_ERROR_OUT}] ${MODELPARAM_VALUE.C_HAS_LOCAL_ERROR_OUT}
}

proc update_MODELPARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH { MODELPARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH PARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_EXT_TAG_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_EXT_TAG_ENABLE { MODELPARAM_VALUE.C_HAS_EXT_TAG_ENABLE PARAM_VALUE.C_HAS_EXT_TAG_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_EXT_TAG_ENABLE}] ${MODELPARAM_VALUE.C_HAS_EXT_TAG_ENABLE}
}

proc update_MODELPARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH { MODELPARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH PARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_ATOMIC_REQUESTER_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE { MODELPARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE PARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE}] ${MODELPARAM_VALUE.C_HAS_ATOMIC_REQUESTER_ENABLE}
}

proc update_MODELPARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH { MODELPARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH PARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_10B_TAG_REQUESTER_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE { MODELPARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE PARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE}] ${MODELPARAM_VALUE.C_HAS_10B_TAG_REQUESTER_ENABLE}
}

proc update_MODELPARAM_VALUE.C_PASID_ENABLE_WIDTH { MODELPARAM_VALUE.C_PASID_ENABLE_WIDTH PARAM_VALUE.C_PASID_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PASID_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_PASID_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PASID_ENABLE { MODELPARAM_VALUE.C_HAS_PASID_ENABLE PARAM_VALUE.C_HAS_PASID_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PASID_ENABLE}] ${MODELPARAM_VALUE.C_HAS_PASID_ENABLE}
}

proc update_MODELPARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH { MODELPARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH PARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_PASID_EXEC_PERMISSION_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE { MODELPARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE PARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE}] ${MODELPARAM_VALUE.C_HAS_PASID_EXEC_PERMISSION_ENABLE}
}

proc update_MODELPARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH { MODELPARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH PARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_PASID_PRIVIL_MODE_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE { MODELPARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE PARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE}] ${MODELPARAM_VALUE.C_HAS_PASID_PRIVIL_MODE_ENABLE}
}

proc update_MODELPARAM_VALUE.C_VC1_ENABLE_WIDTH { MODELPARAM_VALUE.C_VC1_ENABLE_WIDTH PARAM_VALUE.C_VC1_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VC1_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_VC1_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VC1_ENABLE { MODELPARAM_VALUE.C_HAS_VC1_ENABLE PARAM_VALUE.C_HAS_VC1_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VC1_ENABLE}] ${MODELPARAM_VALUE.C_HAS_VC1_ENABLE}
}

proc update_MODELPARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH { MODELPARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH PARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH}] ${MODELPARAM_VALUE.C_VC1_NEGOTIATION_PENDING_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING { MODELPARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING PARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING}] ${MODELPARAM_VALUE.C_HAS_VC1_NEGOTIATION_PENDING}
}

