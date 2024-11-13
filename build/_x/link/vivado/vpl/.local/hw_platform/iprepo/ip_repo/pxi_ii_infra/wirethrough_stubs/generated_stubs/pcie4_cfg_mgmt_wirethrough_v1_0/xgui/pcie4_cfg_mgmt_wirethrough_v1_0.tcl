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
  ipgui::add_param $IPINST -name "C_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BYTE_EN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DEBUG_ACCESS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FUNCTION_NUMBER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BYTE_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DEBUG_ACCESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_FUNCTION_NUMBER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_READ_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_READ_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_READ_WRITE_DONE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WRITE_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WRITE_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_READ_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_READ_EN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_READ_WRITE_DONE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WRITE_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WRITE_EN_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_ADDR_WIDTH { PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to update C_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADDR_WIDTH { PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to validate C_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BYTE_EN_WIDTH { PARAM_VALUE.C_BYTE_EN_WIDTH } {
	# Procedure called to update C_BYTE_EN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BYTE_EN_WIDTH { PARAM_VALUE.C_BYTE_EN_WIDTH } {
	# Procedure called to validate C_BYTE_EN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DEBUG_ACCESS_WIDTH { PARAM_VALUE.C_DEBUG_ACCESS_WIDTH } {
	# Procedure called to update C_DEBUG_ACCESS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DEBUG_ACCESS_WIDTH { PARAM_VALUE.C_DEBUG_ACCESS_WIDTH } {
	# Procedure called to validate C_DEBUG_ACCESS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH { PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH } {
	# Procedure called to update C_FUNCTION_NUMBER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH { PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH } {
	# Procedure called to validate C_FUNCTION_NUMBER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_ADDR { PARAM_VALUE.C_HAS_ADDR } {
	# Procedure called to update C_HAS_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ADDR { PARAM_VALUE.C_HAS_ADDR } {
	# Procedure called to validate C_HAS_ADDR
	return true
}

proc update_PARAM_VALUE.C_HAS_BYTE_EN { PARAM_VALUE.C_HAS_BYTE_EN } {
	# Procedure called to update C_HAS_BYTE_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BYTE_EN { PARAM_VALUE.C_HAS_BYTE_EN } {
	# Procedure called to validate C_HAS_BYTE_EN
	return true
}

proc update_PARAM_VALUE.C_HAS_DEBUG_ACCESS { PARAM_VALUE.C_HAS_DEBUG_ACCESS } {
	# Procedure called to update C_HAS_DEBUG_ACCESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DEBUG_ACCESS { PARAM_VALUE.C_HAS_DEBUG_ACCESS } {
	# Procedure called to validate C_HAS_DEBUG_ACCESS
	return true
}

proc update_PARAM_VALUE.C_HAS_FUNCTION_NUMBER { PARAM_VALUE.C_HAS_FUNCTION_NUMBER } {
	# Procedure called to update C_HAS_FUNCTION_NUMBER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_FUNCTION_NUMBER { PARAM_VALUE.C_HAS_FUNCTION_NUMBER } {
	# Procedure called to validate C_HAS_FUNCTION_NUMBER
	return true
}

proc update_PARAM_VALUE.C_HAS_READ_DATA { PARAM_VALUE.C_HAS_READ_DATA } {
	# Procedure called to update C_HAS_READ_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_READ_DATA { PARAM_VALUE.C_HAS_READ_DATA } {
	# Procedure called to validate C_HAS_READ_DATA
	return true
}

proc update_PARAM_VALUE.C_HAS_READ_EN { PARAM_VALUE.C_HAS_READ_EN } {
	# Procedure called to update C_HAS_READ_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_READ_EN { PARAM_VALUE.C_HAS_READ_EN } {
	# Procedure called to validate C_HAS_READ_EN
	return true
}

proc update_PARAM_VALUE.C_HAS_READ_WRITE_DONE { PARAM_VALUE.C_HAS_READ_WRITE_DONE } {
	# Procedure called to update C_HAS_READ_WRITE_DONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_READ_WRITE_DONE { PARAM_VALUE.C_HAS_READ_WRITE_DONE } {
	# Procedure called to validate C_HAS_READ_WRITE_DONE
	return true
}

proc update_PARAM_VALUE.C_HAS_WRITE_DATA { PARAM_VALUE.C_HAS_WRITE_DATA } {
	# Procedure called to update C_HAS_WRITE_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WRITE_DATA { PARAM_VALUE.C_HAS_WRITE_DATA } {
	# Procedure called to validate C_HAS_WRITE_DATA
	return true
}

proc update_PARAM_VALUE.C_HAS_WRITE_EN { PARAM_VALUE.C_HAS_WRITE_EN } {
	# Procedure called to update C_HAS_WRITE_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WRITE_EN { PARAM_VALUE.C_HAS_WRITE_EN } {
	# Procedure called to validate C_HAS_WRITE_EN
	return true
}

