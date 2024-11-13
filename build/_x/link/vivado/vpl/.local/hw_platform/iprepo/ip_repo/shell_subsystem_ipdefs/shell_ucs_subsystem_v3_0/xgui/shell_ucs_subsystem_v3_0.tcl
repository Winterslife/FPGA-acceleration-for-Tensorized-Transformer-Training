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

    #---> Adding Page --------------------------------------------------------------------------------------------------------------------#

    set General_Config [ipgui::add_page $IPINST -name "General Config"]

        #---> Adding Params --------------------------------------------------------------------------------------------------------------#

        set General_Group [ipgui::add_group $IPINST -parent $General_Config -name "General Config" ]

        set FREQ_CNT_REF_CLK_HZ                   [ipgui::add_param $IPINST -parent $General_Group          -name FREQ_CNT_REF_CLK_HZ                   -layout horizontal -widget textEdit]

        set SLR_Group [ipgui::add_group $IPINST -parent $General_Config -name "SLR Config" ]

        set NUM_SLR                               [ipgui::add_param $IPINST -parent $SLR_Group              -name NUM_SLR                               -layout horizontal -widget textEdit]
        set NUM_RESET_FANOUT_FLOPS_SLR0           [ipgui::add_param $IPINST -parent $SLR_Group              -name NUM_RESET_FANOUT_FLOPS_SLR0           -layout horizontal -widget textEdit]
        set NUM_RESET_FANOUT_FLOPS_SLR1           [ipgui::add_param $IPINST -parent $SLR_Group              -name NUM_RESET_FANOUT_FLOPS_SLR1           -layout horizontal -widget textEdit]
        set NUM_RESET_FANOUT_FLOPS_SLR2           [ipgui::add_param $IPINST -parent $SLR_Group              -name NUM_RESET_FANOUT_FLOPS_SLR2           -layout horizontal -widget textEdit]
        set NUM_RESET_FANOUT_FLOPS_SLR3           [ipgui::add_param $IPINST -parent $SLR_Group              -name NUM_RESET_FANOUT_FLOPS_SLR3           -layout horizontal -widget textEdit]

        set HBM_Clock_Group [ipgui::add_group $IPINST -parent $General_Config -name "HBM Clock" ]

        set HAS_HBM_CLK                           [ipgui::add_param $IPINST -parent $HBM_Clock_Group        -name HAS_HBM_CLK                           -layout horizontal -widget comboBox]
        set CLK_DOMAIN_CLK_HBM                    [ipgui::add_param $IPINST -parent $HBM_Clock_Group        -name CLK_DOMAIN_CLK_HBM                    -layout horizontal -widget textEdit]

        set Shutdown_Clocks_Group [ipgui::add_group $IPINST -parent $General_Config -name "Shutdown Clocks" ]
        set ENABLE_SHUTDOWN_CLOCKS                [ipgui::add_param $IPINST -parent $Shutdown_Clocks_Group  -name ENABLE_SHUTDOWN_CLOCKS                -layout horizontal -widget checkBox]

    #---> Adding Page --------------------------------------------------------------------------------------------------------------------#

    set Kernel_Clock_Config [ipgui::add_page $IPINST -name "Kernel Clock Config"]

        set aclk_kernel_00_Group [ipgui::add_group $IPINST -parent $Kernel_Clock_Config -name "aclk_kernel_00" ]

        set FREQ_HZ_KERNEL_CLOCK_00               [ipgui::add_param $IPINST -parent $aclk_kernel_00_Group   -name FREQ_HZ_KERNEL_CLOCK_00               -layout horizontal -widget textEdit]
        set ENABLE_SCALABLE_KERNEL_CLOCK_00       [ipgui::add_param $IPINST -parent $aclk_kernel_00_Group   -name ENABLE_SCALABLE_KERNEL_CLOCK_00       -layout horizontal -widget comboBox]
        set ENABLE_THROTTLING_KERNEL_CLOCK_00     [ipgui::add_param $IPINST -parent $aclk_kernel_00_Group   -name ENABLE_THROTTLING_KERNEL_CLOCK_00     -layout horizontal -widget checkBox]
        set ENABLE_CONT_KERNEL_CLOCK_00           [ipgui::add_param $IPINST -parent $aclk_kernel_00_Group   -name ENABLE_CONT_KERNEL_CLOCK_00           -layout horizontal -widget checkBox]
        set EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_00  [ipgui::add_param $IPINST -parent $aclk_kernel_00_Group   -name EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_00  -layout horizontal -widget comboBox]
        set MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_00   [ipgui::add_param $IPINST -parent $aclk_kernel_00_Group   -name MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_00   -layout horizontal -widget textEdit]
        set CLK_DOMAIN_ACLK_KERNEL_00             [ipgui::add_param $IPINST -parent $aclk_kernel_00_Group   -name CLK_DOMAIN_ACLK_KERNEL_00             -layout horizontal -widget textEdit]

        set aclk_kernel_01_Group [ipgui::add_group $IPINST -parent $Kernel_Clock_Config -name "aclk_kernel_01" ]

        set FREQ_HZ_KERNEL_CLOCK_01               [ipgui::add_param $IPINST -parent $aclk_kernel_01_Group   -name FREQ_HZ_KERNEL_CLOCK_01               -layout horizontal -widget textEdit]
        set ENABLE_SCALABLE_KERNEL_CLOCK_01       [ipgui::add_param $IPINST -parent $aclk_kernel_01_Group   -name ENABLE_SCALABLE_KERNEL_CLOCK_01       -layout horizontal -widget comboBox]
        set ENABLE_THROTTLING_KERNEL_CLOCK_01     [ipgui::add_param $IPINST -parent $aclk_kernel_01_Group   -name ENABLE_THROTTLING_KERNEL_CLOCK_01     -layout horizontal -widget checkBox]
        set ENABLE_CONT_KERNEL_CLOCK_01           [ipgui::add_param $IPINST -parent $aclk_kernel_01_Group   -name ENABLE_CONT_KERNEL_CLOCK_01           -layout horizontal -widget checkBox]
        set EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_01  [ipgui::add_param $IPINST -parent $aclk_kernel_01_Group   -name EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_01  -layout horizontal -widget comboBox]
        set MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_01   [ipgui::add_param $IPINST -parent $aclk_kernel_01_Group   -name MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_01   -layout horizontal -widget textEdit]
        set CLK_DOMAIN_ACLK_KERNEL_01             [ipgui::add_param $IPINST -parent $aclk_kernel_01_Group   -name CLK_DOMAIN_ACLK_KERNEL_01             -layout horizontal -widget textEdit]

        set aclk_kernel_02_Group [ipgui::add_group $IPINST -parent $Kernel_Clock_Config -name "aclk_kernel_02" ]

        set FREQ_HZ_KERNEL_CLOCK_02               [ipgui::add_param $IPINST -parent $aclk_kernel_02_Group   -name FREQ_HZ_KERNEL_CLOCK_02               -layout horizontal -widget textEdit]
        set ENABLE_SCALABLE_KERNEL_CLOCK_02       [ipgui::add_param $IPINST -parent $aclk_kernel_02_Group   -name ENABLE_SCALABLE_KERNEL_CLOCK_02       -layout horizontal -widget comboBox]
        set ENABLE_THROTTLING_KERNEL_CLOCK_02     [ipgui::add_param $IPINST -parent $aclk_kernel_02_Group   -name ENABLE_THROTTLING_KERNEL_CLOCK_02     -layout horizontal -widget checkBox]
        set ENABLE_CONT_KERNEL_CLOCK_02           [ipgui::add_param $IPINST -parent $aclk_kernel_02_Group   -name ENABLE_CONT_KERNEL_CLOCK_02           -layout horizontal -widget checkBox]
        set EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_02  [ipgui::add_param $IPINST -parent $aclk_kernel_02_Group   -name EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_02  -layout horizontal -widget comboBox]
        set MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_02   [ipgui::add_param $IPINST -parent $aclk_kernel_02_Group   -name MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_02   -layout horizontal -widget textEdit]
        set CLK_DOMAIN_ACLK_KERNEL_02             [ipgui::add_param $IPINST -parent $aclk_kernel_02_Group   -name CLK_DOMAIN_ACLK_KERNEL_02             -layout horizontal -widget textEdit]

        set aclk_kernel_03_Group [ipgui::add_group $IPINST -parent $Kernel_Clock_Config -name "aclk_kernel_03" ]

        set FREQ_HZ_KERNEL_CLOCK_03               [ipgui::add_param $IPINST -parent $aclk_kernel_03_Group   -name FREQ_HZ_KERNEL_CLOCK_03               -layout horizontal -widget textEdit]
        set ENABLE_SCALABLE_KERNEL_CLOCK_03       [ipgui::add_param $IPINST -parent $aclk_kernel_03_Group   -name ENABLE_SCALABLE_KERNEL_CLOCK_03       -layout horizontal -widget comboBox]
        set ENABLE_THROTTLING_KERNEL_CLOCK_03     [ipgui::add_param $IPINST -parent $aclk_kernel_03_Group   -name ENABLE_THROTTLING_KERNEL_CLOCK_03     -layout horizontal -widget checkBox]
        set ENABLE_CONT_KERNEL_CLOCK_03           [ipgui::add_param $IPINST -parent $aclk_kernel_03_Group   -name ENABLE_CONT_KERNEL_CLOCK_03           -layout horizontal -widget checkBox]
        set EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_03  [ipgui::add_param $IPINST -parent $aclk_kernel_03_Group   -name EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_03  -layout horizontal -widget comboBox]
        set MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_03   [ipgui::add_param $IPINST -parent $aclk_kernel_03_Group   -name MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_03   -layout horizontal -widget textEdit]
        set CLK_DOMAIN_ACLK_KERNEL_03             [ipgui::add_param $IPINST -parent $aclk_kernel_03_Group   -name CLK_DOMAIN_ACLK_KERNEL_03             -layout horizontal -widget textEdit]

        set aclk_kernel_04_Group [ipgui::add_group $IPINST -parent $Kernel_Clock_Config -name "aclk_kernel_04" ]

        set FREQ_HZ_KERNEL_CLOCK_04               [ipgui::add_param $IPINST -parent $aclk_kernel_04_Group   -name FREQ_HZ_KERNEL_CLOCK_04               -layout horizontal -widget textEdit]
        set ENABLE_SCALABLE_KERNEL_CLOCK_04       [ipgui::add_param $IPINST -parent $aclk_kernel_04_Group   -name ENABLE_SCALABLE_KERNEL_CLOCK_04       -layout horizontal -widget comboBox]
        set ENABLE_THROTTLING_KERNEL_CLOCK_04     [ipgui::add_param $IPINST -parent $aclk_kernel_04_Group   -name ENABLE_THROTTLING_KERNEL_CLOCK_04     -layout horizontal -widget checkBox]
        set ENABLE_CONT_KERNEL_CLOCK_04           [ipgui::add_param $IPINST -parent $aclk_kernel_04_Group   -name ENABLE_CONT_KERNEL_CLOCK_04           -layout horizontal -widget checkBox]
        set EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_04  [ipgui::add_param $IPINST -parent $aclk_kernel_04_Group   -name EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_04  -layout horizontal -widget comboBox]
        set MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_04   [ipgui::add_param $IPINST -parent $aclk_kernel_04_Group   -name MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_04   -layout horizontal -widget textEdit]
        set CLK_DOMAIN_ACLK_KERNEL_04             [ipgui::add_param $IPINST -parent $aclk_kernel_04_Group   -name CLK_DOMAIN_ACLK_KERNEL_04             -layout horizontal -widget textEdit]

        set aclk_kernel_05_Group [ipgui::add_group $IPINST -parent $Kernel_Clock_Config -name "aclk_kernel_05" ]

        set FREQ_HZ_KERNEL_CLOCK_05               [ipgui::add_param $IPINST -parent $aclk_kernel_05_Group   -name FREQ_HZ_KERNEL_CLOCK_05               -layout horizontal -widget textEdit]
        set ENABLE_SCALABLE_KERNEL_CLOCK_05       [ipgui::add_param $IPINST -parent $aclk_kernel_05_Group   -name ENABLE_SCALABLE_KERNEL_CLOCK_05       -layout horizontal -widget comboBox]
        set ENABLE_THROTTLING_KERNEL_CLOCK_05     [ipgui::add_param $IPINST -parent $aclk_kernel_05_Group   -name ENABLE_THROTTLING_KERNEL_CLOCK_05     -layout horizontal -widget checkBox]
        set ENABLE_CONT_KERNEL_CLOCK_05           [ipgui::add_param $IPINST -parent $aclk_kernel_05_Group   -name ENABLE_CONT_KERNEL_CLOCK_05           -layout horizontal -widget checkBox]
        set EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_05  [ipgui::add_param $IPINST -parent $aclk_kernel_05_Group   -name EDGE_ALIGNED_KERNEL_CLOCK_DIVISOR_05  -layout horizontal -widget comboBox]
        set MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_05   [ipgui::add_param $IPINST -parent $aclk_kernel_05_Group   -name MULTIPLE_MMCM_GROUP_KERNEL_CLOCK_05   -layout horizontal -widget textEdit]
        set CLK_DOMAIN_ACLK_KERNEL_05             [ipgui::add_param $IPINST -parent $aclk_kernel_05_Group   -name CLK_DOMAIN_ACLK_KERNEL_05             -layout horizontal -widget textEdit]

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

