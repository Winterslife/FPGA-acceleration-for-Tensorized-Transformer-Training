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
  ipgui::add_param $IPINST -name "C_HAS_IO0_I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO0_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO0_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO1_I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO1_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO1_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO2_I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO2_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO2_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO3_I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO3_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_IO3_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SCK_I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SCK_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SCK_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SPISEL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SS1_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SS2_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SS_I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SS_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SS_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO0_I_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO0_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO0_T_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO1_I_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO1_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO1_T_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO2_I_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO2_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO2_T_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO3_I_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO3_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_IO3_T_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SCK_I_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SCK_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SCK_T_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SPISEL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SS1_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SS2_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SS_I_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SS_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SS_T_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_HAS_IO0_I { PARAM_VALUE.C_HAS_IO0_I } {
	# Procedure called to update C_HAS_IO0_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO0_I { PARAM_VALUE.C_HAS_IO0_I } {
	# Procedure called to validate C_HAS_IO0_I
	return true
}

proc update_PARAM_VALUE.C_HAS_IO0_O { PARAM_VALUE.C_HAS_IO0_O } {
	# Procedure called to update C_HAS_IO0_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO0_O { PARAM_VALUE.C_HAS_IO0_O } {
	# Procedure called to validate C_HAS_IO0_O
	return true
}

proc update_PARAM_VALUE.C_HAS_IO0_T { PARAM_VALUE.C_HAS_IO0_T } {
	# Procedure called to update C_HAS_IO0_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO0_T { PARAM_VALUE.C_HAS_IO0_T } {
	# Procedure called to validate C_HAS_IO0_T
	return true
}

proc update_PARAM_VALUE.C_HAS_IO1_I { PARAM_VALUE.C_HAS_IO1_I } {
	# Procedure called to update C_HAS_IO1_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO1_I { PARAM_VALUE.C_HAS_IO1_I } {
	# Procedure called to validate C_HAS_IO1_I
	return true
}

proc update_PARAM_VALUE.C_HAS_IO1_O { PARAM_VALUE.C_HAS_IO1_O } {
	# Procedure called to update C_HAS_IO1_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO1_O { PARAM_VALUE.C_HAS_IO1_O } {
	# Procedure called to validate C_HAS_IO1_O
	return true
}

proc update_PARAM_VALUE.C_HAS_IO1_T { PARAM_VALUE.C_HAS_IO1_T } {
	# Procedure called to update C_HAS_IO1_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO1_T { PARAM_VALUE.C_HAS_IO1_T } {
	# Procedure called to validate C_HAS_IO1_T
	return true
}

proc update_PARAM_VALUE.C_HAS_IO2_I { PARAM_VALUE.C_HAS_IO2_I } {
	# Procedure called to update C_HAS_IO2_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO2_I { PARAM_VALUE.C_HAS_IO2_I } {
	# Procedure called to validate C_HAS_IO2_I
	return true
}

proc update_PARAM_VALUE.C_HAS_IO2_O { PARAM_VALUE.C_HAS_IO2_O } {
	# Procedure called to update C_HAS_IO2_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO2_O { PARAM_VALUE.C_HAS_IO2_O } {
	# Procedure called to validate C_HAS_IO2_O
	return true
}

proc update_PARAM_VALUE.C_HAS_IO2_T { PARAM_VALUE.C_HAS_IO2_T } {
	# Procedure called to update C_HAS_IO2_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO2_T { PARAM_VALUE.C_HAS_IO2_T } {
	# Procedure called to validate C_HAS_IO2_T
	return true
}

proc update_PARAM_VALUE.C_HAS_IO3_I { PARAM_VALUE.C_HAS_IO3_I } {
	# Procedure called to update C_HAS_IO3_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO3_I { PARAM_VALUE.C_HAS_IO3_I } {
	# Procedure called to validate C_HAS_IO3_I
	return true
}

