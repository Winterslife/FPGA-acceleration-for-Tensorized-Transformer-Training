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
  ipgui::add_param $IPINST -name "C_ARBURST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARCACHE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARLEN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARLOCK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARPROT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARQOS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARREGION_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARSIZE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_ARVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWBURST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWCACHE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWLEN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWLOCK_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWPROT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWQOS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWREGION_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWSIZE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AWVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BRESP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_BVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARBURST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARCACHE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARLEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARLOCK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARPROT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARQOS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARREGION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARSIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARUSER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_ARVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWBURST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWCACHE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWLEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWLOCK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWPROT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWQOS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWREGION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWSIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWUSER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_AWVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BRESP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BUSER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_BVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RRESP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RUSER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_RVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WDATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WUSER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HAS_WVALID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RLAST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RRESP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_RVALID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WLAST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WREADY_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_WVALID_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_ARADDR_WIDTH { PARAM_VALUE.C_ARADDR_WIDTH } {
	# Procedure called to update C_ARADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARADDR_WIDTH { PARAM_VALUE.C_ARADDR_WIDTH } {
	# Procedure called to validate C_ARADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARBURST_WIDTH { PARAM_VALUE.C_ARBURST_WIDTH } {
	# Procedure called to update C_ARBURST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARBURST_WIDTH { PARAM_VALUE.C_ARBURST_WIDTH } {
	# Procedure called to validate C_ARBURST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARCACHE_WIDTH { PARAM_VALUE.C_ARCACHE_WIDTH } {
	# Procedure called to update C_ARCACHE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARCACHE_WIDTH { PARAM_VALUE.C_ARCACHE_WIDTH } {
	# Procedure called to validate C_ARCACHE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARID_WIDTH { PARAM_VALUE.C_ARID_WIDTH } {
	# Procedure called to update C_ARID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARID_WIDTH { PARAM_VALUE.C_ARID_WIDTH } {
	# Procedure called to validate C_ARID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARLEN_WIDTH { PARAM_VALUE.C_ARLEN_WIDTH } {
	# Procedure called to update C_ARLEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARLEN_WIDTH { PARAM_VALUE.C_ARLEN_WIDTH } {
	# Procedure called to validate C_ARLEN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARLOCK_WIDTH { PARAM_VALUE.C_ARLOCK_WIDTH } {
	# Procedure called to update C_ARLOCK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARLOCK_WIDTH { PARAM_VALUE.C_ARLOCK_WIDTH } {
	# Procedure called to validate C_ARLOCK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARPROT_WIDTH { PARAM_VALUE.C_ARPROT_WIDTH } {
	# Procedure called to update C_ARPROT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARPROT_WIDTH { PARAM_VALUE.C_ARPROT_WIDTH } {
	# Procedure called to validate C_ARPROT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARQOS_WIDTH { PARAM_VALUE.C_ARQOS_WIDTH } {
	# Procedure called to update C_ARQOS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARQOS_WIDTH { PARAM_VALUE.C_ARQOS_WIDTH } {
	# Procedure called to validate C_ARQOS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARREADY_WIDTH { PARAM_VALUE.C_ARREADY_WIDTH } {
	# Procedure called to update C_ARREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARREADY_WIDTH { PARAM_VALUE.C_ARREADY_WIDTH } {
	# Procedure called to validate C_ARREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARREGION_WIDTH { PARAM_VALUE.C_ARREGION_WIDTH } {
	# Procedure called to update C_ARREGION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARREGION_WIDTH { PARAM_VALUE.C_ARREGION_WIDTH } {
	# Procedure called to validate C_ARREGION_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARSIZE_WIDTH { PARAM_VALUE.C_ARSIZE_WIDTH } {
	# Procedure called to update C_ARSIZE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARSIZE_WIDTH { PARAM_VALUE.C_ARSIZE_WIDTH } {
	# Procedure called to validate C_ARSIZE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_ARUSER_WIDTH { PARAM_VALUE.C_ARUSER_WIDTH } {
	# Procedure called to update C_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ARUSER_WIDTH { PARAM_VALUE.C_ARUSER_WIDTH } {
	# Procedure called to validate C_ARUSER_WIDTH
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

