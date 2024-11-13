# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
set c_family [string tolower [get_project_property ARCHITECTURE]]

proc add_widgets { IPINST parent widget_spec } {
  foreach {param widget_type tooltip} $widget_spec {
    set widget [ipgui::add_param $IPINST -parent $parent -name $param -widget $widget_type]
    if {$tooltip != ""} {
      set_property tooltip $tooltip $widget
    }
  }
}

proc gen_param_table { IPINST  parent table_name table_prefix num_rows num_columns tl_text lcolumn_prefix param_prefix widget_order {j_iter 1}} {

  set table [ipgui::add_table $IPINST -name $table_name -rows $num_rows -columns $num_columns -parent $parent]

  set tl [ipgui::add_static_text $IPINST -name ${table_prefix}_HEADER_0 -parent $table -text $tl_text]
  set_property cell_location 0,0 $tl

  for {set i 0} {$i < [expr $num_rows-1]} {incr i } {
    set param [ipgui::add_static_text $IPINST -name ${table_prefix}${i}_LHS -parent $table -text "[subst $lcolumn_prefix]"]
    set_property cell_location [expr $i + 1],0 $param

    set column_num 1
    for {set j 0} {$j < $j_iter} {incr j} {
      foreach {column_title param_root widget_type} $widget_order {

        set actual_column_title [subst $column_title]

        if {![info exists headers($actual_column_title)]} {
          set header [ipgui::add_static_text $IPINST -name ${table_prefix}_HEADER_$i -parent $table -text $actual_column_title]
          set_property cell_location 0,$column_num $header
          array set headers [list $actual_column_title true]
        }

        set param_name [subst $param_prefix]_$param_root
        set param [ipgui::add_param $IPINST -parent $table -widget $widget_type -name $param_name]
        set_property cell_location [expr $i+1],$column_num $param
        incr column_num
      }
    }
  }
}

proc generate_direct_model_procs { direct_model_params } {
  set direct_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      set_property value  [get_property value ${PARAM_VALUE.<<P>>}] ${MODELPARAM_VALUE.<<MP>>}
    }
  }
  foreach {p mp} $direct_model_params {
    set c [regsub -all "<<P>>" $direct_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    # 
    eval $c
  }
}


proc generate_map_model_procs_direct_mapping { map_model_params } {
  set map_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      array set map [subst {<<MAP>>}]
      set_property value $map([get_property value ${PARAM_VALUE.<<P>>}]) ${MODELPARAM_VALUE.<<MP>>}
      # return true
    }
  }

  foreach {p mp map} $map_model_params {
    set c [regsub -all "<<P>>" $map_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    set c [regsub -all "<<MAP>>" $c $map]
    eval $c
  }
}
proc generate_map_model_procs_param_mapping { map_model_params } {
  set map_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>> PARAM_VALUE.<<EP>>} {
      array set map [subst {<<MAP>>}]
      set_property value $map([get_property value ${PARAM_VALUE.<<P>>}]) ${MODELPARAM_VALUE.<<MP>>}
      # return true
    }
  }

  foreach {p mp ep map} $map_model_params {
    set c [regsub -all "<<P>>" $map_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    set c [regsub -all "<<EP>>" $c $ep]
    set c [regsub -all "<<MAP>>" $c $map]
    eval $c
  }
}


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
proc generate_map_model_procs { map_model_params } {
  set map_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      array set map [subst {<<MAP>>}]
      set_property value $map([get_property value ${PARAM_VALUE.<<P>>}]) ${MODELPARAM_VALUE.<<MP>>}
      # return true
    }
  }

  foreach {p mp map} $map_model_params {
    set c [regsub -all "<<P>>" $map_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    set c [regsub -all "<<MAP>>" $c $map]
    eval $c
  }
}

proc ifx_debug_enabled {} {
  global env
  if {[info exists env(XIL_IFX_DEBUG)]} {
    set n [namespace current]
    if {[string match "*$n*" $env(XIL_IFX_DEBUG)] || [string match "*IFX_ALL*" $env(XIL_IFX_DEBUG)]} {
      return 1
    }
  }
  return 0
}

proc ifx_debug_trace_enabled {} {
  global env
  if {[info exists env(XIL_IFX_TRACE)]} {
    set n [namespace current]
    if {[string match "*$n*" $env(XIL_IFX_TRACE)] || [string match "*IFX_ALL*" $env(XIL_IFX_TRACE)]} {
      return 1
    }
  }
  return 0
}

proc update_MODELPARAM_VALUE.C_S_AXIS_ACLK_RATIO {MODELPARAM_VALUE.C_S_AXIS_ACLK_RATIO PARAM_VALUE.ACLK_RATIO} {
  set_property value [lindex [split [get_property value ${PARAM_VALUE.ACLK_RATIO}] :] 0] [ipgui::get_modelparamspec C_S_AXIS_ACLK_RATIO -of $IPINST ]
  # return true
}

proc update_MODELPARAM_VALUE.C_M_AXIS_ACLK_RATIO {MODELPARAM_VALUE.C_M_AXIS_ACLK_RATIO PARAM_VALUE.ACLK_RATIO} {
  set_property value [lindex [split [get_property value ${PARAM_VALUE.ACLK_RATIO}] :] 1] [ipgui::get_modelparamspec C_M_AXIS_ACLK_RATIO -of $IPINST ]
  # return true
}



#Chnaged procs :
# - generate_direct_model_procs
# - generate_remap01_model_procs
# 
# Added procs :
# - generate_map_model_procs_param_mapping
# - generate_map_model_procs_direct_mapping
# 
# Not Updated :
# - gen_param_table
# - update_view