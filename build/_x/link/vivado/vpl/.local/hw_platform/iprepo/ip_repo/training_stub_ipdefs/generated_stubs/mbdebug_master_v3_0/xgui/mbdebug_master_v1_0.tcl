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
  ipgui::add_param $IPINST -name "C_ARADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BRESP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CAPTURE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DISABLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BRESP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CAPTURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_CLK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_DISABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_REG_EN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RRESP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TDI" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TDO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRCLK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRIG_ACK_IN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRIG_ACK_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRIG_IN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRIG_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_TRVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_UPDATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_REG_EN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RRESP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SHIFT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TDI_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TDO_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRCLK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRIG_ACK_IN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRIG_ACK_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRIG_IN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRIG_OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TRVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_UPDATE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WVALID_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_ARADDR_WIDTH { PARAM_VALUE.C_ARADDR_WIDTH } {
	# Procedure called to update C_ARADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARADDR_WIDTH { PARAM_VALUE.C_ARADDR_WIDTH } {
	# Procedure called to validate C_ARADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARREADY_WIDTH { PARAM_VALUE.C_ARREADY_WIDTH } {
	# Procedure called to update C_ARREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARREADY_WIDTH { PARAM_VALUE.C_ARREADY_WIDTH } {
	# Procedure called to validate C_ARREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARVALID_WIDTH { PARAM_VALUE.C_ARVALID_WIDTH } {
	# Procedure called to update C_ARVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARVALID_WIDTH { PARAM_VALUE.C_ARVALID_WIDTH } {
	# Procedure called to validate C_ARVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWADDR_WIDTH { PARAM_VALUE.C_AWADDR_WIDTH } {
	# Procedure called to update C_AWADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWADDR_WIDTH { PARAM_VALUE.C_AWADDR_WIDTH } {
	# Procedure called to validate C_AWADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWREADY_WIDTH { PARAM_VALUE.C_AWREADY_WIDTH } {
	# Procedure called to update C_AWREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWREADY_WIDTH { PARAM_VALUE.C_AWREADY_WIDTH } {
	# Procedure called to validate C_AWREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWVALID_WIDTH { PARAM_VALUE.C_AWVALID_WIDTH } {
	# Procedure called to update C_AWVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWVALID_WIDTH { PARAM_VALUE.C_AWVALID_WIDTH } {
	# Procedure called to validate C_AWVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BREADY_WIDTH { PARAM_VALUE.C_BREADY_WIDTH } {
	# Procedure called to update C_BREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BREADY_WIDTH { PARAM_VALUE.C_BREADY_WIDTH } {
	# Procedure called to validate C_BREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BRESP_WIDTH { PARAM_VALUE.C_BRESP_WIDTH } {
	# Procedure called to update C_BRESP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BRESP_WIDTH { PARAM_VALUE.C_BRESP_WIDTH } {
	# Procedure called to validate C_BRESP_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BVALID_WIDTH { PARAM_VALUE.C_BVALID_WIDTH } {
	# Procedure called to update C_BVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BVALID_WIDTH { PARAM_VALUE.C_BVALID_WIDTH } {
	# Procedure called to validate C_BVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CAPTURE_WIDTH { PARAM_VALUE.C_CAPTURE_WIDTH } {
	# Procedure called to update C_CAPTURE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CAPTURE_WIDTH { PARAM_VALUE.C_CAPTURE_WIDTH } {
	# Procedure called to validate C_CAPTURE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CLK_WIDTH { PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to update C_CLK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_WIDTH { PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to validate C_CLK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DISABLE_WIDTH { PARAM_VALUE.C_DISABLE_WIDTH } {
	# Procedure called to update C_DISABLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DISABLE_WIDTH { PARAM_VALUE.C_DISABLE_WIDTH } {
	# Procedure called to validate C_DISABLE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_ARADDR { PARAM_VALUE.C_HAS_ARADDR } {
	# Procedure called to update C_HAS_ARADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARADDR { PARAM_VALUE.C_HAS_ARADDR } {
	# Procedure called to validate C_HAS_ARADDR
	return true
}