proc update_PARAM_VALUE.C_HAS_IO3_O { PARAM_VALUE.C_HAS_IO3_O } {
	# Procedure called to update C_HAS_IO3_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO3_O { PARAM_VALUE.C_HAS_IO3_O } {
	# Procedure called to validate C_HAS_IO3_O
	return true
}

proc update_PARAM_VALUE.C_HAS_IO3_T { PARAM_VALUE.C_HAS_IO3_T } {
	# Procedure called to update C_HAS_IO3_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_IO3_T { PARAM_VALUE.C_HAS_IO3_T } {
	# Procedure called to validate C_HAS_IO3_T
	return true
}

proc update_PARAM_VALUE.C_HAS_SCK_I { PARAM_VALUE.C_HAS_SCK_I } {
	# Procedure called to update C_HAS_SCK_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SCK_I { PARAM_VALUE.C_HAS_SCK_I } {
	# Procedure called to validate C_HAS_SCK_I
	return true
}

proc update_PARAM_VALUE.C_HAS_SCK_O { PARAM_VALUE.C_HAS_SCK_O } {
	# Procedure called to update C_HAS_SCK_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SCK_O { PARAM_VALUE.C_HAS_SCK_O } {
	# Procedure called to validate C_HAS_SCK_O
	return true
}

proc update_PARAM_VALUE.C_HAS_SCK_T { PARAM_VALUE.C_HAS_SCK_T } {
	# Procedure called to update C_HAS_SCK_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SCK_T { PARAM_VALUE.C_HAS_SCK_T } {
	# Procedure called to validate C_HAS_SCK_T
	return true
}

proc update_PARAM_VALUE.C_HAS_SPISEL { PARAM_VALUE.C_HAS_SPISEL } {
	# Procedure called to update C_HAS_SPISEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SPISEL { PARAM_VALUE.C_HAS_SPISEL } {
	# Procedure called to validate C_HAS_SPISEL
	return true
}

proc update_PARAM_VALUE.C_HAS_SS1_O { PARAM_VALUE.C_HAS_SS1_O } {
	# Procedure called to update C_HAS_SS1_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SS1_O { PARAM_VALUE.C_HAS_SS1_O } {
	# Procedure called to validate C_HAS_SS1_O
	return true
}

proc update_PARAM_VALUE.C_HAS_SS2_O { PARAM_VALUE.C_HAS_SS2_O } {
	# Procedure called to update C_HAS_SS2_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SS2_O { PARAM_VALUE.C_HAS_SS2_O } {
	# Procedure called to validate C_HAS_SS2_O
	return true
}

proc update_PARAM_VALUE.C_HAS_SS_I { PARAM_VALUE.C_HAS_SS_I } {
	# Procedure called to update C_HAS_SS_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SS_I { PARAM_VALUE.C_HAS_SS_I } {
	# Procedure called to validate C_HAS_SS_I
	return true
}

proc update_PARAM_VALUE.C_HAS_SS_O { PARAM_VALUE.C_HAS_SS_O } {
	# Procedure called to update C_HAS_SS_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SS_O { PARAM_VALUE.C_HAS_SS_O } {
	# Procedure called to validate C_HAS_SS_O
	return true
}

proc update_PARAM_VALUE.C_HAS_SS_T { PARAM_VALUE.C_HAS_SS_T } {
	# Procedure called to update C_HAS_SS_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SS_T { PARAM_VALUE.C_HAS_SS_T } {
	# Procedure called to validate C_HAS_SS_T
	return true
}

