library ieee;
use ieee.std_logic_1164.all;

entity up_counter_tb is
end up_counter_tb;

architecture tb_arch of up_counter_tb is
    -- Constants
    constant CLK_PERIOD: time := 10 ns;

    -- Signals
    signal CLK, RST: std_logic := '0';
    signal Q: std_logic_vector(2 downto 0);

begin
    -- Instantiate DUT (Design Under Test)
    DUT: entity work.up_counter
    port map (
        CLK => CLK,
        RST => RST,
        Q => Q
    );

    -- Clock process
    CLK_process: process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Stimulus process
    stimulus_process: process
    begin
        RST <= '1'; -- Reset
        wait for CLK_PERIOD * 5;
        RST <= '0'; -- Release Reset

        -- Test some inputs
        wait for CLK_PERIOD * 10;

        -- Add more test cases here if needed

        wait;
    end process;

end tb_arch;
