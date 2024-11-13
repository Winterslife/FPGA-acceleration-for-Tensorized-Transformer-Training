if {[llength [get_pins -hierarchical -filter {NAME =~ *memory_subsystem/inst/DDR4_MEM* && IS_TIED==TRUE}]]} {
  puts "Possible DDR4_MEM [get_pins -hierarchical -filter {NAME =~ *memory_subsystem/inst/DDR4_MEM* && IS_TIED==TRUE}]"
  set_property DONT_TOUCH 0 [get_nets -segments -of [get_pins -hierarchical -filter {NAME =~ *memory_subsystem/inst/DDR4_MEM* && IS_TIED==TRUE}]]
  disconnect_net -net [get_nets -hierarchical -filter {NAME =~ "*/<const0>"}] -objects [get_pins -hierarchical -filter {NAME =~ *memory_subsystem/inst/DDR4_MEM* && IS_TIED==TRUE}]
} else {
  puts "INFO: could not find DDR4_MEM nets to disconnnect."
}

set partition_path level0_i/level1/level1_i/ulp

# #######################################################################
# WARNING: WORKAROUND!
# #######################################################################
#
# These constraints are added as a workaround to CR-1038346 
# Remove these constraints when CR is resolved.
#
# Error codes: ERROR: [VPL 30-1112] 
#
# The problem is that the XSA cannot register the parent PBLOCKS in the EARLY XDC processing stage and only as NORMAL. This creates a race condition where the 
# constraints for the parent and child processing occurs. They cannot be moved to LATE since that is where the constraints of the MSS happen. That would just move the 
# race condition from the NORMAL phase to the LATE phase.
for {set i 0} {$i < 4} {incr i} {
  set idx [format %.2d $i]
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR${i}] [get_cells -hierarchical -filter "NAME =~ $partition_path/*ict_axi_ctrl_user_${idx}"]
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR${i}] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/plram_mem${idx}"] -quiet
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR${i}] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/plram_mem${idx}_bram"] -quiet  

  if { $i < 3 } {
    # JUSTIFICATION: CR-1058924
    # Per SLR reset distribution pipelines require some additional placement assistance to reduce the likelihood of unrouted nets.
    # This placement directive is temporary and should be removed with upcoming enhancements to UCS per-SLR constraint generation.
    add_cells_to_pblock [get_pblocks pblock_dynamic_SLR${i}] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn*_slr${i}_3"]
    # Extra flops needed for the path to SLR3, and they are explicity assigned to particular SLRs below
  }
}


add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells -hierarchical -filter "NAME =~ $partition_path/*ict_axi_ctrl_mgmt_00"]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ $partition_path/*ict_axi_ctrl_mgmt_01"]

add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells -hierarchical -filter "NAME =~ $partition_path/*ict_axi_data_h2c_01"]

# The placement directive for pipereg instances in the earlier loop may not be enough to distribute the pipe registers across 2 SLRs
# these explicit assignments of the intermediate pipereg instances are a workaround until placer improvements are available.
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn_pcie_slr2_1"]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn_pcie_slr2_2"]
# CR-1078721 - Extra flops needed for the path to SLR3. Assigning individually to specific SLRs
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn*_slr3_1"]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn*_slr3_2"]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn*_slr3_3"]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn*_slr3_4"]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR3] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn*_slr3_5"]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR3] [get_cells -hierarchical -filter "NAME =~ $partition_path/ss_ucs*fanout_aresetn*_slr3_6"]

add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells $partition_path/ss_ucs/inst/aclk_kernel_*_hierarchy/clkwiz_aclk_kernel_*]


# Processor System Reset (PSR) and DDR4 IP may drift into incorrect SLR.  Explicit PBLOCK assignments below until memory subsystem updated to lock subcores like these into memory's SLR.

  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/psr_ddr4_mem00"] -quiet
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/psr_ddr4_mem01"] -quiet
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR3] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/psr_ddr4_mem02"] -quiet
  
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/ddr4_mem00_ctrl_cc"] -quiet
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/ddr4_mem01_ctrl_cc"] -quiet
  add_cells_to_pblock [get_pblocks pblock_dynamic_SLR3] [get_cells -hierarchical -filter "NAME =~ $partition_path/*memory_subsystem/inst/memory/ddr4_mem02_ctrl_cc"] -quiet

# #######################################################################
# WARNING: WORKAROUND!
# #######################################################################
#
# These constraints are added as a workaround to CR-1038346 
# Remove these constraints when CR is resolved.
#
# Error codes: ERROR: [VPL 30-1112] 
#
set_property CONTAIN_ROUTING 0 [get_pblocks pblock_dynamic_SLR0]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR0]
set_property CONTAIN_ROUTING 0 [get_pblocks pblock_dynamic_SLR1]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR1]
set_property CONTAIN_ROUTING 0 [get_pblocks pblock_dynamic_SLR2]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR2]



set_false_path -through  [get_pins -hierarchical -filter "NAME=~$partition_path/plp_m_data_ddr*"]


