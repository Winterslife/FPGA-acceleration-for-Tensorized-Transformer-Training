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
  ipgui::add_param $IPINST -name "C_HAS_TDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TDEST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TUSER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TKEEP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TLAST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TVALID_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_HAS_TDATA { PARAM_VALUE.C_HAS_TDATA } {
	# Procedure called to update C_HAS_TDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TDATA { PARAM_VALUE.C_HAS_TDATA } {
	# Procedure called to validate C_HAS_TDATA
	return true
}

proc update_PARAM_VALUE.C_HAS_TDEST { PARAM_VALUE.C_HAS_TDEST } {
	# Procedure called to update C_HAS_TDEST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TDEST { PARAM_VALUE.C_HAS_TDEST } {
	# Procedure called to validate C_HAS_TDEST
	return true
}

proc update_PARAM_VALUE.C_HAS_TID { PARAM_VALUE.C_HAS_TID } {
	# Procedure called to update C_HAS_TID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TID { PARAM_VALUE.C_HAS_TID } {
	# Procedure called to validate C_HAS_TID
	return true
}

proc update_PARAM_VALUE.C_HAS_TKEEP { PARAM_VALUE.C_HAS_TKEEP } {
	# Procedure called to update C_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TKEEP { PARAM_VALUE.C_HAS_TKEEP } {
	# Procedure called to validate C_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_HAS_TLAST { PARAM_VALUE.C_HAS_TLAST } {
	# Procedure called to update C_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TLAST { PARAM_VALUE.C_HAS_TLAST } {
	# Procedure called to validate C_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_HAS_TREADY { PARAM_VALUE.C_HAS_TREADY } {
	# Procedure called to update C_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TREADY { PARAM_VALUE.C_HAS_TREADY } {
	# Procedure called to validate C_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_TSTRB { PARAM_VALUE.C_HAS_TSTRB } {
	# Procedure called to update C_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TSTRB { PARAM_VALUE.C_HAS_TSTRB } {
	# Procedure called to validate C_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_HAS_TUSER { PARAM_VALUE.C_HAS_TUSER } {
	# Procedure called to update C_HAS_TUSER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TUSER { PARAM_VALUE.C_HAS_TUSER } {
	# Procedure called to validate C_HAS_TUSER
	return true
}

proc update_PARAM_VALUE.C_HAS_TVALID { PARAM_VALUE.C_HAS_TVALID } {
	# Procedure called to update C_HAS_TVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TVALID { PARAM_VALUE.C_HAS_TVALID } {
	# Procedure called to validate C_HAS_TVALID
	return true
}

proc update_PARAM_VALUE.C_TDATA_WIDTH { PARAM_VALUE.C_TDATA_WIDTH } {
	# Procedure called to update C_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TDATA_WIDTH { PARAM_VALUE.C_TDATA_WIDTH } {
	# Procedure called to validate C_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TDEST_WIDTH { PARAM_VALUE.C_TDEST_WIDTH } {
	# Procedure called to update C_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TDEST_WIDTH { PARAM_VALUE.C_TDEST_WIDTH } {
	# Procedure called to validate C_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TID_WIDTH { PARAM_VALUE.C_TID_WIDTH } {
	# Procedure called to update C_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TID_WIDTH { PARAM_VALUE.C_TID_WIDTH } {
	# Procedure called to validate C_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TKEEP_WIDTH { PARAM_VALUE.C_TKEEP_WIDTH } {
	# Procedure called to update C_TKEEP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TKEEP_WIDTH { PARAM_VALUE.C_TKEEP_WIDTH } {
	# Procedure called to validate C_TKEEP_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TLAST_WIDTH { PARAM_VALUE.C_TLAST_WIDTH } {
	# Procedure called to update C_TLAST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TLAST_WIDTH { PARAM_VALUE.C_TLAST_WIDTH } {
	# Procedure called to validate C_TLAST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TREADY_WIDTH { PARAM_VALUE.C_TREADY_WIDTH } {
	# Procedure called to update C_TREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TREADY_WIDTH { PARAM_VALUE.C_TREADY_WIDTH } {
	# Procedure called to validate C_TREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TSTRB_WIDTH { PARAM_VALUE.C_TSTRB_WIDTH } {
	# Procedure called to update C_TSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TSTRB_WIDTH { PARAM_VALUE.C_TSTRB_WIDTH } {
	# Procedure called to validate C_TSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TUSER_WIDTH { PARAM_VALUE.C_TUSER_WIDTH } {
	# Procedure called to update C_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TUSER_WIDTH { PARAM_VALUE.C_TUSER_WIDTH } {
	# Procedure called to validate C_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TVALID_WIDTH { PARAM_VALUE.C_TVALID_WIDTH } {
	# Procedure called to update C_TVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TVALID_WIDTH { PARAM_VALUE.C_TVALID_WIDTH } {
	# Procedure called to validate C_TVALID_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_TID_WIDTH { MODELPARAM_VALUE.C_TID_WIDTH PARAM_VALUE.C_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TID_WIDTH}] ${MODELPARAM_VALUE.C_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TID { MODELPARAM_VALUE.C_HAS_TID PARAM_VALUE.C_HAS_TID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TID}] ${MODELPARAM_VALUE.C_HAS_TID}
}

