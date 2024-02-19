library ieee;
use ieee.std_logic_1164.all;

entity lcm_tb  is 
end lcm_tb;

architecture behavior of lcm_tb is 
       	signal CLK, RESET: std_logic;
	signal INPUT_A, INPUT_B, LCM: integer;
	
begin
	dut : entity work.fsm_lcm port map(CLK => CLK, RESET =>  RESET, INPUT_A => INPUT_A, INPUT_B => INPUT_B, LCM => LCM);
	clock: process
	begin
		CLK<= '1';
		wait for 100 ns;
	
		CLK <= '0';
		wait for 100 NS;
	
	end process;
	process
	begin
		RESET <= '1';
		wait for 10 ns;
		RESET <= '0';
		wait for 10 ns;
		INPUT_A <= 45;
		INPUT_B <= 15;
		wait for 100 ns;

		INPUT_A <= 7;
		INPUT_B <= 13;
		wait for 100 ns;
	
		INPUT_A <= 20;
		INPUT_B <= 58;
		wait for 100 ns;

		wait;
	end process;
end behavior;
