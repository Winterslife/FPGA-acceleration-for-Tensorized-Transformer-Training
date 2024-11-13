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

proc init_gui { IPINST } {

    ipgui::add_param $IPINST -name "Component_Name"

    #---> Adding Page ---------------------------------------------------------------------------------------------------------------------#

    set General_Config [ipgui::add_page $IPINST -name "General Config"]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set Partition_Name [ipgui::add_group $IPINST -parent $General_Config -name "Partition Type" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set PARTITION_NAME [ipgui::add_param $IPINST -parent $Partition_Name -name PARTITION_NAME -layout horizontal -widget comboBox]
            set_property display_name "Partition Name" [ipgui::get_guiparamspec PARTITION_NAME -of $IPINST]

            set DESIGN_TYPE [ipgui::add_param $IPINST -parent $Partition_Name -name DESIGN_TYPE -layout horizontal -widget radioGroup]
            set_property display_name "Design Type" [ipgui::get_guiparamspec DESIGN_TYPE -of $IPINST]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set BLP_Group [ipgui::add_group $IPINST -parent $General_Config -name "BLP Peripherals" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set HAS_AXI_HWICAP [ipgui::add_param $IPINST -parent $BLP_Group -name HAS_AXI_HWICAP -layout horizontal -widget checkBox]
            set_property display_name "Enable HW ICAP Peripheral" [ipgui::get_guiparamspec HAS_AXI_HWICAP -of $IPINST]

            #set USE_MDM_UART [ipgui::add_param $IPINST -parent $BLP_Group -name USE_MDM_UART -layout horizontal -widget checkBox]
            #set_property display_name "Enable MDM JTAG UART" [ipgui::get_guiparamspec USE_MDM_UART -of $IPINST]

            set HAS_MGMT_DEBUG [ipgui::add_param $IPINST -parent $BLP_Group -name HAS_MGMT_DEBUG -layout horizontal -widget checkBox]
            set_property display_name "Enable Management Debug Bridge" [ipgui::get_guiparamspec HAS_MGMT_DEBUG -of $IPINST]

            set NUM_MB_DEBUG_PORTS [ipgui::add_param $IPINST -name NUM_MB_DEBUG_PORTS -parent $BLP_Group -layout horizontal]
            set_property display_name "Num MDM MB debug Ports" [ipgui::get_guiparamspec NUM_MB_DEBUG_PORTS -of $IPINST]

        set PLP_Group [ipgui::add_group $IPINST -parent $General_Config -name "PLP Peripherals" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set HAS_JTAG_AXI_MASTER [ipgui::add_param $IPINST -parent $PLP_Group -name HAS_JTAG_AXI_MASTER -layout horizontal -widget checkBox]
            set_property display_name "Enable JTAG AXI Master" [ipgui::get_guiparamspec HAS_JTAG_AXI_MASTER -of $IPINST]

            #set HAS_UUID_ROM [ipgui::add_param $IPINST -parent $PLP_Group -name HAS_UUID_ROM -layout horizontal -widget checkBox]
            #set_property display_name "Enable UUID ROM Peripheral" [ipgui::get_guiparamspec HAS_UUID_ROM -of $IPINST]

            set HAS_MEMORY_CALIB_STATUS [ipgui::add_param $IPINST -parent $PLP_Group -name HAS_MEMORY_CALIB_STATUS -layout horizontal -widget checkBox]
            set_property display_name "Enable DDR Calibration Status GPIO" [ipgui::get_guiparamspec HAS_MEMORY_CALIB_STATUS -of $IPINST]

            set NUM_MEMORY_CALIB [ipgui::add_param $IPINST -name NUM_MEMORY_CALIB -parent $PLP_Group -layout horizontal]
            set_property display_name "Num DDR calibration bits" [ipgui::get_guiparamspec NUM_MEMORY_CALIB -of $IPINST]

            set HAS_DDR4_RESET_GATE [ipgui::add_param $IPINST -parent $PLP_Group -name HAS_DDR4_RESET_GATE -layout horizontal -widget checkBox]
            set_property display_name "Enable DDR4 Reset Gate GPIO" [ipgui::get_guiparamspec HAS_DDR4_RESET_GATE -of $IPINST]

        set ULP_Group [ipgui::add_group $IPINST -parent $General_Config -name "ULP Peripherals" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set HAS_USER_DEBUG [ipgui::add_param $IPINST -parent $ULP_Group -name HAS_USER_DEBUG -layout horizontal -widget checkBox]
            set_property display_name "Enable User Debug Bridge" [ipgui::get_guiparamspec HAS_USER_DEBUG -of $IPINST]

    #------> Adding Group -------------------------------------------------------------------------------------------------------------------#

        #set UUID_Metadata_Group [ipgui::add_group $IPINST -name "UUID Metadata Configuration" -parent $General_Config]

        #set INIT_LOGIC_UUID [ipgui::add_param $IPINST -name INIT_LOGIC_UUID -parent $UUID_Metadata_Group]
        #set_property tooltip  "Configure the inital Logic UUID to be populated in the UUID ROM during synthesis. This must be a 32 character string comprised of hex characters only." $INIT_LOGIC_UUID

    #---> Adding Page ---------------------------------------------------------------------------------------------------------------------#

    set SLR_Crossing_Config [ipgui::add_page $IPINST -name "SLR Crossing Config"]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set BLP_Regslice_Group [ipgui::add_group $IPINST -parent $SLR_Crossing_Config -name "BLP Peripherals" ]

            set REGSLICE_AXI_HWICAP [ipgui::add_param $IPINST -parent $BLP_Regslice_Group -name REGSLICE_AXI_HWICAP -layout horizontal -widget comboBox]
            set_property display_name "AXI HW ICAP Peripheral" [ ipgui::get_guiparamspec REGSLICE_AXI_HWICAP -of $IPINST ]

            set REGSLICE_MGMT_DEBUG [ipgui::add_param $IPINST -parent $BLP_Regslice_Group -name REGSLICE_MGMT_DEBUG -layout horizontal -widget comboBox]
            set_property display_name "Management Debug Bridge" [ ipgui::get_guiparamspec REGSLICE_MGMT_DEBUG -of $IPINST ]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set PLP_Regslice_Group [ipgui::add_group $IPINST -parent $SLR_Crossing_Config -name "PLP Peripherals" ]

            #set REGSLICE_UUID_ROM [ipgui::add_param $IPINST -parent $PLP_Regslice_Group -name REGSLICE_UUID_ROM -layout horizontal -widget comboBox]
            #set_property display_name "UUID ROM Peripheral" [ ipgui::get_guiparamspec REGSLICE_UUID_ROM -of $IPINST ]

            set REGSLICE_MEMORY_CALIB_STATUS [ipgui::add_param $IPINST -parent $PLP_Regslice_Group -name REGSLICE_MEMORY_CALIB_STATUS -layout horizontal -widget comboBox]
            set_property display_name "DDR Calibration Status GPIO" [ ipgui::get_guiparamspec REGSLICE_MEMORY_CALIB_STATUS -of $IPINST ]

            set REGSLICE_DDR4_RESET_GATE [ipgui::add_param $IPINST -parent $PLP_Regslice_Group -name REGSLICE_DDR4_RESET_GATE -layout horizontal -widget comboBox]
            set_property display_name "DDR4 Reset Gate GPIO" [ ipgui::get_guiparamspec REGSLICE_DDR4_RESET_GATE -of $IPINST ]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set ULP_Regslice_Group [ipgui::add_group $IPINST -parent $SLR_Crossing_Config -name "ULP Peripherals" ]

            set REGSLICE_USER_DEBUG_BRIDGE [ipgui::add_param $IPINST -parent $ULP_Regslice_Group -name REGSLICE_USER_DEBUG_BRIDGE -layout horizontal -widget comboBox]
            set_property display_name "User Debug Bridge" [ ipgui::get_guiparamspec REGSLICE_USER_DEBUG_BRIDGE -of $IPINST ]

}

#==========================================================================================================================================#
# Parameter Update Procedures
#==========================================================================================================================================#

proc update_PARAM_VALUE.VERSION.MAJOR_VERSION { PARAM_VALUE.VERSION.MAJOR_VERSION PROJECT_PARAM.DEVICE IPINST } {

    set version [get_property VERSION [current_ipcomp]]
    regexp {^(\d+)\.(\d+)$} $version -> major minor
    set_property value $major ${PARAM_VALUE.VERSION.MAJOR_VERSION}

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.MAJOR_VERSION}

}

proc update_PARAM_VALUE.VERSION.MINOR_VERSION { PARAM_VALUE.VERSION.MINOR_VERSION PROJECT_PARAM.DEVICE IPINST } {

    set version [get_property VERSION [current_ipcomp]]
    regexp {^(\d+)\.(\d+)$} $version -> major minor
    set_property value $minor ${PARAM_VALUE.VERSION.MINOR_VERSION}

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.MINOR_VERSION}

}

proc update_PARAM_VALUE.VERSION.CORE_REVISION { PARAM_VALUE.VERSION.CORE_REVISION PROJECT_PARAM.DEVICE IPINST } {

    set revision [get_property CORE_REVISION [current_ipcomp]]
    set_property value $revision ${PARAM_VALUE.VERSION.CORE_REVISION}

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.CORE_REVISION}

}

proc update_PARAM_VALUE.VERSION.PATCH_REVISION { PARAM_VALUE.VERSION.PATCH_REVISION PROJECT_PARAM.DEVICE IPINST } {

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.PATCH_REVISION}

}