proc update_PARAM_VALUE.C_AWBURST_WIDTH { PARAM_VALUE.C_AWBURST_WIDTH } {
	# Procedure called to update C_AWBURST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWBURST_WIDTH { PARAM_VALUE.C_AWBURST_WIDTH } {
	# Procedure called to validate C_AWBURST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWCACHE_WIDTH { PARAM_VALUE.C_AWCACHE_WIDTH } {
	# Procedure called to update C_AWCACHE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWCACHE_WIDTH { PARAM_VALUE.C_AWCACHE_WIDTH } {
	# Procedure called to validate C_AWCACHE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWID_WIDTH { PARAM_VALUE.C_AWID_WIDTH } {
	# Procedure called to update C_AWID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWID_WIDTH { PARAM_VALUE.C_AWID_WIDTH } {
	# Procedure called to validate C_AWID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWLEN_WIDTH { PARAM_VALUE.C_AWLEN_WIDTH } {
	# Procedure called to update C_AWLEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWLEN_WIDTH { PARAM_VALUE.C_AWLEN_WIDTH } {
	# Procedure called to validate C_AWLEN_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWLOCK_WIDTH { PARAM_VALUE.C_AWLOCK_WIDTH } {
	# Procedure called to update C_AWLOCK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWLOCK_WIDTH { PARAM_VALUE.C_AWLOCK_WIDTH } {
	# Procedure called to validate C_AWLOCK_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWPROT_WIDTH { PARAM_VALUE.C_AWPROT_WIDTH } {
	# Procedure called to update C_AWPROT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWPROT_WIDTH { PARAM_VALUE.C_AWPROT_WIDTH } {
	# Procedure called to validate C_AWPROT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWQOS_WIDTH { PARAM_VALUE.C_AWQOS_WIDTH } {
	# Procedure called to update C_AWQOS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWQOS_WIDTH { PARAM_VALUE.C_AWQOS_WIDTH } {
	# Procedure called to validate C_AWQOS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWREADY_WIDTH { PARAM_VALUE.C_AWREADY_WIDTH } {
	# Procedure called to update C_AWREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWREADY_WIDTH { PARAM_VALUE.C_AWREADY_WIDTH } {
	# Procedure called to validate C_AWREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWREGION_WIDTH { PARAM_VALUE.C_AWREGION_WIDTH } {
	# Procedure called to update C_AWREGION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWREGION_WIDTH { PARAM_VALUE.C_AWREGION_WIDTH } {
	# Procedure called to validate C_AWREGION_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWSIZE_WIDTH { PARAM_VALUE.C_AWSIZE_WIDTH } {
	# Procedure called to update C_AWSIZE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWSIZE_WIDTH { PARAM_VALUE.C_AWSIZE_WIDTH } {
	# Procedure called to validate C_AWSIZE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWUSER_WIDTH { PARAM_VALUE.C_AWUSER_WIDTH } {
	# Procedure called to update C_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWUSER_WIDTH { PARAM_VALUE.C_AWUSER_WIDTH } {
	# Procedure called to validate C_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AWVALID_WIDTH { PARAM_VALUE.C_AWVALID_WIDTH } {
	# Procedure called to update C_AWVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AWVALID_WIDTH { PARAM_VALUE.C_AWVALID_WIDTH } {
	# Procedure called to validate C_AWVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BID_WIDTH { PARAM_VALUE.C_BID_WIDTH } {
	# Procedure called to update C_BID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BID_WIDTH { PARAM_VALUE.C_BID_WIDTH } {
	# Procedure called to validate C_BID_WIDTH
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

proc update_PARAM_VALUE.C_BUSER_WIDTH { PARAM_VALUE.C_BUSER_WIDTH } {
	# Procedure called to update C_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BUSER_WIDTH { PARAM_VALUE.C_BUSER_WIDTH } {
	# Procedure called to validate C_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BVALID_WIDTH { PARAM_VALUE.C_BVALID_WIDTH } {
	# Procedure called to update C_BVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BVALID_WIDTH { PARAM_VALUE.C_BVALID_WIDTH } {
	# Procedure called to validate C_BVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_ARADDR { PARAM_VALUE.C_HAS_ARADDR } {
	# Procedure called to update C_HAS_ARADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARADDR { PARAM_VALUE.C_HAS_ARADDR } {
	# Procedure called to validate C_HAS_ARADDR
	return true
}

proc update_PARAM_VALUE.C_HAS_ARBURST { PARAM_VALUE.C_HAS_ARBURST } {
	# Procedure called to update C_HAS_ARBURST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARBURST { PARAM_VALUE.C_HAS_ARBURST } {
	# Procedure called to validate C_HAS_ARBURST
	return true
}

proc update_PARAM_VALUE.C_HAS_ARCACHE { PARAM_VALUE.C_HAS_ARCACHE } {
	# Procedure called to update C_HAS_ARCACHE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARCACHE { PARAM_VALUE.C_HAS_ARCACHE } {
	# Procedure called to validate C_HAS_ARCACHE
	return true
}

proc update_PARAM_VALUE.C_HAS_ARID { PARAM_VALUE.C_HAS_ARID } {
	# Procedure called to update C_HAS_ARID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARID { PARAM_VALUE.C_HAS_ARID } {
	# Procedure called to validate C_HAS_ARID
	return true
}

proc update_PARAM_VALUE.C_HAS_ARLEN { PARAM_VALUE.C_HAS_ARLEN } {
	# Procedure called to update C_HAS_ARLEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARLEN { PARAM_VALUE.C_HAS_ARLEN } {
	# Procedure called to validate C_HAS_ARLEN
	return true
}

proc update_PARAM_VALUE.C_HAS_ARLOCK { PARAM_VALUE.C_HAS_ARLOCK } {
	# Procedure called to update C_HAS_ARLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARLOCK { PARAM_VALUE.C_HAS_ARLOCK } {
	# Procedure called to validate C_HAS_ARLOCK
	return true
}

proc update_PARAM_VALUE.C_HAS_ARPROT { PARAM_VALUE.C_HAS_ARPROT } {
	# Procedure called to update C_HAS_ARPROT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARPROT { PARAM_VALUE.C_HAS_ARPROT } {
	# Procedure called to validate C_HAS_ARPROT
	return true
}

proc update_PARAM_VALUE.C_HAS_ARQOS { PARAM_VALUE.C_HAS_ARQOS } {
	# Procedure called to update C_HAS_ARQOS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARQOS { PARAM_VALUE.C_HAS_ARQOS } {
	# Procedure called to validate C_HAS_ARQOS
	return true
}

proc update_PARAM_VALUE.C_HAS_ARREADY { PARAM_VALUE.C_HAS_ARREADY } {
	# Procedure called to update C_HAS_ARREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARREADY { PARAM_VALUE.C_HAS_ARREADY } {
	# Procedure called to validate C_HAS_ARREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_ARREGION { PARAM_VALUE.C_HAS_ARREGION } {
	# Procedure called to update C_HAS_ARREGION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARREGION { PARAM_VALUE.C_HAS_ARREGION } {
	# Procedure called to validate C_HAS_ARREGION
	return true
}

proc update_PARAM_VALUE.C_HAS_ARSIZE { PARAM_VALUE.C_HAS_ARSIZE } {
	# Procedure called to update C_HAS_ARSIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARSIZE { PARAM_VALUE.C_HAS_ARSIZE } {
	# Procedure called to validate C_HAS_ARSIZE
	return true
}

proc update_PARAM_VALUE.C_HAS_ARUSER { PARAM_VALUE.C_HAS_ARUSER } {
	# Procedure called to update C_HAS_ARUSER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_ARUSER { PARAM_VALUE.C_HAS_ARUSER } {
	# Procedure called to validate C_HAS_ARUSER
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

proc update_PARAM_VALUE.C_HAS_AWBURST { PARAM_VALUE.C_HAS_AWBURST } {
	# Procedure called to update C_HAS_AWBURST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWBURST { PARAM_VALUE.C_HAS_AWBURST } {
	# Procedure called to validate C_HAS_AWBURST
	return true
}

proc update_PARAM_VALUE.C_HAS_AWCACHE { PARAM_VALUE.C_HAS_AWCACHE } {
	# Procedure called to update C_HAS_AWCACHE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWCACHE { PARAM_VALUE.C_HAS_AWCACHE } {
	# Procedure called to validate C_HAS_AWCACHE
	return true
}

proc update_PARAM_VALUE.C_HAS_AWID { PARAM_VALUE.C_HAS_AWID } {
	# Procedure called to update C_HAS_AWID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWID { PARAM_VALUE.C_HAS_AWID } {
	# Procedure called to validate C_HAS_AWID
	return true
}

proc update_PARAM_VALUE.C_HAS_AWLEN { PARAM_VALUE.C_HAS_AWLEN } {
	# Procedure called to update C_HAS_AWLEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWLEN { PARAM_VALUE.C_HAS_AWLEN } {
	# Procedure called to validate C_HAS_AWLEN
	return true
}

proc update_PARAM_VALUE.C_HAS_AWLOCK { PARAM_VALUE.C_HAS_AWLOCK } {
	# Procedure called to update C_HAS_AWLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWLOCK { PARAM_VALUE.C_HAS_AWLOCK } {
	# Procedure called to validate C_HAS_AWLOCK
	return true
}

proc update_PARAM_VALUE.C_HAS_AWPROT { PARAM_VALUE.C_HAS_AWPROT } {
	# Procedure called to update C_HAS_AWPROT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWPROT { PARAM_VALUE.C_HAS_AWPROT } {
	# Procedure called to validate C_HAS_AWPROT
	return true
}

proc update_PARAM_VALUE.C_HAS_AWQOS { PARAM_VALUE.C_HAS_AWQOS } {
	# Procedure called to update C_HAS_AWQOS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWQOS { PARAM_VALUE.C_HAS_AWQOS } {
	# Procedure called to validate C_HAS_AWQOS
	return true
}

proc update_PARAM_VALUE.C_HAS_AWREADY { PARAM_VALUE.C_HAS_AWREADY } {
	# Procedure called to update C_HAS_AWREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWREADY { PARAM_VALUE.C_HAS_AWREADY } {
	# Procedure called to validate C_HAS_AWREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_AWREGION { PARAM_VALUE.C_HAS_AWREGION } {
	# Procedure called to update C_HAS_AWREGION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWREGION { PARAM_VALUE.C_HAS_AWREGION } {
	# Procedure called to validate C_HAS_AWREGION
	return true
}

proc update_PARAM_VALUE.C_HAS_AWSIZE { PARAM_VALUE.C_HAS_AWSIZE } {
	# Procedure called to update C_HAS_AWSIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWSIZE { PARAM_VALUE.C_HAS_AWSIZE } {
	# Procedure called to validate C_HAS_AWSIZE
	return true
}

proc update_PARAM_VALUE.C_HAS_AWUSER { PARAM_VALUE.C_HAS_AWUSER } {
	# Procedure called to update C_HAS_AWUSER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWUSER { PARAM_VALUE.C_HAS_AWUSER } {
	# Procedure called to validate C_HAS_AWUSER
	return true
}

proc update_PARAM_VALUE.C_HAS_AWVALID { PARAM_VALUE.C_HAS_AWVALID } {
	# Procedure called to update C_HAS_AWVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AWVALID { PARAM_VALUE.C_HAS_AWVALID } {
	# Procedure called to validate C_HAS_AWVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_BID { PARAM_VALUE.C_HAS_BID } {
	# Procedure called to update C_HAS_BID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BID { PARAM_VALUE.C_HAS_BID } {
	# Procedure called to validate C_HAS_BID
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

proc update_PARAM_VALUE.C_HAS_BUSER { PARAM_VALUE.C_HAS_BUSER } {
	# Procedure called to update C_HAS_BUSER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BUSER { PARAM_VALUE.C_HAS_BUSER } {
	# Procedure called to validate C_HAS_BUSER
	return true
}

proc update_PARAM_VALUE.C_HAS_BVALID { PARAM_VALUE.C_HAS_BVALID } {
	# Procedure called to update C_HAS_BVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_BVALID { PARAM_VALUE.C_HAS_BVALID } {
	# Procedure called to validate C_HAS_BVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_RDATA { PARAM_VALUE.C_HAS_RDATA } {
	# Procedure called to update C_HAS_RDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RDATA { PARAM_VALUE.C_HAS_RDATA } {
	# Procedure called to validate C_HAS_RDATA
	return true
}

proc update_PARAM_VALUE.C_HAS_RID { PARAM_VALUE.C_HAS_RID } {
	# Procedure called to update C_HAS_RID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RID { PARAM_VALUE.C_HAS_RID } {
	# Procedure called to validate C_HAS_RID
	return true
}

proc update_PARAM_VALUE.C_HAS_RLAST { PARAM_VALUE.C_HAS_RLAST } {
	# Procedure called to update C_HAS_RLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RLAST { PARAM_VALUE.C_HAS_RLAST } {
	# Procedure called to validate C_HAS_RLAST
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

proc update_PARAM_VALUE.C_HAS_RUSER { PARAM_VALUE.C_HAS_RUSER } {
	# Procedure called to update C_HAS_RUSER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RUSER { PARAM_VALUE.C_HAS_RUSER } {
	# Procedure called to validate C_HAS_RUSER
	return true
}

proc update_PARAM_VALUE.C_HAS_RVALID { PARAM_VALUE.C_HAS_RVALID } {
	# Procedure called to update C_HAS_RVALID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_RVALID { PARAM_VALUE.C_HAS_RVALID } {
	# Procedure called to validate C_HAS_RVALID
	return true
}

proc update_PARAM_VALUE.C_HAS_WDATA { PARAM_VALUE.C_HAS_WDATA } {
	# Procedure called to update C_HAS_WDATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WDATA { PARAM_VALUE.C_HAS_WDATA } {
	# Procedure called to validate C_HAS_WDATA
	return true
}

proc update_PARAM_VALUE.C_HAS_WID { PARAM_VALUE.C_HAS_WID } {
	# Procedure called to update C_HAS_WID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WID { PARAM_VALUE.C_HAS_WID } {
	# Procedure called to validate C_HAS_WID
	return true
}

proc update_PARAM_VALUE.C_HAS_WLAST { PARAM_VALUE.C_HAS_WLAST } {
	# Procedure called to update C_HAS_WLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WLAST { PARAM_VALUE.C_HAS_WLAST } {
	# Procedure called to validate C_HAS_WLAST
	return true
}

proc update_PARAM_VALUE.C_HAS_WREADY { PARAM_VALUE.C_HAS_WREADY } {
	# Procedure called to update C_HAS_WREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WREADY { PARAM_VALUE.C_HAS_WREADY } {
	# Procedure called to validate C_HAS_WREADY
	return true
}

proc update_PARAM_VALUE.C_HAS_WSTRB { PARAM_VALUE.C_HAS_WSTRB } {
	# Procedure called to update C_HAS_WSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WSTRB { PARAM_VALUE.C_HAS_WSTRB } {
	# Procedure called to validate C_HAS_WSTRB
	return true
}

proc update_PARAM_VALUE.C_HAS_WUSER { PARAM_VALUE.C_HAS_WUSER } {
	# Procedure called to update C_HAS_WUSER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_WUSER { PARAM_VALUE.C_HAS_WUSER } {
	# Procedure called to validate C_HAS_WUSER
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

proc update_PARAM_VALUE.C_RID_WIDTH { PARAM_VALUE.C_RID_WIDTH } {
	# Procedure called to update C_RID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RID_WIDTH { PARAM_VALUE.C_RID_WIDTH } {
	# Procedure called to validate C_RID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RLAST_WIDTH { PARAM_VALUE.C_RLAST_WIDTH } {
	# Procedure called to update C_RLAST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RLAST_WIDTH { PARAM_VALUE.C_RLAST_WIDTH } {
	# Procedure called to validate C_RLAST_WIDTH
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

proc update_PARAM_VALUE.C_RUSER_WIDTH { PARAM_VALUE.C_RUSER_WIDTH } {
	# Procedure called to update C_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RUSER_WIDTH { PARAM_VALUE.C_RUSER_WIDTH } {
	# Procedure called to validate C_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_RVALID_WIDTH { PARAM_VALUE.C_RVALID_WIDTH } {
	# Procedure called to update C_RVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RVALID_WIDTH { PARAM_VALUE.C_RVALID_WIDTH } {
	# Procedure called to validate C_RVALID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WDATA_WIDTH { PARAM_VALUE.C_WDATA_WIDTH } {
	# Procedure called to update C_WDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WDATA_WIDTH { PARAM_VALUE.C_WDATA_WIDTH } {
	# Procedure called to validate C_WDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WID_WIDTH { PARAM_VALUE.C_WID_WIDTH } {
	# Procedure called to update C_WID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WID_WIDTH { PARAM_VALUE.C_WID_WIDTH } {
	# Procedure called to validate C_WID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WLAST_WIDTH { PARAM_VALUE.C_WLAST_WIDTH } {
	# Procedure called to update C_WLAST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WLAST_WIDTH { PARAM_VALUE.C_WLAST_WIDTH } {
	# Procedure called to validate C_WLAST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WREADY_WIDTH { PARAM_VALUE.C_WREADY_WIDTH } {
	# Procedure called to update C_WREADY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WREADY_WIDTH { PARAM_VALUE.C_WREADY_WIDTH } {
	# Procedure called to validate C_WREADY_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WSTRB_WIDTH { PARAM_VALUE.C_WSTRB_WIDTH } {
	# Procedure called to update C_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WSTRB_WIDTH { PARAM_VALUE.C_WSTRB_WIDTH } {
	# Procedure called to validate C_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WUSER_WIDTH { PARAM_VALUE.C_WUSER_WIDTH } {
	# Procedure called to update C_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WUSER_WIDTH { PARAM_VALUE.C_WUSER_WIDTH } {
	# Procedure called to validate C_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_WVALID_WIDTH { PARAM_VALUE.C_WVALID_WIDTH } {
	# Procedure called to update C_WVALID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_WVALID_WIDTH { PARAM_VALUE.C_WVALID_WIDTH } {
	# Procedure called to validate C_WVALID_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_AWID_WIDTH { MODELPARAM_VALUE.C_AWID_WIDTH PARAM_VALUE.C_AWID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWID_WIDTH}] ${MODELPARAM_VALUE.C_AWID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWID { MODELPARAM_VALUE.C_HAS_AWID PARAM_VALUE.C_HAS_AWID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWID}] ${MODELPARAM_VALUE.C_HAS_AWID}
}

proc update_MODELPARAM_VALUE.C_AWADDR_WIDTH { MODELPARAM_VALUE.C_AWADDR_WIDTH PARAM_VALUE.C_AWADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWADDR_WIDTH}] ${MODELPARAM_VALUE.C_AWADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWADDR { MODELPARAM_VALUE.C_HAS_AWADDR PARAM_VALUE.C_HAS_AWADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWADDR}] ${MODELPARAM_VALUE.C_HAS_AWADDR}
}

proc update_MODELPARAM_VALUE.C_AWLEN_WIDTH { MODELPARAM_VALUE.C_AWLEN_WIDTH PARAM_VALUE.C_AWLEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWLEN_WIDTH}] ${MODELPARAM_VALUE.C_AWLEN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWLEN { MODELPARAM_VALUE.C_HAS_AWLEN PARAM_VALUE.C_HAS_AWLEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWLEN}] ${MODELPARAM_VALUE.C_HAS_AWLEN}
}

proc update_MODELPARAM_VALUE.C_AWSIZE_WIDTH { MODELPARAM_VALUE.C_AWSIZE_WIDTH PARAM_VALUE.C_AWSIZE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWSIZE_WIDTH}] ${MODELPARAM_VALUE.C_AWSIZE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWSIZE { MODELPARAM_VALUE.C_HAS_AWSIZE PARAM_VALUE.C_HAS_AWSIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWSIZE}] ${MODELPARAM_VALUE.C_HAS_AWSIZE}
}

