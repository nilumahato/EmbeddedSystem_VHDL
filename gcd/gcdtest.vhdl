library ieee;
use ieee.std_logic_1164.all;

entity fsmgcdtest is
end fsmgcdtest;

architecture tb_architecture of fsmgcdtest is
    signal CLK, RESET: std_logic := '0';
    signal A, B, GCD: integer := 0;

    constant CLK_PERIOD : time := 10 ns;
begin
    -- Component instantiation
    DUT : entity work.fsmgcd
        port map (
            CLK => CLK,
            RESET => RESET,
            A => A,
            B => B,
            GCD => GCD
        );

    -- Clock process
    clk_process : process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Initialize inputs
        RESET <= '1';
        wait for 10 ns;
        RESET <= '0';
        wait for 10 ns;

        -- Test case 1
        A <= 48;
        B <= 18;
        wait for CLK_PERIOD * 10;

        -- Add more test cases as needed

        wait;
    end process;
end tb_architecture;
