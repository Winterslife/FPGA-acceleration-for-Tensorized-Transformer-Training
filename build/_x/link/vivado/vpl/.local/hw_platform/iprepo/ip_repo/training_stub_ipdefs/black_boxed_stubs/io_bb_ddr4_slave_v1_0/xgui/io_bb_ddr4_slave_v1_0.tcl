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
  ipgui::add_param $IPINST -name "C_ACT_N_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ADR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ALERT_N_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CKE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CK_C_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CK_T_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CS_N_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DM_N_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DQS_C_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DQS_T_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DQ_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ACT_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ADR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ALERT_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CKE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CK_C" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CK_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CS_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_C_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DM_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DQS_C" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DQS_T" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ODT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_PAR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RESET_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ODT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PAR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RESET_N_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_ACT_N_WIDTH { PARAM_VALUE.C_ACT_N_WIDTH } {
	# Procedure called to update C_ACT_N_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ACT_N_WIDTH { PARAM_VALUE.C_ACT_N_WIDTH } {
	# Procedure called to validate C_ACT_N_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ADR_WIDTH { PARAM_VALUE.C_ADR_WIDTH } {
	# Procedure called to update C_ADR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADR_WIDTH { PARAM_VALUE.C_ADR_WIDTH } {
	# Procedure called to validate C_ADR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ALERT_N_WIDTH { PARAM_VALUE.C_ALERT_N_WIDTH } {
	# Procedure called to update C_ALERT_N_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ALERT_N_WIDTH { PARAM_VALUE.C_ALERT_N_WIDTH } {
	# Procedure called to validate C_ALERT_N_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BA_WIDTH { PARAM_VALUE.C_BA_WIDTH } {
	# Procedure called to update C_BA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BA_WIDTH { PARAM_VALUE.C_BA_WIDTH } {
	# Procedure called to validate C_BA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BG_WIDTH { PARAM_VALUE.C_BG_WIDTH } {
	# Procedure called to update C_BG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BG_WIDTH { PARAM_VALUE.C_BG_WIDTH } {
	# Procedure called to validate C_BG_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CKE_WIDTH { PARAM_VALUE.C_CKE_WIDTH } {
	# Procedure called to update C_CKE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CKE_WIDTH { PARAM_VALUE.C_CKE_WIDTH } {
	# Procedure called to validate C_CKE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CK_C_WIDTH { PARAM_VALUE.C_CK_C_WIDTH } {
	# Procedure called to update C_CK_C_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CK_C_WIDTH { PARAM_VALUE.C_CK_C_WIDTH } {
	# Procedure called to validate C_CK_C_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CK_T_WIDTH { PARAM_VALUE.C_CK_T_WIDTH } {
	# Procedure called to update C_CK_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CK_T_WIDTH { PARAM_VALUE.C_CK_T_WIDTH } {
	# Procedure called to validate C_CK_T_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CS_N_WIDTH { PARAM_VALUE.C_CS_N_WIDTH } {
	# Procedure called to update C_CS_N_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CS_N_WIDTH { PARAM_VALUE.C_CS_N_WIDTH } {
	# Procedure called to validate C_CS_N_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C_ID_WIDTH { PARAM_VALUE.C_C_ID_WIDTH } {
	# Procedure called to update C_C_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C_ID_WIDTH { PARAM_VALUE.C_C_ID_WIDTH } {
	# Procedure called to validate C_C_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DM_N_WIDTH { PARAM_VALUE.C_DM_N_WIDTH } {
	# Procedure called to update C_DM_N_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DM_N_WIDTH { PARAM_VALUE.C_DM_N_WIDTH } {
	# Procedure called to validate C_DM_N_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DQS_C_WIDTH { PARAM_VALUE.C_DQS_C_WIDTH } {
	# Procedure called to update C_DQS_C_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DQS_C_WIDTH { PARAM_VALUE.C_DQS_C_WIDTH } {
	# Procedure called to validate C_DQS_C_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DQS_T_WIDTH { PARAM_VALUE.C_DQS_T_WIDTH } {
	# Procedure called to update C_DQS_T_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DQS_T_WIDTH { PARAM_VALUE.C_DQS_T_WIDTH } {
	# Procedure called to validate C_DQS_T_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DQ_WIDTH { PARAM_VALUE.C_DQ_WIDTH } {
	# Procedure called to update C_DQ_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DQ_WIDTH { PARAM_VALUE.C_DQ_WIDTH } {
	# Procedure called to validate C_DQ_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_ACT_N { PARAM_VALUE.C_HAS_ACT_N } {
	# Procedure called to update C_HAS_ACT_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ACT_N { PARAM_VALUE.C_HAS_ACT_N } {
	# Procedure called to validate C_HAS_ACT_N
	return true
}

