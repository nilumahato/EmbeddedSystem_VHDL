library ieee;
use ieee.std_logic_1164.all;

entity demultiplexer_tb is
end demultiplexer_tb;

architecture tb_architecture of demultiplexer_tb is
    signal Input_sig, Select_2_sig, Select_1_sig, Select_0_sig: std_logic;
    signal Output_7_sig, Output_6_sig, Output_5_sig, Output_4_sig, Output_3_sig, Output_2_sig, Output_1_sig, Output_0_sig: std_logic;

    constant CLK_PERIOD : time := 10 ns;
begin
    -- Component instantiation
    DUT : entity work.demultiplexer
        port map (
            Input => Input_sig,
            Select_2 => Select_2_sig,
            Select_1 => Select_1_sig,
            Select_0 => Select_0_sig,
            Output_7 => Output_7_sig,
            Output_6 => Output_6_sig,
            Output_5 => Output_5_sig,
            Output_4 => Output_4_sig,
            Output_3 => Output_3_sig,
            Output_2 => Output_2_sig,
            Output_1 => Output_1_sig,
            Output_0 => Output_0_sig
        );

    -- Stimulus process
    stimulus_process : process
    begin
        -- Test case 1
        Input_sig <= '1';
        Select_2_sig <= '1';
        Select_1_sig <= '1';
        Select_0_sig <= '1';
        wait for CLK_PERIOD;

        -- Test case 2
        Input_sig <= '0';
        Select_2_sig <= '1';
        Select_1_sig <= '1';
        Select_0_sig <= '0';
        wait for CLK_PERIOD;

        -- Test case 3
        Input_sig <= '1';
        Select_2_sig <= '1';
        Select_1_sig <= '0';
        Select_0_sig <= '0';
        wait for CLK_PERIOD;

        -- Add more test cases as needed

        wait;
    end process;
end tb_architecture;