#----------------------------------------------------------------------------------------------------------------------------------------#

proc update_PARAM_VALUE.HAS_AXI_HWICAP { PARAM_VALUE.HAS_AXI_HWICAP PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]

    if {$partition == "BLP"} {
        set_property enabled true  ${PARAM_VALUE.HAS_AXI_HWICAP}
        set_property value   true  ${PARAM_VALUE.HAS_AXI_HWICAP}
    } else {
        set_property enabled true  ${PARAM_VALUE.HAS_AXI_HWICAP}
        set_property value   false ${PARAM_VALUE.HAS_AXI_HWICAP}
        set_property enabled false ${PARAM_VALUE.HAS_AXI_HWICAP}
    }

}

proc update_PARAM_VALUE.HAS_AXI_ICAP_ARB { PARAM_VALUE.HAS_AXI_ICAP_ARB PARAM_VALUE.HAS_AXI_HWICAP PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]
    set enable    [get_property value ${PARAM_VALUE.HAS_AXI_HWICAP}]

    if {$partition == "BLP"} {
        if {$enable == true} {
            set_property enabled true  ${PARAM_VALUE.HAS_AXI_ICAP_ARB}
            set_property value   true  ${PARAM_VALUE.HAS_AXI_ICAP_ARB}
        } else {
            set_property enabled true  ${PARAM_VALUE.HAS_AXI_ICAP_ARB}
            set_property value   false ${PARAM_VALUE.HAS_AXI_ICAP_ARB}
        }
    } else {
        set_property enabled true  ${PARAM_VALUE.HAS_AXI_ICAP_ARB}
        set_property value   false ${PARAM_VALUE.HAS_AXI_ICAP_ARB}
        set_property enabled false ${PARAM_VALUE.HAS_AXI_ICAP_ARB}
    }

}

