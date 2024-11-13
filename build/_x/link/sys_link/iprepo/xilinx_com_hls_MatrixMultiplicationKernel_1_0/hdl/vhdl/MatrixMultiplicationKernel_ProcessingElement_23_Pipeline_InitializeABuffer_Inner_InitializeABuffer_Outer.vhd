-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MatrixMultiplicationKernel_ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    aPipes_22_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    aPipes_22_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    aPipes_22_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    aPipes_22_empty_n : IN STD_LOGIC;
    aPipes_22_read : OUT STD_LOGIC;
    aPipes_23_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    aPipes_23_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    aPipes_23_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    aPipes_23_full_n : IN STD_LOGIC;
    aPipes_23_write : OUT STD_LOGIC;
    aBuffer_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    aBuffer_ce0 : OUT STD_LOGIC;
    aBuffer_we0 : OUT STD_LOGIC;
    aBuffer_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of MatrixMultiplicationKernel_ProcessingElement_23_Pipeline_InitializeABuffer_Inner_InitializeABuffer_Outer is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_A0 : STD_LOGIC_VECTOR (7 downto 0) := "10100000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

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
    signal first_iter_0_reg_215 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln31_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal aPipes_22_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal aPipes_23_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln35_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln35_reg_210 : STD_LOGIC_VECTOR (0 downto 0);
    signal first_iter_0_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln31_fu_175_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal n1_fu_50 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln35_fu_148_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal n2_fu_54 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal select_ln31_16_fu_168_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten_fu_58 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal add_ln31_fu_114_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (7 downto 0);
    signal aPipes_22_read_local : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal aPipes_23_write_local : STD_LOGIC;
    signal aBuffer_we0_local : STD_LOGIC;
    signal aBuffer_ce0_local : STD_LOGIC;
    signal select_ln31_fu_134_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln3147_fu_162_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln31_fu_108_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_58 <= add_ln31_fu_114_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_58 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    n1_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    n1_fu_50 <= ap_const_lv4_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    n1_fu_50 <= add_ln35_fu_148_p2;
                end if;
            end if; 
        end if;
    end process;

    n2_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    n2_fu_54 <= ap_const_lv5_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    n2_fu_54 <= select_ln31_16_fu_168_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                first_iter_0_reg_215 <= first_iter_0_fu_142_p2;
                icmp_ln35_reg_210 <= icmp_ln35_fu_128_p2;
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
    aBuffer_address0 <= zext_ln31_fu_175_p1(5 - 1 downto 0);
    aBuffer_ce0 <= aBuffer_ce0_local;

    aBuffer_ce0_local_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            aBuffer_ce0_local <= ap_const_logic_1;
        else 
            aBuffer_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    aBuffer_d0 <= aPipes_22_dout;
    aBuffer_we0 <= aBuffer_we0_local;

    aBuffer_we0_local_assign_proc : process(ap_enable_reg_pp0_iter2, first_iter_0_reg_215, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (first_iter_0_reg_215 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            aBuffer_we0_local <= ap_const_logic_1;
        else 
            aBuffer_we0_local <= ap_const_logic_0;
        end if; 
    end process;


    aPipes_22_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, aPipes_22_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            aPipes_22_blk_n <= aPipes_22_empty_n;
        else 
            aPipes_22_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    aPipes_22_read <= aPipes_22_read_local;

    aPipes_22_read_local_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            aPipes_22_read_local <= ap_const_logic_1;
        else 
            aPipes_22_read_local <= ap_const_logic_0;
        end if; 
    end process;


    aPipes_23_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, aPipes_23_full_n, first_iter_0_reg_215, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (first_iter_0_reg_215 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            aPipes_23_blk_n <= aPipes_23_full_n;
        else 
            aPipes_23_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    aPipes_23_din <= aPipes_22_dout;
    aPipes_23_write <= aPipes_23_write_local;

    aPipes_23_write_local_assign_proc : process(ap_enable_reg_pp0_iter2, first_iter_0_reg_215, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (first_iter_0_reg_215 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            aPipes_23_write_local <= ap_const_logic_1;
        else 
            aPipes_23_write_local <= ap_const_logic_0;
        end if; 
    end process;

    add_ln3147_fu_162_p2 <= std_logic_vector(unsigned(n2_fu_54) + unsigned(ap_const_lv5_1));
    add_ln31_fu_114_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv8_1));
    add_ln35_fu_148_p2 <= std_logic_vector(unsigned(select_ln31_fu_134_p3) + unsigned(ap_const_lv4_1));
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


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(aPipes_22_empty_n, aPipes_23_full_n, first_iter_0_reg_215)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((ap_const_logic_0 = aPipes_22_empty_n) or ((first_iter_0_reg_215 = ap_const_lv1_0) and (ap_const_logic_0 = aPipes_23_full_n)));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln31_fu_108_p2)
    begin
        if (((icmp_ln31_fu_108_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_58)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_58;
        end if; 
    end process;

    first_iter_0_fu_142_p2 <= "1" when (select_ln31_fu_134_p3 = ap_const_lv4_0) else "0";
    icmp_ln31_fu_108_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv8_A0) else "0";
    icmp_ln35_fu_128_p2 <= "1" when (n1_fu_50 = ap_const_lv4_A) else "0";
    select_ln31_16_fu_168_p3 <= 
        add_ln3147_fu_162_p2 when (icmp_ln35_reg_210(0) = '1') else 
        n2_fu_54;
    select_ln31_fu_134_p3 <= 
        ap_const_lv4_0 when (icmp_ln35_fu_128_p2(0) = '1') else 
        n1_fu_50;
    zext_ln31_fu_175_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln31_16_fu_168_p3),64));
end behav;
