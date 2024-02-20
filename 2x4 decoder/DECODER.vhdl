library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port(
		a1, a0, e: in std_logic;
    		q3,q2,q1,q0: out std_logic
	);
end decoder;

architecture behaviour of decoder is
begin
	q3 <= e and a1 and a0;
	q2 <= e and a1 and (not a0);
	q1 <= e and (not a1) and a0;
	q0 <= e and (not a1) and (not a0);
end behaviour;