proc update_PARAM_VALUE.C_HAS_ARREADY { PARAM_VALUE.C_HAS_ARREADY } {
	# Procedure called to update C_HAS_ARREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARREADY { PARAM_VALUE.C_HAS_ARREADY } {
	# Procedure called to validate C_HAS_ARREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_ARVALID { PARAM_VALUE.C_HAS_ARVALID } {
	# Procedure called to update C_HAS_ARVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARVALID { PARAM_VALUE.C_HAS_ARVALID } {
	# Procedure called to validate C_HAS_ARVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_AWADDR { PARAM_VALUE.C_HAS_AWADDR } {
	# Procedure called to update C_HAS_AWADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWADDR { PARAM_VALUE.C_HAS_AWADDR } {
	# Procedure called to validate C_HAS_AWADDR
	return true
}

proc update_PARAM_VALUE.C_HAS_AWREADY { PARAM_VALUE.C_HAS_AWREADY } {
	# Procedure called to update C_HAS_AWREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWREADY { PARAM_VALUE.C_HAS_AWREADY } {
	# Procedure called to validate C_HAS_AWREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_AWVALID { PARAM_VALUE.C_HAS_AWVALID } {
	# Procedure called to update C_HAS_AWVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWVALID { PARAM_VALUE.C_HAS_AWVALID } {
	# Procedure called to validate C_HAS_AWVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_BREADY { PARAM_VALUE.C_HAS_BREADY } {
	# Procedure called to update C_HAS_BREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BREADY { PARAM_VALUE.C_HAS_BREADY } {
	# Procedure called to validate C_HAS_BREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_BRESP { PARAM_VALUE.C_HAS_BRESP } {
	# Procedure called to update C_HAS_BRESP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BRESP { PARAM_VALUE.C_HAS_BRESP } {
	# Procedure called to validate C_HAS_BRESP
	return true
}

proc update_PARAM_VALUE.C_HAS_BVALID { PARAM_VALUE.C_HAS_BVALID } {
	# Procedure called to update C_HAS_BVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BVALID { PARAM_VALUE.C_HAS_BVALID } {
	# Procedure called to validate C_HAS_BVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_CAPTURE { PARAM_VALUE.C_HAS_CAPTURE } {
	# Procedure called to update C_HAS_CAPTURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CAPTURE { PARAM_VALUE.C_HAS_CAPTURE } {
	# Procedure called to validate C_HAS_CAPTURE
	return true
}