proc update_PARAM_VALUE.HAS_MGMT_DEBUG { PARAM_VALUE.HAS_MGMT_DEBUG PARAM_VALUE.DESIGN_TYPE PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition   [get_property value ${PARAM_VALUE.PARTITION_NAME}]
    set design_type [get_property value ${PARAM_VALUE.DESIGN_TYPE}]

    if {$partition == "BLP"} {
        set_property enabled true  ${PARAM_VALUE.HAS_MGMT_DEBUG}
        set_property value   true  ${PARAM_VALUE.HAS_MGMT_DEBUG}
    } elseif {$partition == "PLP"} {
        if {$design_type == "NRP"} {
            set_property enabled true  ${PARAM_VALUE.HAS_MGMT_DEBUG}
            set_property value   true  ${PARAM_VALUE.HAS_MGMT_DEBUG}
        } else {
            set_property enabled true  ${PARAM_VALUE.HAS_MGMT_DEBUG}
            set_property value   false ${PARAM_VALUE.HAS_MGMT_DEBUG}
            set_property enabled false ${PARAM_VALUE.HAS_MGMT_DEBUG}
        }
    } else {
        set_property enabled true  ${PARAM_VALUE.HAS_MGMT_DEBUG}
        set_property value   false ${PARAM_VALUE.HAS_MGMT_DEBUG}
        set_property enabled false ${PARAM_VALUE.HAS_MGMT_DEBUG}
    }

}

