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
  ipgui::add_param $IPINST -name "C_BAUDOUTN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CTSN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DCDN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DDIS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DSRN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DTRN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BAUDOUTN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CTSN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DCDN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DDIS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DSRN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DTRN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_OUT1N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_OUT2N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RCLK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RI" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RTSN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RXD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RXRDYN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TXD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TXRDYN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_XIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_XOUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_OUT1N_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_OUT2N_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RCLK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RI_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RTSN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RXD_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RXRDYN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TXD_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TXRDYN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_XIN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_XOUT_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_BAUDOUTN_WIDTH { PARAM_VALUE.C_BAUDOUTN_WIDTH } {
	# Procedure called to update C_BAUDOUTN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BAUDOUTN_WIDTH { PARAM_VALUE.C_BAUDOUTN_WIDTH } {
	# Procedure called to validate C_BAUDOUTN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CTSN_WIDTH { PARAM_VALUE.C_CTSN_WIDTH } {
	# Procedure called to update C_CTSN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CTSN_WIDTH { PARAM_VALUE.C_CTSN_WIDTH } {
	# Procedure called to validate C_CTSN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DCDN_WIDTH { PARAM_VALUE.C_DCDN_WIDTH } {
	# Procedure called to update C_DCDN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DCDN_WIDTH { PARAM_VALUE.C_DCDN_WIDTH } {
	# Procedure called to validate C_DCDN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DDIS_WIDTH { PARAM_VALUE.C_DDIS_WIDTH } {
	# Procedure called to update C_DDIS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DDIS_WIDTH { PARAM_VALUE.C_DDIS_WIDTH } {
	# Procedure called to validate C_DDIS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DSRN_WIDTH { PARAM_VALUE.C_DSRN_WIDTH } {
	# Procedure called to update C_DSRN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DSRN_WIDTH { PARAM_VALUE.C_DSRN_WIDTH } {
	# Procedure called to validate C_DSRN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DTRN_WIDTH { PARAM_VALUE.C_DTRN_WIDTH } {
	# Procedure called to update C_DTRN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DTRN_WIDTH { PARAM_VALUE.C_DTRN_WIDTH } {
	# Procedure called to validate C_DTRN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_BAUDOUTN { PARAM_VALUE.C_HAS_BAUDOUTN } {
	# Procedure called to update C_HAS_BAUDOUTN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BAUDOUTN { PARAM_VALUE.C_HAS_BAUDOUTN } {
	# Procedure called to validate C_HAS_BAUDOUTN
	return true
}

proc update_PARAM_VALUE.C_HAS_CTSN { PARAM_VALUE.C_HAS_CTSN } {
	# Procedure called to update C_HAS_CTSN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CTSN { PARAM_VALUE.C_HAS_CTSN } {
	# Procedure called to validate C_HAS_CTSN
	return true
}

proc update_PARAM_VALUE.C_HAS_DCDN { PARAM_VALUE.C_HAS_DCDN } {
	# Procedure called to update C_HAS_DCDN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DCDN { PARAM_VALUE.C_HAS_DCDN } {
	# Procedure called to validate C_HAS_DCDN
	return true
}

proc update_PARAM_VALUE.C_HAS_DDIS { PARAM_VALUE.C_HAS_DDIS } {
	# Procedure called to update C_HAS_DDIS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DDIS { PARAM_VALUE.C_HAS_DDIS } {
	# Procedure called to validate C_HAS_DDIS
	return true
}

proc update_PARAM_VALUE.C_HAS_DSRN { PARAM_VALUE.C_HAS_DSRN } {
	# Procedure called to update C_HAS_DSRN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DSRN { PARAM_VALUE.C_HAS_DSRN } {
	# Procedure called to validate C_HAS_DSRN
	return true
}

proc update_PARAM_VALUE.C_HAS_DTRN { PARAM_VALUE.C_HAS_DTRN } {
	# Procedure called to update C_HAS_DTRN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DTRN { PARAM_VALUE.C_HAS_DTRN } {
	# Procedure called to validate C_HAS_DTRN
	return true
}

proc update_PARAM_VALUE.C_HAS_OUT1N { PARAM_VALUE.C_HAS_OUT1N } {
	# Procedure called to update C_HAS_OUT1N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_OUT1N { PARAM_VALUE.C_HAS_OUT1N } {
	# Procedure called to validate C_HAS_OUT1N
	return true
}

proc update_PARAM_VALUE.C_HAS_OUT2N { PARAM_VALUE.C_HAS_OUT2N } {
	# Procedure called to update C_HAS_OUT2N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_OUT2N { PARAM_VALUE.C_HAS_OUT2N } {
	# Procedure called to validate C_HAS_OUT2N
	return true
}

