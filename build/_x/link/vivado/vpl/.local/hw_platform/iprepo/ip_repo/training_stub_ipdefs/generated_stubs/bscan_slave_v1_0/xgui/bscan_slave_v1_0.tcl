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
  ipgui::add_param $IPINST -name "C_BSCANID_EN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BSCANID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CAPTURE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DRCK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BSCANID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BSCANID_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CAPTURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DRCK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RESET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RUNTEST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SEL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TCK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TDI" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TDO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TMS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_UPDATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RESET_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RUNTEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SEL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SHIFT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TCK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TDI_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TDO_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TMS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_UPDATE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_BSCANID_EN_WIDTH { PARAM_VALUE.C_BSCANID_EN_WIDTH } {
	# Procedure called to update C_BSCANID_EN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BSCANID_EN_WIDTH { PARAM_VALUE.C_BSCANID_EN_WIDTH } {
	# Procedure called to validate C_BSCANID_EN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BSCANID_WIDTH { PARAM_VALUE.C_BSCANID_WIDTH } {
	# Procedure called to update C_BSCANID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BSCANID_WIDTH { PARAM_VALUE.C_BSCANID_WIDTH } {
	# Procedure called to validate C_BSCANID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CAPTURE_WIDTH { PARAM_VALUE.C_CAPTURE_WIDTH } {
	# Procedure called to update C_CAPTURE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CAPTURE_WIDTH { PARAM_VALUE.C_CAPTURE_WIDTH } {
	# Procedure called to validate C_CAPTURE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DRCK_WIDTH { PARAM_VALUE.C_DRCK_WIDTH } {
	# Procedure called to update C_DRCK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DRCK_WIDTH { PARAM_VALUE.C_DRCK_WIDTH } {
	# Procedure called to validate C_DRCK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_BSCANID { PARAM_VALUE.C_HAS_BSCANID } {
	# Procedure called to update C_HAS_BSCANID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BSCANID { PARAM_VALUE.C_HAS_BSCANID } {
	# Procedure called to validate C_HAS_BSCANID
	return true
}

proc update_PARAM_VALUE.C_HAS_BSCANID_EN { PARAM_VALUE.C_HAS_BSCANID_EN } {
	# Procedure called to update C_HAS_BSCANID_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BSCANID_EN { PARAM_VALUE.C_HAS_BSCANID_EN } {
	# Procedure called to validate C_HAS_BSCANID_EN
	return true
}

proc update_PARAM_VALUE.C_HAS_CAPTURE { PARAM_VALUE.C_HAS_CAPTURE } {
	# Procedure called to update C_HAS_CAPTURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CAPTURE { PARAM_VALUE.C_HAS_CAPTURE } {
	# Procedure called to validate C_HAS_CAPTURE
	return true
}

proc update_PARAM_VALUE.C_HAS_DRCK { PARAM_VALUE.C_HAS_DRCK } {
	# Procedure called to update C_HAS_DRCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DRCK { PARAM_VALUE.C_HAS_DRCK } {
	# Procedure called to validate C_HAS_DRCK
	return true
}

proc update_PARAM_VALUE.C_HAS_RESET { PARAM_VALUE.C_HAS_RESET } {
	# Procedure called to update C_HAS_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RESET { PARAM_VALUE.C_HAS_RESET } {
	# Procedure called to validate C_HAS_RESET
	return true
}

proc update_PARAM_VALUE.C_HAS_RUNTEST { PARAM_VALUE.C_HAS_RUNTEST } {
	# Procedure called to update C_HAS_RUNTEST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RUNTEST { PARAM_VALUE.C_HAS_RUNTEST } {
	# Procedure called to validate C_HAS_RUNTEST
	return true
}

proc update_PARAM_VALUE.C_HAS_SEL { PARAM_VALUE.C_HAS_SEL } {
	# Procedure called to update C_HAS_SEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SEL { PARAM_VALUE.C_HAS_SEL } {
	# Procedure called to validate C_HAS_SEL
	return true
}