proc update_MODELPARAM_VALUE.C_AWBURST_WIDTH { MODELPARAM_VALUE.C_AWBURST_WIDTH PARAM_VALUE.C_AWBURST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWBURST_WIDTH}] ${MODELPARAM_VALUE.C_AWBURST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWBURST { MODELPARAM_VALUE.C_HAS_AWBURST PARAM_VALUE.C_HAS_AWBURST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWBURST}] ${MODELPARAM_VALUE.C_HAS_AWBURST}
}

proc update_MODELPARAM_VALUE.C_AWLOCK_WIDTH { MODELPARAM_VALUE.C_AWLOCK_WIDTH PARAM_VALUE.C_AWLOCK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWLOCK_WIDTH}] ${MODELPARAM_VALUE.C_AWLOCK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWLOCK { MODELPARAM_VALUE.C_HAS_AWLOCK PARAM_VALUE.C_HAS_AWLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWLOCK}] ${MODELPARAM_VALUE.C_HAS_AWLOCK}
}

proc update_MODELPARAM_VALUE.C_AWCACHE_WIDTH { MODELPARAM_VALUE.C_AWCACHE_WIDTH PARAM_VALUE.C_AWCACHE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWCACHE_WIDTH}] ${MODELPARAM_VALUE.C_AWCACHE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWCACHE { MODELPARAM_VALUE.C_HAS_AWCACHE PARAM_VALUE.C_HAS_AWCACHE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWCACHE}] ${MODELPARAM_VALUE.C_HAS_AWCACHE}
}

