library ieee;
use ieee.std_logic_1164.all;

entity onetoeight_tb is
end onetoeight_tb;

architecture behaviour of onetoeight_tb is
	signal A, S2, S1, S0: std_logic := '0';
	signal output_signal: std_logic_vector(7 downto 0);
	

	component demux
		port(
			A, S2, S1, S0: in std_logic;
			y: out std_logic_vector(7 downto 0)
		);
	end component;

begin
	UUT: demux port map(A => A, S2 => S2, S1 => S1, S0 => S0, y => output_signal);

	simulate_process: process 
	begin
		--test 0
		A <= '0';
		S2 <= '0';
		S1 <= '0';
		S0 <= '0';
		wait for 300 ns;

		--test 1
		A <= '1';
		S2 <= '0';
		S1 <= '0';
		S0 <= '0';
		wait for 300 ns;

		--test 2
		A <= '1';
		S2 <= '0';
		S1 <= '0';
		S0 <= '1';
		wait for 300 ns;

		--test 3
		A <= '1';
		S2 <= '0';
		S1 <= '1';
		S0 <= '0';
		wait for 300 ns;

		--test 4
		A <= '1';
		S2 <= '0';
		S1 <= '1';
		S0 <= '1';
		wait for 300 ns;

		--test 5
		A <= '1';
		S2 <= '1';
		S1 <= '0';
		S0 <= '0';
		wait for 300 ns;

		--test 6
		A <= '1';
		S2 <= '1';
		S1 <= '0';
		S0 <= '1';
		wait for 300 ns;

		--test 7
		A <= '1';
		S2 <= '1';
		S1 <= '1';
		S0 <= '1';
		wait for 300 ns;
		
		wait;
	end process;
end behaviour;