proc update_PARAM_VALUE.C_HAS_CLK { PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to update C_HAS_CLK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_CLK { PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to validate C_HAS_CLK
	return true
}

proc update_PARAM_VALUE.C_HAS_DISABLE { PARAM_VALUE.C_HAS_DISABLE } {
	# Procedure called to update C_HAS_DISABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_DISABLE { PARAM_VALUE.C_HAS_DISABLE } {
	# Procedure called to validate C_HAS_DISABLE
	return true
}

proc update_PARAM_VALUE.C_HAS_RDATA { PARAM_VALUE.C_HAS_RDATA } {
	# Procedure called to update C_HAS_RDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RDATA { PARAM_VALUE.C_HAS_RDATA } {
	# Procedure called to validate C_HAS_RDATA
	return true
}

proc update_PARAM_VALUE.C_HAS_REG_EN { PARAM_VALUE.C_HAS_REG_EN } {
	# Procedure called to update C_HAS_REG_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_REG_EN { PARAM_VALUE.C_HAS_REG_EN } {
	# Procedure called to validate C_HAS_REG_EN
	return true
}

proc update_PARAM_VALUE.C_HAS_RREADY { PARAM_VALUE.C_HAS_RREADY } {
	# Procedure called to update C_HAS_RREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RREADY { PARAM_VALUE.C_HAS_RREADY } {
	# Procedure called to validate C_HAS_RREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_RRESP { PARAM_VALUE.C_HAS_RRESP } {
	# Procedure called to update C_HAS_RRESP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RRESP { PARAM_VALUE.C_HAS_RRESP } {
	# Procedure called to validate C_HAS_RRESP
	return true
}

proc update_PARAM_VALUE.C_HAS_RST { PARAM_VALUE.C_HAS_RST } {
	# Procedure called to update C_HAS_RST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RST { PARAM_VALUE.C_HAS_RST } {
	# Procedure called to validate C_HAS_RST
	return true
}

proc update_PARAM_VALUE.C_HAS_RVALID { PARAM_VALUE.C_HAS_RVALID } {
	# Procedure called to update C_HAS_RVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RVALID { PARAM_VALUE.C_HAS_RVALID } {
	# Procedure called to validate C_HAS_RVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_SHIFT { PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to update C_HAS_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_SHIFT { PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to validate C_HAS_SHIFT
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

proc update_PARAM_VALUE.C_HAS_TRCLK { PARAM_VALUE.C_HAS_TRCLK } {
	# Procedure called to update C_HAS_TRCLK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRCLK { PARAM_VALUE.C_HAS_TRCLK } {
	# Procedure called to validate C_HAS_TRCLK
	return true
}

proc update_PARAM_VALUE.C_HAS_TRDATA { PARAM_VALUE.C_HAS_TRDATA } {
	# Procedure called to update C_HAS_TRDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRDATA { PARAM_VALUE.C_HAS_TRDATA } {
	# Procedure called to validate C_HAS_TRDATA
	return true
}

proc update_PARAM_VALUE.C_HAS_TRIG_ACK_IN { PARAM_VALUE.C_HAS_TRIG_ACK_IN } {
	# Procedure called to update C_HAS_TRIG_ACK_IN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRIG_ACK_IN { PARAM_VALUE.C_HAS_TRIG_ACK_IN } {
	# Procedure called to validate C_HAS_TRIG_ACK_IN
	return true
}

proc update_PARAM_VALUE.C_HAS_TRIG_ACK_OUT { PARAM_VALUE.C_HAS_TRIG_ACK_OUT } {
	# Procedure called to update C_HAS_TRIG_ACK_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRIG_ACK_OUT { PARAM_VALUE.C_HAS_TRIG_ACK_OUT } {
	# Procedure called to validate C_HAS_TRIG_ACK_OUT
	return true
}

proc update_PARAM_VALUE.C_HAS_TRIG_IN { PARAM_VALUE.C_HAS_TRIG_IN } {
	# Procedure called to update C_HAS_TRIG_IN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRIG_IN { PARAM_VALUE.C_HAS_TRIG_IN } {
	# Procedure called to validate C_HAS_TRIG_IN
	return true
}

proc update_PARAM_VALUE.C_HAS_TRIG_OUT { PARAM_VALUE.C_HAS_TRIG_OUT } {
	# Procedure called to update C_HAS_TRIG_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRIG_OUT { PARAM_VALUE.C_HAS_TRIG_OUT } {
	# Procedure called to validate C_HAS_TRIG_OUT
	return true
}

proc update_PARAM_VALUE.C_HAS_TRREADY { PARAM_VALUE.C_HAS_TRREADY } {
	# Procedure called to update C_HAS_TRREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRREADY { PARAM_VALUE.C_HAS_TRREADY } {
	# Procedure called to validate C_HAS_TRREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_TRVALID { PARAM_VALUE.C_HAS_TRVALID } {
	# Procedure called to update C_HAS_TRVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_TRVALID { PARAM_VALUE.C_HAS_TRVALID } {
	# Procedure called to validate C_HAS_TRVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_UPDATE { PARAM_VALUE.C_HAS_UPDATE } {
	# Procedure called to update C_HAS_UPDATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_UPDATE { PARAM_VALUE.C_HAS_UPDATE } {
	# Procedure called to validate C_HAS_UPDATE
	return true
}

proc update_PARAM_VALUE.C_HAS_WDATA { PARAM_VALUE.C_HAS_WDATA } {
	# Procedure called to update C_HAS_WDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WDATA { PARAM_VALUE.C_HAS_WDATA } {
	# Procedure called to validate C_HAS_WDATA
	return true
}

proc update_PARAM_VALUE.C_HAS_WREADY { PARAM_VALUE.C_HAS_WREADY } {
	# Procedure called to update C_HAS_WREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WREADY { PARAM_VALUE.C_HAS_WREADY } {
	# Procedure called to validate C_HAS_WREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_WVALID { PARAM_VALUE.C_HAS_WVALID } {
	# Procedure called to update C_HAS_WVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WVALID { PARAM_VALUE.C_HAS_WVALID } {
	# Procedure called to validate C_HAS_WVALID
	return true
}

proc update_PARAM_VALUE.C_RDATA_WIDTH { PARAM_VALUE.C_RDATA_WIDTH } {
	# Procedure called to update C_RDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RDATA_WIDTH { PARAM_VALUE.C_RDATA_WIDTH } {
	# Procedure called to validate C_RDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_REG_EN_WIDTH { PARAM_VALUE.C_REG_EN_WIDTH } {
	# Procedure called to update C_REG_EN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_REG_EN_WIDTH { PARAM_VALUE.C_REG_EN_WIDTH } {
	# Procedure called to validate C_REG_EN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RREADY_WIDTH { PARAM_VALUE.C_RREADY_WIDTH } {
	# Procedure called to update C_RREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RREADY_WIDTH { PARAM_VALUE.C_RREADY_WIDTH } {
	# Procedure called to validate C_RREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RRESP_WIDTH { PARAM_VALUE.C_RRESP_WIDTH } {
	# Procedure called to update C_RRESP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RRESP_WIDTH { PARAM_VALUE.C_RRESP_WIDTH } {
	# Procedure called to validate C_RRESP_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RST_WIDTH { PARAM_VALUE.C_RST_WIDTH } {
	# Procedure called to update C_RST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RST_WIDTH { PARAM_VALUE.C_RST_WIDTH } {
	# Procedure called to validate C_RST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RVALID_WIDTH { PARAM_VALUE.C_RVALID_WIDTH } {
	# Procedure called to update C_RVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RVALID_WIDTH { PARAM_VALUE.C_RVALID_WIDTH } {
	# Procedure called to validate C_RVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SHIFT_WIDTH { PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to update C_SHIFT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SHIFT_WIDTH { PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to validate C_SHIFT_WIDTH
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

proc update_PARAM_VALUE.C_TRCLK_WIDTH { PARAM_VALUE.C_TRCLK_WIDTH } {
	# Procedure called to update C_TRCLK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRCLK_WIDTH { PARAM_VALUE.C_TRCLK_WIDTH } {
	# Procedure called to validate C_TRCLK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRDATA_WIDTH { PARAM_VALUE.C_TRDATA_WIDTH } {
	# Procedure called to update C_TRDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRDATA_WIDTH { PARAM_VALUE.C_TRDATA_WIDTH } {
	# Procedure called to validate C_TRDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRIG_ACK_IN_WIDTH { PARAM_VALUE.C_TRIG_ACK_IN_WIDTH } {
	# Procedure called to update C_TRIG_ACK_IN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRIG_ACK_IN_WIDTH { PARAM_VALUE.C_TRIG_ACK_IN_WIDTH } {
	# Procedure called to validate C_TRIG_ACK_IN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRIG_ACK_OUT_WIDTH { PARAM_VALUE.C_TRIG_ACK_OUT_WIDTH } {
	# Procedure called to update C_TRIG_ACK_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRIG_ACK_OUT_WIDTH { PARAM_VALUE.C_TRIG_ACK_OUT_WIDTH } {
	# Procedure called to validate C_TRIG_ACK_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRIG_IN_WIDTH { PARAM_VALUE.C_TRIG_IN_WIDTH } {
	# Procedure called to update C_TRIG_IN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRIG_IN_WIDTH { PARAM_VALUE.C_TRIG_IN_WIDTH } {
	# Procedure called to validate C_TRIG_IN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRIG_OUT_WIDTH { PARAM_VALUE.C_TRIG_OUT_WIDTH } {
	# Procedure called to update C_TRIG_OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRIG_OUT_WIDTH { PARAM_VALUE.C_TRIG_OUT_WIDTH } {
	# Procedure called to validate C_TRIG_OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRREADY_WIDTH { PARAM_VALUE.C_TRREADY_WIDTH } {
	# Procedure called to update C_TRREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRREADY_WIDTH { PARAM_VALUE.C_TRREADY_WIDTH } {
	# Procedure called to validate C_TRREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TRVALID_WIDTH { PARAM_VALUE.C_TRVALID_WIDTH } {
	# Procedure called to update C_TRVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TRVALID_WIDTH { PARAM_VALUE.C_TRVALID_WIDTH } {
	# Procedure called to validate C_TRVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_UPDATE_WIDTH { PARAM_VALUE.C_UPDATE_WIDTH } {
	# Procedure called to update C_UPDATE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_UPDATE_WIDTH { PARAM_VALUE.C_UPDATE_WIDTH } {
	# Procedure called to validate C_UPDATE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WDATA_WIDTH { PARAM_VALUE.C_WDATA_WIDTH } {
	# Procedure called to update C_WDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WDATA_WIDTH { PARAM_VALUE.C_WDATA_WIDTH } {
	# Procedure called to validate C_WDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WREADY_WIDTH { PARAM_VALUE.C_WREADY_WIDTH } {
	# Procedure called to update C_WREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WREADY_WIDTH { PARAM_VALUE.C_WREADY_WIDTH } {
	# Procedure called to validate C_WREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WVALID_WIDTH { PARAM_VALUE.C_WVALID_WIDTH } {
	# Procedure called to update C_WVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WVALID_WIDTH { PARAM_VALUE.C_WVALID_WIDTH } {
	# Procedure called to validate C_WVALID_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_CLK_WIDTH { MODELPARAM_VALUE.C_CLK_WIDTH PARAM_VALUE.C_CLK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_WIDTH}] ${MODELPARAM_VALUE.C_CLK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CLK { MODELPARAM_VALUE.C_HAS_CLK PARAM_VALUE.C_HAS_CLK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CLK}] ${MODELPARAM_VALUE.C_HAS_CLK}
}

proc update_MODELPARAM_VALUE.C_TDI_WIDTH { MODELPARAM_VALUE.C_TDI_WIDTH PARAM_VALUE.C_TDI_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TDI_WIDTH}] ${MODELPARAM_VALUE.C_TDI_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TDI { MODELPARAM_VALUE.C_HAS_TDI PARAM_VALUE.C_HAS_TDI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TDI}] ${MODELPARAM_VALUE.C_HAS_TDI}
}

proc update_MODELPARAM_VALUE.C_TDO_WIDTH { MODELPARAM_VALUE.C_TDO_WIDTH PARAM_VALUE.C_TDO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TDO_WIDTH}] ${MODELPARAM_VALUE.C_TDO_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TDO { MODELPARAM_VALUE.C_HAS_TDO PARAM_VALUE.C_HAS_TDO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TDO}] ${MODELPARAM_VALUE.C_HAS_TDO}
}

