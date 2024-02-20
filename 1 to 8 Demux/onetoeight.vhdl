library ieee;
use ieee.std_logic_1164.all;

entity demux is
	port(
		A, S0, S1, S2: in std_logic;
		y: out std_logic_vector (7 downto 0)
	);
end demux;

architecture behaviour of demux is
	signal select_signals: std_logic_vector(2 downto 0);
begin
	select_signals <= S2 & S1 & S0;
	process(select_signals)
	
	begin
		case select_signals is
			when "000" =>
				y <= (A, '0', '0', '0', '0', '0', '0', '0'); --output line 0 when s2,s1,s0 => `000`
			when "001" =>
				y <= ('0', A, '0', '0', '0', '0', '0', '0');
			when "010" =>
				y <= ('0', '0', A, '0', '0', '0', '0', '0');
			when "011" =>
				y <= ('0', '0', '0', A, '0', '0', '0', '0');
			when "100" =>
				y <= ('0', '0', '0', '0', A, '0', '0', '0');
			when "101" =>
				y <= ('0', '0', '0', '0', '0', A, '0', '0') ;
			when "110" =>
				y <= ('0', '0', '0', '0', '0', '0', A, '0');
			when "111" =>
				y <= ('0', '0', '0', '0', '0', '0', '0', A);
			when others =>
				y <= (others => '0'); --default: all output are zero
		end case;
	end process;
end behaviour;
