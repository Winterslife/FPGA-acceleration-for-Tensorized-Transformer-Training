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

# Definitional proc to organize widgets for parameters.

proc init_gui { IPINST } {

  ipgui::add_param $IPINST -name "Component_Name"

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set General_Config [ipgui::add_page $IPINST -name "General Configuration"]

    set C_INITIAL_UUID [ipgui::add_param $IPINST -name C_INITIAL_UUID -parent $General_Config]
    set_property tooltip  "Set a default 128-bit UUID to be initialized in the ROM during synthesis" $C_INITIAL_UUID

}

#==========================================================================================================================================#
# Parameter Validation Procedures
#==========================================================================================================================================#

# Validate the entered UUID

proc validate_PARAM_VALUE.C_INITIAL_UUID {PARAM_VALUE.C_INITIAL_UUID IPINST} {

    # Verify the UUID string is 32 characters in length
    set uuid_length [string length [get_property value ${PARAM_VALUE.C_INITIAL_UUID}]]

    if {[expr $uuid_length != 32]} {
      set_property errmsg "UUID string length of $uuid_length is not equal to 32" [ipgui::get_paramspec -name C_INITIAL_UUID -of $IPINST ]
      return false
    }

    # Verify the UUID string is valid hexadecimal
    return [RangeCheck4HexDec C_INITIAL_UUID [get_property value ${PARAM_VALUE.C_INITIAL_UUID}] 00000000000000000000000000000000 FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF $IPINST]

}

#==========================================================================================================================================#
# Parameter Update Procedures
#==========================================================================================================================================#

proc update_MODELPARAM_VALUE.C_MEMORY_INIT { MODELPARAM_VALUE.C_MEMORY_INIT PARAM_VALUE.C_INITIAL_UUID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set uuid ""
  set uuid_chars [split [get_property value ${PARAM_VALUE.C_INITIAL_UUID}] {}]

  # Split the UUID into dword's and rotate to match the XPM_MEM string init format
  for {set dw 3} {$dw >= 0} {incr dw -1} {
    set dword ""
    for {set n 0} {$n < 8} {incr n} {
      append dword [lindex $uuid_chars [expr $dw * 8 + $n]]
    }
    if {[expr $dw == 3]} {
      append uuid $dword
    } else {
      append uuid "," $dword
    }
  }
	set_property value $uuid ${MODELPARAM_VALUE.C_MEMORY_INIT}

}

#==========================================================================================================================================#
# Helper Procedures
#==========================================================================================================================================#

# Proc to validate that the entered Hex string value is within the correct range
proc RangeCheck4HexDec {param paramValue MinValue MaxValue IPINST} {

    if { [regexp -all {[a-fA-F0-9]} $paramValue] != [ string length $paramValue ]} {

        set_property errmsg "Entered invalid Hexadecimal value $paramValue" [ipgui::get_paramspec -name $param -of $IPINST ]
        return false

    }

    if {$paramValue  == ""} {

        set_property errmsg "Entered invalid Hexadecimal value $paramValue" [ipgui::get_paramspec -name $param -of $IPINST ]
        return false

    }

    if {[expr 0x$MaxValue ] < [expr 0x$paramValue ] ||  [expr 0x$paramValue ] < [expr 0x$MinValue]} {

        set_property errmsg "Entered Hexadecimal value $paramValue is out of range." [ipgui::get_paramspec -name $param -of $IPINST ]
        return false

    }

    return true

}