proc update_MODELPARAM_VALUE.C_TDEST_WIDTH { MODELPARAM_VALUE.C_TDEST_WIDTH PARAM_VALUE.C_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TDEST { MODELPARAM_VALUE.C_HAS_TDEST PARAM_VALUE.C_HAS_TDEST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TDEST}] ${MODELPARAM_VALUE.C_HAS_TDEST}
}

proc update_MODELPARAM_VALUE.C_TDATA_WIDTH { MODELPARAM_VALUE.C_TDATA_WIDTH PARAM_VALUE.C_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TDATA { MODELPARAM_VALUE.C_HAS_TDATA PARAM_VALUE.C_HAS_TDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TDATA}] ${MODELPARAM_VALUE.C_HAS_TDATA}
}

proc update_MODELPARAM_VALUE.C_TSTRB_WIDTH { MODELPARAM_VALUE.C_TSTRB_WIDTH PARAM_VALUE.C_TSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TSTRB_WIDTH}] ${MODELPARAM_VALUE.C_TSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TSTRB { MODELPARAM_VALUE.C_HAS_TSTRB PARAM_VALUE.C_HAS_TSTRB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TSTRB}] ${MODELPARAM_VALUE.C_HAS_TSTRB}
}

proc update_MODELPARAM_VALUE.C_TKEEP_WIDTH { MODELPARAM_VALUE.C_TKEEP_WIDTH PARAM_VALUE.C_TKEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TKEEP_WIDTH}] ${MODELPARAM_VALUE.C_TKEEP_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TKEEP { MODELPARAM_VALUE.C_HAS_TKEEP PARAM_VALUE.C_HAS_TKEEP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TKEEP}] ${MODELPARAM_VALUE.C_HAS_TKEEP}
}

proc update_MODELPARAM_VALUE.C_TLAST_WIDTH { MODELPARAM_VALUE.C_TLAST_WIDTH PARAM_VALUE.C_TLAST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TLAST_WIDTH}] ${MODELPARAM_VALUE.C_TLAST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TLAST { MODELPARAM_VALUE.C_HAS_TLAST PARAM_VALUE.C_HAS_TLAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TLAST}] ${MODELPARAM_VALUE.C_HAS_TLAST}
}

proc update_MODELPARAM_VALUE.C_TUSER_WIDTH { MODELPARAM_VALUE.C_TUSER_WIDTH PARAM_VALUE.C_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TUSER { MODELPARAM_VALUE.C_HAS_TUSER PARAM_VALUE.C_HAS_TUSER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TUSER}] ${MODELPARAM_VALUE.C_HAS_TUSER}
}

proc update_MODELPARAM_VALUE.C_TVALID_WIDTH { MODELPARAM_VALUE.C_TVALID_WIDTH PARAM_VALUE.C_TVALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TVALID_WIDTH}] ${MODELPARAM_VALUE.C_TVALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TVALID { MODELPARAM_VALUE.C_HAS_TVALID PARAM_VALUE.C_HAS_TVALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TVALID}] ${MODELPARAM_VALUE.C_HAS_TVALID}
}

proc update_MODELPARAM_VALUE.C_TREADY_WIDTH { MODELPARAM_VALUE.C_TREADY_WIDTH PARAM_VALUE.C_TREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TREADY_WIDTH}] ${MODELPARAM_VALUE.C_TREADY_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TREADY { MODELPARAM_VALUE.C_HAS_TREADY PARAM_VALUE.C_HAS_TREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TREADY}] ${MODELPARAM_VALUE.C_HAS_TREADY}
}