proc update_PARAM_VALUE.USE_MDM_UART { PARAM_VALUE.USE_MDM_UART PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]

    if {$partition == "BLP"} {
        set_property enabled true  ${PARAM_VALUE.USE_MDM_UART}
        set_property value   0     ${PARAM_VALUE.USE_MDM_UART}
    } else {
        set_property enabled true  ${PARAM_VALUE.USE_MDM_UART}
        set_property value   0     ${PARAM_VALUE.USE_MDM_UART}
        set_property enabled false ${PARAM_VALUE.USE_MDM_UART}
    }

}

#----------------------------------------------------------------------------------------------------------------------------------------#

proc update_PARAM_VALUE.HAS_JTAG_AXI_MASTER { PARAM_VALUE.HAS_JTAG_AXI_MASTER PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]

    if {$partition == "PLP"} {
        set_property enabled true  ${PARAM_VALUE.HAS_JTAG_AXI_MASTER}
        set_property value   true  ${PARAM_VALUE.HAS_JTAG_AXI_MASTER}
    } else {
        set_property enabled true  ${PARAM_VALUE.HAS_JTAG_AXI_MASTER}
        set_property value   false ${PARAM_VALUE.HAS_JTAG_AXI_MASTER}
        set_property enabled false ${PARAM_VALUE.HAS_JTAG_AXI_MASTER}
    }

}

proc update_PARAM_VALUE.HAS_DDR4_RESET_GATE { PARAM_VALUE.HAS_DDR4_RESET_GATE PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]

    if {$partition == "PLP"} {
        set_property enabled true  ${PARAM_VALUE.HAS_DDR4_RESET_GATE}
        set_property value   false ${PARAM_VALUE.HAS_DDR4_RESET_GATE}
    } else {
        set_property enabled true  ${PARAM_VALUE.HAS_DDR4_RESET_GATE}
        set_property value   false ${PARAM_VALUE.HAS_DDR4_RESET_GATE}
        set_property enabled false ${PARAM_VALUE.HAS_DDR4_RESET_GATE}
    }

}

proc update_PARAM_VALUE.HAS_MEMORY_CALIB_STATUS { PARAM_VALUE.HAS_MEMORY_CALIB_STATUS PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]

    if {$partition == "PLP"} {
        set_property enabled true  ${PARAM_VALUE.HAS_MEMORY_CALIB_STATUS}
        set_property value   true  ${PARAM_VALUE.HAS_MEMORY_CALIB_STATUS}
    } else {
        set_property enabled true  ${PARAM_VALUE.HAS_MEMORY_CALIB_STATUS}
        set_property value   false ${PARAM_VALUE.HAS_MEMORY_CALIB_STATUS}
        set_property enabled false ${PARAM_VALUE.HAS_MEMORY_CALIB_STATUS}
    }

}

#----------------------------------------------------------------------------------------------------------------------------------------#

