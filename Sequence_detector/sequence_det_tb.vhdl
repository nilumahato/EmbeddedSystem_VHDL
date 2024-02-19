library ieee;
use ieee.std_logic_1164.all;

entity SEQ_DET_TB is
end SEQ_DET_TB;

architecture behaviour of SEQ_DET_TB is
    signal CLK, RST, INPUT, OUTPUT: std_logic := '0';
    constant CLK_PERIOD: time := 50 ns;

begin
    uut: entity work.sequence_detector port map(
        CLK => CLK,
        RST => RST,
        INPUT => INPUT,
        OUTPUT => OUTPUT
    );

    CLK_PROC:
    process
    begin
        CLK <= '0';
        wait for CLK_PERIOD;
        CLK <= '1';
        wait for CLK_PERIOD;
    end process;

    STIM_PROC:
    process
    begin
        INPUT <= '1';           --1
        wait for CLK_PERIOD;
        
        INPUT <= '1';           --11
        wait for CLK_PERIOD;
        
        INPUT <= '0';           --110
        wait for CLK_PERIOD;
        
        INPUT <= '1';           --1101
        wait for CLK_PERIOD;
        
        INPUT <= '1';           --11011
        wait for CLK_PERIOD;
        
        INPUT <= '1';           --110111
        wait for CLK_PERIOD;
        
        INPUT <= '0';           --1101110
        wait for CLK_PERIOD;
        
        INPUT <= '1';           --11011101
        wait for CLK_PERIOD;
        
        INPUT <= '0';           --110111010
        wait for CLK_PERIOD;
        
        INPUT <= '1';           --1101110101
        wait for CLK_PERIOD;
        wait;
    end process;
end behaviour;
