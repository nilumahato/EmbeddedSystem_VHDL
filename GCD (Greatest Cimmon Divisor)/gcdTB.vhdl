library ieee;
use ieee.std_logic_1164.all;

entity gcd_tb  is 
	end gcd_tb;

architecture behavior_gcd of gcd_tb is 
signal clk, rst: std_logic;
signal a, b, gcd: integer;
component greatest 
	port(clk, rst : IN STD_LOGIC;
	    a, b: IN INTEGER;
	    gcd : OUT INTEGER);
END COMPONENT;
BEGIN
GCD_1 : greatest port map(clk=> clk, rst=>  rst, a=>a, b=>b, gcd=>gcd);
clock: process
begin
	clk<= '1';
	wait for 100 ns;

	clk <= '0';
	WAIT FOR 100 NS;
	
end process;
process
begin
	rst <= '1';
	wait for 10 ns;
	rst  <= '0';

	a <= 23;
	b <= 11;
	wait for 2000 ns;
	
	a <= 123;
	b <= 45;
	wait for 2000 ns;
	
	a <= 1112;
	b <= 24;
	wait for 2000 ns;

	WAIT;
end process;
end behavior_gcd;