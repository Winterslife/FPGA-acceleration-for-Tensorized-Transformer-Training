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
  ipgui::add_param $IPINST -name "C_ADDRESS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ATTR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FAIL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FUNCTION_NUMBER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ADDRESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ATTR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_FAIL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_FUNCTION_NUMBER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_INT_VECTOR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_MASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_MINT_VECTOR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SENT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TPH_PRESENT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TPH_ST_TAG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TPH_TYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VEC_PENDING" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VEC_PENDING_STATUS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VF_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_VF_MASK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INT_VECTOR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MASK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MINT_VECTOR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SENT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TPH_PRESENT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TPH_ST_TAG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TPH_TYPE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VEC_PENDING_STATUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VEC_PENDING_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VF_ENABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_VF_MASK_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_ADDRESS_WIDTH { PARAM_VALUE.C_ADDRESS_WIDTH } {
	# Procedure called to update C_ADDRESS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADDRESS_WIDTH { PARAM_VALUE.C_ADDRESS_WIDTH } {
	# Procedure called to validate C_ADDRESS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ATTR_WIDTH { PARAM_VALUE.C_ATTR_WIDTH } {
	# Procedure called to update C_ATTR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ATTR_WIDTH { PARAM_VALUE.C_ATTR_WIDTH } {
	# Procedure called to validate C_ATTR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ENABLE_WIDTH { PARAM_VALUE.C_ENABLE_WIDTH } {
	# Procedure called to update C_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ENABLE_WIDTH { PARAM_VALUE.C_ENABLE_WIDTH } {
	# Procedure called to validate C_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_FAIL_WIDTH { PARAM_VALUE.C_FAIL_WIDTH } {
	# Procedure called to update C_FAIL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FAIL_WIDTH { PARAM_VALUE.C_FAIL_WIDTH } {
	# Procedure called to validate C_FAIL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH { PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH } {
	# Procedure called to update C_FUNCTION_NUMBER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH { PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH } {
	# Procedure called to validate C_FUNCTION_NUMBER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_ADDRESS { PARAM_VALUE.C_HAS_ADDRESS } {
	# Procedure called to update C_HAS_ADDRESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ADDRESS { PARAM_VALUE.C_HAS_ADDRESS } {
	# Procedure called to validate C_HAS_ADDRESS
	return true
}

proc update_PARAM_VALUE.C_HAS_ATTR { PARAM_VALUE.C_HAS_ATTR } {
	# Procedure called to update C_HAS_ATTR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ATTR { PARAM_VALUE.C_HAS_ATTR } {
	# Procedure called to validate C_HAS_ATTR
	return true
}

proc update_PARAM_VALUE.C_HAS_DATA { PARAM_VALUE.C_HAS_DATA } {
	# Procedure called to update C_HAS_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DATA { PARAM_VALUE.C_HAS_DATA } {
	# Procedure called to validate C_HAS_DATA
	return true
}

proc update_PARAM_VALUE.C_HAS_ENABLE { PARAM_VALUE.C_HAS_ENABLE } {
	# Procedure called to update C_HAS_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ENABLE { PARAM_VALUE.C_HAS_ENABLE } {
	# Procedure called to validate C_HAS_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_FAIL { PARAM_VALUE.C_HAS_FAIL } {
	# Procedure called to update C_HAS_FAIL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_FAIL { PARAM_VALUE.C_HAS_FAIL } {
	# Procedure called to validate C_HAS_FAIL
	return true
}

proc update_PARAM_VALUE.C_HAS_FUNCTION_NUMBER { PARAM_VALUE.C_HAS_FUNCTION_NUMBER } {
	# Procedure called to update C_HAS_FUNCTION_NUMBER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_FUNCTION_NUMBER { PARAM_VALUE.C_HAS_FUNCTION_NUMBER } {
	# Procedure called to validate C_HAS_FUNCTION_NUMBER
	return true
}