proc update_PARAM_VALUE.C_IO0_I_WIDTH { PARAM_VALUE.C_IO0_I_WIDTH } {
	# Procedure called to update C_IO0_I_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO0_I_WIDTH { PARAM_VALUE.C_IO0_I_WIDTH } {
	# Procedure called to validate C_IO0_I_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO0_O_WIDTH { PARAM_VALUE.C_IO0_O_WIDTH } {
	# Procedure called to update C_IO0_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO0_O_WIDTH { PARAM_VALUE.C_IO0_O_WIDTH } {
	# Procedure called to validate C_IO0_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO0_T_WIDTH { PARAM_VALUE.C_IO0_T_WIDTH } {
	# Procedure called to update C_IO0_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO0_T_WIDTH { PARAM_VALUE.C_IO0_T_WIDTH } {
	# Procedure called to validate C_IO0_T_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO1_I_WIDTH { PARAM_VALUE.C_IO1_I_WIDTH } {
	# Procedure called to update C_IO1_I_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO1_I_WIDTH { PARAM_VALUE.C_IO1_I_WIDTH } {
	# Procedure called to validate C_IO1_I_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO1_O_WIDTH { PARAM_VALUE.C_IO1_O_WIDTH } {
	# Procedure called to update C_IO1_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO1_O_WIDTH { PARAM_VALUE.C_IO1_O_WIDTH } {
	# Procedure called to validate C_IO1_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO1_T_WIDTH { PARAM_VALUE.C_IO1_T_WIDTH } {
	# Procedure called to update C_IO1_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO1_T_WIDTH { PARAM_VALUE.C_IO1_T_WIDTH } {
	# Procedure called to validate C_IO1_T_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO2_I_WIDTH { PARAM_VALUE.C_IO2_I_WIDTH } {
	# Procedure called to update C_IO2_I_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO2_I_WIDTH { PARAM_VALUE.C_IO2_I_WIDTH } {
	# Procedure called to validate C_IO2_I_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO2_O_WIDTH { PARAM_VALUE.C_IO2_O_WIDTH } {
	# Procedure called to update C_IO2_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO2_O_WIDTH { PARAM_VALUE.C_IO2_O_WIDTH } {
	# Procedure called to validate C_IO2_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO2_T_WIDTH { PARAM_VALUE.C_IO2_T_WIDTH } {
	# Procedure called to update C_IO2_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO2_T_WIDTH { PARAM_VALUE.C_IO2_T_WIDTH } {
	# Procedure called to validate C_IO2_T_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO3_I_WIDTH { PARAM_VALUE.C_IO3_I_WIDTH } {
	# Procedure called to update C_IO3_I_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO3_I_WIDTH { PARAM_VALUE.C_IO3_I_WIDTH } {
	# Procedure called to validate C_IO3_I_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO3_O_WIDTH { PARAM_VALUE.C_IO3_O_WIDTH } {
	# Procedure called to update C_IO3_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO3_O_WIDTH { PARAM_VALUE.C_IO3_O_WIDTH } {
	# Procedure called to validate C_IO3_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_IO3_T_WIDTH { PARAM_VALUE.C_IO3_T_WIDTH } {
	# Procedure called to update C_IO3_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IO3_T_WIDTH { PARAM_VALUE.C_IO3_T_WIDTH } {
	# Procedure called to validate C_IO3_T_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SCK_I_WIDTH { PARAM_VALUE.C_SCK_I_WIDTH } {
	# Procedure called to update C_SCK_I_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SCK_I_WIDTH { PARAM_VALUE.C_SCK_I_WIDTH } {
	# Procedure called to validate C_SCK_I_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SCK_O_WIDTH { PARAM_VALUE.C_SCK_O_WIDTH } {
	# Procedure called to update C_SCK_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SCK_O_WIDTH { PARAM_VALUE.C_SCK_O_WIDTH } {
	# Procedure called to validate C_SCK_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SCK_T_WIDTH { PARAM_VALUE.C_SCK_T_WIDTH } {
	# Procedure called to update C_SCK_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SCK_T_WIDTH { PARAM_VALUE.C_SCK_T_WIDTH } {
	# Procedure called to validate C_SCK_T_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SPISEL_WIDTH { PARAM_VALUE.C_SPISEL_WIDTH } {
	# Procedure called to update C_SPISEL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SPISEL_WIDTH { PARAM_VALUE.C_SPISEL_WIDTH } {
	# Procedure called to validate C_SPISEL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SS1_O_WIDTH { PARAM_VALUE.C_SS1_O_WIDTH } {
	# Procedure called to update C_SS1_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SS1_O_WIDTH { PARAM_VALUE.C_SS1_O_WIDTH } {
	# Procedure called to validate C_SS1_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SS2_O_WIDTH { PARAM_VALUE.C_SS2_O_WIDTH } {
	# Procedure called to update C_SS2_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SS2_O_WIDTH { PARAM_VALUE.C_SS2_O_WIDTH } {
	# Procedure called to validate C_SS2_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SS_I_WIDTH { PARAM_VALUE.C_SS_I_WIDTH } {
	# Procedure called to update C_SS_I_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SS_I_WIDTH { PARAM_VALUE.C_SS_I_WIDTH } {
	# Procedure called to validate C_SS_I_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SS_O_WIDTH { PARAM_VALUE.C_SS_O_WIDTH } {
	# Procedure called to update C_SS_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SS_O_WIDTH { PARAM_VALUE.C_SS_O_WIDTH } {
	# Procedure called to validate C_SS_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SS_T_WIDTH { PARAM_VALUE.C_SS_T_WIDTH } {
	# Procedure called to update C_SS_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SS_T_WIDTH { PARAM_VALUE.C_SS_T_WIDTH } {
	# Procedure called to validate C_SS_T_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_SPISEL_WIDTH { MODELPARAM_VALUE.C_SPISEL_WIDTH PARAM_VALUE.C_SPISEL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SPISEL_WIDTH}] ${MODELPARAM_VALUE.C_SPISEL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SPISEL { MODELPARAM_VALUE.C_HAS_SPISEL PARAM_VALUE.C_HAS_SPISEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SPISEL}] ${MODELPARAM_VALUE.C_HAS_SPISEL}
}

