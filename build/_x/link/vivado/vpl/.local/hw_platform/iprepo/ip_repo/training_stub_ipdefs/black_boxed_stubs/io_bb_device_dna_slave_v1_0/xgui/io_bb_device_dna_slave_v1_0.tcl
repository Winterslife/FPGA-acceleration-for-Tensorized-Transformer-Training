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
  ipgui::add_param $IPINST -name "C_CLK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DIN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DOUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CLK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DOUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_READ_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SHIFT_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_CLK_WIDTH { PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to update C_CLK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_WIDTH { PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to validate C_CLK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DIN_WIDTH { PARAM_VALUE.C_DIN_WIDTH } {
	# Procedure called to update C_DIN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DIN_WIDTH { PARAM_VALUE.C_DIN_WIDTH } {
	# Procedure called to validate C_DIN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DOUT_WIDTH { PARAM_VALUE.C_DOUT_WIDTH } {
	# Procedure called to update C_DOUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DOUT_WIDTH { PARAM_VALUE.C_DOUT_WIDTH } {
	# Procedure called to validate C_DOUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_CLK { PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to update C_HAS_CLK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CLK { PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to validate C_HAS_CLK
	return true
}

proc update_PARAM_VALUE.C_HAS_DIN { PARAM_VALUE.C_HAS_DIN } {
	# Procedure called to update C_HAS_DIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DIN { PARAM_VALUE.C_HAS_DIN } {
	# Procedure called to validate C_HAS_DIN
	return true
}

proc update_PARAM_VALUE.C_HAS_DOUT { PARAM_VALUE.C_HAS_DOUT } {
	# Procedure called to update C_HAS_DOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DOUT { PARAM_VALUE.C_HAS_DOUT } {
	# Procedure called to validate C_HAS_DOUT
	return true
}

proc update_PARAM_VALUE.C_HAS_READ { PARAM_VALUE.C_HAS_READ } {
	# Procedure called to update C_HAS_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_READ { PARAM_VALUE.C_HAS_READ } {
	# Procedure called to validate C_HAS_READ
	return true
}

proc update_PARAM_VALUE.C_HAS_SHIFT { PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to update C_HAS_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SHIFT { PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to validate C_HAS_SHIFT
	return true
}

proc update_PARAM_VALUE.C_READ_WIDTH { PARAM_VALUE.C_READ_WIDTH } {
	# Procedure called to update C_READ_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_READ_WIDTH { PARAM_VALUE.C_READ_WIDTH } {
	# Procedure called to validate C_READ_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SHIFT_WIDTH { PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to update C_SHIFT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SHIFT_WIDTH { PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to validate C_SHIFT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_DIN_WIDTH { MODELPARAM_VALUE.C_DIN_WIDTH PARAM_VALUE.C_DIN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DIN_WIDTH}] ${MODELPARAM_VALUE.C_DIN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DIN { MODELPARAM_VALUE.C_HAS_DIN PARAM_VALUE.C_HAS_DIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DIN}] ${MODELPARAM_VALUE.C_HAS_DIN}
}

proc update_MODELPARAM_VALUE.C_DOUT_WIDTH { MODELPARAM_VALUE.C_DOUT_WIDTH PARAM_VALUE.C_DOUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DOUT_WIDTH}] ${MODELPARAM_VALUE.C_DOUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DOUT { MODELPARAM_VALUE.C_HAS_DOUT PARAM_VALUE.C_HAS_DOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DOUT}] ${MODELPARAM_VALUE.C_HAS_DOUT}
}

proc update_MODELPARAM_VALUE.C_READ_WIDTH { MODELPARAM_VALUE.C_READ_WIDTH PARAM_VALUE.C_READ_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_READ_WIDTH}] ${MODELPARAM_VALUE.C_READ_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_READ { MODELPARAM_VALUE.C_HAS_READ PARAM_VALUE.C_HAS_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_READ}] ${MODELPARAM_VALUE.C_HAS_READ}
}

proc update_MODELPARAM_VALUE.C_SHIFT_WIDTH { MODELPARAM_VALUE.C_SHIFT_WIDTH PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SHIFT_WIDTH}] ${MODELPARAM_VALUE.C_SHIFT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SHIFT { MODELPARAM_VALUE.C_HAS_SHIFT PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SHIFT}] ${MODELPARAM_VALUE.C_HAS_SHIFT}
}

proc update_MODELPARAM_VALUE.C_CLK_WIDTH { MODELPARAM_VALUE.C_CLK_WIDTH PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_WIDTH}] ${MODELPARAM_VALUE.C_CLK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CLK { MODELPARAM_VALUE.C_HAS_CLK PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CLK}] ${MODELPARAM_VALUE.C_HAS_CLK}
}