proc update_PARAM_VALUE.C_HAS_RCLK { PARAM_VALUE.C_HAS_RCLK } {
	# Procedure called to update C_HAS_RCLK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RCLK { PARAM_VALUE.C_HAS_RCLK } {
	# Procedure called to validate C_HAS_RCLK
	return true
}

proc update_PARAM_VALUE.C_HAS_RI { PARAM_VALUE.C_HAS_RI } {
	# Procedure called to update C_HAS_RI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RI { PARAM_VALUE.C_HAS_RI } {
	# Procedure called to validate C_HAS_RI
	return true
}

proc update_PARAM_VALUE.C_HAS_RTSN { PARAM_VALUE.C_HAS_RTSN } {
	# Procedure called to update C_HAS_RTSN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RTSN { PARAM_VALUE.C_HAS_RTSN } {
	# Procedure called to validate C_HAS_RTSN
	return true
}

proc update_PARAM_VALUE.C_HAS_RXD { PARAM_VALUE.C_HAS_RXD } {
	# Procedure called to update C_HAS_RXD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RXD { PARAM_VALUE.C_HAS_RXD } {
	# Procedure called to validate C_HAS_RXD
	return true
}

proc update_PARAM_VALUE.C_HAS_RXRDYN { PARAM_VALUE.C_HAS_RXRDYN } {
	# Procedure called to update C_HAS_RXRDYN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RXRDYN { PARAM_VALUE.C_HAS_RXRDYN } {
	# Procedure called to validate C_HAS_RXRDYN
	return true
}

proc update_PARAM_VALUE.C_HAS_TXD { PARAM_VALUE.C_HAS_TXD } {
	# Procedure called to update C_HAS_TXD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TXD { PARAM_VALUE.C_HAS_TXD } {
	# Procedure called to validate C_HAS_TXD
	return true
}

proc update_PARAM_VALUE.C_HAS_TXRDYN { PARAM_VALUE.C_HAS_TXRDYN } {
	# Procedure called to update C_HAS_TXRDYN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TXRDYN { PARAM_VALUE.C_HAS_TXRDYN } {
	# Procedure called to validate C_HAS_TXRDYN
	return true
}

proc update_PARAM_VALUE.C_HAS_XIN { PARAM_VALUE.C_HAS_XIN } {
	# Procedure called to update C_HAS_XIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_XIN { PARAM_VALUE.C_HAS_XIN } {
	# Procedure called to validate C_HAS_XIN
	return true
}

proc update_PARAM_VALUE.C_HAS_XOUT { PARAM_VALUE.C_HAS_XOUT } {
	# Procedure called to update C_HAS_XOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_XOUT { PARAM_VALUE.C_HAS_XOUT } {
	# Procedure called to validate C_HAS_XOUT
	return true
}

proc update_PARAM_VALUE.C_OUT1N_WIDTH { PARAM_VALUE.C_OUT1N_WIDTH } {
	# Procedure called to update C_OUT1N_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_OUT1N_WIDTH { PARAM_VALUE.C_OUT1N_WIDTH } {
	# Procedure called to validate C_OUT1N_WIDTH
	return true
}

proc update_PARAM_VALUE.C_OUT2N_WIDTH { PARAM_VALUE.C_OUT2N_WIDTH } {
	# Procedure called to update C_OUT2N_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_OUT2N_WIDTH { PARAM_VALUE.C_OUT2N_WIDTH } {
	# Procedure called to validate C_OUT2N_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RCLK_WIDTH { PARAM_VALUE.C_RCLK_WIDTH } {
	# Procedure called to update C_RCLK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RCLK_WIDTH { PARAM_VALUE.C_RCLK_WIDTH } {
	# Procedure called to validate C_RCLK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RI_WIDTH { PARAM_VALUE.C_RI_WIDTH } {
	# Procedure called to update C_RI_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RI_WIDTH { PARAM_VALUE.C_RI_WIDTH } {
	# Procedure called to validate C_RI_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RTSN_WIDTH { PARAM_VALUE.C_RTSN_WIDTH } {
	# Procedure called to update C_RTSN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RTSN_WIDTH { PARAM_VALUE.C_RTSN_WIDTH } {
	# Procedure called to validate C_RTSN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RXD_WIDTH { PARAM_VALUE.C_RXD_WIDTH } {
	# Procedure called to update C_RXD_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RXD_WIDTH { PARAM_VALUE.C_RXD_WIDTH } {
	# Procedure called to validate C_RXD_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RXRDYN_WIDTH { PARAM_VALUE.C_RXRDYN_WIDTH } {
	# Procedure called to update C_RXRDYN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RXRDYN_WIDTH { PARAM_VALUE.C_RXRDYN_WIDTH } {
	# Procedure called to validate C_RXRDYN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TXD_WIDTH { PARAM_VALUE.C_TXD_WIDTH } {
	# Procedure called to update C_TXD_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TXD_WIDTH { PARAM_VALUE.C_TXD_WIDTH } {
	# Procedure called to validate C_TXD_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TXRDYN_WIDTH { PARAM_VALUE.C_TXRDYN_WIDTH } {
	# Procedure called to update C_TXRDYN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TXRDYN_WIDTH { PARAM_VALUE.C_TXRDYN_WIDTH } {
	# Procedure called to validate C_TXRDYN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_XIN_WIDTH { PARAM_VALUE.C_XIN_WIDTH } {
	# Procedure called to update C_XIN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_XIN_WIDTH { PARAM_VALUE.C_XIN_WIDTH } {
	# Procedure called to validate C_XIN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_XOUT_WIDTH { PARAM_VALUE.C_XOUT_WIDTH } {
	# Procedure called to update C_XOUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_XOUT_WIDTH { PARAM_VALUE.C_XOUT_WIDTH } {
	# Procedure called to validate C_XOUT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_RXD_WIDTH { MODELPARAM_VALUE.C_RXD_WIDTH PARAM_VALUE.C_RXD_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RXD_WIDTH}] ${MODELPARAM_VALUE.C_RXD_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RXD { MODELPARAM_VALUE.C_HAS_RXD PARAM_VALUE.C_HAS_RXD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RXD}] ${MODELPARAM_VALUE.C_HAS_RXD}
}