proc update_PARAM_VALUE.HAS_USER_DEBUG { PARAM_VALUE.HAS_USER_DEBUG PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]

    if {$partition == "ULP"} {
        set_property enabled true  ${PARAM_VALUE.HAS_USER_DEBUG}
        set_property value   true  ${PARAM_VALUE.HAS_USER_DEBUG}
    } else {
        set_property enabled true  ${PARAM_VALUE.HAS_USER_DEBUG}
        set_property value   false ${PARAM_VALUE.HAS_USER_DEBUG}
        set_property enabled false ${PARAM_VALUE.HAS_USER_DEBUG}
    }

}

#----------------------------------------------------------------------------------------------------------------------------------------#

proc update_PARAM_VALUE.REGSLICE_USER_DEBUG_BRIDGE { PARAM_VALUE.HAS_USER_DEBUG PARAM_VALUE.REGSLICE_USER_DEBUG_BRIDGE PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]
    set enable    [get_property value ${PARAM_VALUE.HAS_USER_DEBUG}]

    if {($partition != "ULP") || ($enable == "false")} {
        set_property value   NONE ${PARAM_VALUE.REGSLICE_USER_DEBUG_BRIDGE}
    }

}

proc update_PARAM_VALUE.REGSLICE_MEMORY_CALIB_STATUS { PARAM_VALUE.HAS_MEMORY_CALIB_STATUS PARAM_VALUE.REGSLICE_MEMORY_CALIB_STATUS PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]
    set enable    [get_property value ${PARAM_VALUE.HAS_MEMORY_CALIB_STATUS}]

    if {($partition != "PLP") || ($enable == "false")} {
        set_property value   NONE ${PARAM_VALUE.REGSLICE_MEMORY_CALIB_STATUS}
    }

}

proc update_PARAM_VALUE.REGSLICE_DDR4_RESET_GATE { PARAM_VALUE.HAS_DDR4_RESET_GATE PARAM_VALUE.REGSLICE_DDR4_RESET_GATE PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]
    set enable    [get_property value ${PARAM_VALUE.HAS_DDR4_RESET_GATE}]

    if {($partition != "PLP") || ($enable == "false")} {
        set_property value   NONE ${PARAM_VALUE.REGSLICE_DDR4_RESET_GATE}
    }

}

proc update_PARAM_VALUE.REGSLICE_AXI_HWICAP { PARAM_VALUE.HAS_AXI_HWICAP PARAM_VALUE.REGSLICE_AXI_HWICAP PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]
    set enable    [get_property value ${PARAM_VALUE.HAS_AXI_HWICAP}]

    if {($partition != "BLP") || ($enable == "false")} {
        set_property value   NONE ${PARAM_VALUE.REGSLICE_AXI_HWICAP}
    }

}

proc update_PARAM_VALUE.REGSLICE_MGMT_DEBUG { PARAM_VALUE.HAS_MGMT_DEBUG PARAM_VALUE.REGSLICE_MGMT_DEBUG PARAM_VALUE.PARTITION_NAME IPINST } {

    set partition [get_property value ${PARAM_VALUE.PARTITION_NAME}]
    set enable    [get_property value ${PARAM_VALUE.HAS_MGMT_DEBUG}]

    if {($partition != "BLP") || ($enable == "false")} {
        set_property value   NONE ${PARAM_VALUE.REGSLICE_MGMT_DEBUG}
    }

}

#==========================================================================================================================================#

# Validate the entered Logic UUID

proc validate_PARAM_VALUE.INIT_LOGIC_UUID {PARAM_VALUE.INIT_LOGIC_UUID IPINST} {

    # Verify the UUID string is 32 characters in length
    set uuid_length [string length [get_property value ${PARAM_VALUE.INIT_LOGIC_UUID}]]

    if {[expr $uuid_length != 32]} {
      set_property errmsg "UUID string length of $uuid_length is not equal to 32" [ipgui::get_paramspec -name INIT_LOGIC_UUID -of $IPINST ]
      return false
    }

    # Verify the UUID string is valid hexadecimal
    return [RangeCheck4HexDec INIT_LOGIC_UUID [get_property value ${PARAM_VALUE.INIT_LOGIC_UUID}] 00000000000000000000000000000000 FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF $IPINST]

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
