library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BCD_tb is
end BCD_tb;

architecture behaviour of BCD_tb is
    -- Component declaration for the unit under test
    component bcd_seg
        port (
            b0, b1, b2, b3: in std_logic;
            a, b, c, d, e, f, g: out std_logic
        );
    end component;

    -- Signals for testbench
    signal b0_tb, b1_tb, b2_tb, b3_tb: std_logic := '0';
    signal a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb: std_logic;

begin
    -- Instantiate the unit under test
    UUT: bcd_seg port map (
        b0 => b0_tb,
        b1 => b1_tb,
        b2 => b2_tb,
        b3 => b3_tb,
        a => a_tb,
        b => b_tb,
        c => c_tb,
        d => d_tb,
        e => e_tb,
        f => f_tb,
        g => g_tb
    );

    -- Stimulus process
    stimulus: process
    begin
        -- Apply test vectors
        for i in 0 to 9 loop
            b3_tb <= std_logic(to_unsigned(i / 8, 1)(0));
            b2_tb <= std_logic(to_unsigned((i mod 8) / 4, 1)(0));
            b1_tb <= std_logic(to_unsigned((i mod 4) / 2, 1)(0));
            b0_tb <= std_logic(to_unsigned(i mod 2, 1)(0));

            -- Wait for a bit
            wait for 20 ns;

         
        end loop;

        -- Finish the simulation
        wait;
    end process;
    
end behaviour;

