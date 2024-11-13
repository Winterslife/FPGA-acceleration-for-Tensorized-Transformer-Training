################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name plp_s_aclk_ctrl_00 -period 20 [get_ports plp_s_aclk_ctrl_00]
create_clock -name plp_s_aclk_data_u2s_00 -period 3.333 [get_ports plp_s_aclk_data_u2s_00]
create_clock -name plp_s_aclk_freerun_ref_00 -period 10 [get_ports plp_s_aclk_freerun_ref_00]
create_clock -name plp_s_aclk_pcie_user_00 -period 4 [get_ports plp_s_aclk_pcie_user_00]

################################################################################