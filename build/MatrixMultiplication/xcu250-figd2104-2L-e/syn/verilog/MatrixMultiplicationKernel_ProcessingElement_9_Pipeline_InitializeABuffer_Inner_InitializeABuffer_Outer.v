// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module MatrixMultiplicationKernel_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        aPipes_8_dout,
        aPipes_8_num_data_valid,
        aPipes_8_fifo_cap,
        aPipes_8_empty_n,
        aPipes_8_read,
        aPipes_9_din,
        aPipes_9_num_data_valid,
        aPipes_9_fifo_cap,
        aPipes_9_full_n,
        aPipes_9_write,
        aBuffer_address0,
        aBuffer_ce0,
        aBuffer_we0,
        aBuffer_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] aPipes_8_dout;
input  [2:0] aPipes_8_num_data_valid;
input  [2:0] aPipes_8_fifo_cap;
input   aPipes_8_empty_n;
output   aPipes_8_read;
output  [31:0] aPipes_9_din;
input  [2:0] aPipes_9_num_data_valid;
input  [2:0] aPipes_9_fifo_cap;
input   aPipes_9_full_n;
output   aPipes_9_write;
output  [4:0] aBuffer_address0;
output   aBuffer_ce0;
output   aBuffer_we0;
output  [31:0] aBuffer_d0;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg   [0:0] first_iter_0_reg_210;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln31_fu_104_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    aPipes_8_blk_n;
wire    ap_block_pp0_stage0;
reg    aPipes_9_blk_n;
wire   [0:0] icmp_ln35_fu_119_p2;
reg   [0:0] icmp_ln35_reg_205;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] first_iter_0_fu_133_p2;
wire   [63:0] zext_ln31_fu_171_p1;
reg   [4:0] n1_fu_46;
wire   [4:0] add_ln35_fu_139_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_n1_load;
reg   [4:0] n2_fu_50;
wire   [4:0] select_ln31_1_fu_164_p3;
reg   [8:0] indvar_flatten_fu_54;
wire   [8:0] add_ln31_fu_110_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    aPipes_8_read_local;
reg    ap_block_pp0_stage0_01001;
reg    aPipes_9_write_local;
reg    aBuffer_we0_local;
reg    aBuffer_ce0_local;
wire   [4:0] select_ln31_fu_125_p3;
wire   [4:0] add_ln31_1_fu_158_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 n1_fu_46 = 5'd0;
#0 n2_fu_50 = 5'd0;
#0 indvar_flatten_fu_54 = 9'd0;
#0 ap_done_reg = 1'b0;
end

MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln31_fu_104_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_54 <= add_ln31_fu_110_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_54 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln31_fu_104_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            n1_fu_46 <= add_ln35_fu_139_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            n1_fu_46 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            n2_fu_50 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            n2_fu_50 <= select_ln31_1_fu_164_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        first_iter_0_reg_210 <= first_iter_0_fu_133_p2;
        icmp_ln35_reg_205 <= icmp_ln35_fu_119_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        aBuffer_ce0_local = 1'b1;
    end else begin
        aBuffer_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (first_iter_0_reg_210 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        aBuffer_we0_local = 1'b1;
    end else begin
        aBuffer_we0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        aPipes_8_blk_n = aPipes_8_empty_n;
    end else begin
        aPipes_8_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        aPipes_8_read_local = 1'b1;
    end else begin
        aPipes_8_read_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (first_iter_0_reg_210 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        aPipes_9_blk_n = aPipes_9_full_n;
    end else begin
        aPipes_9_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (first_iter_0_reg_210 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        aPipes_9_write_local = 1'b1;
    end else begin
        aPipes_9_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln31_fu_104_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_54;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_n1_load = 5'd0;
    end else begin
        ap_sig_allocacmp_n1_load = n1_fu_46;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign aBuffer_address0 = zext_ln31_fu_171_p1;

assign aBuffer_ce0 = aBuffer_ce0_local;

assign aBuffer_d0 = aPipes_8_dout;

assign aBuffer_we0 = aBuffer_we0_local;

assign aPipes_8_read = aPipes_8_read_local;

assign aPipes_9_din = aPipes_8_dout;

assign aPipes_9_write = aPipes_9_write_local;

assign add_ln31_1_fu_158_p2 = (n2_fu_50 + 5'd1);

assign add_ln31_fu_110_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign add_ln35_fu_139_p2 = (select_ln31_fu_125_p3 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((1'b0 == aPipes_8_empty_n) | ((first_iter_0_reg_210 == 1'd0) & (1'b0 == aPipes_9_full_n)));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign first_iter_0_fu_133_p2 = ((select_ln31_fu_125_p3 == 5'd0) ? 1'b1 : 1'b0);

assign icmp_ln31_fu_104_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd384) ? 1'b1 : 1'b0);

assign icmp_ln35_fu_119_p2 = ((ap_sig_allocacmp_n1_load == 5'd24) ? 1'b1 : 1'b0);

assign select_ln31_1_fu_164_p3 = ((icmp_ln35_reg_205[0:0] == 1'b1) ? add_ln31_1_fu_158_p2 : n2_fu_50);

assign select_ln31_fu_125_p3 = ((icmp_ln35_fu_119_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_n1_load);

assign zext_ln31_fu_171_p1 = select_ln31_1_fu_164_p3;

endmodule //MatrixMultiplicationKernel_ProcessingElement_9_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer
