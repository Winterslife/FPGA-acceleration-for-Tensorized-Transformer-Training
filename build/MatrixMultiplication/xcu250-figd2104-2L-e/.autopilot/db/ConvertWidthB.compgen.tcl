# This script segment is generated automatically by AutoPilot

set name MatrixMultiplicationKernel_mul_24ns_32ns_55_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name MatrixMultiplicationKernel_mul_55s_24ns_55_1_1
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
    id 128 \
    name bMemory \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bMemory \
    op interface \
    ports { bMemory_dout { I 512 vector } bMemory_num_data_valid { I 7 vector } bMemory_fifo_cap { I 7 vector } bMemory_empty_n { I 1 bit } bMemory_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name bFeed \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bFeed \
    op interface \
    ports { bFeed_din { O 256 vector } bFeed_num_data_valid { I 3 vector } bFeed_fifo_cap { I 3 vector } bFeed_full_n { I 1 bit } bFeed_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
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
    id 131 \
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
    id 132 \
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
    id 133 \
    name size_n_c3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_n_c3 \
    op interface \
    ports { size_n_c3_din { O 32 vector } size_n_c3_num_data_valid { I 3 vector } size_n_c3_fifo_cap { I 3 vector } size_n_c3_full_n { I 1 bit } size_n_c3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name size_k_c6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_k_c6 \
    op interface \
    ports { size_k_c6_din { O 32 vector } size_k_c6_num_data_valid { I 3 vector } size_k_c6_fifo_cap { I 3 vector } size_k_c6_full_n { I 1 bit } size_k_c6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name size_m_c11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_m_c11 \
    op interface \
    ports { size_m_c11_din { O 32 vector } size_m_c11_num_data_valid { I 3 vector } size_m_c11_fifo_cap { I 3 vector } size_m_c11_full_n { I 1 bit } size_m_c11_write { O 1 bit } } \
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