proc update_PARAM_VALUE.C_HAS_ADR { PARAM_VALUE.C_HAS_ADR } {
	# Procedure called to update C_HAS_ADR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ADR { PARAM_VALUE.C_HAS_ADR } {
	# Procedure called to validate C_HAS_ADR
	return true
}

proc update_PARAM_VALUE.C_HAS_ALERT_N { PARAM_VALUE.C_HAS_ALERT_N } {
	# Procedure called to update C_HAS_ALERT_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ALERT_N { PARAM_VALUE.C_HAS_ALERT_N } {
	# Procedure called to validate C_HAS_ALERT_N
	return true
}

proc update_PARAM_VALUE.C_HAS_BA { PARAM_VALUE.C_HAS_BA } {
	# Procedure called to update C_HAS_BA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BA { PARAM_VALUE.C_HAS_BA } {
	# Procedure called to validate C_HAS_BA
	return true
}

proc update_PARAM_VALUE.C_HAS_BG { PARAM_VALUE.C_HAS_BG } {
	# Procedure called to update C_HAS_BG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BG { PARAM_VALUE.C_HAS_BG } {
	# Procedure called to validate C_HAS_BG
	return true
}

proc update_PARAM_VALUE.C_HAS_CKE { PARAM_VALUE.C_HAS_CKE } {
	# Procedure called to update C_HAS_CKE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CKE { PARAM_VALUE.C_HAS_CKE } {
	# Procedure called to validate C_HAS_CKE
	return true
}

proc update_PARAM_VALUE.C_HAS_CK_C { PARAM_VALUE.C_HAS_CK_C } {
	# Procedure called to update C_HAS_CK_C when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CK_C { PARAM_VALUE.C_HAS_CK_C } {
	# Procedure called to validate C_HAS_CK_C
	return true
}

proc update_PARAM_VALUE.C_HAS_CK_T { PARAM_VALUE.C_HAS_CK_T } {
	# Procedure called to update C_HAS_CK_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CK_T { PARAM_VALUE.C_HAS_CK_T } {
	# Procedure called to validate C_HAS_CK_T
	return true
}

proc update_PARAM_VALUE.C_HAS_CS_N { PARAM_VALUE.C_HAS_CS_N } {
	# Procedure called to update C_HAS_CS_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CS_N { PARAM_VALUE.C_HAS_CS_N } {
	# Procedure called to validate C_HAS_CS_N
	return true
}

proc update_PARAM_VALUE.C_HAS_C_ID { PARAM_VALUE.C_HAS_C_ID } {
	# Procedure called to update C_HAS_C_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_C_ID { PARAM_VALUE.C_HAS_C_ID } {
	# Procedure called to validate C_HAS_C_ID
	return true
}

proc update_PARAM_VALUE.C_HAS_DM_N { PARAM_VALUE.C_HAS_DM_N } {
	# Procedure called to update C_HAS_DM_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DM_N { PARAM_VALUE.C_HAS_DM_N } {
	# Procedure called to validate C_HAS_DM_N
	return true
}

proc update_PARAM_VALUE.C_HAS_DQ { PARAM_VALUE.C_HAS_DQ } {
	# Procedure called to update C_HAS_DQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DQ { PARAM_VALUE.C_HAS_DQ } {
	# Procedure called to validate C_HAS_DQ
	return true
}

proc update_PARAM_VALUE.C_HAS_DQS_C { PARAM_VALUE.C_HAS_DQS_C } {
	# Procedure called to update C_HAS_DQS_C when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DQS_C { PARAM_VALUE.C_HAS_DQS_C } {
	# Procedure called to validate C_HAS_DQS_C
	return true
}

proc update_PARAM_VALUE.C_HAS_DQS_T { PARAM_VALUE.C_HAS_DQS_T } {
	# Procedure called to update C_HAS_DQS_T when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DQS_T { PARAM_VALUE.C_HAS_DQS_T } {
	# Procedure called to validate C_HAS_DQS_T
	return true
}

proc update_PARAM_VALUE.C_HAS_ODT { PARAM_VALUE.C_HAS_ODT } {
	# Procedure called to update C_HAS_ODT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ODT { PARAM_VALUE.C_HAS_ODT } {
	# Procedure called to validate C_HAS_ODT
	return true
}

proc update_PARAM_VALUE.C_HAS_PAR { PARAM_VALUE.C_HAS_PAR } {
	# Procedure called to update C_HAS_PAR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_PAR { PARAM_VALUE.C_HAS_PAR } {
	# Procedure called to validate C_HAS_PAR
	return true
}

