# High-priority clocks
# --------------------

# div_clk
set_property HIGH_PRIORITY true [get_nets -hierarchical -filter {NAME =~ level0_i/level1/level1_i/ulp*memory_subsystem*/inst/memory/ddr4_mem*/inst/u_ddr4_infrastructure/div_clk}] -quiet

# pll_clk[{0,1,2}] pll_clk[{0,1,2}]_{1,2,3}_DIV clocks
set_property HIGH_PRIORITY true [get_nets -of [get_pins -hierarchical -filter "NAME =~ {level0_i/level1/level1_i/ulp*memory_subsystem*/inst/memory/ddr4_mem*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/plle_loop[*].gen_plle4.PLLE4_BASE_INST_OTHER/CLKOUTPHY}"]] -quiet

# pll_clk[0]_DIV pll_clk[0]_1_DIV pll_clk[0]_2_DIV pll_clk[0]_3_DIV clocks
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins -hierarchical -filter {NAME =~ level0_i/level1/level1_i/ulp*memory_subsystem*/inst/memory/ddr4_mem*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control*/TX_BIT_CTRL_OUT0[26]}]] -quiet

# pll_clk[1]_DIV pll_clk[1]_1_DIV pll_clk[1]_2_DIV pll_clk[1]_3_DIV clocks
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins -hierarchical -filter {NAME =~ level0_i/level1/level1_i/ulp*memory_subsystem*/inst/memory/ddr4_mem*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[5].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control*/TX_BIT_CTRL_OUT0[26]}]] -quiet

# pll_clk[2]_DIV pll_clk[2]_1_DIV pll_clk[2]_2_DIV pll_clk[2]_3_DIV clocks
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins -hierarchical -filter {NAME =~ level0_i/level1/level1_i/ulp*memory_subsystem*/inst/memory/ddr4_mem*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[9].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control*/TX_BIT_CTRL_OUT0[26]}]] -quiet

# -------------------------------------------------------------------------------------------------------------
# TODO:  This constraint is applied temporarilly and is under review.
# It is a workaround for placer error:
# 	 ERROR: [Place 30-716] Sub-optimal placement for a global clock-capable IO pin-BUFGCE-MMCM pair. 
#
# WARNING!
#
# this constraint is applying to a clock source in a different partition.
# there is no guarantee that this path is stable in a multi-RP platform.
# if this constraint is required for the long term, it should move to the BLP or level0 chassis.
#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets level0_i/blp/blp_i/io_clk_ddr_01_bufg/U0/BUFG_O\[0\]]

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
set_property CONTAIN_ROUTING 0 [get_pblocks pblock_dynamic_SLR3]
set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR3]

# Package pins
# ------------
# Due to lack of cell attachment points in upper hierarchies, re-apply QSFP HSIO and refclk package_pin constraints at this scope
set_property PACKAGE_PIN M10 [get_ports {io_clk_qsfp_refclka_00_clk_n}]
set_property PACKAGE_PIN M11 [get_ports {io_clk_qsfp_refclka_00_clk_p}]
set_property PACKAGE_PIN K10 [get_ports {io_clk_qsfp_refclkb_00_clk_n}]
set_property PACKAGE_PIN K11 [get_ports {io_clk_qsfp_refclkb_00_clk_p}]
set_property PACKAGE_PIN N4  [get_ports {io_gt_qsfp_00_grx_p[0]}]
set_property PACKAGE_PIN N3  [get_ports {io_gt_qsfp_00_grx_n[0]}]
set_property PACKAGE_PIN N9  [get_ports {io_gt_qsfp_00_gtx_p[0]}]
set_property PACKAGE_PIN N8  [get_ports {io_gt_qsfp_00_gtx_n[0]}]
set_property PACKAGE_PIN M2  [get_ports {io_gt_qsfp_00_grx_p[1]}]
set_property PACKAGE_PIN M1  [get_ports {io_gt_qsfp_00_grx_n[1]}]
set_property PACKAGE_PIN M7  [get_ports {io_gt_qsfp_00_gtx_p[1]}]
set_property PACKAGE_PIN M6  [get_ports {io_gt_qsfp_00_gtx_n[1]}]
set_property PACKAGE_PIN L4  [get_ports {io_gt_qsfp_00_grx_p[2]}]
set_property PACKAGE_PIN L3  [get_ports {io_gt_qsfp_00_grx_n[2]}]
set_property PACKAGE_PIN L9  [get_ports {io_gt_qsfp_00_gtx_p[2]}]
set_property PACKAGE_PIN L8  [get_ports {io_gt_qsfp_00_gtx_n[2]}]
set_property PACKAGE_PIN K2  [get_ports {io_gt_qsfp_00_grx_p[3]}]
set_property PACKAGE_PIN K1  [get_ports {io_gt_qsfp_00_grx_n[3]}]
set_property PACKAGE_PIN K7  [get_ports {io_gt_qsfp_00_gtx_p[3]}]
set_property PACKAGE_PIN K6  [get_ports {io_gt_qsfp_00_gtx_n[3]}]
set_property PACKAGE_PIN T10 [get_ports {io_clk_qsfp_refclka_01_clk_n}]
set_property PACKAGE_PIN T11 [get_ports {io_clk_qsfp_refclka_01_clk_p}]
set_property PACKAGE_PIN P10 [get_ports {io_clk_qsfp_refclkb_01_clk_n}]
set_property PACKAGE_PIN P11 [get_ports {io_clk_qsfp_refclkb_01_clk_p}]
set_property PACKAGE_PIN U4  [get_ports {io_gt_qsfp_01_grx_p[0]}]
set_property PACKAGE_PIN U3  [get_ports {io_gt_qsfp_01_grx_n[0]}]
set_property PACKAGE_PIN U9  [get_ports {io_gt_qsfp_01_gtx_p[0]}]
set_property PACKAGE_PIN U8  [get_ports {io_gt_qsfp_01_gtx_n[0]}]
set_property PACKAGE_PIN T2  [get_ports {io_gt_qsfp_01_grx_p[1]}]
set_property PACKAGE_PIN T1  [get_ports {io_gt_qsfp_01_grx_n[1]}]
set_property PACKAGE_PIN T7  [get_ports {io_gt_qsfp_01_gtx_p[1]}]
set_property PACKAGE_PIN T6  [get_ports {io_gt_qsfp_01_gtx_n[1]}]
set_property PACKAGE_PIN R4  [get_ports {io_gt_qsfp_01_grx_p[2]}]
set_property PACKAGE_PIN R3  [get_ports {io_gt_qsfp_01_grx_n[2]}]
set_property PACKAGE_PIN R9  [get_ports {io_gt_qsfp_01_gtx_p[2]}]
set_property PACKAGE_PIN R8  [get_ports {io_gt_qsfp_01_gtx_n[2]}]
set_property PACKAGE_PIN P2  [get_ports {io_gt_qsfp_01_grx_p[3]}]
set_property PACKAGE_PIN P1  [get_ports {io_gt_qsfp_01_grx_n[3]}]
set_property PACKAGE_PIN P7  [get_ports {io_gt_qsfp_01_gtx_p[3]}]
set_property PACKAGE_PIN P6  [get_ports {io_gt_qsfp_01_gtx_n[3]}]