proc update_MODELPARAM_VALUE.C_TXD_WIDTH { MODELPARAM_VALUE.C_TXD_WIDTH PARAM_VALUE.C_TXD_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TXD_WIDTH}] ${MODELPARAM_VALUE.C_TXD_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TXD { MODELPARAM_VALUE.C_HAS_TXD PARAM_VALUE.C_HAS_TXD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TXD}] ${MODELPARAM_VALUE.C_HAS_TXD}
}

proc update_MODELPARAM_VALUE.C_RTSN_WIDTH { MODELPARAM_VALUE.C_RTSN_WIDTH PARAM_VALUE.C_RTSN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RTSN_WIDTH}] ${MODELPARAM_VALUE.C_RTSN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RTSN { MODELPARAM_VALUE.C_HAS_RTSN PARAM_VALUE.C_HAS_RTSN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RTSN}] ${MODELPARAM_VALUE.C_HAS_RTSN}
}

proc update_MODELPARAM_VALUE.C_CTSN_WIDTH { MODELPARAM_VALUE.C_CTSN_WIDTH PARAM_VALUE.C_CTSN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CTSN_WIDTH}] ${MODELPARAM_VALUE.C_CTSN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CTSN { MODELPARAM_VALUE.C_HAS_CTSN PARAM_VALUE.C_HAS_CTSN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CTSN}] ${MODELPARAM_VALUE.C_HAS_CTSN}
}

proc update_MODELPARAM_VALUE.C_DTRN_WIDTH { MODELPARAM_VALUE.C_DTRN_WIDTH PARAM_VALUE.C_DTRN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DTRN_WIDTH}] ${MODELPARAM_VALUE.C_DTRN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DTRN { MODELPARAM_VALUE.C_HAS_DTRN PARAM_VALUE.C_HAS_DTRN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DTRN}] ${MODELPARAM_VALUE.C_HAS_DTRN}
}

proc update_MODELPARAM_VALUE.C_DSRN_WIDTH { MODELPARAM_VALUE.C_DSRN_WIDTH PARAM_VALUE.C_DSRN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DSRN_WIDTH}] ${MODELPARAM_VALUE.C_DSRN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DSRN { MODELPARAM_VALUE.C_HAS_DSRN PARAM_VALUE.C_HAS_DSRN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DSRN}] ${MODELPARAM_VALUE.C_HAS_DSRN}
}

proc update_MODELPARAM_VALUE.C_BAUDOUTN_WIDTH { MODELPARAM_VALUE.C_BAUDOUTN_WIDTH PARAM_VALUE.C_BAUDOUTN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BAUDOUTN_WIDTH}] ${MODELPARAM_VALUE.C_BAUDOUTN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BAUDOUTN { MODELPARAM_VALUE.C_HAS_BAUDOUTN PARAM_VALUE.C_HAS_BAUDOUTN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BAUDOUTN}] ${MODELPARAM_VALUE.C_HAS_BAUDOUTN}
}