proc update_MODELPARAM_VALUE.C_AWPROT_WIDTH { MODELPARAM_VALUE.C_AWPROT_WIDTH PARAM_VALUE.C_AWPROT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWPROT_WIDTH}] ${MODELPARAM_VALUE.C_AWPROT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWPROT { MODELPARAM_VALUE.C_HAS_AWPROT PARAM_VALUE.C_HAS_AWPROT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWPROT}] ${MODELPARAM_VALUE.C_HAS_AWPROT}
}

proc update_MODELPARAM_VALUE.C_AWREGION_WIDTH { MODELPARAM_VALUE.C_AWREGION_WIDTH PARAM_VALUE.C_AWREGION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWREGION_WIDTH}] ${MODELPARAM_VALUE.C_AWREGION_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWREGION { MODELPARAM_VALUE.C_HAS_AWREGION PARAM_VALUE.C_HAS_AWREGION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWREGION}] ${MODELPARAM_VALUE.C_HAS_AWREGION}
}

proc update_MODELPARAM_VALUE.C_AWQOS_WIDTH { MODELPARAM_VALUE.C_AWQOS_WIDTH PARAM_VALUE.C_AWQOS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWQOS_WIDTH}] ${MODELPARAM_VALUE.C_AWQOS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWQOS { MODELPARAM_VALUE.C_HAS_AWQOS PARAM_VALUE.C_HAS_AWQOS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWQOS}] ${MODELPARAM_VALUE.C_HAS_AWQOS}
}

