# aclk {FREQ_HZ 300000000 CLK_DOMAIN cd_data_u2s_00 PHASE 0} aclk1 {FREQ_HZ 300000000 CLK_DOMAIN cd_aclk_kernel_00 PHASE 0.0}
# Clock Domain: cd_data_u2s_00
create_clock -name aclk -period 3.333 [get_ports aclk]
# Clock Domain: cd_aclk_kernel_00
create_clock -name aclk1 -period 3.333 [get_ports aclk1]
# Generated clocks
