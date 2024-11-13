# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name bound16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bound16 \
    op interface \
    ports { bound16 { I 87 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
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
    id 58 \
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
    id 59 \
    name bound4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bound4 \
    op interface \
    ports { bound4 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name size_k_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_k_1 \
    op interface \
    ports { size_k_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name bound \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bound \
    op interface \
    ports { bound { I 41 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
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
    id 63 \
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
    id 64 \
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
    id 65 \
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
    id 66 \
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
    id 67 \
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
    id 68 \
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
    id 69 \
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
    id 70 \
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
    id 71 \
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
    id 72 \
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
    id 73 \
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
    id 74 \
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
    id 75 \
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
    id 76 \
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
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init_U
set CompName MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix MatrixMultiplicationKernel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