proc update_PARAM_VALUE.C_HAS_INT_VECTOR { PARAM_VALUE.C_HAS_INT_VECTOR } {
	# Procedure called to update C_HAS_INT_VECTOR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_INT_VECTOR { PARAM_VALUE.C_HAS_INT_VECTOR } {
	# Procedure called to validate C_HAS_INT_VECTOR
	return true
}

proc update_PARAM_VALUE.C_HAS_MASK { PARAM_VALUE.C_HAS_MASK } {
	# Procedure called to update C_HAS_MASK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_MASK { PARAM_VALUE.C_HAS_MASK } {
	# Procedure called to validate C_HAS_MASK
	return true
}

proc update_PARAM_VALUE.C_HAS_MINT_VECTOR { PARAM_VALUE.C_HAS_MINT_VECTOR } {
	# Procedure called to update C_HAS_MINT_VECTOR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_MINT_VECTOR { PARAM_VALUE.C_HAS_MINT_VECTOR } {
	# Procedure called to validate C_HAS_MINT_VECTOR
	return true
}

proc update_PARAM_VALUE.C_HAS_SENT { PARAM_VALUE.C_HAS_SENT } {
	# Procedure called to update C_HAS_SENT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SENT { PARAM_VALUE.C_HAS_SENT } {
	# Procedure called to validate C_HAS_SENT
	return true
}

proc update_PARAM_VALUE.C_HAS_TPH_PRESENT { PARAM_VALUE.C_HAS_TPH_PRESENT } {
	# Procedure called to update C_HAS_TPH_PRESENT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TPH_PRESENT { PARAM_VALUE.C_HAS_TPH_PRESENT } {
	# Procedure called to validate C_HAS_TPH_PRESENT
	return true
}

proc update_PARAM_VALUE.C_HAS_TPH_ST_TAG { PARAM_VALUE.C_HAS_TPH_ST_TAG } {
	# Procedure called to update C_HAS_TPH_ST_TAG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TPH_ST_TAG { PARAM_VALUE.C_HAS_TPH_ST_TAG } {
	# Procedure called to validate C_HAS_TPH_ST_TAG
	return true
}

proc update_PARAM_VALUE.C_HAS_TPH_TYPE { PARAM_VALUE.C_HAS_TPH_TYPE } {
	# Procedure called to update C_HAS_TPH_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TPH_TYPE { PARAM_VALUE.C_HAS_TPH_TYPE } {
	# Procedure called to validate C_HAS_TPH_TYPE
	return true
}

proc update_PARAM_VALUE.C_HAS_VEC_PENDING { PARAM_VALUE.C_HAS_VEC_PENDING } {
	# Procedure called to update C_HAS_VEC_PENDING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VEC_PENDING { PARAM_VALUE.C_HAS_VEC_PENDING } {
	# Procedure called to validate C_HAS_VEC_PENDING
	return true
}

proc update_PARAM_VALUE.C_HAS_VEC_PENDING_STATUS { PARAM_VALUE.C_HAS_VEC_PENDING_STATUS } {
	# Procedure called to update C_HAS_VEC_PENDING_STATUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VEC_PENDING_STATUS { PARAM_VALUE.C_HAS_VEC_PENDING_STATUS } {
	# Procedure called to validate C_HAS_VEC_PENDING_STATUS
	return true
}

proc update_PARAM_VALUE.C_HAS_VF_ENABLE { PARAM_VALUE.C_HAS_VF_ENABLE } {
	# Procedure called to update C_HAS_VF_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VF_ENABLE { PARAM_VALUE.C_HAS_VF_ENABLE } {
	# Procedure called to validate C_HAS_VF_ENABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_VF_MASK { PARAM_VALUE.C_HAS_VF_MASK } {
	# Procedure called to update C_HAS_VF_MASK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_VF_MASK { PARAM_VALUE.C_HAS_VF_MASK } {
	# Procedure called to validate C_HAS_VF_MASK
	return true
}

