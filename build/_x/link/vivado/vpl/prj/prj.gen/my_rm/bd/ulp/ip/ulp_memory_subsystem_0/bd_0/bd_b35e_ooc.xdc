################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name aclk -period 20 [get_ports aclk]
create_clock -name aclk1 -period 3.333 [get_ports aclk1]
create_clock -name aclk2 -period 4 [get_ports aclk2]
create_clock -name aclk3 -period 3.333 [get_ports aclk3]

################################################################################