proc update_MODELPARAM_VALUE.C_REG_EN_WIDTH { MODELPARAM_VALUE.C_REG_EN_WIDTH PARAM_VALUE.C_REG_EN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_REG_EN_WIDTH}] ${MODELPARAM_VALUE.C_REG_EN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_REG_EN { MODELPARAM_VALUE.C_HAS_REG_EN PARAM_VALUE.C_HAS_REG_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_REG_EN}] ${MODELPARAM_VALUE.C_HAS_REG_EN}
}

proc update_MODELPARAM_VALUE.C_SHIFT_WIDTH { MODELPARAM_VALUE.C_SHIFT_WIDTH PARAM_VALUE.C_SHIFT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SHIFT_WIDTH}] ${MODELPARAM_VALUE.C_SHIFT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_SHIFT { MODELPARAM_VALUE.C_HAS_SHIFT PARAM_VALUE.C_HAS_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_SHIFT}] ${MODELPARAM_VALUE.C_HAS_SHIFT}
}

proc update_MODELPARAM_VALUE.C_CAPTURE_WIDTH { MODELPARAM_VALUE.C_CAPTURE_WIDTH PARAM_VALUE.C_CAPTURE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CAPTURE_WIDTH}] ${MODELPARAM_VALUE.C_CAPTURE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_CAPTURE { MODELPARAM_VALUE.C_HAS_CAPTURE PARAM_VALUE.C_HAS_CAPTURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_CAPTURE}] ${MODELPARAM_VALUE.C_HAS_CAPTURE}
}

