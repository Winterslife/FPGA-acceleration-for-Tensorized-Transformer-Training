# This script segment is generated automatically by AutoPilot

set name MatrixMultiplicationKernel_mul_33ns_30ns_63_1_1
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
    id 1720 \
    name cPipes_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cPipes_0 \
    op interface \
    ports { cPipes_0_dout { I 256 vector } cPipes_0_num_data_valid { I 3 vector } cPipes_0_fifo_cap { I 3 vector } cPipes_0_empty_n { I 1 bit } cPipes_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1721 \
    name cMemory \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cMemory \
    op interface \
    ports { cMemory_din { O 512 vector } cMemory_num_data_valid { I 7 vector } cMemory_fifo_cap { I 7 vector } cMemory_full_n { I 1 bit } cMemory_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1722 \
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
    id 1723 \
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
    id 1724 \
    name size_n_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_n_c \
    op interface \
    ports { size_n_c_din { O 32 vector } size_n_c_num_data_valid { I 3 vector } size_n_c_fifo_cap { I 3 vector } size_n_c_full_n { I 1 bit } size_n_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1725 \
    name size_m_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_m_c \
    op interface \
    ports { size_m_c_din { O 32 vector } size_m_c_num_data_valid { I 3 vector } size_m_c_fifo_cap { I 3 vector } size_m_c_full_n { I 1 bit } size_m_c_write { O 1 bit } } \
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


