// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module MatrixMultiplicationKernel_ProcessingElement_24 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        aPipes_23_dout,
        aPipes_23_num_data_valid,
        aPipes_23_fifo_cap,
        aPipes_23_empty_n,
        aPipes_23_read,
        aPipes_24_din,
        aPipes_24_num_data_valid,
        aPipes_24_fifo_cap,
        aPipes_24_full_n,
        aPipes_24_write,
        bPipes_23_dout,
        bPipes_23_num_data_valid,
        bPipes_23_fifo_cap,
        bPipes_23_empty_n,
        bPipes_23_read,
        bPipes_24_din,
        bPipes_24_num_data_valid,
        bPipes_24_fifo_cap,
        bPipes_24_full_n,
        bPipes_24_write,
        cPipes_23_din,
        cPipes_23_num_data_valid,
        cPipes_23_fifo_cap,
        cPipes_23_full_n,
        cPipes_23_write,
        cPipes_24_dout,
        cPipes_24_num_data_valid,
        cPipes_24_fifo_cap,
        cPipes_24_empty_n,
        cPipes_24_read,
        size_n,
        size_k,
        size_m
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] aPipes_23_dout;
input  [2:0] aPipes_23_num_data_valid;
input  [2:0] aPipes_23_fifo_cap;
input   aPipes_23_empty_n;
output   aPipes_23_read;
output  [31:0] aPipes_24_din;
input  [2:0] aPipes_24_num_data_valid;
input  [2:0] aPipes_24_fifo_cap;
input   aPipes_24_full_n;
output   aPipes_24_write;
input  [255:0] bPipes_23_dout;
input  [2:0] bPipes_23_num_data_valid;
input  [2:0] bPipes_23_fifo_cap;
input   bPipes_23_empty_n;
output   bPipes_23_read;
output  [255:0] bPipes_24_din;
input  [2:0] bPipes_24_num_data_valid;
input  [2:0] bPipes_24_fifo_cap;
input   bPipes_24_full_n;
output   bPipes_24_write;
output  [255:0] cPipes_23_din;
input  [2:0] cPipes_23_num_data_valid;
input  [2:0] cPipes_23_fifo_cap;
input   cPipes_23_full_n;
output   cPipes_23_write;
input  [255:0] cPipes_24_dout;
input  [2:0] cPipes_24_num_data_valid;
input  [2:0] cPipes_24_fifo_cap;
input   cPipes_24_empty_n;
output   cPipes_24_read;
input  [31:0] size_n;
input  [31:0] size_k;
input  [31:0] size_m;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg aPipes_23_read;
reg[31:0] aPipes_24_din;
reg aPipes_24_write;
reg bPipes_23_read;
reg bPipes_24_write;
reg cPipes_23_write;
reg cPipes_24_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire    grp_ProcessingElement_24_Pipeline_1_fu_136_ap_done;
wire    grp_ProcessingElement_24_Pipeline_2_fu_142_ap_done;
reg    ap_block_state2_on_subcall_done;
wire   [23:0] div_i_cast1_fu_202_p4;
reg   [23:0] div_i_cast1_reg_384;
wire    ap_CS_fsm_state5;
wire   [23:0] div_i104_cast3_fu_221_p4;
reg   [23:0] div_i104_cast3_reg_389;
wire   [23:0] sub60_fu_231_p2;
reg   [23:0] sub60_reg_394;
wire   [23:0] sub63_fu_237_p2;
reg   [23:0] sub63_reg_399;
wire   [31:0] sub66_fu_243_p2;
reg   [31:0] sub66_reg_404;
wire   [23:0] add_ln54_fu_256_p2;
reg   [23:0] add_ln54_reg_412;
wire    ap_CS_fsm_state6;
wire   [0:0] cmp61_fu_262_p2;
reg   [0:0] cmp61_reg_417;
wire   [26:0] mul_fu_271_p3;
reg   [26:0] mul_reg_422;
wire   [23:0] add_ln56_fu_284_p2;
reg   [23:0] add_ln56_reg_430;
wire    ap_CS_fsm_state7;
wire   [22:0] trunc_ln56_fu_290_p1;
reg   [22:0] trunc_ln56_reg_435;
wire   [0:0] cmp64_fu_294_p2;
reg   [0:0] cmp64_reg_440;
wire   [31:0] k_15_fu_308_p2;
reg   [31:0] k_15_reg_448;
wire    ap_CS_fsm_state8;
wire   [4:0] cond90_fu_318_p3;
reg   [4:0] cond90_reg_453;
wire   [0:0] cmp111_fu_327_p2;
reg   [0:0] cmp111_reg_458;
wire   [4:0] cond_fu_339_p3;
reg   [4:0] cond_reg_463;
wire   [0:0] brmerge282_fu_353_p2;
reg   [0:0] brmerge282_reg_468;
reg   [4:0] aBuffer_address0;
reg    aBuffer_ce0;
reg    aBuffer_we0;
reg   [31:0] aBuffer_d0;
reg    aBuffer_ce1;
wire   [31:0] aBuffer_q1;
reg   [9:0] cBuffer_address0;
reg    cBuffer_ce0;
reg    cBuffer_we0;
reg   [255:0] cBuffer_d0;
wire   [255:0] cBuffer_q0;
reg    cBuffer_ce1;
wire   [255:0] cBuffer_q1;
wire    grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start;
wire    grp_ProcessingElement_24_Pipeline_1_fu_136_ap_idle;
wire    grp_ProcessingElement_24_Pipeline_1_fu_136_ap_ready;
wire   [4:0] grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_address0;
wire    grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_ce0;
wire    grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_we0;
wire   [31:0] grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_d0;
wire    grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start;
wire    grp_ProcessingElement_24_Pipeline_2_fu_142_ap_idle;
wire    grp_ProcessingElement_24_Pipeline_2_fu_142_ap_ready;
wire   [9:0] grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_address0;
wire    grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_ce0;
wire    grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_we0;
wire   [255:0] grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_d0;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_done;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_idle;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_ready;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_23_read;
wire   [31:0] grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_24_din;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_24_write;
wire   [4:0] grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_address0;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_ce0;
wire    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_we0;
wire   [31:0] grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_d0;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_done;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_idle;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_ready;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_23_read;
wire   [31:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_24_din;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_24_write;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_23_read;
wire   [255:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_24_din;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_24_write;
wire   [9:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_address0;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_ce0;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_we0;
wire   [255:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_d0;
wire   [9:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_address1;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_ce1;
wire   [4:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_address0;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_ce0;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_we0;
wire   [31:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_d0;
wire   [4:0] grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_address1;
wire    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_ce1;
wire    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start;
wire    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_done;
wire    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_idle;
wire    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_ready;
wire    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_24_read;
wire   [255:0] grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_23_din;
wire    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_23_write;
wire   [9:0] grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cBuffer_address0;
wire    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cBuffer_ce0;
reg   [23:0] m0_reg_114;
wire   [0:0] icmp_ln54_fu_251_p2;
wire    ap_CS_fsm_state10;
reg   [31:0] k_reg_125;
wire   [0:0] icmp_ln56_fu_279_p2;
wire    ap_CS_fsm_state9;
reg    grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start_reg;
reg    ap_block_state1_ignore_call12;
reg    grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start_reg;
reg    ap_block_state1_ignore_call13;
reg    grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start_reg;
wire   [0:0] icmp_ln60_fu_303_p2;
reg    grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start_reg;
reg   [23:0] n0_fu_84;
reg    ap_block_state1;
wire   [32:0] size_n_cast_fu_193_p1;
wire   [32:0] sub_i_fu_196_p2;
wire   [32:0] size_m_cast_fu_212_p1;
wire   [32:0] sub_i103_fu_215_p2;
wire   [22:0] empty_233_fu_267_p1;
wire   [0:0] trunc_ln60_fu_314_p1;
wire   [0:0] cmp67_fu_334_p2;
wire   [0:0] tmp1_fu_348_p2;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start_reg = 1'b0;
#0 grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start_reg = 1'b0;
#0 grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start_reg = 1'b0;
#0 grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start_reg = 1'b0;
#0 grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start_reg = 1'b0;
#0 n0_fu_84 = 24'd0;
end

MatrixMultiplicationKernel_ProcessingElement_24_aBuffer_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
aBuffer_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(aBuffer_address0),
    .ce0(aBuffer_ce0),
    .we0(aBuffer_we0),
    .d0(aBuffer_d0),
    .address1(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_address1),
    .ce1(aBuffer_ce1),
    .q1(aBuffer_q1)
);

MatrixMultiplicationKernel_ProcessingElement_24_cBuffer_RAM_AUTO_1R1W #(
    .DataWidth( 256 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
cBuffer_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cBuffer_address0),
    .ce0(cBuffer_ce0),
    .we0(cBuffer_we0),
    .d0(cBuffer_d0),
    .q0(cBuffer_q0),
    .address1(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_address1),
    .ce1(cBuffer_ce1),
    .q1(cBuffer_q1)
);

MatrixMultiplicationKernel_ProcessingElement_24_Pipeline_1 grp_ProcessingElement_24_Pipeline_1_fu_136(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start),
    .ap_done(grp_ProcessingElement_24_Pipeline_1_fu_136_ap_done),
    .ap_idle(grp_ProcessingElement_24_Pipeline_1_fu_136_ap_idle),
    .ap_ready(grp_ProcessingElement_24_Pipeline_1_fu_136_ap_ready),
    .aBuffer_address0(grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_address0),
    .aBuffer_ce0(grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_ce0),
    .aBuffer_we0(grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_we0),
    .aBuffer_d0(grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_d0)
);

MatrixMultiplicationKernel_ProcessingElement_24_Pipeline_2 grp_ProcessingElement_24_Pipeline_2_fu_142(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start),
    .ap_done(grp_ProcessingElement_24_Pipeline_2_fu_142_ap_done),
    .ap_idle(grp_ProcessingElement_24_Pipeline_2_fu_142_ap_idle),
    .ap_ready(grp_ProcessingElement_24_Pipeline_2_fu_142_ap_ready),
    .cBuffer_address0(grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_address0),
    .cBuffer_ce0(grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_ce0),
    .cBuffer_we0(grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_we0),
    .cBuffer_d0(grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_d0)
);

MatrixMultiplicationKernel_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start),
    .ap_done(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_done),
    .ap_idle(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_idle),
    .ap_ready(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_ready),
    .aPipes_23_dout(aPipes_23_dout),
    .aPipes_23_num_data_valid(3'd0),
    .aPipes_23_fifo_cap(3'd0),
    .aPipes_23_empty_n(aPipes_23_empty_n),
    .aPipes_23_read(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_23_read),
    .aPipes_24_din(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_24_din),
    .aPipes_24_num_data_valid(3'd0),
    .aPipes_24_fifo_cap(3'd0),
    .aPipes_24_full_n(aPipes_24_full_n),
    .aPipes_24_write(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_24_write),
    .aBuffer_address0(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_address0),
    .aBuffer_ce0(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_ce0),
    .aBuffer_we0(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_we0),
    .aBuffer_d0(grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_d0)
);

MatrixMultiplicationKernel_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start),
    .ap_done(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_done),
    .ap_idle(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_idle),
    .ap_ready(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_ready),
    .aPipes_23_dout(aPipes_23_dout),
    .aPipes_23_num_data_valid(3'd0),
    .aPipes_23_fifo_cap(3'd0),
    .aPipes_23_empty_n(aPipes_23_empty_n),
    .aPipes_23_read(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_23_read),
    .aPipes_24_din(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_24_din),
    .aPipes_24_num_data_valid(3'd0),
    .aPipes_24_fifo_cap(3'd0),
    .aPipes_24_full_n(aPipes_24_full_n),
    .aPipes_24_write(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_24_write),
    .bPipes_23_dout(bPipes_23_dout),
    .bPipes_23_num_data_valid(3'd0),
    .bPipes_23_fifo_cap(3'd0),
    .bPipes_23_empty_n(bPipes_23_empty_n),
    .bPipes_23_read(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_23_read),
    .bPipes_24_din(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_24_din),
    .bPipes_24_num_data_valid(3'd0),
    .bPipes_24_fifo_cap(3'd0),
    .bPipes_24_full_n(bPipes_24_full_n),
    .bPipes_24_write(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_24_write),
    .m0(trunc_ln56_reg_435),
    .cBuffer_address0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_address0),
    .cBuffer_ce0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_ce0),
    .cBuffer_we0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_we0),
    .cBuffer_d0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_d0),
    .cBuffer_address1(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_address1),
    .cBuffer_ce1(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_ce1),
    .cBuffer_q1(cBuffer_q1),
    .cmp111(cmp111_reg_458),
    .size_m(size_m),
    .cond90(cond90_reg_453),
    .aBuffer_address0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_address0),
    .aBuffer_ce0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_ce0),
    .aBuffer_we0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_we0),
    .aBuffer_d0(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_d0),
    .aBuffer_address1(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_address1),
    .aBuffer_ce1(grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_ce1),
    .aBuffer_q1(aBuffer_q1),
    .mul(mul_reg_422),
    .cond(cond_reg_463),
    .size_n(size_n),
    .brmerge282(brmerge282_reg_468)
);

MatrixMultiplicationKernel_ProcessingElement_24_Pipeline_WriteC_Flattened grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start),
    .ap_done(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_done),
    .ap_idle(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_idle),
    .ap_ready(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_ready),
    .cPipes_24_dout(cPipes_24_dout),
    .cPipes_24_num_data_valid(3'd0),
    .cPipes_24_fifo_cap(3'd0),
    .cPipes_24_empty_n(cPipes_24_empty_n),
    .cPipes_24_read(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_24_read),
    .cPipes_23_din(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_23_din),
    .cPipes_23_num_data_valid(3'd0),
    .cPipes_23_fifo_cap(3'd0),
    .cPipes_23_full_n(cPipes_23_full_n),
    .cPipes_23_write(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_23_write),
    .cBuffer_address0(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cBuffer_address0),
    .cBuffer_ce0(grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cBuffer_ce0),
    .cBuffer_q0(cBuffer_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln54_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call12) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_ProcessingElement_24_Pipeline_1_fu_136_ap_ready == 1'b1)) begin
            grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call13) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_ProcessingElement_24_Pipeline_2_fu_142_ap_ready == 1'b1)) begin
            grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start_reg <= 1'b1;
        end else if ((grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_ready == 1'b1)) begin
            grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln60_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
            grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start_reg <= 1'b1;
        end else if ((grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_ready == 1'b1)) begin
            grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln60_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
            grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start_reg <= 1'b1;
        end else if ((grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_ready == 1'b1)) begin
            grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        k_reg_125 <= k_15_reg_448;
    end else if (((icmp_ln56_fu_279_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        k_reg_125 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        m0_reg_114 <= add_ln56_reg_430;
    end else if (((icmp_ln54_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        m0_reg_114 <= 24'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        n0_fu_84 <= 24'd0;
    end else if (((icmp_ln56_fu_279_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        n0_fu_84 <= add_ln54_reg_412;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln54_reg_412 <= add_ln54_fu_256_p2;
        cmp61_reg_417 <= cmp61_fu_262_p2;
        mul_reg_422[26 : 4] <= mul_fu_271_p3[26 : 4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln56_reg_430 <= add_ln56_fu_284_p2;
        cmp64_reg_440 <= cmp64_fu_294_p2;
        trunc_ln56_reg_435 <= trunc_ln56_fu_290_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        brmerge282_reg_468 <= brmerge282_fu_353_p2;
        cmp111_reg_458 <= cmp111_fu_327_p2;
        cond90_reg_453[4] <= cond90_fu_318_p3[4];
        cond_reg_463[4] <= cond_fu_339_p3[4];
        k_15_reg_448 <= k_15_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        div_i104_cast3_reg_389 <= {{sub_i103_fu_215_p2[32:9]}};
        div_i_cast1_reg_384 <= {{sub_i_fu_196_p2[32:9]}};
        sub60_reg_394 <= sub60_fu_231_p2;
        sub63_reg_399 <= sub63_fu_237_p2;
        sub66_reg_404 <= sub66_fu_243_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aBuffer_address0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        aBuffer_address0 = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        aBuffer_address0 = grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_address0;
    end else begin
        aBuffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aBuffer_ce0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        aBuffer_ce0 = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        aBuffer_ce0 = grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_ce0;
    end else begin
        aBuffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aBuffer_ce1 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_ce1;
    end else begin
        aBuffer_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aBuffer_d0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        aBuffer_d0 = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        aBuffer_d0 = grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_d0;
    end else begin
        aBuffer_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aBuffer_we0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aBuffer_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        aBuffer_we0 = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aBuffer_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        aBuffer_we0 = grp_ProcessingElement_24_Pipeline_1_fu_136_aBuffer_we0;
    end else begin
        aBuffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aPipes_23_read = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_23_read;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        aPipes_23_read = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_23_read;
    end else begin
        aPipes_23_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aPipes_24_din = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_24_din;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        aPipes_24_din = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_24_din;
    end else begin
        aPipes_24_din = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_24_din;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        aPipes_24_write = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_aPipes_24_write;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        aPipes_24_write = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_aPipes_24_write;
    end else begin
        aPipes_24_write = 1'b0;
    end
end

always @ (*) begin
    if ((grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln54_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        bPipes_23_read = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_23_read;
    end else begin
        bPipes_23_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        bPipes_24_write = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_24_write;
    end else begin
        bPipes_24_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cBuffer_address0 = grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cBuffer_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        cBuffer_address0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cBuffer_address0 = grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_address0;
    end else begin
        cBuffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cBuffer_ce0 = grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cBuffer_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        cBuffer_ce0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cBuffer_ce0 = grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_ce0;
    end else begin
        cBuffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        cBuffer_ce1 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_ce1;
    end else begin
        cBuffer_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        cBuffer_d0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cBuffer_d0 = grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_d0;
    end else begin
        cBuffer_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        cBuffer_we0 = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_cBuffer_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cBuffer_we0 = grp_ProcessingElement_24_Pipeline_2_fu_142_cBuffer_we0;
    end else begin
        cBuffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cPipes_23_write = grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_23_write;
    end else begin
        cPipes_23_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cPipes_24_read = grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_24_read;
    end else begin
        cPipes_24_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln54_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln56_fu_279_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln60_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln54_fu_256_p2 = (n0_fu_84 + 24'd1);

assign add_ln56_fu_284_p2 = (m0_reg_114 + 24'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_ignore_call12 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_ignore_call13 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_ProcessingElement_24_Pipeline_2_fu_142_ap_done == 1'b0) | (grp_ProcessingElement_24_Pipeline_1_fu_136_ap_done == 1'b0));
end

assign bPipes_24_din = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_bPipes_24_din;

assign brmerge282_fu_353_p2 = (tmp1_fu_348_p2 | cmp61_reg_417);

assign cPipes_23_din = grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_cPipes_23_din;

assign cmp111_fu_327_p2 = ((k_reg_125 == 32'd0) ? 1'b1 : 1'b0);

assign cmp61_fu_262_p2 = ((n0_fu_84 < sub60_reg_394) ? 1'b1 : 1'b0);

assign cmp64_fu_294_p2 = ((m0_reg_114 < sub63_reg_399) ? 1'b1 : 1'b0);

assign cmp67_fu_334_p2 = ((k_reg_125 < sub66_reg_404) ? 1'b1 : 1'b0);

assign cond90_fu_318_p3 = ((trunc_ln60_fu_314_p1[0:0] == 1'b1) ? 5'd16 : 5'd0);

assign cond_fu_339_p3 = ((trunc_ln60_fu_314_p1[0:0] == 1'b1) ? 5'd0 : 5'd16);

assign div_i104_cast3_fu_221_p4 = {{sub_i103_fu_215_p2[32:9]}};

assign div_i_cast1_fu_202_p4 = {{sub_i_fu_196_p2[32:9]}};

assign empty_233_fu_267_p1 = n0_fu_84[22:0];

assign grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start = grp_ProcessingElement_24_Pipeline_1_fu_136_ap_start_reg;

assign grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start = grp_ProcessingElement_24_Pipeline_2_fu_142_ap_start_reg;

assign grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start = grp_ProcessingElement_24_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer_fu_148_ap_start_reg;

assign grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start = grp_ProcessingElement_24_Pipeline_Pipeline_N_Pipeline_M_fu_157_ap_start_reg;

assign grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start = grp_ProcessingElement_24_Pipeline_WriteC_Flattened_fu_179_ap_start_reg;

assign icmp_ln54_fu_251_p2 = ((n0_fu_84 == div_i_cast1_reg_384) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_279_p2 = ((m0_reg_114 == div_i104_cast3_reg_389) ? 1'b1 : 1'b0);

assign icmp_ln60_fu_303_p2 = ((k_reg_125 == size_k) ? 1'b1 : 1'b0);

assign k_15_fu_308_p2 = (k_reg_125 + 32'd1);

assign mul_fu_271_p3 = {{empty_233_fu_267_p1}, {4'd0}};

assign size_m_cast_fu_212_p1 = size_m;

assign size_n_cast_fu_193_p1 = size_n;

assign sub60_fu_231_p2 = ($signed(div_i_cast1_fu_202_p4) + $signed(24'd16777215));

assign sub63_fu_237_p2 = ($signed(div_i104_cast3_fu_221_p4) + $signed(24'd16777215));

assign sub66_fu_243_p2 = ($signed(size_k) + $signed(32'd4294967295));

assign sub_i103_fu_215_p2 = (size_m_cast_fu_212_p1 + 33'd511);

assign sub_i_fu_196_p2 = (size_n_cast_fu_193_p1 + 33'd511);

assign tmp1_fu_348_p2 = (cmp67_fu_334_p2 | cmp64_reg_440);

assign trunc_ln56_fu_290_p1 = m0_reg_114[22:0];

assign trunc_ln60_fu_314_p1 = k_reg_125[0:0];

always @ (posedge ap_clk) begin
    mul_reg_422[3:0] <= 4'b0000;
    cond90_reg_453[3:0] <= 4'b0000;
    cond_reg_463[3:0] <= 4'b0000;
end

endmodule //MatrixMultiplicationKernel_ProcessingElement_24
