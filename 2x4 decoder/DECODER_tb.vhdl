library ieee;
use ieee.std_logic_1164.all;

entity DECODER_tb is
end DECODER_tb;

architecture behaviour of DECODER_tb is
	signal a1, a0, e, q3, q2, q1, q0: std_logic;

begin
	UUT: entity work.decoder port map(
		a1 => a1,
		a0 => a0,
		e => e,
		q3 => q3,
		q2 => q2,
		q1 => q1,
		q0 => q0
	);

	sti_process: process
	begin
		a0 <= '0';
		a1 <= '0';
		e <= '1';
		wait for 20 ns;

		a0 <= '1';
                a1 <= '0';
                e <= '1';
                wait for 20 ns;


		a0 <= '0';
                a1 <= '1';
                e <= '1';
                wait for 20 ns;

                a0 <= '1';
                a1 <= '1';
                e <= '1';
                wait for 20 ns;
		wait;
	end process sti_process;

end behaviour;
