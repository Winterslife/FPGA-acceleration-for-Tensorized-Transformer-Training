# This script segment is generated automatically by AutoPilot

set name MatrixMultiplicationKernel_mul_24ns_41ns_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name MatrixMultiplicationKernel_mul_24ns_64ns_87_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name aSplit_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_0 \
    op interface \
    ports { aSplit_0_dout { I 32 vector } aSplit_0_num_data_valid { I 11 vector } aSplit_0_fifo_cap { I 11 vector } aSplit_0_empty_n { I 1 bit } aSplit_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name aSplit_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_1 \
    op interface \
    ports { aSplit_1_dout { I 32 vector } aSplit_1_num_data_valid { I 11 vector } aSplit_1_fifo_cap { I 11 vector } aSplit_1_empty_n { I 1 bit } aSplit_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name aSplit_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_2 \
    op interface \
    ports { aSplit_2_dout { I 32 vector } aSplit_2_num_data_valid { I 11 vector } aSplit_2_fifo_cap { I 11 vector } aSplit_2_empty_n { I 1 bit } aSplit_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name aSplit_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_3 \
    op interface \
    ports { aSplit_3_dout { I 32 vector } aSplit_3_num_data_valid { I 11 vector } aSplit_3_fifo_cap { I 11 vector } aSplit_3_empty_n { I 1 bit } aSplit_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name aSplit_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_4 \
    op interface \
    ports { aSplit_4_dout { I 32 vector } aSplit_4_num_data_valid { I 11 vector } aSplit_4_fifo_cap { I 11 vector } aSplit_4_empty_n { I 1 bit } aSplit_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name aSplit_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_5 \
    op interface \
    ports { aSplit_5_dout { I 32 vector } aSplit_5_num_data_valid { I 11 vector } aSplit_5_fifo_cap { I 11 vector } aSplit_5_empty_n { I 1 bit } aSplit_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name aSplit_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_6 \
    op interface \
    ports { aSplit_6_dout { I 32 vector } aSplit_6_num_data_valid { I 11 vector } aSplit_6_fifo_cap { I 11 vector } aSplit_6_empty_n { I 1 bit } aSplit_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name aSplit_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_7 \
    op interface \
    ports { aSplit_7_dout { I 32 vector } aSplit_7_num_data_valid { I 11 vector } aSplit_7_fifo_cap { I 11 vector } aSplit_7_empty_n { I 1 bit } aSplit_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name aSplit_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_8 \
    op interface \
    ports { aSplit_8_dout { I 32 vector } aSplit_8_num_data_valid { I 11 vector } aSplit_8_fifo_cap { I 11 vector } aSplit_8_empty_n { I 1 bit } aSplit_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name aSplit_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_9 \
    op interface \
    ports { aSplit_9_dout { I 32 vector } aSplit_9_num_data_valid { I 11 vector } aSplit_9_fifo_cap { I 11 vector } aSplit_9_empty_n { I 1 bit } aSplit_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name aSplit_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_10 \
    op interface \
    ports { aSplit_10_dout { I 32 vector } aSplit_10_num_data_valid { I 11 vector } aSplit_10_fifo_cap { I 11 vector } aSplit_10_empty_n { I 1 bit } aSplit_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name aSplit_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_11 \
    op interface \
    ports { aSplit_11_dout { I 32 vector } aSplit_11_num_data_valid { I 11 vector } aSplit_11_fifo_cap { I 11 vector } aSplit_11_empty_n { I 1 bit } aSplit_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name aSplit_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_12 \
    op interface \
    ports { aSplit_12_dout { I 32 vector } aSplit_12_num_data_valid { I 11 vector } aSplit_12_fifo_cap { I 11 vector } aSplit_12_empty_n { I 1 bit } aSplit_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name aSplit_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_13 \
    op interface \
    ports { aSplit_13_dout { I 32 vector } aSplit_13_num_data_valid { I 11 vector } aSplit_13_fifo_cap { I 11 vector } aSplit_13_empty_n { I 1 bit } aSplit_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name aSplit_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_14 \
    op interface \
    ports { aSplit_14_dout { I 32 vector } aSplit_14_num_data_valid { I 11 vector } aSplit_14_fifo_cap { I 11 vector } aSplit_14_empty_n { I 1 bit } aSplit_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name aSplit_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_15 \
    op interface \
    ports { aSplit_15_dout { I 32 vector } aSplit_15_num_data_valid { I 11 vector } aSplit_15_fifo_cap { I 11 vector } aSplit_15_empty_n { I 1 bit } aSplit_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name aPipes_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aPipes_0 \
    op interface \
    ports { aPipes_0_din { O 32 vector } aPipes_0_num_data_valid { I 3 vector } aPipes_0_fifo_cap { I 3 vector } aPipes_0_full_n { I 1 bit } aPipes_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name size_n \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_n \
    op interface \
    ports { size_n_dout { I 32 vector } size_n_num_data_valid { I 3 vector } size_n_fifo_cap { I 3 vector } size_n_empty_n { I 1 bit } size_n_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name size_k \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_k \
    op interface \
    ports { size_k_dout { I 32 vector } size_k_num_data_valid { I 3 vector } size_k_fifo_cap { I 3 vector } size_k_empty_n { I 1 bit } size_k_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name size_m \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_m \
    op interface \
    ports { size_m_dout { I 32 vector } size_m_num_data_valid { I 3 vector } size_m_fifo_cap { I 3 vector } size_m_empty_n { I 1 bit } size_m_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