proc update_MODELPARAM_VALUE.C_AWUSER_WIDTH { MODELPARAM_VALUE.C_AWUSER_WIDTH PARAM_VALUE.C_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_AWUSER { MODELPARAM_VALUE.C_HAS_AWUSER PARAM_VALUE.C_HAS_AWUSER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AWUSER}] ${MODELPARAM_VALUE.C_HAS_AWUSER}
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

proc update_MODELPARAM_VALUE.C_WID_WIDTH { MODELPARAM_VALUE.C_WID_WIDTH PARAM_VALUE.C_WID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WID_WIDTH}] ${MODELPARAM_VALUE.C_WID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WID { MODELPARAM_VALUE.C_HAS_WID PARAM_VALUE.C_HAS_WID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WID}] ${MODELPARAM_VALUE.C_HAS_WID}
}

proc update_MODELPARAM_VALUE.C_WDATA_WIDTH { MODELPARAM_VALUE.C_WDATA_WIDTH PARAM_VALUE.C_WDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WDATA_WIDTH}] ${MODELPARAM_VALUE.C_WDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WDATA { MODELPARAM_VALUE.C_HAS_WDATA PARAM_VALUE.C_HAS_WDATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WDATA}] ${MODELPARAM_VALUE.C_HAS_WDATA}
}

