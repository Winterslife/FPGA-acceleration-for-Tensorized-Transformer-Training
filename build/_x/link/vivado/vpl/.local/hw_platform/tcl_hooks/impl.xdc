
set partition_path level0_i/level1/level1_i/ulp

###################################################
#
# ULP PBLOCK Constraints
#
###################################################

create_pblock pblock_dynamic_SLR0
resize_pblock [get_pblocks pblock_dynamic_SLR0] -add    {CLOCKREGION_X0Y0:CLOCKREGION_X7Y3}
resize_pblock [get_pblocks pblock_dynamic_SLR0] -remove {SLICE_X146Y230:SLICE_X205Y239 LAGUNA_X20Y220:LAGUNA_X27Y239}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR0]
set_property PARENT pblock_dynamic_region [get_pblocks pblock_dynamic_SLR0] -quiet

create_pblock pblock_dynamic_SLR1
resize_pblock [get_pblocks pblock_dynamic_SLR1] -add    {CLOCKREGION_X0Y4:CLOCKREGION_X3Y7}
resize_pblock [get_pblocks pblock_dynamic_SLR1] -remove {SLICE_X115Y240:SLICE_X116Y479}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR1]
set_property PARENT pblock_dynamic_region [get_pblocks pblock_dynamic_SLR1] -quiet

create_pblock pblock_dynamic_SLR2
resize_pblock [get_pblocks pblock_dynamic_SLR2] -add    {CLOCKREGION_X0Y8:CLOCKREGION_X7Y11}
resize_pblock [get_pblocks pblock_dynamic_SLR2] -remove {SLICE_X120Y480:SLICE_X202Y491 LAGUNA_X16Y480:LAGUNA_X27Y503}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR2]
set_property PARENT pblock_dynamic_region [get_pblocks pblock_dynamic_SLR2] -quiet                                                         

create_pblock pblock_dynamic_SLR3
resize_pblock [get_pblocks pblock_dynamic_SLR3] -add    {CLOCKREGION_X0Y12:CLOCKREGION_X7Y15}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR3]
set_property PARENT pblock_dynamic_region [get_pblocks pblock_dynamic_SLR3] -quiet



# JUSTIFICATION: CR1112750 - 
# aclk_kernel_00_hierarchy and aclk_kernel_01 are both in SLR0.  So in SLR1, leave the stage 1, 2, and 3 unconstrained, but constrain stage 4 to SLR2.
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ level0_i/level1/level1_i/ulp/ss_ucs*fanout_aresetn_kernel*_slr2_4"]


# #######################################################################
# WARNING: WORKAROUND!
# #######################################################################
#
# These constraints are added as a workaround to CR-1038346 
# Remove these constraints when CR is resolved.
#
# Error codes: ERROR: [VPL 30-1112] 
#
set_property CONTAIN_ROUTING   0 [get_pblocks pblock_dynamic_SLR0]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR0]
set_property CONTAIN_ROUTING   0 [get_pblocks pblock_dynamic_SLR1]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR1]
set_property CONTAIN_ROUTING   0 [get_pblocks pblock_dynamic_SLR2]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR2]
set_property CONTAIN_ROUTING   0 [get_pblocks pblock_dynamic_SLR3]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR3]

# --------------------------------------------------------------------
# JUSTIFICIATION:  Kernel interrupts are level triggered but may be 
# may be driven by a flop on an arbitrary clock source within the kernel.
# The set_false_path suppresses false timing failures that would otherwise be reported.

set_false_path -through  [get_pins -hierarchical -filter "NAME=~$partition_path/plp_m_irq_kernel_00*"]

# JUSTIFICATION: Like the interrupt signals, the DDR calibration signal originates in asynchronous clock domains 
# that differ from pipeline clock in the isolation interface but since the signal is largely static a false path is
# sufficient to resolve the subsequent timing failures. 
set_false_path -through  [get_pins -hierarchical -filter "NAME=~$partition_path/plp_m_data_ddr*"]

# --------------------------------------------------------------------
# JUSTIFICATION: CR-1049759
#
# Prior platforms have experienced spreading of memory controller logic across SLR boundaries 
# leading to timing closure problems.
#
# The constraints below force the memory controller instances to be locally placed in the correct SLRs.

set_property MIG_FLOORPLAN_MODE FULL [get_cells $partition_path/*memory_subsystem/inst/memory/ddr4_mem00] -quiet
set_property MIG_FLOORPLAN_MODE FULL [get_cells $partition_path/*memory_subsystem/inst/memory/ddr4_mem01] -quiet
set_property MIG_FLOORPLAN_MODE FULL [get_cells $partition_path/*memory_subsystem/inst/memory/ddr4_mem02] -quiet

# JUSTIFICATION: The path from ICCLK BUFG in UCS to the Gate_Fast_d1_reg clock pin tends to cross the device IO column
# and incur a large delay. This leads to large clock skew with respect to the output of the gated FCLK BUFG. Constrain
# the maximum delay to the FF so that the IO column will not be crossed, thereby controlling skew.
set_max_delay -from io_clk_ddr4_01_clk_p -to level0_i/level1/level1_i/ulp/ss_ucs/inst/aclk_kernel_00_hierarchy/clock_throttling_aclk_kernel_00/U0/Gate_Fast_d1_reg/D 5.0
set_max_delay -from io_clk_ddr4_01_clk_p -to level0_i/level1/level1_i/ulp/ss_ucs/inst/aclk_kernel_01_hierarchy/clock_throttling_aclk_kernel_01/U0/Gate_Fast_d1_reg/D 5.0


set_property HIGH_PRIORITY true [get_nets -of_objects [get_pins level0_i/level1/level1_i/ulp/ss_ucs/inst/aclk_kernel_00_hierarchy/clock_throttling_aclk_kernel_00/U0/ECCLK/O]]
set_property HIGH_PRIORITY true [get_nets -of_objects [get_pins level0_i/level1/level1_i/ulp/ss_ucs/inst/aclk_kernel_01_hierarchy/clock_throttling_aclk_kernel_01/U0/ECCLK/O]]