proc update_MODELPARAM_VALUE.C_SS_I_WIDTH { MODELPARAM_VALUE.C_SS_I_WIDTH PARAM_VALUE.C_SS_I_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SS_I_WIDTH}] ${MODELPARAM_VALUE.C_SS_I_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SS_I { MODELPARAM_VALUE.C_HAS_SS_I PARAM_VALUE.C_HAS_SS_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SS_I}] ${MODELPARAM_VALUE.C_HAS_SS_I}
}

proc update_MODELPARAM_VALUE.C_SS_O_WIDTH { MODELPARAM_VALUE.C_SS_O_WIDTH PARAM_VALUE.C_SS_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SS_O_WIDTH}] ${MODELPARAM_VALUE.C_SS_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SS_O { MODELPARAM_VALUE.C_HAS_SS_O PARAM_VALUE.C_HAS_SS_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SS_O}] ${MODELPARAM_VALUE.C_HAS_SS_O}
}

proc update_MODELPARAM_VALUE.C_SS_T_WIDTH { MODELPARAM_VALUE.C_SS_T_WIDTH PARAM_VALUE.C_SS_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SS_T_WIDTH}] ${MODELPARAM_VALUE.C_SS_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SS_T { MODELPARAM_VALUE.C_HAS_SS_T PARAM_VALUE.C_HAS_SS_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SS_T}] ${MODELPARAM_VALUE.C_HAS_SS_T}
}

proc update_MODELPARAM_VALUE.C_SCK_I_WIDTH { MODELPARAM_VALUE.C_SCK_I_WIDTH PARAM_VALUE.C_SCK_I_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SCK_I_WIDTH}] ${MODELPARAM_VALUE.C_SCK_I_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SCK_I { MODELPARAM_VALUE.C_HAS_SCK_I PARAM_VALUE.C_HAS_SCK_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SCK_I}] ${MODELPARAM_VALUE.C_HAS_SCK_I}
}

