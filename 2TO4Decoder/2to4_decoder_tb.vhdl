library ieee;
use ieee.std_logic_1164.all;
 
entity decoder_tb is
end decoder_tb;

architecture behaviour of decoder_tb is
	signal INPUT_A1, INPUT_A0, ENABLE, OUTPUT_Y3, OUTPUT_Y2, OUTPUT_Y1, OUTPUT_Y0: std_logic;

begin
	UUT: entity work.test_entity port map(
		INPUT_A1 => INPUT_A1,
		INPUT_A0 => INPUT_A0,
		ENABLE => ENABLE,
		OUTPUT_Y3 => OUTPUT_Y3,
		OUTPUT_Y2 => OUTPUT_Y2,
		OUTPUT_Y1 => OUTPUT_Y1,
		OUTPUT_Y0 => OUTPUT_Y0	
	);

	sti_process: process
	begin
		INPUT_A0 <= '0';
		INPUT_A1 <= '0';
		ENABLE <= '1';
		wait for 10 ns;

		INPUT_A0 <= '1';
                INPUT_A1 <= '0';
                ENABLE <= '1';
                wait for 10 ns;


		INPUT_A0 <= '0';
                INPUT_A1 <= '1';
                ENABLE <= '1';
                wait for 10 ns;

                INPUT_A0 <= '1';
                INPUT_A1 <= '1';
                ENABLE <= '1';
                wait for 10 ns;
		wait;
	end process sti_process;

end behaviour;
