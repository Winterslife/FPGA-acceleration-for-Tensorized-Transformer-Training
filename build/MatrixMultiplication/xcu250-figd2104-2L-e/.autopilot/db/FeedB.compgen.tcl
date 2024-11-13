# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler MatrixMultiplicationKernel_FeedB_buffer_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 141 \
    name bFeed \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bFeed \
    op interface \
    ports { bFeed_dout { I 256 vector } bFeed_num_data_valid { I 3 vector } bFeed_fifo_cap { I 3 vector } bFeed_empty_n { I 1 bit } bFeed_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name bPipes_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bPipes_0 \
    op interface \
    ports { bPipes_0_din { O 256 vector } bPipes_0_num_data_valid { I 3 vector } bPipes_0_fifo_cap { I 3 vector } bPipes_0_full_n { I 1 bit } bPipes_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
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
    id 144 \
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
    id 145 \
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