proc update_MODELPARAM_VALUE.C_SCK_O_WIDTH { MODELPARAM_VALUE.C_SCK_O_WIDTH PARAM_VALUE.C_SCK_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SCK_O_WIDTH}] ${MODELPARAM_VALUE.C_SCK_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SCK_O { MODELPARAM_VALUE.C_HAS_SCK_O PARAM_VALUE.C_HAS_SCK_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SCK_O}] ${MODELPARAM_VALUE.C_HAS_SCK_O}
}

proc update_MODELPARAM_VALUE.C_SCK_T_WIDTH { MODELPARAM_VALUE.C_SCK_T_WIDTH PARAM_VALUE.C_SCK_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SCK_T_WIDTH}] ${MODELPARAM_VALUE.C_SCK_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SCK_T { MODELPARAM_VALUE.C_HAS_SCK_T PARAM_VALUE.C_HAS_SCK_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SCK_T}] ${MODELPARAM_VALUE.C_HAS_SCK_T}
}

proc update_MODELPARAM_VALUE.C_IO0_I_WIDTH { MODELPARAM_VALUE.C_IO0_I_WIDTH PARAM_VALUE.C_IO0_I_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO0_I_WIDTH}] ${MODELPARAM_VALUE.C_IO0_I_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO0_I { MODELPARAM_VALUE.C_HAS_IO0_I PARAM_VALUE.C_HAS_IO0_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO0_I}] ${MODELPARAM_VALUE.C_HAS_IO0_I}
}

proc update_MODELPARAM_VALUE.C_IO0_O_WIDTH { MODELPARAM_VALUE.C_IO0_O_WIDTH PARAM_VALUE.C_IO0_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO0_O_WIDTH}] ${MODELPARAM_VALUE.C_IO0_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO0_O { MODELPARAM_VALUE.C_HAS_IO0_O PARAM_VALUE.C_HAS_IO0_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO0_O}] ${MODELPARAM_VALUE.C_HAS_IO0_O}
}

proc update_MODELPARAM_VALUE.C_IO0_T_WIDTH { MODELPARAM_VALUE.C_IO0_T_WIDTH PARAM_VALUE.C_IO0_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO0_T_WIDTH}] ${MODELPARAM_VALUE.C_IO0_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO0_T { MODELPARAM_VALUE.C_HAS_IO0_T PARAM_VALUE.C_HAS_IO0_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO0_T}] ${MODELPARAM_VALUE.C_HAS_IO0_T}
}

proc update_MODELPARAM_VALUE.C_IO1_I_WIDTH { MODELPARAM_VALUE.C_IO1_I_WIDTH PARAM_VALUE.C_IO1_I_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO1_I_WIDTH}] ${MODELPARAM_VALUE.C_IO1_I_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO1_I { MODELPARAM_VALUE.C_HAS_IO1_I PARAM_VALUE.C_HAS_IO1_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO1_I}] ${MODELPARAM_VALUE.C_HAS_IO1_I}
}

proc update_MODELPARAM_VALUE.C_IO1_O_WIDTH { MODELPARAM_VALUE.C_IO1_O_WIDTH PARAM_VALUE.C_IO1_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO1_O_WIDTH}] ${MODELPARAM_VALUE.C_IO1_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO1_O { MODELPARAM_VALUE.C_HAS_IO1_O PARAM_VALUE.C_HAS_IO1_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO1_O}] ${MODELPARAM_VALUE.C_HAS_IO1_O}
}

proc update_MODELPARAM_VALUE.C_IO1_T_WIDTH { MODELPARAM_VALUE.C_IO1_T_WIDTH PARAM_VALUE.C_IO1_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO1_T_WIDTH}] ${MODELPARAM_VALUE.C_IO1_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO1_T { MODELPARAM_VALUE.C_HAS_IO1_T PARAM_VALUE.C_HAS_IO1_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO1_T}] ${MODELPARAM_VALUE.C_HAS_IO1_T}
}