proc update_PARAM_VALUE.C_HAS_SHIFT { PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to update C_HAS_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SHIFT { PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to validate C_HAS_SHIFT
	return true
}

proc update_PARAM_VALUE.C_HAS_TCK { PARAM_VALUE.C_HAS_TCK } {
	# Procedure called to update C_HAS_TCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TCK { PARAM_VALUE.C_HAS_TCK } {
	# Procedure called to validate C_HAS_TCK
	return true
}

proc update_PARAM_VALUE.C_HAS_TDI { PARAM_VALUE.C_HAS_TDI } {
	# Procedure called to update C_HAS_TDI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TDI { PARAM_VALUE.C_HAS_TDI } {
	# Procedure called to validate C_HAS_TDI
	return true
}

proc update_PARAM_VALUE.C_HAS_TDO { PARAM_VALUE.C_HAS_TDO } {
	# Procedure called to update C_HAS_TDO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TDO { PARAM_VALUE.C_HAS_TDO } {
	# Procedure called to validate C_HAS_TDO
	return true
}

proc update_PARAM_VALUE.C_HAS_TMS { PARAM_VALUE.C_HAS_TMS } {
	# Procedure called to update C_HAS_TMS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TMS { PARAM_VALUE.C_HAS_TMS } {
	# Procedure called to validate C_HAS_TMS
	return true
}

proc update_PARAM_VALUE.C_HAS_UPDATE { PARAM_VALUE.C_HAS_UPDATE } {
	# Procedure called to update C_HAS_UPDATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_UPDATE { PARAM_VALUE.C_HAS_UPDATE } {
	# Procedure called to validate C_HAS_UPDATE
	return true
}

proc update_PARAM_VALUE.C_RESET_WIDTH { PARAM_VALUE.C_RESET_WIDTH } {
	# Procedure called to update C_RESET_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RESET_WIDTH { PARAM_VALUE.C_RESET_WIDTH } {
	# Procedure called to validate C_RESET_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RUNTEST_WIDTH { PARAM_VALUE.C_RUNTEST_WIDTH } {
	# Procedure called to update C_RUNTEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RUNTEST_WIDTH { PARAM_VALUE.C_RUNTEST_WIDTH } {
	# Procedure called to validate C_RUNTEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SEL_WIDTH { PARAM_VALUE.C_SEL_WIDTH } {
	# Procedure called to update C_SEL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SEL_WIDTH { PARAM_VALUE.C_SEL_WIDTH } {
	# Procedure called to validate C_SEL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SHIFT_WIDTH { PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to update C_SHIFT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SHIFT_WIDTH { PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to validate C_SHIFT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TCK_WIDTH { PARAM_VALUE.C_TCK_WIDTH } {
	# Procedure called to update C_TCK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TCK_WIDTH { PARAM_VALUE.C_TCK_WIDTH } {
	# Procedure called to validate C_TCK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TDI_WIDTH { PARAM_VALUE.C_TDI_WIDTH } {
	# Procedure called to update C_TDI_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TDI_WIDTH { PARAM_VALUE.C_TDI_WIDTH } {
	# Procedure called to validate C_TDI_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TDO_WIDTH { PARAM_VALUE.C_TDO_WIDTH } {
	# Procedure called to update C_TDO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TDO_WIDTH { PARAM_VALUE.C_TDO_WIDTH } {
	# Procedure called to validate C_TDO_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TMS_WIDTH { PARAM_VALUE.C_TMS_WIDTH } {
	# Procedure called to update C_TMS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TMS_WIDTH { PARAM_VALUE.C_TMS_WIDTH } {
	# Procedure called to validate C_TMS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UPDATE_WIDTH { PARAM_VALUE.C_UPDATE_WIDTH } {
	# Procedure called to update C_UPDATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UPDATE_WIDTH { PARAM_VALUE.C_UPDATE_WIDTH } {
	# Procedure called to validate C_UPDATE_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_DRCK_WIDTH { MODELPARAM_VALUE.C_DRCK_WIDTH PARAM_VALUE.C_DRCK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DRCK_WIDTH}] ${MODELPARAM_VALUE.C_DRCK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DRCK { MODELPARAM_VALUE.C_HAS_DRCK PARAM_VALUE.C_HAS_DRCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DRCK}] ${MODELPARAM_VALUE.C_HAS_DRCK}
}

proc update_MODELPARAM_VALUE.C_RESET_WIDTH { MODELPARAM_VALUE.C_RESET_WIDTH PARAM_VALUE.C_RESET_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RESET_WIDTH}] ${MODELPARAM_VALUE.C_RESET_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RESET { MODELPARAM_VALUE.C_HAS_RESET PARAM_VALUE.C_HAS_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RESET}] ${MODELPARAM_VALUE.C_HAS_RESET}
}

proc update_MODELPARAM_VALUE.C_SEL_WIDTH { MODELPARAM_VALUE.C_SEL_WIDTH PARAM_VALUE.C_SEL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SEL_WIDTH}] ${MODELPARAM_VALUE.C_SEL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SEL { MODELPARAM_VALUE.C_HAS_SEL PARAM_VALUE.C_HAS_SEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SEL}] ${MODELPARAM_VALUE.C_HAS_SEL}
}