proc update_PARAM_VALUE.C_INT_VECTOR_WIDTH { PARAM_VALUE.C_INT_VECTOR_WIDTH } {
	# Procedure called to update C_INT_VECTOR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INT_VECTOR_WIDTH { PARAM_VALUE.C_INT_VECTOR_WIDTH } {
	# Procedure called to validate C_INT_VECTOR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MASK_WIDTH { PARAM_VALUE.C_MASK_WIDTH } {
	# Procedure called to update C_MASK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MASK_WIDTH { PARAM_VALUE.C_MASK_WIDTH } {
	# Procedure called to validate C_MASK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MINT_VECTOR_WIDTH { PARAM_VALUE.C_MINT_VECTOR_WIDTH } {
	# Procedure called to update C_MINT_VECTOR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MINT_VECTOR_WIDTH { PARAM_VALUE.C_MINT_VECTOR_WIDTH } {
	# Procedure called to validate C_MINT_VECTOR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SENT_WIDTH { PARAM_VALUE.C_SENT_WIDTH } {
	# Procedure called to update C_SENT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SENT_WIDTH { PARAM_VALUE.C_SENT_WIDTH } {
	# Procedure called to validate C_SENT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TPH_PRESENT_WIDTH { PARAM_VALUE.C_TPH_PRESENT_WIDTH } {
	# Procedure called to update C_TPH_PRESENT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TPH_PRESENT_WIDTH { PARAM_VALUE.C_TPH_PRESENT_WIDTH } {
	# Procedure called to validate C_TPH_PRESENT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TPH_ST_TAG_WIDTH { PARAM_VALUE.C_TPH_ST_TAG_WIDTH } {
	# Procedure called to update C_TPH_ST_TAG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TPH_ST_TAG_WIDTH { PARAM_VALUE.C_TPH_ST_TAG_WIDTH } {
	# Procedure called to validate C_TPH_ST_TAG_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TPH_TYPE_WIDTH { PARAM_VALUE.C_TPH_TYPE_WIDTH } {
	# Procedure called to update C_TPH_TYPE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TPH_TYPE_WIDTH { PARAM_VALUE.C_TPH_TYPE_WIDTH } {
	# Procedure called to validate C_TPH_TYPE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH { PARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH } {
	# Procedure called to update C_VEC_PENDING_STATUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH { PARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH } {
	# Procedure called to validate C_VEC_PENDING_STATUS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VEC_PENDING_WIDTH { PARAM_VALUE.C_VEC_PENDING_WIDTH } {
	# Procedure called to update C_VEC_PENDING_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VEC_PENDING_WIDTH { PARAM_VALUE.C_VEC_PENDING_WIDTH } {
	# Procedure called to validate C_VEC_PENDING_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VF_ENABLE_WIDTH { PARAM_VALUE.C_VF_ENABLE_WIDTH } {
	# Procedure called to update C_VF_ENABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VF_ENABLE_WIDTH { PARAM_VALUE.C_VF_ENABLE_WIDTH } {
	# Procedure called to validate C_VF_ENABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_VF_MASK_WIDTH { PARAM_VALUE.C_VF_MASK_WIDTH } {
	# Procedure called to update C_VF_MASK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VF_MASK_WIDTH { PARAM_VALUE.C_VF_MASK_WIDTH } {
	# Procedure called to validate C_VF_MASK_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_ENABLE_WIDTH { MODELPARAM_VALUE.C_ENABLE_WIDTH PARAM_VALUE.C_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ENABLE { MODELPARAM_VALUE.C_HAS_ENABLE PARAM_VALUE.C_HAS_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ENABLE}] ${MODELPARAM_VALUE.C_HAS_ENABLE}
}

proc update_MODELPARAM_VALUE.C_MASK_WIDTH { MODELPARAM_VALUE.C_MASK_WIDTH PARAM_VALUE.C_MASK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MASK_WIDTH}] ${MODELPARAM_VALUE.C_MASK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_MASK { MODELPARAM_VALUE.C_HAS_MASK PARAM_VALUE.C_HAS_MASK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_MASK}] ${MODELPARAM_VALUE.C_HAS_MASK}
}