proc update_MODELPARAM_VALUE.C_IO2_I_WIDTH { MODELPARAM_VALUE.C_IO2_I_WIDTH PARAM_VALUE.C_IO2_I_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO2_I_WIDTH}] ${MODELPARAM_VALUE.C_IO2_I_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO2_I { MODELPARAM_VALUE.C_HAS_IO2_I PARAM_VALUE.C_HAS_IO2_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO2_I}] ${MODELPARAM_VALUE.C_HAS_IO2_I}
}

proc update_MODELPARAM_VALUE.C_IO2_O_WIDTH { MODELPARAM_VALUE.C_IO2_O_WIDTH PARAM_VALUE.C_IO2_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO2_O_WIDTH}] ${MODELPARAM_VALUE.C_IO2_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO2_O { MODELPARAM_VALUE.C_HAS_IO2_O PARAM_VALUE.C_HAS_IO2_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO2_O}] ${MODELPARAM_VALUE.C_HAS_IO2_O}
}

proc update_MODELPARAM_VALUE.C_IO2_T_WIDTH { MODELPARAM_VALUE.C_IO2_T_WIDTH PARAM_VALUE.C_IO2_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO2_T_WIDTH}] ${MODELPARAM_VALUE.C_IO2_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO2_T { MODELPARAM_VALUE.C_HAS_IO2_T PARAM_VALUE.C_HAS_IO2_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO2_T}] ${MODELPARAM_VALUE.C_HAS_IO2_T}
}

proc update_MODELPARAM_VALUE.C_IO3_I_WIDTH { MODELPARAM_VALUE.C_IO3_I_WIDTH PARAM_VALUE.C_IO3_I_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO3_I_WIDTH}] ${MODELPARAM_VALUE.C_IO3_I_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO3_I { MODELPARAM_VALUE.C_HAS_IO3_I PARAM_VALUE.C_HAS_IO3_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO3_I}] ${MODELPARAM_VALUE.C_HAS_IO3_I}
}

proc update_MODELPARAM_VALUE.C_IO3_O_WIDTH { MODELPARAM_VALUE.C_IO3_O_WIDTH PARAM_VALUE.C_IO3_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO3_O_WIDTH}] ${MODELPARAM_VALUE.C_IO3_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO3_O { MODELPARAM_VALUE.C_HAS_IO3_O PARAM_VALUE.C_HAS_IO3_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO3_O}] ${MODELPARAM_VALUE.C_HAS_IO3_O}
}

proc update_MODELPARAM_VALUE.C_IO3_T_WIDTH { MODELPARAM_VALUE.C_IO3_T_WIDTH PARAM_VALUE.C_IO3_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IO3_T_WIDTH}] ${MODELPARAM_VALUE.C_IO3_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_IO3_T { MODELPARAM_VALUE.C_HAS_IO3_T PARAM_VALUE.C_HAS_IO3_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_IO3_T}] ${MODELPARAM_VALUE.C_HAS_IO3_T}
}

proc update_MODELPARAM_VALUE.C_SS1_O_WIDTH { MODELPARAM_VALUE.C_SS1_O_WIDTH PARAM_VALUE.C_SS1_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SS1_O_WIDTH}] ${MODELPARAM_VALUE.C_SS1_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SS1_O { MODELPARAM_VALUE.C_HAS_SS1_O PARAM_VALUE.C_HAS_SS1_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SS1_O}] ${MODELPARAM_VALUE.C_HAS_SS1_O}
}

proc update_MODELPARAM_VALUE.C_SS2_O_WIDTH { MODELPARAM_VALUE.C_SS2_O_WIDTH PARAM_VALUE.C_SS2_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SS2_O_WIDTH}] ${MODELPARAM_VALUE.C_SS2_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SS2_O { MODELPARAM_VALUE.C_HAS_SS2_O PARAM_VALUE.C_HAS_SS2_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SS2_O}] ${MODELPARAM_VALUE.C_HAS_SS2_O}
}