proc update_MODELPARAM_VALUE.C_RCLK_WIDTH { MODELPARAM_VALUE.C_RCLK_WIDTH PARAM_VALUE.C_RCLK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RCLK_WIDTH}] ${MODELPARAM_VALUE.C_RCLK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RCLK { MODELPARAM_VALUE.C_HAS_RCLK PARAM_VALUE.C_HAS_RCLK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RCLK}] ${MODELPARAM_VALUE.C_HAS_RCLK}
}

proc update_MODELPARAM_VALUE.C_XIN_WIDTH { MODELPARAM_VALUE.C_XIN_WIDTH PARAM_VALUE.C_XIN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_XIN_WIDTH}] ${MODELPARAM_VALUE.C_XIN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_XIN { MODELPARAM_VALUE.C_HAS_XIN PARAM_VALUE.C_HAS_XIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_XIN}] ${MODELPARAM_VALUE.C_HAS_XIN}
}

proc update_MODELPARAM_VALUE.C_XOUT_WIDTH { MODELPARAM_VALUE.C_XOUT_WIDTH PARAM_VALUE.C_XOUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_XOUT_WIDTH}] ${MODELPARAM_VALUE.C_XOUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_XOUT { MODELPARAM_VALUE.C_HAS_XOUT PARAM_VALUE.C_HAS_XOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_XOUT}] ${MODELPARAM_VALUE.C_HAS_XOUT}
}

proc update_MODELPARAM_VALUE.C_DCDN_WIDTH { MODELPARAM_VALUE.C_DCDN_WIDTH PARAM_VALUE.C_DCDN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DCDN_WIDTH}] ${MODELPARAM_VALUE.C_DCDN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DCDN { MODELPARAM_VALUE.C_HAS_DCDN PARAM_VALUE.C_HAS_DCDN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DCDN}] ${MODELPARAM_VALUE.C_HAS_DCDN}
}

proc update_MODELPARAM_VALUE.C_DDIS_WIDTH { MODELPARAM_VALUE.C_DDIS_WIDTH PARAM_VALUE.C_DDIS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DDIS_WIDTH}] ${MODELPARAM_VALUE.C_DDIS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DDIS { MODELPARAM_VALUE.C_HAS_DDIS PARAM_VALUE.C_HAS_DDIS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DDIS}] ${MODELPARAM_VALUE.C_HAS_DDIS}
}

proc update_MODELPARAM_VALUE.C_OUT1N_WIDTH { MODELPARAM_VALUE.C_OUT1N_WIDTH PARAM_VALUE.C_OUT1N_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_OUT1N_WIDTH}] ${MODELPARAM_VALUE.C_OUT1N_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_OUT1N { MODELPARAM_VALUE.C_HAS_OUT1N PARAM_VALUE.C_HAS_OUT1N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_OUT1N}] ${MODELPARAM_VALUE.C_HAS_OUT1N}
}

proc update_MODELPARAM_VALUE.C_OUT2N_WIDTH { MODELPARAM_VALUE.C_OUT2N_WIDTH PARAM_VALUE.C_OUT2N_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_OUT2N_WIDTH}] ${MODELPARAM_VALUE.C_OUT2N_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_OUT2N { MODELPARAM_VALUE.C_HAS_OUT2N PARAM_VALUE.C_HAS_OUT2N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_OUT2N}] ${MODELPARAM_VALUE.C_HAS_OUT2N}
}

proc update_MODELPARAM_VALUE.C_TXRDYN_WIDTH { MODELPARAM_VALUE.C_TXRDYN_WIDTH PARAM_VALUE.C_TXRDYN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TXRDYN_WIDTH}] ${MODELPARAM_VALUE.C_TXRDYN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TXRDYN { MODELPARAM_VALUE.C_HAS_TXRDYN PARAM_VALUE.C_HAS_TXRDYN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TXRDYN}] ${MODELPARAM_VALUE.C_HAS_TXRDYN}
}

proc update_MODELPARAM_VALUE.C_RXRDYN_WIDTH { MODELPARAM_VALUE.C_RXRDYN_WIDTH PARAM_VALUE.C_RXRDYN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RXRDYN_WIDTH}] ${MODELPARAM_VALUE.C_RXRDYN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RXRDYN { MODELPARAM_VALUE.C_HAS_RXRDYN PARAM_VALUE.C_HAS_RXRDYN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RXRDYN}] ${MODELPARAM_VALUE.C_HAS_RXRDYN}
}

proc update_MODELPARAM_VALUE.C_RI_WIDTH { MODELPARAM_VALUE.C_RI_WIDTH PARAM_VALUE.C_RI_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RI_WIDTH}] ${MODELPARAM_VALUE.C_RI_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RI { MODELPARAM_VALUE.C_HAS_RI PARAM_VALUE.C_HAS_RI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RI}] ${MODELPARAM_VALUE.C_HAS_RI}
}