proc update_MODELPARAM_VALUE.C_UPDATE_WIDTH { MODELPARAM_VALUE.C_UPDATE_WIDTH PARAM_VALUE.C_UPDATE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_UPDATE_WIDTH}] ${MODELPARAM_VALUE.C_UPDATE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_UPDATE { MODELPARAM_VALUE.C_HAS_UPDATE PARAM_VALUE.C_HAS_UPDATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_UPDATE}] ${MODELPARAM_VALUE.C_HAS_UPDATE}
}

proc update_MODELPARAM_VALUE.C_RST_WIDTH { MODELPARAM_VALUE.C_RST_WIDTH PARAM_VALUE.C_RST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RST_WIDTH}] ${MODELPARAM_VALUE.C_RST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RST { MODELPARAM_VALUE.C_HAS_RST PARAM_VALUE.C_HAS_RST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RST}] ${MODELPARAM_VALUE.C_HAS_RST}
}

proc update_MODELPARAM_VALUE.C_TRIG_IN_WIDTH { MODELPARAM_VALUE.C_TRIG_IN_WIDTH PARAM_VALUE.C_TRIG_IN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRIG_IN_WIDTH}] ${MODELPARAM_VALUE.C_TRIG_IN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRIG_IN { MODELPARAM_VALUE.C_HAS_TRIG_IN PARAM_VALUE.C_HAS_TRIG_IN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRIG_IN}] ${MODELPARAM_VALUE.C_HAS_TRIG_IN}
}