proc update_PARAM_VALUE.C_READ_DATA_WIDTH { PARAM_VALUE.C_READ_DATA_WIDTH } {
	# Procedure called to update C_READ_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_READ_DATA_WIDTH { PARAM_VALUE.C_READ_DATA_WIDTH } {
	# Procedure called to validate C_READ_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_READ_EN_WIDTH { PARAM_VALUE.C_READ_EN_WIDTH } {
	# Procedure called to update C_READ_EN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_READ_EN_WIDTH { PARAM_VALUE.C_READ_EN_WIDTH } {
	# Procedure called to validate C_READ_EN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_READ_WRITE_DONE_WIDTH { PARAM_VALUE.C_READ_WRITE_DONE_WIDTH } {
	# Procedure called to update C_READ_WRITE_DONE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_READ_WRITE_DONE_WIDTH { PARAM_VALUE.C_READ_WRITE_DONE_WIDTH } {
	# Procedure called to validate C_READ_WRITE_DONE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WRITE_DATA_WIDTH { PARAM_VALUE.C_WRITE_DATA_WIDTH } {
	# Procedure called to update C_WRITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WRITE_DATA_WIDTH { PARAM_VALUE.C_WRITE_DATA_WIDTH } {
	# Procedure called to validate C_WRITE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WRITE_EN_WIDTH { PARAM_VALUE.C_WRITE_EN_WIDTH } {
	# Procedure called to update C_WRITE_EN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WRITE_EN_WIDTH { PARAM_VALUE.C_WRITE_EN_WIDTH } {
	# Procedure called to validate C_WRITE_EN_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_ADDR_WIDTH { MODELPARAM_VALUE.C_ADDR_WIDTH PARAM_VALUE.C_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ADDR { MODELPARAM_VALUE.C_HAS_ADDR PARAM_VALUE.C_HAS_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ADDR}] ${MODELPARAM_VALUE.C_HAS_ADDR}
}

proc update_MODELPARAM_VALUE.C_WRITE_EN_WIDTH { MODELPARAM_VALUE.C_WRITE_EN_WIDTH PARAM_VALUE.C_WRITE_EN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WRITE_EN_WIDTH}] ${MODELPARAM_VALUE.C_WRITE_EN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WRITE_EN { MODELPARAM_VALUE.C_HAS_WRITE_EN PARAM_VALUE.C_HAS_WRITE_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WRITE_EN}] ${MODELPARAM_VALUE.C_HAS_WRITE_EN}
}

proc update_MODELPARAM_VALUE.C_WRITE_DATA_WIDTH { MODELPARAM_VALUE.C_WRITE_DATA_WIDTH PARAM_VALUE.C_WRITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WRITE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_WRITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WRITE_DATA { MODELPARAM_VALUE.C_HAS_WRITE_DATA PARAM_VALUE.C_HAS_WRITE_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WRITE_DATA}] ${MODELPARAM_VALUE.C_HAS_WRITE_DATA}
}

proc update_MODELPARAM_VALUE.C_BYTE_EN_WIDTH { MODELPARAM_VALUE.C_BYTE_EN_WIDTH PARAM_VALUE.C_BYTE_EN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BYTE_EN_WIDTH}] ${MODELPARAM_VALUE.C_BYTE_EN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BYTE_EN { MODELPARAM_VALUE.C_HAS_BYTE_EN PARAM_VALUE.C_HAS_BYTE_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BYTE_EN}] ${MODELPARAM_VALUE.C_HAS_BYTE_EN}
}

proc update_MODELPARAM_VALUE.C_READ_EN_WIDTH { MODELPARAM_VALUE.C_READ_EN_WIDTH PARAM_VALUE.C_READ_EN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_READ_EN_WIDTH}] ${MODELPARAM_VALUE.C_READ_EN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_READ_EN { MODELPARAM_VALUE.C_HAS_READ_EN PARAM_VALUE.C_HAS_READ_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_READ_EN}] ${MODELPARAM_VALUE.C_HAS_READ_EN}
}

proc update_MODELPARAM_VALUE.C_READ_DATA_WIDTH { MODELPARAM_VALUE.C_READ_DATA_WIDTH PARAM_VALUE.C_READ_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_READ_DATA_WIDTH}] ${MODELPARAM_VALUE.C_READ_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_READ_DATA { MODELPARAM_VALUE.C_HAS_READ_DATA PARAM_VALUE.C_HAS_READ_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_READ_DATA}] ${MODELPARAM_VALUE.C_HAS_READ_DATA}
}

proc update_MODELPARAM_VALUE.C_READ_WRITE_DONE_WIDTH { MODELPARAM_VALUE.C_READ_WRITE_DONE_WIDTH PARAM_VALUE.C_READ_WRITE_DONE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_READ_WRITE_DONE_WIDTH}] ${MODELPARAM_VALUE.C_READ_WRITE_DONE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_READ_WRITE_DONE { MODELPARAM_VALUE.C_HAS_READ_WRITE_DONE PARAM_VALUE.C_HAS_READ_WRITE_DONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_READ_WRITE_DONE}] ${MODELPARAM_VALUE.C_HAS_READ_WRITE_DONE}
}

proc update_MODELPARAM_VALUE.C_FUNCTION_NUMBER_WIDTH { MODELPARAM_VALUE.C_FUNCTION_NUMBER_WIDTH PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FUNCTION_NUMBER_WIDTH}] ${MODELPARAM_VALUE.C_FUNCTION_NUMBER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_FUNCTION_NUMBER { MODELPARAM_VALUE.C_HAS_FUNCTION_NUMBER PARAM_VALUE.C_HAS_FUNCTION_NUMBER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_FUNCTION_NUMBER}] ${MODELPARAM_VALUE.C_HAS_FUNCTION_NUMBER}
}

proc update_MODELPARAM_VALUE.C_DEBUG_ACCESS_WIDTH { MODELPARAM_VALUE.C_DEBUG_ACCESS_WIDTH PARAM_VALUE.C_DEBUG_ACCESS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DEBUG_ACCESS_WIDTH}] ${MODELPARAM_VALUE.C_DEBUG_ACCESS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DEBUG_ACCESS { MODELPARAM_VALUE.C_HAS_DEBUG_ACCESS PARAM_VALUE.C_HAS_DEBUG_ACCESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DEBUG_ACCESS}] ${MODELPARAM_VALUE.C_HAS_DEBUG_ACCESS}
}