proc update_PARAM_VALUE.C_HAS_RESET_N { PARAM_VALUE.C_HAS_RESET_N } {
	# Procedure called to update C_HAS_RESET_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RESET_N { PARAM_VALUE.C_HAS_RESET_N } {
	# Procedure called to validate C_HAS_RESET_N
	return true
}

proc update_PARAM_VALUE.C_ODT_WIDTH { PARAM_VALUE.C_ODT_WIDTH } {
	# Procedure called to update C_ODT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ODT_WIDTH { PARAM_VALUE.C_ODT_WIDTH } {
	# Procedure called to validate C_ODT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PAR_WIDTH { PARAM_VALUE.C_PAR_WIDTH } {
	# Procedure called to update C_PAR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PAR_WIDTH { PARAM_VALUE.C_PAR_WIDTH } {
	# Procedure called to validate C_PAR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RESET_N_WIDTH { PARAM_VALUE.C_RESET_N_WIDTH } {
	# Procedure called to update C_RESET_N_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RESET_N_WIDTH { PARAM_VALUE.C_RESET_N_WIDTH } {
	# Procedure called to validate C_RESET_N_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_DQ_WIDTH { MODELPARAM_VALUE.C_DQ_WIDTH PARAM_VALUE.C_DQ_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DQ_WIDTH}] ${MODELPARAM_VALUE.C_DQ_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DQ { MODELPARAM_VALUE.C_HAS_DQ PARAM_VALUE.C_HAS_DQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DQ}] ${MODELPARAM_VALUE.C_HAS_DQ}
}

proc update_MODELPARAM_VALUE.C_DQS_T_WIDTH { MODELPARAM_VALUE.C_DQS_T_WIDTH PARAM_VALUE.C_DQS_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DQS_T_WIDTH}] ${MODELPARAM_VALUE.C_DQS_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DQS_T { MODELPARAM_VALUE.C_HAS_DQS_T PARAM_VALUE.C_HAS_DQS_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DQS_T}] ${MODELPARAM_VALUE.C_HAS_DQS_T}
}

proc update_MODELPARAM_VALUE.C_DQS_C_WIDTH { MODELPARAM_VALUE.C_DQS_C_WIDTH PARAM_VALUE.C_DQS_C_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DQS_C_WIDTH}] ${MODELPARAM_VALUE.C_DQS_C_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DQS_C { MODELPARAM_VALUE.C_HAS_DQS_C PARAM_VALUE.C_HAS_DQS_C } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DQS_C}] ${MODELPARAM_VALUE.C_HAS_DQS_C}
}

proc update_MODELPARAM_VALUE.C_ADR_WIDTH { MODELPARAM_VALUE.C_ADR_WIDTH PARAM_VALUE.C_ADR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADR_WIDTH}] ${MODELPARAM_VALUE.C_ADR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ADR { MODELPARAM_VALUE.C_HAS_ADR PARAM_VALUE.C_HAS_ADR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ADR}] ${MODELPARAM_VALUE.C_HAS_ADR}
}

proc update_MODELPARAM_VALUE.C_BA_WIDTH { MODELPARAM_VALUE.C_BA_WIDTH PARAM_VALUE.C_BA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BA_WIDTH}] ${MODELPARAM_VALUE.C_BA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BA { MODELPARAM_VALUE.C_HAS_BA PARAM_VALUE.C_HAS_BA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BA}] ${MODELPARAM_VALUE.C_HAS_BA}
}

proc update_MODELPARAM_VALUE.C_BG_WIDTH { MODELPARAM_VALUE.C_BG_WIDTH PARAM_VALUE.C_BG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BG_WIDTH}] ${MODELPARAM_VALUE.C_BG_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BG { MODELPARAM_VALUE.C_HAS_BG PARAM_VALUE.C_HAS_BG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BG}] ${MODELPARAM_VALUE.C_HAS_BG}
}

proc update_MODELPARAM_VALUE.C_ACT_N_WIDTH { MODELPARAM_VALUE.C_ACT_N_WIDTH PARAM_VALUE.C_ACT_N_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ACT_N_WIDTH}] ${MODELPARAM_VALUE.C_ACT_N_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ACT_N { MODELPARAM_VALUE.C_HAS_ACT_N PARAM_VALUE.C_HAS_ACT_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ACT_N}] ${MODELPARAM_VALUE.C_HAS_ACT_N}
}

