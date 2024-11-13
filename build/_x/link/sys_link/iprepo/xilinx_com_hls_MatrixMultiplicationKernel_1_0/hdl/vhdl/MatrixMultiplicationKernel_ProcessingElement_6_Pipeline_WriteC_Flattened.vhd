-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MatrixMultiplicationKernel_ProcessingElement_6_Pipeline_WriteC_Flattened is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    cPipes_6_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    cPipes_6_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    cPipes_6_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    cPipes_6_empty_n : IN STD_LOGIC;
    cPipes_6_read : OUT STD_LOGIC;
    cPipes_5_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    cPipes_5_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    cPipes_5_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    cPipes_5_full_n : IN STD_LOGIC;
    cPipes_5_write : OUT STD_LOGIC;
    cBuffer_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    cBuffer_ce0 : OUT STD_LOGIC;
    cBuffer_q0 : IN STD_LOGIC_VECTOR (255 downto 0) );
end;


architecture behav of MatrixMultiplicationKernel_ProcessingElement_6_Pipeline_WriteC_Flattened is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv15_6C00 : STD_LOGIC_VECTOR (14 downto 0) := "110110000000000";
    constant ap_const_lv15_1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv26_0 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000000000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv32_6BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000011010111111";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln170_reg_272 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln168_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal cPipes_5_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal cPipes_6_blk_n : STD_LOGIC;
    signal icmp_ln170_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln171_fu_172_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal n1_fu_60 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal n1_11_fu_209_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal inner_fu_64 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal inner_15_fu_217_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_68 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    signal i_10_fu_136_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal m1_fu_72 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal m1_5_fu_177_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal cPipes_6_read_local : STD_LOGIC;
    signal cPipes_5_din_local : STD_LOGIC_VECTOR (255 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal cPipes_5_write_local : STD_LOGIC;
    signal cBuffer_ce0_local : STD_LOGIC;
    signal tmp_6_fu_142_p4 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_fu_164_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln187_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal n1_10_fu_197_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal inner_14_fu_203_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_condition_247 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_68 <= ap_const_lv15_0;
                elsif (((icmp_ln168_fu_130_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_68 <= i_10_fu_136_p2;
                end if;
            end if; 
        end if;
    end process;

    inner_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    inner_fu_64 <= ap_const_lv32_0;
                elsif (((icmp_ln168_fu_130_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    inner_fu_64 <= inner_15_fu_217_p3;
                end if;
            end if; 
        end if;
    end process;

    m1_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    m1_fu_72 <= ap_const_lv6_0;
                elsif ((ap_const_boolean_1 = ap_condition_247)) then 
                    m1_fu_72 <= m1_5_fu_177_p2;
                end if;
            end if; 
        end if;
    end process;

    n1_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    n1_fu_60 <= ap_const_lv4_0;
                elsif (((icmp_ln168_fu_130_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    n1_fu_60 <= n1_11_fu_209_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln170_reg_272 <= icmp_ln170_fu_152_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(cPipes_6_empty_n, icmp_ln170_reg_272, cPipes_5_full_n)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (((cPipes_5_full_n = ap_const_logic_0) and (icmp_ln170_reg_272 = ap_const_lv1_1)) or ((cPipes_5_full_n = ap_const_logic_0) and (icmp_ln170_reg_272 = ap_const_lv1_0)) or ((icmp_ln170_reg_272 = ap_const_lv1_0) and (cPipes_6_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_247_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln168_fu_130_p2, icmp_ln170_fu_152_p2)
    begin
                ap_condition_247 <= ((icmp_ln170_fu_152_p2 = ap_const_lv1_1) and (icmp_ln168_fu_130_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln168_fu_130_p2)
    begin
        if (((icmp_ln168_fu_130_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    cBuffer_address0 <= zext_ln171_fu_172_p1(10 - 1 downto 0);
    cBuffer_ce0 <= cBuffer_ce0_local;

    cBuffer_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            cBuffer_ce0_local <= ap_const_logic_1;
        else 
            cBuffer_ce0_local <= ap_const_logic_0;
        end if; 
    end process;


    cPipes_5_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln170_reg_272, cPipes_5_full_n, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln170_reg_272 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln170_reg_272 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then 
            cPipes_5_blk_n <= cPipes_5_full_n;
        else 
            cPipes_5_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    cPipes_5_din <= cPipes_5_din_local;

    cPipes_5_din_local_assign_proc : process(ap_enable_reg_pp0_iter2, cPipes_6_dout, icmp_ln170_reg_272, cBuffer_q0, ap_block_pp0_stage0_01001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
            if ((icmp_ln170_reg_272 = ap_const_lv1_1)) then 
                cPipes_5_din_local <= cBuffer_q0;
            elsif ((icmp_ln170_reg_272 = ap_const_lv1_0)) then 
                cPipes_5_din_local <= cPipes_6_dout;
            else 
                cPipes_5_din_local <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            cPipes_5_din_local <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    cPipes_5_write <= cPipes_5_write_local;

    cPipes_5_write_local_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln170_reg_272, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln170_reg_272 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln170_reg_272 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then 
            cPipes_5_write_local <= ap_const_logic_1;
        else 
            cPipes_5_write_local <= ap_const_logic_0;
        end if; 
    end process;


    cPipes_6_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, cPipes_6_empty_n, icmp_ln170_reg_272, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln170_reg_272 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            cPipes_6_blk_n <= cPipes_6_empty_n;
        else 
            cPipes_6_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    cPipes_6_read <= cPipes_6_read_local;

    cPipes_6_read_local_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln170_reg_272, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln170_reg_272 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            cPipes_6_read_local <= ap_const_logic_1;
        else 
            cPipes_6_read_local <= ap_const_logic_0;
        end if; 
    end process;

    i_10_fu_136_p2 <= std_logic_vector(unsigned(i_fu_68) + unsigned(ap_const_lv15_1));
    icmp_ln168_fu_130_p2 <= "1" when (i_fu_68 = ap_const_lv15_6C00) else "0";
    icmp_ln170_fu_152_p2 <= "1" when (tmp_6_fu_142_p4 = ap_const_lv26_0) else "0";
    icmp_ln187_fu_191_p2 <= "1" when (inner_fu_64 = ap_const_lv32_6BF) else "0";
    inner_14_fu_203_p2 <= std_logic_vector(unsigned(inner_fu_64) + unsigned(ap_const_lv32_1));
    inner_15_fu_217_p3 <= 
        ap_const_lv32_0 when (icmp_ln187_fu_191_p2(0) = '1') else 
        inner_14_fu_203_p2;
    m1_5_fu_177_p2 <= std_logic_vector(unsigned(m1_fu_72) + unsigned(ap_const_lv6_1));
    n1_10_fu_197_p2 <= std_logic_vector(unsigned(n1_fu_60) + unsigned(ap_const_lv4_1));
    n1_11_fu_209_p3 <= 
        n1_10_fu_197_p2 when (icmp_ln187_fu_191_p2(0) = '1') else 
        n1_fu_60;
    tmp_6_fu_142_p4 <= inner_fu_64(31 downto 6);
    tmp_fu_164_p3 <= (n1_fu_60 & m1_fu_72);
    zext_ln171_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_164_p3),64));
end behav;
