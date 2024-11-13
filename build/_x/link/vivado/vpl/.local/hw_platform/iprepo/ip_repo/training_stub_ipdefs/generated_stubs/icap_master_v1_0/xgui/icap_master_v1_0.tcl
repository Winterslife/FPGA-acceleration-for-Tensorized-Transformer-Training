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
  ipgui::add_param $IPINST -name "C_AVAIL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CSIB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AVAIL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CLK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CSIB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_I" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_O" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PRDONE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PRERROR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RDWRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_I_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_O_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PRDONE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PRERROR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RDWRB_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_AVAIL_WIDTH { PARAM_VALUE.C_AVAIL_WIDTH } {
	# Procedure called to update C_AVAIL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AVAIL_WIDTH { PARAM_VALUE.C_AVAIL_WIDTH } {
	# Procedure called to validate C_AVAIL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CLK_WIDTH { PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to update C_CLK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_WIDTH { PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to validate C_CLK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CSIB_WIDTH { PARAM_VALUE.C_CSIB_WIDTH } {
	# Procedure called to update C_CSIB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CSIB_WIDTH { PARAM_VALUE.C_CSIB_WIDTH } {
	# Procedure called to validate C_CSIB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_AVAIL { PARAM_VALUE.C_HAS_AVAIL } {
	# Procedure called to update C_HAS_AVAIL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AVAIL { PARAM_VALUE.C_HAS_AVAIL } {
	# Procedure called to validate C_HAS_AVAIL
	return true
}

proc update_PARAM_VALUE.C_HAS_CLK { PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to update C_HAS_CLK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CLK { PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to validate C_HAS_CLK
	return true
}

proc update_PARAM_VALUE.C_HAS_CSIB { PARAM_VALUE.C_HAS_CSIB } {
	# Procedure called to update C_HAS_CSIB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CSIB { PARAM_VALUE.C_HAS_CSIB } {
	# Procedure called to validate C_HAS_CSIB
	return true
}

proc update_PARAM_VALUE.C_HAS_I { PARAM_VALUE.C_HAS_I } {
	# Procedure called to update C_HAS_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_I { PARAM_VALUE.C_HAS_I } {
	# Procedure called to validate C_HAS_I
	return true
}

proc update_PARAM_VALUE.C_HAS_O { PARAM_VALUE.C_HAS_O } {
	# Procedure called to update C_HAS_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_O { PARAM_VALUE.C_HAS_O } {
	# Procedure called to validate C_HAS_O
	return true
}

proc update_PARAM_VALUE.C_HAS_PRDONE { PARAM_VALUE.C_HAS_PRDONE } {
	# Procedure called to update C_HAS_PRDONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PRDONE { PARAM_VALUE.C_HAS_PRDONE } {
	# Procedure called to validate C_HAS_PRDONE
	return true
}

proc update_PARAM_VALUE.C_HAS_PRERROR { PARAM_VALUE.C_HAS_PRERROR } {
	# Procedure called to update C_HAS_PRERROR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PRERROR { PARAM_VALUE.C_HAS_PRERROR } {
	# Procedure called to validate C_HAS_PRERROR
	return true
}

proc update_PARAM_VALUE.C_HAS_RDWRB { PARAM_VALUE.C_HAS_RDWRB } {
	# Procedure called to update C_HAS_RDWRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RDWRB { PARAM_VALUE.C_HAS_RDWRB } {
	# Procedure called to validate C_HAS_RDWRB
	return true
}

proc update_PARAM_VALUE.C_I_WIDTH { PARAM_VALUE.C_I_WIDTH } {
	# Procedure called to update C_I_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_I_WIDTH { PARAM_VALUE.C_I_WIDTH } {
	# Procedure called to validate C_I_WIDTH
	return true
}

proc update_PARAM_VALUE.C_O_WIDTH { PARAM_VALUE.C_O_WIDTH } {
	# Procedure called to update C_O_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_O_WIDTH { PARAM_VALUE.C_O_WIDTH } {
	# Procedure called to validate C_O_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PRDONE_WIDTH { PARAM_VALUE.C_PRDONE_WIDTH } {
	# Procedure called to update C_PRDONE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PRDONE_WIDTH { PARAM_VALUE.C_PRDONE_WIDTH } {
	# Procedure called to validate C_PRDONE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PRERROR_WIDTH { PARAM_VALUE.C_PRERROR_WIDTH } {
	# Procedure called to update C_PRERROR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PRERROR_WIDTH { PARAM_VALUE.C_PRERROR_WIDTH } {
	# Procedure called to validate C_PRERROR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RDWRB_WIDTH { PARAM_VALUE.C_RDWRB_WIDTH } {
	# Procedure called to update C_RDWRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RDWRB_WIDTH { PARAM_VALUE.C_RDWRB_WIDTH } {
	# Procedure called to validate C_RDWRB_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_CSIB_WIDTH { MODELPARAM_VALUE.C_CSIB_WIDTH PARAM_VALUE.C_CSIB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CSIB_WIDTH}] ${MODELPARAM_VALUE.C_CSIB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CSIB { MODELPARAM_VALUE.C_HAS_CSIB PARAM_VALUE.C_HAS_CSIB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CSIB}] ${MODELPARAM_VALUE.C_HAS_CSIB}
}

proc update_MODELPARAM_VALUE.C_RDWRB_WIDTH { MODELPARAM_VALUE.C_RDWRB_WIDTH PARAM_VALUE.C_RDWRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RDWRB_WIDTH}] ${MODELPARAM_VALUE.C_RDWRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RDWRB { MODELPARAM_VALUE.C_HAS_RDWRB PARAM_VALUE.C_HAS_RDWRB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RDWRB}] ${MODELPARAM_VALUE.C_HAS_RDWRB}
}

