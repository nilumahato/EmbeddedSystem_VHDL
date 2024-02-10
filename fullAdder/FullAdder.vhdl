-- VHDL code for OR gate
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY or_gate IS
PORT(
    input1, input2 : IN STD_LOGIC;
    output : OUT STD_LOGIC
);
END or_gate;

ARCHITECTURE or_arch OF or_gate IS
BEGIN
    output <= input1 or input2;
END or_arch;

-- VHDL code for half adder
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY half_adder IS
PORT(
    input_a, input_b : IN STD_LOGIC;
    sum, carry : OUT STD_LOGIC
);
END half_adder;

ARCHITECTURE ha_arch OF half_adder IS
BEGIN
    sum <= input_a xor input_b;
    carry <= input_a and input_b;
END ha_arch;

-- VHDL code for full adder using two half adders and an OR gate
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder IS
PORT(
    input_A, input_B, input_Cin : IN STD_LOGIC;
    sum, carry_out : OUT STD_LOGIC
);
END full_adder;

ARCHITECTURE fa_arch OF full_adder IS
COMPONENT or_gate IS
PORT(
    input_x, input_y : IN STD_LOGIC;
    output_z : OUT STD_LOGIC
);
END COMPONENT or_gate;

COMPONENT half_adder IS
PORT(
    input_a, input_b : IN STD_LOGIC;
    sum, carry : OUT STD_LOGIC
);
END COMPONENT half_adder;

SIGNAL sum1, carry1, carry2 : STD_LOGIC;
BEGIN
    HA1: half_adder PORT MAP(input_a => input_A, input_b => input_B, sum => sum1, carry => carry1);
    HA2: half_adder PORT MAP(input_a => sum1, input_b => input_Cin, sum => sum, carry => carry2);
    OR1: or_gate PORT MAP(input_x => carry1, input_y => carry2, output_z => carry_out);
END fa_arch;
```

In this modified version, variable names have been changed for clarity and consistency.