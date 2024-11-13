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
#XGUI 2.0

proc create_axi_user_view { IPINST page } {
  set user_group [ipgui::add_group $IPINST -parent $page -name {User signal widths} -layout vertical] 
  set user_widgets {
    AWUSER_WIDTH  textEdit {Defines the width of the AXI AWUSER signal of the master and slave interface} 
    ARUSER_WIDTH  textEdit {Defines the width of the AXI ARUSER signal of the master and slave interface} 
    WUSER_WIDTH   textEdit {Defines the width of the AXI WUSER signal of the master and slave interface} 
    RUSER_WIDTH   textEdit {Defines the width of the AXI RUSER signal of the master and slave interface} 
    BUSER_WIDTH   textEdit {Defines the width of the AXI BUSER signal of the master and slave interface} 
      }             
  add_widgets $IPINST $user_group $user_widgets
}

proc create_common_axi_view { IPINST parent {substitutions {}} } {
  set axi_widgets { 
    PROTOCOL        comboBox {This defines which AXI protocol is implemented}
    READ_WRITE_MODE comboBox {This controls which AXI channels are enabled} 
    ADDR_WIDTH      textEdit {Defines the width(in bits) of the AXI AWADDR and ARADDR signals}
    DATA_WIDTH      comboBox {Defines the width(in bits) of the AXI WDATA and RDATA signals}
    ID_WIDTH        comboBox {Defines the width(in bits) of the AXI ID signals}
  }

  foreach {param sub} $substitutions {
    set pos [lsearch $axi_widgets $param]
    set axi_widgets [lreplace $axi_widgets $pos [expr $pos + 2]]
    if {$sub != ""} {
      set axi_widgets [linsert  $axi_widgets $pos {*}$sub]
    }
  }
  add_widgets $IPINST $parent $axi_widgets
}

proc mask_bd_params { IPINST paramList } {
  foreach param $paramList {
    set paramhandle [ipgui::get_paramspec $param -of $IPINST]
    set_property locked true $paramhandle
  }
}


# The below function must be splitted (Because this doesn't support in 2.0)
# 
# proc common_protocol_update {IPINST} {
#   set protocol [get_param_value PROTOCOL]
#   if {$protocol == "AXI4LITE"} {
#     foreach i {ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH} { 
#       set_property range 0,0   [ipgui::get_paramspec -name $i -of $IPINST]    
#     }
#     set_property range 32,64 [ipgui::get_paramspec -name DATA_WIDTH -of $IPINST]
#   } else {
#     set_property range 0,32   [ipgui::get_paramspec -name ID_WIDTH -of $IPINST]    
#     foreach i { AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH} { 
#       set_property range 0,1024   [ipgui::get_paramspec -name $i -of $IPINST]    
#     }
#     set_property range 32,64,128,256,512,1024 [ipgui::get_paramspec -name DATA_WIDTH -of $IPINST]
#   }
# }
# 

set updateValues {
  proc update_PARAM_VALUE.<<i>> {PARAM_VALUE.<<i>> PARAM_VALUE.PROTOCOL PARAM_VALUE.READ_WRITE_MODE} \
  {
    array set enablement_conditions [get_metaparam_value enablement_conditions]
    set protocol [get_property value ${PARAM_VALUE.PROTOCOL}]
    if {$protocol == "AXI4LITE"} {
        set_property range 0,0 ${PARAM_VALUE.<<i>>}   
    } else {    
        set_property range 0,1024 ${PARAM_VALUE.<<i>>}    
    }

    if {[expr $enablement_conditions(<<i>>)]} {
       set_property enabled true ${PARAM_VALUE.<<i>>}
    } else {
      set_property enabled false ${PARAM_VALUE.<<i>>}
    }
  }        
}

foreach i {AWUSER_WIDTH ARUSER_WIDTH BUSER_WIDTH} { 
  set c [regsub -all "<<i>>" $updateValues $i]
    eval $c
}

proc update_PARAM_VALUE.DATA_WIDTH {PARAM_VALUE.DATA_WIDTH PARAM_VALUE.PROTOCOL} {
    set protocol [get_property value ${PARAM_VALUE.PROTOCOL}]

  if {$protocol == "AXI4LITE"} {
    set_property range 32,64 ${PARAM_VALUE.DATA_WIDTH}
  } else {
    set_property range 32,64,128,256,512,1024 ${PARAM_VALUE.DATA_WIDTH}
  }
}
proc update_PARAM_VALUE.ID_WIDTH {PARAM_VALUE.ID_WIDTH PARAM_VALUE.PROTOCOL} {
    set protocol [get_property value ${PARAM_VALUE.PROTOCOL}]

  if {$protocol == "AXI4LITE"} {
    set_property range 0,0   ${PARAM_VALUE.ID_WIDTH}    
  } else {
    set_property range 0,32  ${PARAM_VALUE.ID_WIDTH}    
  }
}

set remap01_model_params {  
  ID_WIDTH        C_AXI_ID_WIDTH  
  AWUSER_WIDTH C_AXI_AWUSER_WIDTH  
  ARUSER_WIDTH C_AXI_ARUSER_WIDTH
  WUSER_WIDTH  C_AXI_WUSER_WIDTH  
  RUSER_WIDTH  C_AXI_RUSER_WIDTH
  BUSER_WIDTH  C_AXI_BUSER_WIDTH
}
generate_remap01_model_procs $remap01_model_params



proc generate_remap01_model_procs { direct_model_params } {
  set direct_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      set p [get_property value ${PARAM_VALUE.<<P>>}]
      if {$p == 0} { set p 1 }
      set_property value $p ${MODELPARAM_VALUE.<<MP>>}
    }
  }
  foreach {p mp} $direct_model_params {
    set c [regsub -all "<<P>>" $direct_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    eval $c
  }
}



proc update_MODELPARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS {MODELPARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS PARAM_VALUE.AWUSER_WIDTH PARAM_VALUE.ARUSER_WIDTH PARAM_VALUE.WUSER_WIDTH PARAM_VALUE.RUSER_WIDTH PARAM_VALUE.BUSER_WIDTH} {
 set value 0
 foreach channel {AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH } {
   if {[get_property value [set "PARAM_VALUE.${channel}"]] > 0} {
     set value 1
     break
   }
 }
set_property value $value ${MODELPARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS}
}



proc update_MODELPARAM_VALUE.C_S_AXIS_ACLK_RATIO {MODELPARAM_VALUE.C_S_AXIS_ACLK_RATIO PARAM_VALUE.ACLK_RATIO} {
  set_property value [lindex [split [get_property value ${PARAM_VALUE.ACLK_RATIO}] :] 0] [ipgui::get_modelparamspec C_S_AXIS_ACLK_RATIO -of $IPINST ]
  # return true
}

proc update_MODELPARAM_VALUE.C_M_AXIS_ACLK_RATIO {MODELPARAM_VALUE.C_M_AXIS_ACLK_RATIO PARAM_VALUE.ACLK_RATIO} {
  set_property value [lindex [split [get_property value ${PARAM_VALUE.ACLK_RATIO}] :] 1] [ipgui::get_modelparamspec C_M_AXIS_ACLK_RATIO -of $IPINST ]
  # return true
}