proc update_MODELPARAM_VALUE.C_I_WIDTH { MODELPARAM_VALUE.C_I_WIDTH PARAM_VALUE.C_I_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_I_WIDTH}] ${MODELPARAM_VALUE.C_I_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_I { MODELPARAM_VALUE.C_HAS_I PARAM_VALUE.C_HAS_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_I}] ${MODELPARAM_VALUE.C_HAS_I}
}

proc update_MODELPARAM_VALUE.C_O_WIDTH { MODELPARAM_VALUE.C_O_WIDTH PARAM_VALUE.C_O_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_O_WIDTH}] ${MODELPARAM_VALUE.C_O_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_O { MODELPARAM_VALUE.C_HAS_O PARAM_VALUE.C_HAS_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_O}] ${MODELPARAM_VALUE.C_HAS_O}
}

proc update_MODELPARAM_VALUE.C_CLK_WIDTH { MODELPARAM_VALUE.C_CLK_WIDTH PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_WIDTH}] ${MODELPARAM_VALUE.C_CLK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CLK { MODELPARAM_VALUE.C_HAS_CLK PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CLK}] ${MODELPARAM_VALUE.C_HAS_CLK}
}

proc update_MODELPARAM_VALUE.C_AVAIL_WIDTH { MODELPARAM_VALUE.C_AVAIL_WIDTH PARAM_VALUE.C_AVAIL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AVAIL_WIDTH}] ${MODELPARAM_VALUE.C_AVAIL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AVAIL { MODELPARAM_VALUE.C_HAS_AVAIL PARAM_VALUE.C_HAS_AVAIL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AVAIL}] ${MODELPARAM_VALUE.C_HAS_AVAIL}
}

proc update_MODELPARAM_VALUE.C_PRDONE_WIDTH { MODELPARAM_VALUE.C_PRDONE_WIDTH PARAM_VALUE.C_PRDONE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PRDONE_WIDTH}] ${MODELPARAM_VALUE.C_PRDONE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PRDONE { MODELPARAM_VALUE.C_HAS_PRDONE PARAM_VALUE.C_HAS_PRDONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PRDONE}] ${MODELPARAM_VALUE.C_HAS_PRDONE}
}

proc update_MODELPARAM_VALUE.C_PRERROR_WIDTH { MODELPARAM_VALUE.C_PRERROR_WIDTH PARAM_VALUE.C_PRERROR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PRERROR_WIDTH}] ${MODELPARAM_VALUE.C_PRERROR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PRERROR { MODELPARAM_VALUE.C_HAS_PRERROR PARAM_VALUE.C_HAS_PRERROR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PRERROR}] ${MODELPARAM_VALUE.C_HAS_PRERROR}
}