proc update_MODELPARAM_VALUE.C_WSTRB_WIDTH { MODELPARAM_VALUE.C_WSTRB_WIDTH PARAM_VALUE.C_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WSTRB { MODELPARAM_VALUE.C_HAS_WSTRB PARAM_VALUE.C_HAS_WSTRB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WSTRB}] ${MODELPARAM_VALUE.C_HAS_WSTRB}
}

proc update_MODELPARAM_VALUE.C_WLAST_WIDTH { MODELPARAM_VALUE.C_WLAST_WIDTH PARAM_VALUE.C_WLAST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WLAST_WIDTH}] ${MODELPARAM_VALUE.C_WLAST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WLAST { MODELPARAM_VALUE.C_HAS_WLAST PARAM_VALUE.C_HAS_WLAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WLAST}] ${MODELPARAM_VALUE.C_HAS_WLAST}
}

proc update_MODELPARAM_VALUE.C_WUSER_WIDTH { MODELPARAM_VALUE.C_WUSER_WIDTH PARAM_VALUE.C_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_WUSER { MODELPARAM_VALUE.C_HAS_WUSER PARAM_VALUE.C_HAS_WUSER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_WUSER}] ${MODELPARAM_VALUE.C_HAS_WUSER}
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

proc update_MODELPARAM_VALUE.C_BID_WIDTH { MODELPARAM_VALUE.C_BID_WIDTH PARAM_VALUE.C_BID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BID_WIDTH}] ${MODELPARAM_VALUE.C_BID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BID { MODELPARAM_VALUE.C_HAS_BID PARAM_VALUE.C_HAS_BID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BID}] ${MODELPARAM_VALUE.C_HAS_BID}
}