proc update_MODELPARAM_VALUE.C_TRIG_ACK_IN_WIDTH { MODELPARAM_VALUE.C_TRIG_ACK_IN_WIDTH PARAM_VALUE.C_TRIG_ACK_IN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRIG_ACK_IN_WIDTH}] ${MODELPARAM_VALUE.C_TRIG_ACK_IN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRIG_ACK_IN { MODELPARAM_VALUE.C_HAS_TRIG_ACK_IN PARAM_VALUE.C_HAS_TRIG_ACK_IN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRIG_ACK_IN}] ${MODELPARAM_VALUE.C_HAS_TRIG_ACK_IN}
}

proc update_MODELPARAM_VALUE.C_TRIG_OUT_WIDTH { MODELPARAM_VALUE.C_TRIG_OUT_WIDTH PARAM_VALUE.C_TRIG_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRIG_OUT_WIDTH}] ${MODELPARAM_VALUE.C_TRIG_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRIG_OUT { MODELPARAM_VALUE.C_HAS_TRIG_OUT PARAM_VALUE.C_HAS_TRIG_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRIG_OUT}] ${MODELPARAM_VALUE.C_HAS_TRIG_OUT}
}

proc update_MODELPARAM_VALUE.C_TRIG_ACK_OUT_WIDTH { MODELPARAM_VALUE.C_TRIG_ACK_OUT_WIDTH PARAM_VALUE.C_TRIG_ACK_OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRIG_ACK_OUT_WIDTH}] ${MODELPARAM_VALUE.C_TRIG_ACK_OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRIG_ACK_OUT { MODELPARAM_VALUE.C_HAS_TRIG_ACK_OUT PARAM_VALUE.C_HAS_TRIG_ACK_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRIG_ACK_OUT}] ${MODELPARAM_VALUE.C_HAS_TRIG_ACK_OUT}
}

proc update_MODELPARAM_VALUE.C_TRCLK_WIDTH { MODELPARAM_VALUE.C_TRCLK_WIDTH PARAM_VALUE.C_TRCLK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRCLK_WIDTH}] ${MODELPARAM_VALUE.C_TRCLK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRCLK { MODELPARAM_VALUE.C_HAS_TRCLK PARAM_VALUE.C_HAS_TRCLK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRCLK}] ${MODELPARAM_VALUE.C_HAS_TRCLK}
}

proc update_MODELPARAM_VALUE.C_TRDATA_WIDTH { MODELPARAM_VALUE.C_TRDATA_WIDTH PARAM_VALUE.C_TRDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRDATA_WIDTH}] ${MODELPARAM_VALUE.C_TRDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRDATA { MODELPARAM_VALUE.C_HAS_TRDATA PARAM_VALUE.C_HAS_TRDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRDATA}] ${MODELPARAM_VALUE.C_HAS_TRDATA}
}

proc update_MODELPARAM_VALUE.C_TRREADY_WIDTH { MODELPARAM_VALUE.C_TRREADY_WIDTH PARAM_VALUE.C_TRREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRREADY_WIDTH}] ${MODELPARAM_VALUE.C_TRREADY_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRREADY { MODELPARAM_VALUE.C_HAS_TRREADY PARAM_VALUE.C_HAS_TRREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRREADY}] ${MODELPARAM_VALUE.C_HAS_TRREADY}
}

