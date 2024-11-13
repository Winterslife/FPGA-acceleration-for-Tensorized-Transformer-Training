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
puts "--------------------------------------------------------"
puts "BEGIN: GENERATE_BD"

proc pdict { d {i 0} {c " "}} {
  set s ""
  set p [string repeat $c $i ]
  dict for {k v } $d {
    if {([llength $v] % 2) || ([llength $v] == 0)} {
      append s "$p{$k $v}\n"
    } else {
      append s "$p{$k\n[pdict $v [expr $i+2]]$p}\n"
    }
  }
  if {[string length $s] > 0} {
    return $s
  }
}

proc send_info {s} {
  send_msg_id {pxi_ii_wizard 1-1} INFO $s
}

proc send_cw {s} {
  send_msg_id {pxi_ii_wizard 1-1} {CRITICAL WARNING} $s
}

proc send_warning {s} {
  send_msg_id {pxi_ii_wizard 1-1} WARNING $s
}

proc send_error {s} {
  send_msg_id {pxi_ii_wizard 1-1} ERROR $s
}

set sep "."

# For some reason VLNV is called IPDEF in the ipinst object :?
set wiz_ip [get_ips -filter {IPDEF=~*pxi_ii_wizard*}]

# TODO: complete this DRC
# foreach num_instance_param [list_property $wiz_ip *.NUM_INSTANCES] {
#   set prefix [join [lrange [split $num_instance_param .] 0 end-1] .] 
#   for {set i 0} {$i < [get_property $num_instance_param $wiz_ip]} {incr i} {
#     set idx [format %.2d $i]
#     set prefix_params [list_property $wiz_ip ${prefix}.${idx}.*]
#     foreach p $prefix_params {
#       if {![string match USER [get_property ${p}.VALUE_SRC $wiz_ip]]} {
#         send_cw "Incomplete specification detected.  Property $p is required but has not been assigned a value..."
#       }    
#     }
#   }
# }

set config_mode [get_property CONFIG.MODE $wiz_ip]
puts "-- config_mode: $config_mode" 

foreach p [list_property $wiz_ip CONFIG.VLNV.*] {
  set vlnv_[string tolower [lindex [split $p .] end]] [get_property $p $wiz_ip]
}

set bd [create_bd_design $vlnv_name]
current_bd_design $bd

puts "-- Instantiate Isolation Core"
set ip [create_bd_cell -vlnv xilinx.com:ip:pxi_ii_core -set_params [list CONFIG.MODE $config_mode] pxi_ii_core]

set ap [get_property CONFIG.ADVANCED_PROPERTIES $wiz_ip] 
if {[llength $ap] > 0} {
  set_property CONFIG.ADVANCED_PROPERTIES $ap $ip
}

puts "-- Construct Isolation Core Configuration Dictionary"
set d {}
set gen {}
set wiz_gen_properties [list_property $wiz_ip CONFIG.II.*]
foreach p $wiz_gen_properties {
  set v [get_property $p $wiz_ip]
  dict set gen {*}[lrange [split $p .] 2 end] $v
}

# Standardize on lower case
# TODO: move this to lowercase only for the property names - IPI / IP services has issues with case-sensitivity in value assignments
set gen [string tolower $gen]

dict for { type instances } $gen  {
  puts "-- type: $type"
  dict for { role role_spec } $instances {
    puts "-- role: $role"
    set num_instances [dict get $role_spec num_instances]
    if {$num_instances == 0} {
#      send_info "No instances of $type $role enabled."
    }
    for {set i 0} {$i < [dict get $role_spec num_instances]} {incr i} {
      set idx [format %.2d $i]
      set role_inst [dict get $role_spec $idx]
      
      set role_name ${role}_${idx}      
      if {$role == "custom_role"} {
        set custom_role_name [dict get $role_inst gen_params custom_role_name]
        set custom_role_index [format %.2d [dict get $role_inst gen_params custom_role_index]]        
        set role_name ${custom_role_name}_${custom_role_index}
        send_warning "Detected custom role: $role_name.   Custom roles should be avoided - contact the Raptor 2.0 platform architecture team for guidance."
      }

      dict for {class paramset} $role_inst {
        if {[string match -nocase $class "addr_segs"]} { continue }
        dict for { p v } $paramset {
          if {[string match -nocase $class "gen_params"] && [string match -nocase "custom_role_*" $p]} { continue }
          if {[string match -nocase "bif_params" $class] || [string match -nocase "ip_params" $class]} {
            set p config.$p
          }
          dict set d $type $role_name $class $p $v
        }
      }
    }
  }
}

if {[llength $d] == 0} {
  send_error "No instances enabled in pxi_ii_wizard"
}

set_property CONFIG.DICT $d $ip

puts "-- Create top-level interfaces to match isolation core configuration..."
#foreach i [get_bd_intf_pins -of $ip] {
#  make_bd_intf_pins_external -name [get_property NAME $i] $i
#}

puts "-- Create top-level signal ports to match isolation core configuration..."
#foreach i [get_bd_pins -of $ip -filter {INTF==FALSE}] {
#  make_bd_pins_external -name [get_property NAME $i] [get_bd_pins $ip/[get_property NAME $i]]
#}

#puts "-- Copy clock metadata to toplevel clock ports..."
## IPI BUG: (CR XXXXXXX) clock metadata is corrupted during make external
#foreach ip_clk_pin [get_bd_pins -filter {type==clk} -of $ip] {
#  set port [find_bd_objs -relation CONNECTED_TO $ip_clk_pin]
#  foreach p [list_property $port CONFIG.*] {
#    set_property CONFIG.$p [get_property CONFIG.$p $ip_clk_pin] $port
#  }
#}

foreach bif [get_bd_intf_pins -of $ip] {
  foreach p {vlnv mode name} {
    set $p [get_property $p $bif]
  }
  set ext_bif [create_bd_intf_port -mode $mode -vlnv $vlnv -name $name]
  foreach p [list_property $bif CONFIG.*] {
    set v [get_property $p $bif]
    set_property -quiet $p $v $ext_bif
  }
  connect_bd_intf_net $bif $ext_bif
}

foreach pin [get_bd_pins -of $ip -filter {INTF==false}] {
  foreach p {dir type name left right} {
    set $p [get_property $p $pin]
  }
  if {$left == ""} {
    set ext_pin [create_bd_port -dir $dir -type $type -name $name]
  } else {
    set ext_pin [create_bd_port -dir $dir -type $type -from $left -to $right -name $name]
  }
  foreach p [list_property $pin CONFIG.*] {
    set v [get_property $p $pin]
    set_property -quiet $p $v $ext_pin
  }
  connect_bd_net $pin $ext_pin
}

puts "-- Assign addresses, save and validate BD..."

assign_bd_addr
save_bd_design
validate_bd_design

puts "END: GENERATE_BD"
puts "--------------------------------------------------------"