proc update_MODELPARAM_VALUE.C_CAPTURE_WIDTH { MODELPARAM_VALUE.C_CAPTURE_WIDTH PARAM_VALUE.C_CAPTURE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CAPTURE_WIDTH}] ${MODELPARAM_VALUE.C_CAPTURE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CAPTURE { MODELPARAM_VALUE.C_HAS_CAPTURE PARAM_VALUE.C_HAS_CAPTURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CAPTURE}] ${MODELPARAM_VALUE.C_HAS_CAPTURE}
}

proc update_MODELPARAM_VALUE.C_SHIFT_WIDTH { MODELPARAM_VALUE.C_SHIFT_WIDTH PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SHIFT_WIDTH}] ${MODELPARAM_VALUE.C_SHIFT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SHIFT { MODELPARAM_VALUE.C_HAS_SHIFT PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SHIFT}] ${MODELPARAM_VALUE.C_HAS_SHIFT}
}

proc update_MODELPARAM_VALUE.C_UPDATE_WIDTH { MODELPARAM_VALUE.C_UPDATE_WIDTH PARAM_VALUE.C_UPDATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UPDATE_WIDTH}] ${MODELPARAM_VALUE.C_UPDATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_UPDATE { MODELPARAM_VALUE.C_HAS_UPDATE PARAM_VALUE.C_HAS_UPDATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_UPDATE}] ${MODELPARAM_VALUE.C_HAS_UPDATE}
}

proc update_MODELPARAM_VALUE.C_TDI_WIDTH { MODELPARAM_VALUE.C_TDI_WIDTH PARAM_VALUE.C_TDI_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TDI_WIDTH}] ${MODELPARAM_VALUE.C_TDI_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TDI { MODELPARAM_VALUE.C_HAS_TDI PARAM_VALUE.C_HAS_TDI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TDI}] ${MODELPARAM_VALUE.C_HAS_TDI}
}

proc update_MODELPARAM_VALUE.C_RUNTEST_WIDTH { MODELPARAM_VALUE.C_RUNTEST_WIDTH PARAM_VALUE.C_RUNTEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RUNTEST_WIDTH}] ${MODELPARAM_VALUE.C_RUNTEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RUNTEST { MODELPARAM_VALUE.C_HAS_RUNTEST PARAM_VALUE.C_HAS_RUNTEST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RUNTEST}] ${MODELPARAM_VALUE.C_HAS_RUNTEST}
}

proc update_MODELPARAM_VALUE.C_TCK_WIDTH { MODELPARAM_VALUE.C_TCK_WIDTH PARAM_VALUE.C_TCK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TCK_WIDTH}] ${MODELPARAM_VALUE.C_TCK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TCK { MODELPARAM_VALUE.C_HAS_TCK PARAM_VALUE.C_HAS_TCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TCK}] ${MODELPARAM_VALUE.C_HAS_TCK}
}

proc update_MODELPARAM_VALUE.C_TMS_WIDTH { MODELPARAM_VALUE.C_TMS_WIDTH PARAM_VALUE.C_TMS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TMS_WIDTH}] ${MODELPARAM_VALUE.C_TMS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TMS { MODELPARAM_VALUE.C_HAS_TMS PARAM_VALUE.C_HAS_TMS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TMS}] ${MODELPARAM_VALUE.C_HAS_TMS}
}

proc update_MODELPARAM_VALUE.C_BSCANID_EN_WIDTH { MODELPARAM_VALUE.C_BSCANID_EN_WIDTH PARAM_VALUE.C_BSCANID_EN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BSCANID_EN_WIDTH}] ${MODELPARAM_VALUE.C_BSCANID_EN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BSCANID_EN { MODELPARAM_VALUE.C_HAS_BSCANID_EN PARAM_VALUE.C_HAS_BSCANID_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BSCANID_EN}] ${MODELPARAM_VALUE.C_HAS_BSCANID_EN}
}

proc update_MODELPARAM_VALUE.C_BSCANID_WIDTH { MODELPARAM_VALUE.C_BSCANID_WIDTH PARAM_VALUE.C_BSCANID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BSCANID_WIDTH}] ${MODELPARAM_VALUE.C_BSCANID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BSCANID { MODELPARAM_VALUE.C_HAS_BSCANID PARAM_VALUE.C_HAS_BSCANID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BSCANID}] ${MODELPARAM_VALUE.C_HAS_BSCANID}
}

proc update_MODELPARAM_VALUE.C_TDO_WIDTH { MODELPARAM_VALUE.C_TDO_WIDTH PARAM_VALUE.C_TDO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TDO_WIDTH}] ${MODELPARAM_VALUE.C_TDO_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TDO { MODELPARAM_VALUE.C_HAS_TDO PARAM_VALUE.C_HAS_TDO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TDO}] ${MODELPARAM_VALUE.C_HAS_TDO}
}