proc update_MODELPARAM_VALUE.C_VF_ENABLE_WIDTH { MODELPARAM_VALUE.C_VF_ENABLE_WIDTH PARAM_VALUE.C_VF_ENABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VF_ENABLE_WIDTH}] ${MODELPARAM_VALUE.C_VF_ENABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VF_ENABLE { MODELPARAM_VALUE.C_HAS_VF_ENABLE PARAM_VALUE.C_HAS_VF_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VF_ENABLE}] ${MODELPARAM_VALUE.C_HAS_VF_ENABLE}
}

proc update_MODELPARAM_VALUE.C_VF_MASK_WIDTH { MODELPARAM_VALUE.C_VF_MASK_WIDTH PARAM_VALUE.C_VF_MASK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VF_MASK_WIDTH}] ${MODELPARAM_VALUE.C_VF_MASK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VF_MASK { MODELPARAM_VALUE.C_HAS_VF_MASK PARAM_VALUE.C_HAS_VF_MASK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VF_MASK}] ${MODELPARAM_VALUE.C_HAS_VF_MASK}
}

proc update_MODELPARAM_VALUE.C_DATA_WIDTH { MODELPARAM_VALUE.C_DATA_WIDTH PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_WIDTH}] ${MODELPARAM_VALUE.C_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DATA { MODELPARAM_VALUE.C_HAS_DATA PARAM_VALUE.C_HAS_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DATA}] ${MODELPARAM_VALUE.C_HAS_DATA}
}

proc update_MODELPARAM_VALUE.C_ADDRESS_WIDTH { MODELPARAM_VALUE.C_ADDRESS_WIDTH PARAM_VALUE.C_ADDRESS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADDRESS_WIDTH}] ${MODELPARAM_VALUE.C_ADDRESS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ADDRESS { MODELPARAM_VALUE.C_HAS_ADDRESS PARAM_VALUE.C_HAS_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ADDRESS}] ${MODELPARAM_VALUE.C_HAS_ADDRESS}
}

proc update_MODELPARAM_VALUE.C_INT_VECTOR_WIDTH { MODELPARAM_VALUE.C_INT_VECTOR_WIDTH PARAM_VALUE.C_INT_VECTOR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INT_VECTOR_WIDTH}] ${MODELPARAM_VALUE.C_INT_VECTOR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_INT_VECTOR { MODELPARAM_VALUE.C_HAS_INT_VECTOR PARAM_VALUE.C_HAS_INT_VECTOR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_INT_VECTOR}] ${MODELPARAM_VALUE.C_HAS_INT_VECTOR}
}

proc update_MODELPARAM_VALUE.C_SENT_WIDTH { MODELPARAM_VALUE.C_SENT_WIDTH PARAM_VALUE.C_SENT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SENT_WIDTH}] ${MODELPARAM_VALUE.C_SENT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SENT { MODELPARAM_VALUE.C_HAS_SENT PARAM_VALUE.C_HAS_SENT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SENT}] ${MODELPARAM_VALUE.C_HAS_SENT}
}

proc update_MODELPARAM_VALUE.C_FAIL_WIDTH { MODELPARAM_VALUE.C_FAIL_WIDTH PARAM_VALUE.C_FAIL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FAIL_WIDTH}] ${MODELPARAM_VALUE.C_FAIL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_FAIL { MODELPARAM_VALUE.C_HAS_FAIL PARAM_VALUE.C_HAS_FAIL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_FAIL}] ${MODELPARAM_VALUE.C_HAS_FAIL}
}

proc update_MODELPARAM_VALUE.C_VEC_PENDING_WIDTH { MODELPARAM_VALUE.C_VEC_PENDING_WIDTH PARAM_VALUE.C_VEC_PENDING_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VEC_PENDING_WIDTH}] ${MODELPARAM_VALUE.C_VEC_PENDING_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VEC_PENDING { MODELPARAM_VALUE.C_HAS_VEC_PENDING PARAM_VALUE.C_HAS_VEC_PENDING } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VEC_PENDING}] ${MODELPARAM_VALUE.C_HAS_VEC_PENDING}
}