proc update_MODELPARAM_VALUE.C_BRESP_WIDTH { MODELPARAM_VALUE.C_BRESP_WIDTH PARAM_VALUE.C_BRESP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BRESP_WIDTH}] ${MODELPARAM_VALUE.C_BRESP_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BRESP { MODELPARAM_VALUE.C_HAS_BRESP PARAM_VALUE.C_HAS_BRESP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BRESP}] ${MODELPARAM_VALUE.C_HAS_BRESP}
}

proc update_MODELPARAM_VALUE.C_BUSER_WIDTH { MODELPARAM_VALUE.C_BUSER_WIDTH PARAM_VALUE.C_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_BUSER { MODELPARAM_VALUE.C_HAS_BUSER PARAM_VALUE.C_HAS_BUSER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_BUSER}] ${MODELPARAM_VALUE.C_HAS_BUSER}
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

proc update_MODELPARAM_VALUE.C_ARID_WIDTH { MODELPARAM_VALUE.C_ARID_WIDTH PARAM_VALUE.C_ARID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARID_WIDTH}] ${MODELPARAM_VALUE.C_ARID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARID { MODELPARAM_VALUE.C_HAS_ARID PARAM_VALUE.C_HAS_ARID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARID}] ${MODELPARAM_VALUE.C_HAS_ARID}
}

proc update_MODELPARAM_VALUE.C_ARADDR_WIDTH { MODELPARAM_VALUE.C_ARADDR_WIDTH PARAM_VALUE.C_ARADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARADDR_WIDTH}] ${MODELPARAM_VALUE.C_ARADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARADDR { MODELPARAM_VALUE.C_HAS_ARADDR PARAM_VALUE.C_HAS_ARADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARADDR}] ${MODELPARAM_VALUE.C_HAS_ARADDR}
}

proc update_MODELPARAM_VALUE.C_ARLEN_WIDTH { MODELPARAM_VALUE.C_ARLEN_WIDTH PARAM_VALUE.C_ARLEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARLEN_WIDTH}] ${MODELPARAM_VALUE.C_ARLEN_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARLEN { MODELPARAM_VALUE.C_HAS_ARLEN PARAM_VALUE.C_HAS_ARLEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARLEN}] ${MODELPARAM_VALUE.C_HAS_ARLEN}
}

proc update_MODELPARAM_VALUE.C_ARSIZE_WIDTH { MODELPARAM_VALUE.C_ARSIZE_WIDTH PARAM_VALUE.C_ARSIZE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARSIZE_WIDTH}] ${MODELPARAM_VALUE.C_ARSIZE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARSIZE { MODELPARAM_VALUE.C_HAS_ARSIZE PARAM_VALUE.C_HAS_ARSIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARSIZE}] ${MODELPARAM_VALUE.C_HAS_ARSIZE}
}

