library ieee;
use ieee.std_logic_1164.all;

entity test_entity is 
    port (
        INPUT_A1, INPUT_A0, ENABLE: in std_logic;
        OUTPUT_Y3, OUTPUT_Y2, OUTPUT_Y1, OUTPUT_Y0: out std_logic
    );
end test_entity;

architecture test_architecture of test_entity is 
    signal Y3_temp, Y2_temp, Y1_temp, Y0_temp: std_logic;
begin
    Y3_temp <= ENABLE and INPUT_A1 and INPUT_A0;
    Y2_temp <= ENABLE and INPUT_A1 and (not INPUT_A0);
    Y1_temp <= ENABLE and (not INPUT_A1) and INPUT_A0;
    Y0_temp <= ENABLE and (not INPUT_A1) and (not INPUT_A0);

    OUTPUT_Y3 <= Y3_temp;
    OUTPUT_Y2 <= Y2_temp;
    OUTPUT_Y1 <= Y1_temp;
    OUTPUT_Y0 <= Y0_temp;
end test_architecture;