proc update_MODELPARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH { MODELPARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH PARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH}] ${MODELPARAM_VALUE.C_VEC_PENDING_STATUS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_VEC_PENDING_STATUS { MODELPARAM_VALUE.C_HAS_VEC_PENDING_STATUS PARAM_VALUE.C_HAS_VEC_PENDING_STATUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_VEC_PENDING_STATUS}] ${MODELPARAM_VALUE.C_HAS_VEC_PENDING_STATUS}
}

proc update_MODELPARAM_VALUE.C_FUNCTION_NUMBER_WIDTH { MODELPARAM_VALUE.C_FUNCTION_NUMBER_WIDTH PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH}] ${MODELPARAM_VALUE.C_FUNCTION_NUMBER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_FUNCTION_NUMBER { MODELPARAM_VALUE.C_HAS_FUNCTION_NUMBER PARAM_VALUE.C_HAS_FUNCTION_NUMBER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_FUNCTION_NUMBER}] ${MODELPARAM_VALUE.C_HAS_FUNCTION_NUMBER}
}

proc update_MODELPARAM_VALUE.C_MINT_VECTOR_WIDTH { MODELPARAM_VALUE.C_MINT_VECTOR_WIDTH PARAM_VALUE.C_MINT_VECTOR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MINT_VECTOR_WIDTH}] ${MODELPARAM_VALUE.C_MINT_VECTOR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_MINT_VECTOR { MODELPARAM_VALUE.C_HAS_MINT_VECTOR PARAM_VALUE.C_HAS_MINT_VECTOR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_MINT_VECTOR}] ${MODELPARAM_VALUE.C_HAS_MINT_VECTOR}
}

proc update_MODELPARAM_VALUE.C_ATTR_WIDTH { MODELPARAM_VALUE.C_ATTR_WIDTH PARAM_VALUE.C_ATTR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ATTR_WIDTH}] ${MODELPARAM_VALUE.C_ATTR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ATTR { MODELPARAM_VALUE.C_HAS_ATTR PARAM_VALUE.C_HAS_ATTR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ATTR}] ${MODELPARAM_VALUE.C_HAS_ATTR}
}

proc update_MODELPARAM_VALUE.C_TPH_PRESENT_WIDTH { MODELPARAM_VALUE.C_TPH_PRESENT_WIDTH PARAM_VALUE.C_TPH_PRESENT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TPH_PRESENT_WIDTH}] ${MODELPARAM_VALUE.C_TPH_PRESENT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TPH_PRESENT { MODELPARAM_VALUE.C_HAS_TPH_PRESENT PARAM_VALUE.C_HAS_TPH_PRESENT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TPH_PRESENT}] ${MODELPARAM_VALUE.C_HAS_TPH_PRESENT}
}

proc update_MODELPARAM_VALUE.C_TPH_TYPE_WIDTH { MODELPARAM_VALUE.C_TPH_TYPE_WIDTH PARAM_VALUE.C_TPH_TYPE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TPH_TYPE_WIDTH}] ${MODELPARAM_VALUE.C_TPH_TYPE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TPH_TYPE { MODELPARAM_VALUE.C_HAS_TPH_TYPE PARAM_VALUE.C_HAS_TPH_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TPH_TYPE}] ${MODELPARAM_VALUE.C_HAS_TPH_TYPE}
}

proc update_MODELPARAM_VALUE.C_TPH_ST_TAG_WIDTH { MODELPARAM_VALUE.C_TPH_ST_TAG_WIDTH PARAM_VALUE.C_TPH_ST_TAG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TPH_ST_TAG_WIDTH}] ${MODELPARAM_VALUE.C_TPH_ST_TAG_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TPH_ST_TAG { MODELPARAM_VALUE.C_HAS_TPH_ST_TAG PARAM_VALUE.C_HAS_TPH_ST_TAG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TPH_ST_TAG}] ${MODELPARAM_VALUE.C_HAS_TPH_ST_TAG}
}

