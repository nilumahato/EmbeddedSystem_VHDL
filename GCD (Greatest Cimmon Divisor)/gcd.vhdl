library  ieee;
use ieee.std_logic_1164.all;

entity  greatest is
	port(rst, clk : in std_logic;
	    a, b : in integer;
	    gcd : out integer);
end greatest;

architecture behavior_gcd of greatest is
type state is (start, input, output, check, check1,update_x,  update_y);
signal current_state, next_state: state;
begin
state_reg:Process(clk, rst)
BEGIN
	IF(rst = '1') THEN
		current_state <= start;
	ELSIF(rising_edge(clk)) THEN
		current_state <= next_state;
	END IF;
end process;
compute:Process(a, b, current_state)
variable x, y, r, p : integer;
begin
	case current_state IS 
		WHEN start =>
			next_state <= input;
		WHEN input =>
			x:= a;
			y:= b;
			next_state <= check;
		WHEN check =>
			if(x< y) THEN
				next_state <= update_x;
			else
				next_state <= update_y;
			END IF;
      next_state <= check1;
		WHEN  check1 =>
			while y /= 0 loop
				r:= x mod y;
				x:= y;
				y:= r;
			end loop;
			next_state <= output;
		WHEN update_x =>
			p:=x;
			x:=y;
			y:=p;
		when update_y =>
			x:=x;
			y:=y;
		WHEN output =>
			GCD <= 	x;
			next_state <= start;
		WHEN others =>
			next_state <= start;
	end case;
end process compute;
end behavior_gcd;
