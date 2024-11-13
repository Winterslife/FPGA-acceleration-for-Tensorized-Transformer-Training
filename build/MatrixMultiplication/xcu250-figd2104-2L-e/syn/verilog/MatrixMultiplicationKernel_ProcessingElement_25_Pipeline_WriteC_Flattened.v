// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module MatrixMultiplicationKernel_ProcessingElement_25_Pipeline_WriteC_Flattened (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        cPipes_25_dout,
        cPipes_25_num_data_valid,
        cPipes_25_fifo_cap,
        cPipes_25_empty_n,
        cPipes_25_read,
        cPipes_24_din,
        cPipes_24_num_data_valid,
        cPipes_24_fifo_cap,
        cPipes_24_full_n,
        cPipes_24_write,
        cBuffer_address0,
        cBuffer_ce0,
        cBuffer_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [255:0] cPipes_25_dout;
input  [2:0] cPipes_25_num_data_valid;
input  [2:0] cPipes_25_fifo_cap;
input   cPipes_25_empty_n;
output   cPipes_25_read;
output  [255:0] cPipes_24_din;
input  [2:0] cPipes_24_num_data_valid;
input  [2:0] cPipes_24_fifo_cap;
input   cPipes_24_full_n;
output   cPipes_24_write;
output  [9:0] cBuffer_address0;
output   cBuffer_ce0;
input  [255:0] cBuffer_q0;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln170_reg_272;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln168_fu_130_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    cPipes_24_blk_n;
wire    ap_block_pp0_stage0;
reg    cPipes_25_blk_n;
wire   [0:0] icmp_ln170_fu_152_p2;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln171_fu_172_p1;
reg   [3:0] n1_fu_60;
wire   [3:0] n1_33_fu_209_p3;
wire    ap_loop_init;
reg   [31:0] inner_fu_64;
wire   [31:0] inner_48_fu_217_p3;
reg   [13:0] i_fu_68;
wire   [13:0] i_32_fu_136_p2;
reg   [5:0] m1_fu_72;
wire   [5:0] m1_16_fu_177_p2;
reg    cPipes_25_read_local;
reg   [255:0] cPipes_24_din_local;
reg    ap_block_pp0_stage0_01001;
reg    cPipes_24_write_local;
reg    cBuffer_ce0_local;
wire   [25:0] tmp_19_fu_142_p4;
wire   [9:0] tmp_fu_164_p3;
wire   [0:0] icmp_ln187_fu_191_p2;
wire   [3:0] n1_32_fu_197_p2;
wire   [31:0] inner_47_fu_203_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_247;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 n1_fu_60 = 4'd0;
#0 inner_fu_64 = 32'd0;
#0 i_fu_68 = 14'd0;
#0 m1_fu_72 = 6'd0;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 14'd0;
        end else if (((icmp_ln168_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_fu_68 <= i_32_fu_136_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            inner_fu_64 <= 32'd0;
        end else if (((icmp_ln168_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            inner_fu_64 <= inner_48_fu_217_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            m1_fu_72 <= 6'd0;
        end else if ((1'b1 == ap_condition_247)) begin
            m1_fu_72 <= m1_16_fu_177_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            n1_fu_60 <= 4'd0;
        end else if (((icmp_ln168_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            n1_fu_60 <= n1_33_fu_209_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln170_reg_272 <= icmp_ln170_fu_152_p2;
    end
end

always @ (*) begin
    if (((icmp_ln168_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cBuffer_ce0_local = 1'b1;
    end else begin
        cBuffer_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (icmp_ln170_reg_272 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln170_reg_272 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        cPipes_24_blk_n = cPipes_24_full_n;
    end else begin
        cPipes_24_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((icmp_ln170_reg_272 == 1'd1)) begin
            cPipes_24_din_local = cBuffer_q0;
        end else if ((icmp_ln170_reg_272 == 1'd0)) begin
            cPipes_24_din_local = cPipes_25_dout;
        end else begin
            cPipes_24_din_local = 'bx;
        end
    end else begin
        cPipes_24_din_local = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln170_reg_272 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln170_reg_272 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        cPipes_24_write_local = 1'b1;
    end else begin
        cPipes_24_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln170_reg_272 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        cPipes_25_blk_n = cPipes_25_empty_n;
    end else begin
        cPipes_25_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln170_reg_272 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        cPipes_25_read_local = 1'b1;
    end else begin
        cPipes_25_read_local = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((cPipes_24_full_n == 1'b0) & (icmp_ln170_reg_272 == 1'd1)) | ((cPipes_24_full_n == 1'b0) & (icmp_ln170_reg_272 == 1'd0)) | ((icmp_ln170_reg_272 == 1'd0) & (cPipes_25_empty_n == 1'b0)));
end

always @ (*) begin
    ap_condition_247 = ((icmp_ln170_fu_152_p2 == 1'd1) & (icmp_ln168_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign ap_ready = ap_ready_sig;

assign cBuffer_address0 = zext_ln171_fu_172_p1;

assign cBuffer_ce0 = cBuffer_ce0_local;

assign cPipes_24_din = cPipes_24_din_local;

assign cPipes_24_write = cPipes_24_write_local;

assign cPipes_25_read = cPipes_25_read_local;

assign i_32_fu_136_p2 = (i_fu_68 + 14'd1);

assign icmp_ln168_fu_130_p2 = ((i_fu_68 == 14'd8192) ? 1'b1 : 1'b0);

assign icmp_ln170_fu_152_p2 = ((tmp_19_fu_142_p4 == 26'd0) ? 1'b1 : 1'b0);

assign icmp_ln187_fu_191_p2 = ((inner_fu_64 == 32'd511) ? 1'b1 : 1'b0);

assign inner_47_fu_203_p2 = (inner_fu_64 + 32'd1);

assign inner_48_fu_217_p3 = ((icmp_ln187_fu_191_p2[0:0] == 1'b1) ? 32'd0 : inner_47_fu_203_p2);

assign m1_16_fu_177_p2 = (m1_fu_72 + 6'd1);

assign n1_32_fu_197_p2 = (n1_fu_60 + 4'd1);

assign n1_33_fu_209_p3 = ((icmp_ln187_fu_191_p2[0:0] == 1'b1) ? n1_32_fu_197_p2 : n1_fu_60);

assign tmp_19_fu_142_p4 = {{inner_fu_64[31:6]}};

assign tmp_fu_164_p3 = {{n1_fu_60}, {m1_fu_72}};

assign zext_ln171_fu_172_p1 = tmp_fu_164_p3;

endmodule //MatrixMultiplicationKernel_ProcessingElement_25_Pipeline_WriteC_Flattened