proc update_MODELPARAM_VALUE.C_TRVALID_WIDTH { MODELPARAM_VALUE.C_TRVALID_WIDTH PARAM_VALUE.C_TRVALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TRVALID_WIDTH}] ${MODELPARAM_VALUE.C_TRVALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_TRVALID { MODELPARAM_VALUE.C_HAS_TRVALID PARAM_VALUE.C_HAS_TRVALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_TRVALID}] ${MODELPARAM_VALUE.C_HAS_TRVALID}
}

proc update_MODELPARAM_VALUE.C_AWADDR_WIDTH { MODELPARAM_VALUE.C_AWADDR_WIDTH PARAM_VALUE.C_AWADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWADDR_WIDTH}] ${MODELPARAM_VALUE.C_AWADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWADDR { MODELPARAM_VALUE.C_HAS_AWADDR PARAM_VALUE.C_HAS_AWADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWADDR}] ${MODELPARAM_VALUE.C_HAS_AWADDR}
}

proc update_MODELPARAM_VALUE.C_AWVALID_WIDTH { MODELPARAM_VALUE.C_AWVALID_WIDTH PARAM_VALUE.C_AWVALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWVALID_WIDTH}] ${MODELPARAM_VALUE.C_AWVALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWVALID { MODELPARAM_VALUE.C_HAS_AWVALID PARAM_VALUE.C_HAS_AWVALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWVALID}] ${MODELPARAM_VALUE.C_HAS_AWVALID}
}

proc update_MODELPARAM_VALUE.C_AWREADY_WIDTH { MODELPARAM_VALUE.C_AWREADY_WIDTH PARAM_VALUE.C_AWREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWREADY_WIDTH}] ${MODELPARAM_VALUE.C_AWREADY_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWREADY { MODELPARAM_VALUE.C_HAS_AWREADY PARAM_VALUE.C_HAS_AWREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWREADY}] ${MODELPARAM_VALUE.C_HAS_AWREADY}
}

proc update_MODELPARAM_VALUE.C_WDATA_WIDTH { MODELPARAM_VALUE.C_WDATA_WIDTH PARAM_VALUE.C_WDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WDATA_WIDTH}] ${MODELPARAM_VALUE.C_WDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WDATA { MODELPARAM_VALUE.C_HAS_WDATA PARAM_VALUE.C_HAS_WDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WDATA}] ${MODELPARAM_VALUE.C_HAS_WDATA}
}

proc update_MODELPARAM_VALUE.C_WVALID_WIDTH { MODELPARAM_VALUE.C_WVALID_WIDTH PARAM_VALUE.C_WVALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WVALID_WIDTH}] ${MODELPARAM_VALUE.C_WVALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WVALID { MODELPARAM_VALUE.C_HAS_WVALID PARAM_VALUE.C_HAS_WVALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WVALID}] ${MODELPARAM_VALUE.C_HAS_WVALID}
}

proc update_MODELPARAM_VALUE.C_WREADY_WIDTH { MODELPARAM_VALUE.C_WREADY_WIDTH PARAM_VALUE.C_WREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WREADY_WIDTH}] ${MODELPARAM_VALUE.C_WREADY_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WREADY { MODELPARAM_VALUE.C_HAS_WREADY PARAM_VALUE.C_HAS_WREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WREADY}] ${MODELPARAM_VALUE.C_HAS_WREADY}
}

proc update_MODELPARAM_VALUE.C_BRESP_WIDTH { MODELPARAM_VALUE.C_BRESP_WIDTH PARAM_VALUE.C_BRESP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BRESP_WIDTH}] ${MODELPARAM_VALUE.C_BRESP_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BRESP { MODELPARAM_VALUE.C_HAS_BRESP PARAM_VALUE.C_HAS_BRESP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BRESP}] ${MODELPARAM_VALUE.C_HAS_BRESP}
}

proc update_MODELPARAM_VALUE.C_BVALID_WIDTH { MODELPARAM_VALUE.C_BVALID_WIDTH PARAM_VALUE.C_BVALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BVALID_WIDTH}] ${MODELPARAM_VALUE.C_BVALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BVALID { MODELPARAM_VALUE.C_HAS_BVALID PARAM_VALUE.C_HAS_BVALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BVALID}] ${MODELPARAM_VALUE.C_HAS_BVALID}
}

proc update_MODELPARAM_VALUE.C_BREADY_WIDTH { MODELPARAM_VALUE.C_BREADY_WIDTH PARAM_VALUE.C_BREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BREADY_WIDTH}] ${MODELPARAM_VALUE.C_BREADY_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BREADY { MODELPARAM_VALUE.C_HAS_BREADY PARAM_VALUE.C_HAS_BREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BREADY}] ${MODELPARAM_VALUE.C_HAS_BREADY}
}

proc update_MODELPARAM_VALUE.C_ARADDR_WIDTH { MODELPARAM_VALUE.C_ARADDR_WIDTH PARAM_VALUE.C_ARADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARADDR_WIDTH}] ${MODELPARAM_VALUE.C_ARADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARADDR { MODELPARAM_VALUE.C_HAS_ARADDR PARAM_VALUE.C_HAS_ARADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARADDR}] ${MODELPARAM_VALUE.C_HAS_ARADDR}
}

proc update_MODELPARAM_VALUE.C_ARVALID_WIDTH { MODELPARAM_VALUE.C_ARVALID_WIDTH PARAM_VALUE.C_ARVALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARVALID_WIDTH}] ${MODELPARAM_VALUE.C_ARVALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARVALID { MODELPARAM_VALUE.C_HAS_ARVALID PARAM_VALUE.C_HAS_ARVALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARVALID}] ${MODELPARAM_VALUE.C_HAS_ARVALID}
}

proc update_MODELPARAM_VALUE.C_ARREADY_WIDTH { MODELPARAM_VALUE.C_ARREADY_WIDTH PARAM_VALUE.C_ARREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARREADY_WIDTH}] ${MODELPARAM_VALUE.C_ARREADY_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARREADY { MODELPARAM_VALUE.C_HAS_ARREADY PARAM_VALUE.C_HAS_ARREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARREADY}] ${MODELPARAM_VALUE.C_HAS_ARREADY}
}

proc update_MODELPARAM_VALUE.C_RDATA_WIDTH { MODELPARAM_VALUE.C_RDATA_WIDTH PARAM_VALUE.C_RDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RDATA_WIDTH}] ${MODELPARAM_VALUE.C_RDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RDATA { MODELPARAM_VALUE.C_HAS_RDATA PARAM_VALUE.C_HAS_RDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RDATA}] ${MODELPARAM_VALUE.C_HAS_RDATA}
}

proc update_MODELPARAM_VALUE.C_RRESP_WIDTH { MODELPARAM_VALUE.C_RRESP_WIDTH PARAM_VALUE.C_RRESP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RRESP_WIDTH}] ${MODELPARAM_VALUE.C_RRESP_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RRESP { MODELPARAM_VALUE.C_HAS_RRESP PARAM_VALUE.C_HAS_RRESP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RRESP}] ${MODELPARAM_VALUE.C_HAS_RRESP}
}

proc update_MODELPARAM_VALUE.C_RVALID_WIDTH { MODELPARAM_VALUE.C_RVALID_WIDTH PARAM_VALUE.C_RVALID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RVALID_WIDTH}] ${MODELPARAM_VALUE.C_RVALID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RVALID { MODELPARAM_VALUE.C_HAS_RVALID PARAM_VALUE.C_HAS_RVALID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RVALID}] ${MODELPARAM_VALUE.C_HAS_RVALID}
}

proc update_MODELPARAM_VALUE.C_RREADY_WIDTH { MODELPARAM_VALUE.C_RREADY_WIDTH PARAM_VALUE.C_RREADY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RREADY_WIDTH}] ${MODELPARAM_VALUE.C_RREADY_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RREADY { MODELPARAM_VALUE.C_HAS_RREADY PARAM_VALUE.C_HAS_RREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RREADY}] ${MODELPARAM_VALUE.C_HAS_RREADY}
}

proc update_MODELPARAM_VALUE.C_DISABLE_WIDTH { MODELPARAM_VALUE.C_DISABLE_WIDTH PARAM_VALUE.C_DISABLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DISABLE_WIDTH}] ${MODELPARAM_VALUE.C_DISABLE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_DISABLE { MODELPARAM_VALUE.C_HAS_DISABLE PARAM_VALUE.C_HAS_DISABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_DISABLE}] ${MODELPARAM_VALUE.C_HAS_DISABLE}
}