# --------------------------------------------------------------------------------------------------------------------------------------#

# Proc to disable continuous clock when throttling is disabled
proc update_PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_00 { PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_00 PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_00 IPINST } {

    set throttling [get_property value ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_00}]

    if {$throttling == false} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_00}
        set_property value   false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_00}
        set_property enabled false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_00}
    }

}

# Proc to disable continuous clock when throttling is disabled
proc update_PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_01 { PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_01 PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_01 IPINST } {

    set throttling [get_property value ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_01}]

    if {$throttling == false} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_01}
        set_property value   false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_01}
        set_property enabled false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_01}
    }

}

# Proc to disable continuous clock when throttling is disabled
proc update_PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_02 { PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_02 PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_02 IPINST } {

    set throttling [get_property value ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_02}]

    if {$throttling == false} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_02}
        set_property value   false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_02}
        set_property enabled false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_02}
    }

}

# Proc to disable continuous clock when throttling is disabled
proc update_PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_03 { PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_03 PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_03 IPINST } {

    set throttling [get_property value ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_03}]

    if {$throttling == false} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_03}
        set_property value   false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_03}
        set_property enabled false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_03}
    }

}

# Proc to disable continuous clock when throttling is disabled
proc update_PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_04 { PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_04 PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_04 IPINST } {

    set throttling [get_property value ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_04}]

    if {$throttling == false} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_04}
        set_property value   false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_04}
        set_property enabled false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_04}
    }

}

