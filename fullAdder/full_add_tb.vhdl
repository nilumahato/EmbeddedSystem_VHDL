library ieee;
use ieee.std_logic_1164.all;

entity FA_TEST is
end FA_TEST;

architecture test_bench of FA_TEST is
    component full_adder is
        port (
            input_A, input_B, input_Cin: in STD_LOGIC;
            sum, carry_out: out STD_LOGIC);
    end component FULL_ADDER;

    signal input_A, input_B, input_Cin, sum, carry_out: STD_LOGIC;

begin

    uut: full_adder port map(
            input_A => input_A, input_B => input_B,
            input_Cin => input_Cin, sum => sum, carry_out => carry_out
        );

    stim:
    process
    begin
        input_A <= '0';
        input_B <= '0';
        input_Cin <= '0';
        wait for 10 ns;

        input_A <= '0';
        input_B <= '0';
        input_Cin <= '1';
        wait for 10 ns;
    
        input_A <= '0';
        input_B <= '1';
        input_Cin <= '0';
        wait for 10 ns;
    
        input_A <= '0';
        input_B <= '1';
        input_Cin <= '1';
        wait for 10 ns;
        wait;

    end process;
end test_bench;