proc update_MODELPARAM_VALUE.C_RESET_N_WIDTH { MODELPARAM_VALUE.C_RESET_N_WIDTH PARAM_VALUE.C_RESET_N_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RESET_N_WIDTH}] ${MODELPARAM_VALUE.C_RESET_N_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RESET_N { MODELPARAM_VALUE.C_HAS_RESET_N PARAM_VALUE.C_HAS_RESET_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RESET_N}] ${MODELPARAM_VALUE.C_HAS_RESET_N}
}

proc update_MODELPARAM_VALUE.C_CK_T_WIDTH { MODELPARAM_VALUE.C_CK_T_WIDTH PARAM_VALUE.C_CK_T_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CK_T_WIDTH}] ${MODELPARAM_VALUE.C_CK_T_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CK_T { MODELPARAM_VALUE.C_HAS_CK_T PARAM_VALUE.C_HAS_CK_T } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CK_T}] ${MODELPARAM_VALUE.C_HAS_CK_T}
}

proc update_MODELPARAM_VALUE.C_CK_C_WIDTH { MODELPARAM_VALUE.C_CK_C_WIDTH PARAM_VALUE.C_CK_C_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CK_C_WIDTH}] ${MODELPARAM_VALUE.C_CK_C_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CK_C { MODELPARAM_VALUE.C_HAS_CK_C PARAM_VALUE.C_HAS_CK_C } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CK_C}] ${MODELPARAM_VALUE.C_HAS_CK_C}
}

proc update_MODELPARAM_VALUE.C_CKE_WIDTH { MODELPARAM_VALUE.C_CKE_WIDTH PARAM_VALUE.C_CKE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CKE_WIDTH}] ${MODELPARAM_VALUE.C_CKE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CKE { MODELPARAM_VALUE.C_HAS_CKE PARAM_VALUE.C_HAS_CKE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CKE}] ${MODELPARAM_VALUE.C_HAS_CKE}
}

proc update_MODELPARAM_VALUE.C_CS_N_WIDTH { MODELPARAM_VALUE.C_CS_N_WIDTH PARAM_VALUE.C_CS_N_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CS_N_WIDTH}] ${MODELPARAM_VALUE.C_CS_N_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CS_N { MODELPARAM_VALUE.C_HAS_CS_N PARAM_VALUE.C_HAS_CS_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CS_N}] ${MODELPARAM_VALUE.C_HAS_CS_N}
}

proc update_MODELPARAM_VALUE.C_DM_N_WIDTH { MODELPARAM_VALUE.C_DM_N_WIDTH PARAM_VALUE.C_DM_N_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DM_N_WIDTH}] ${MODELPARAM_VALUE.C_DM_N_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DM_N { MODELPARAM_VALUE.C_HAS_DM_N PARAM_VALUE.C_HAS_DM_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DM_N}] ${MODELPARAM_VALUE.C_HAS_DM_N}
}

proc update_MODELPARAM_VALUE.C_ODT_WIDTH { MODELPARAM_VALUE.C_ODT_WIDTH PARAM_VALUE.C_ODT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ODT_WIDTH}] ${MODELPARAM_VALUE.C_ODT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ODT { MODELPARAM_VALUE.C_HAS_ODT PARAM_VALUE.C_HAS_ODT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ODT}] ${MODELPARAM_VALUE.C_HAS_ODT}
}

proc update_MODELPARAM_VALUE.C_PAR_WIDTH { MODELPARAM_VALUE.C_PAR_WIDTH PARAM_VALUE.C_PAR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PAR_WIDTH}] ${MODELPARAM_VALUE.C_PAR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_PAR { MODELPARAM_VALUE.C_HAS_PAR PARAM_VALUE.C_HAS_PAR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_PAR}] ${MODELPARAM_VALUE.C_HAS_PAR}
}

proc update_MODELPARAM_VALUE.C_C_ID_WIDTH { MODELPARAM_VALUE.C_C_ID_WIDTH PARAM_VALUE.C_C_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C_ID_WIDTH}] ${MODELPARAM_VALUE.C_C_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_C_ID { MODELPARAM_VALUE.C_HAS_C_ID PARAM_VALUE.C_HAS_C_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_C_ID}] ${MODELPARAM_VALUE.C_HAS_C_ID}
}

proc update_MODELPARAM_VALUE.C_ALERT_N_WIDTH { MODELPARAM_VALUE.C_ALERT_N_WIDTH PARAM_VALUE.C_ALERT_N_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ALERT_N_WIDTH}] ${MODELPARAM_VALUE.C_ALERT_N_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ALERT_N { MODELPARAM_VALUE.C_HAS_ALERT_N PARAM_VALUE.C_HAS_ALERT_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ALERT_N}] ${MODELPARAM_VALUE.C_HAS_ALERT_N}
}