# Proc to disable continuous clock when throttling is disabled
proc update_PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_05 { PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_05 PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_05 IPINST } {

    set throttling [get_property value ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_05}]

    if {$throttling == false} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_05}
        set_property value   false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_05}
        set_property enabled false ${PARAM_VALUE.ENABLE_CONT_KERNEL_CLOCK_05}
    }

}

# --------------------------------------------------------------------------------------------------------------------------------------#

# Proc to update throttling enable based on global throttling enable individual enable
proc update_PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_00 { PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_00 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_00 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_00}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_00}
    }

}

# Proc to update throttling enable based on global throttling enable individual enable
proc update_PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_01 { PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_01 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_01 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_01}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_01}
    }

}

proc update_PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_02 { PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_02 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_02 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_02}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_02}
    }

}

# Proc to update throttling enable based on global throttling enable individual enable
proc update_PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_03 { PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_03 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_03 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_03}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_03}
    }

}

# Proc to update throttling enable based on global throttling enable individual enable
proc update_PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_04 { PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_04 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_04 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_04}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_04}
    }

}

# Proc to update throttling enable based on global throttling enable individual enable
proc update_PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_05 { PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_05 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_05 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_05}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_THROTTLING_KERNEL_CLOCK_05}
    }

}

# --------------------------------------------------------------------------------------------------------------------------------------#