proc update_MODELPARAM_VALUE.C_ARBURST_WIDTH { MODELPARAM_VALUE.C_ARBURST_WIDTH PARAM_VALUE.C_ARBURST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARBURST_WIDTH}] ${MODELPARAM_VALUE.C_ARBURST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARBURST { MODELPARAM_VALUE.C_HAS_ARBURST PARAM_VALUE.C_HAS_ARBURST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARBURST}] ${MODELPARAM_VALUE.C_HAS_ARBURST}
}

proc update_MODELPARAM_VALUE.C_ARLOCK_WIDTH { MODELPARAM_VALUE.C_ARLOCK_WIDTH PARAM_VALUE.C_ARLOCK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARLOCK_WIDTH}] ${MODELPARAM_VALUE.C_ARLOCK_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARLOCK { MODELPARAM_VALUE.C_HAS_ARLOCK PARAM_VALUE.C_HAS_ARLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARLOCK}] ${MODELPARAM_VALUE.C_HAS_ARLOCK}
}

proc update_MODELPARAM_VALUE.C_ARCACHE_WIDTH { MODELPARAM_VALUE.C_ARCACHE_WIDTH PARAM_VALUE.C_ARCACHE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARCACHE_WIDTH}] ${MODELPARAM_VALUE.C_ARCACHE_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARCACHE { MODELPARAM_VALUE.C_HAS_ARCACHE PARAM_VALUE.C_HAS_ARCACHE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARCACHE}] ${MODELPARAM_VALUE.C_HAS_ARCACHE}
}

proc update_MODELPARAM_VALUE.C_ARPROT_WIDTH { MODELPARAM_VALUE.C_ARPROT_WIDTH PARAM_VALUE.C_ARPROT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARPROT_WIDTH}] ${MODELPARAM_VALUE.C_ARPROT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARPROT { MODELPARAM_VALUE.C_HAS_ARPROT PARAM_VALUE.C_HAS_ARPROT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARPROT}] ${MODELPARAM_VALUE.C_HAS_ARPROT}
}

proc update_MODELPARAM_VALUE.C_ARREGION_WIDTH { MODELPARAM_VALUE.C_ARREGION_WIDTH PARAM_VALUE.C_ARREGION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARREGION_WIDTH}] ${MODELPARAM_VALUE.C_ARREGION_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARREGION { MODELPARAM_VALUE.C_HAS_ARREGION PARAM_VALUE.C_HAS_ARREGION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARREGION}] ${MODELPARAM_VALUE.C_HAS_ARREGION}
}

proc update_MODELPARAM_VALUE.C_ARQOS_WIDTH { MODELPARAM_VALUE.C_ARQOS_WIDTH PARAM_VALUE.C_ARQOS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARQOS_WIDTH}] ${MODELPARAM_VALUE.C_ARQOS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARQOS { MODELPARAM_VALUE.C_HAS_ARQOS PARAM_VALUE.C_HAS_ARQOS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARQOS}] ${MODELPARAM_VALUE.C_HAS_ARQOS}
}

proc update_MODELPARAM_VALUE.C_ARUSER_WIDTH { MODELPARAM_VALUE.C_ARUSER_WIDTH PARAM_VALUE.C_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_ARUSER { MODELPARAM_VALUE.C_HAS_ARUSER PARAM_VALUE.C_HAS_ARUSER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_ARUSER}] ${MODELPARAM_VALUE.C_HAS_ARUSER}
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

proc update_MODELPARAM_VALUE.C_RID_WIDTH { MODELPARAM_VALUE.C_RID_WIDTH PARAM_VALUE.C_RID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RID_WIDTH}] ${MODELPARAM_VALUE.C_RID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RID { MODELPARAM_VALUE.C_HAS_RID PARAM_VALUE.C_HAS_RID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RID}] ${MODELPARAM_VALUE.C_HAS_RID}
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

proc update_MODELPARAM_VALUE.C_RLAST_WIDTH { MODELPARAM_VALUE.C_RLAST_WIDTH PARAM_VALUE.C_RLAST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RLAST_WIDTH}] ${MODELPARAM_VALUE.C_RLAST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RLAST { MODELPARAM_VALUE.C_HAS_RLAST PARAM_VALUE.C_HAS_RLAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RLAST}] ${MODELPARAM_VALUE.C_HAS_RLAST}
}

proc update_MODELPARAM_VALUE.C_RUSER_WIDTH { MODELPARAM_VALUE.C_RUSER_WIDTH PARAM_VALUE.C_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_HAS_RUSER { MODELPARAM_VALUE.C_HAS_RUSER PARAM_VALUE.C_HAS_RUSER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_RUSER}] ${MODELPARAM_VALUE.C_HAS_RUSER}
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

