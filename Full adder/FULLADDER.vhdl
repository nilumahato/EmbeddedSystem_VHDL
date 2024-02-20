library	ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(
		x,y: in	STD_LOGIC;
		z: out	STD_LOGIC
	);
end or_gate;

architecture behaviour of or_gate is
begin
	z <= x or y;
end behaviour;

-- for half adder
library	ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(
		a,b: in STD_LOGIC;
		s,c: out STD_LOGIC
	);
end half_adder;

architecture behaviour of half_adder is
begin
	s <= a xor b;
	c <= a and b;
end behaviour;

--for full adder (using two half adder and an or gate)

library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
		A,B,Cin: in STD_LOGIC;
		S,C: out STD_LOGIC
	);
end full_adder;

architecture behaviour of full_adder is
	component or_gate is
	port(
		x,y: in STD_LOGIC;
		z: out STD_LOGIC			
	);
	end component or_gate;

	component half_adder is
	port(
		a,b: in STD_LOGIC;
		s,c: out STD_LOGIC
	);
	end component half_adder;

	SIGNAL	S1,C1,C2:STD_LOGIC;
	BEGIN
		HA1: half_adder	PORT	MAP(a=>A,b=>B,s=>S1,c=>C1);
		HA2: half_adder	PORT	MAP(a=>S1,b=>Cin,s=>S,c=>C2);
		OR1: or_gate	PORT	MAP(x=>C1,y=>C2,z=>C);
end behaviour;