# Proc to update scalable enable based on frequency
proc update_PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_00 { PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_00 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_00 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_00}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_00}
    } else {
        set_property enabled false ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_00}
    }

}

# Proc to update scalable enable based on frequency
proc update_PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_01 { PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_01 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_01 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_01}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_01}
    } else {
        set_property enabled false ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_01}
    }

}

# Proc to update scalable enable based on frequency
proc update_PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_02 { PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_02 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_02 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_02}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_02}
    } else {
        set_property enabled false ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_02}
    }

}

# Proc to update scalable enable based on frequency
proc update_PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_03 { PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_03 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_03 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_03}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_03}
    } else {
        set_property enabled false ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_03}
    }

}

# Proc to update scalable enable based on frequency
proc update_PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_04 { PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_04 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_04 IPINST } {

    set frequency [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_04}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_04}
    } else {
        set_property enabled false ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_04}
    }

}

# Proc to update scalable enable based on frequency
proc update_PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_05 { PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_05 PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_05 IPINST } {

    set frequency         [get_property value ${PARAM_VALUE.FREQ_HZ_KERNEL_CLOCK_05}]

    if {$frequency > 0} {
        set_property enabled true  ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_05}
    } else {
        set_property enabled false ${PARAM_VALUE.ENABLE_SCALABLE_KERNEL_CLOCK_05}
    }

}
