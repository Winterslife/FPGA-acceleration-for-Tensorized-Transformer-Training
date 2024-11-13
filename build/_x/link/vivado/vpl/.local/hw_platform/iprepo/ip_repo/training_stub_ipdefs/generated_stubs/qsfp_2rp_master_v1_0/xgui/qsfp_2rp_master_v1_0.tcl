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
  ipgui::add_param $IPINST -name "C_HAS_INT_L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_LPMODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_MODPRS_L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_MODSEL_L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RESET_L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_INT_L_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LPMODE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MODPRS_L_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MODSEL_L_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RESET_L_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_HAS_INT_L { PARAM_VALUE.C_HAS_INT_L } {
	# Procedure called to update C_HAS_INT_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_INT_L { PARAM_VALUE.C_HAS_INT_L } {
	# Procedure called to validate C_HAS_INT_L
	return true
}

proc update_PARAM_VALUE.C_HAS_LPMODE { PARAM_VALUE.C_HAS_LPMODE } {
	# Procedure called to update C_HAS_LPMODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_LPMODE { PARAM_VALUE.C_HAS_LPMODE } {
	# Procedure called to validate C_HAS_LPMODE
	return true
}

proc update_PARAM_VALUE.C_HAS_MODPRS_L { PARAM_VALUE.C_HAS_MODPRS_L } {
	# Procedure called to update C_HAS_MODPRS_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_MODPRS_L { PARAM_VALUE.C_HAS_MODPRS_L } {
	# Procedure called to validate C_HAS_MODPRS_L
	return true
}

proc update_PARAM_VALUE.C_HAS_MODSEL_L { PARAM_VALUE.C_HAS_MODSEL_L } {
	# Procedure called to update C_HAS_MODSEL_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_MODSEL_L { PARAM_VALUE.C_HAS_MODSEL_L } {
	# Procedure called to validate C_HAS_MODSEL_L
	return true
}

proc update_PARAM_VALUE.C_HAS_RESET_L { PARAM_VALUE.C_HAS_RESET_L } {
	# Procedure called to update C_HAS_RESET_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RESET_L { PARAM_VALUE.C_HAS_RESET_L } {
	# Procedure called to validate C_HAS_RESET_L
	return true
}

proc update_PARAM_VALUE.C_INT_L_WIDTH { PARAM_VALUE.C_INT_L_WIDTH } {
	# Procedure called to update C_INT_L_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INT_L_WIDTH { PARAM_VALUE.C_INT_L_WIDTH } {
	# Procedure called to validate C_INT_L_WIDTH
	return true
}

proc update_PARAM_VALUE.C_LPMODE_WIDTH { PARAM_VALUE.C_LPMODE_WIDTH } {
	# Procedure called to update C_LPMODE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LPMODE_WIDTH { PARAM_VALUE.C_LPMODE_WIDTH } {
	# Procedure called to validate C_LPMODE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MODPRS_L_WIDTH { PARAM_VALUE.C_MODPRS_L_WIDTH } {
	# Procedure called to update C_MODPRS_L_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MODPRS_L_WIDTH { PARAM_VALUE.C_MODPRS_L_WIDTH } {
	# Procedure called to validate C_MODPRS_L_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MODSEL_L_WIDTH { PARAM_VALUE.C_MODSEL_L_WIDTH } {
	# Procedure called to update C_MODSEL_L_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MODSEL_L_WIDTH { PARAM_VALUE.C_MODSEL_L_WIDTH } {
	# Procedure called to validate C_MODSEL_L_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RESET_L_WIDTH { PARAM_VALUE.C_RESET_L_WIDTH } {
	# Procedure called to update C_RESET_L_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RESET_L_WIDTH { PARAM_VALUE.C_RESET_L_WIDTH } {
	# Procedure called to validate C_RESET_L_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_LPMODE_WIDTH { MODELPARAM_VALUE.C_LPMODE_WIDTH PARAM_VALUE.C_LPMODE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LPMODE_WIDTH}] ${MODELPARAM_VALUE.C_LPMODE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_LPMODE { MODELPARAM_VALUE.C_HAS_LPMODE PARAM_VALUE.C_HAS_LPMODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_LPMODE}] ${MODELPARAM_VALUE.C_HAS_LPMODE}
}

proc update_MODELPARAM_VALUE.C_RESET_L_WIDTH { MODELPARAM_VALUE.C_RESET_L_WIDTH PARAM_VALUE.C_RESET_L_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RESET_L_WIDTH}] ${MODELPARAM_VALUE.C_RESET_L_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RESET_L { MODELPARAM_VALUE.C_HAS_RESET_L PARAM_VALUE.C_HAS_RESET_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RESET_L}] ${MODELPARAM_VALUE.C_HAS_RESET_L}
}

proc update_MODELPARAM_VALUE.C_MODPRS_L_WIDTH { MODELPARAM_VALUE.C_MODPRS_L_WIDTH PARAM_VALUE.C_MODPRS_L_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MODPRS_L_WIDTH}] ${MODELPARAM_VALUE.C_MODPRS_L_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_MODPRS_L { MODELPARAM_VALUE.C_HAS_MODPRS_L PARAM_VALUE.C_HAS_MODPRS_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_MODPRS_L}] ${MODELPARAM_VALUE.C_HAS_MODPRS_L}
}

proc update_MODELPARAM_VALUE.C_INT_L_WIDTH { MODELPARAM_VALUE.C_INT_L_WIDTH PARAM_VALUE.C_INT_L_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INT_L_WIDTH}] ${MODELPARAM_VALUE.C_INT_L_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_INT_L { MODELPARAM_VALUE.C_HAS_INT_L PARAM_VALUE.C_HAS_INT_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_INT_L}] ${MODELPARAM_VALUE.C_HAS_INT_L}
}

proc update_MODELPARAM_VALUE.C_MODSEL_L_WIDTH { MODELPARAM_VALUE.C_MODSEL_L_WIDTH PARAM_VALUE.C_MODSEL_L_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MODSEL_L_WIDTH}] ${MODELPARAM_VALUE.C_MODSEL_L_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_MODSEL_L { MODELPARAM_VALUE.C_HAS_MODSEL_L PARAM_VALUE.C_HAS_MODSEL_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_MODSEL_L}] ${MODELPARAM_VALUE.C_HAS_MODSEL_L}
}

