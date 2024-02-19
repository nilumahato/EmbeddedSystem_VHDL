library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture testbench of mux_tb is
    -- Component Declaration
    component mux is
        port(
            A0, A1, S0: in std_logic;
            Y: out std_logic
        );
    end component;

    -- Signal Declarations
    signal A0, A1, S0, Y: std_logic := '0';

begin
    -- Instantiate the MUX
    UUT: mux port map (A0 => A0, A1 => A1, S0 => S0, Y => Y);
    
    -- Stimulus Process
    stimulus: process
    begin
        -- Test Case 1
        A0 <= '0';
        A1 <= '0';
        S0 <= '0';
        wait for 10 ns;
        
        -- Test Case 2
        A0 <= '1';
        A1 <= '0';
        S0 <= '0';
        wait for 10 ns;
        
        -- Test Case 3
        A0 <= '0';
        A1 <= '1';
        S0 <= '0';
        wait for 10 ns;
        
        -- Test Case 4
        A0 <= '1';
        A1 <= '1';
        S0 <= '0';
        wait for 10 ns;
        
        -- Test Case 5
        A0 <= '0';
        A1 <= '0';
        S0 <= '1';
        wait for 10 ns;
        
        -- Test Case 6
        A0 <= '1';
        A1 <= '0';
        S0 <= '1';
        wait for 10 ns;
        
        -- Test Case 7
        A0 <= '0';
        A1 <= '1';
        S0 <= '1';
        wait for 10 ns;
        
        -- Test Case 8
        A0 <= '1';
        A1 <= '1';
        S0 <= '1';
        wait for 10 ns;
        
        -- End of Simulation
        wait;
    end process stimulus;

end testbench;
