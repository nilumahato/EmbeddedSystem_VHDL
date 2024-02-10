library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity testbench is
end testbench;

architecture test of testbench is
    signal j_input, k_input, clk_input, rst_input : std_logic := '0';
    signal q_output, qb_output : std_logic;

    component jk_flip_flop is
        port (
            J, K, CLK, RST : in std_logic;
            Q, Qb : out std_logic
        );
    end component;

begin
    UUT : jk_flip_flop
    port map (
        J => j_input, K => k_input, CLK => clk_input, RST => rst_input,
        Q => q_output, Qb => qb_output
    );

    clock_process: process
    begin
        clk_input <= '0';
        wait for 100 ns;

        clk_input <= '1';
        wait for 100 ns;
    end process clock_process;

    stimulus_process: process
    begin
        rst_input <= '1';
        wait for 10 ns;

        rst_input <= '0';
        wait for 10 ns;

        -- test case 1
        j_input <= '0';
        k_input <= '0';
        wait for 100 ns;

        -- test case 2
        j_input <= '0';
        k_input <= '1';
        wait for 100 ns;

        -- test case 3
        j_input <= '1';
        k_input <= '0';
        wait for 100 ns;

        -- test case 4
        j_input <= '1';
        k_input <= '1';
        wait for 100 ns;

        wait;
    end process stimulus_process;
end test;
