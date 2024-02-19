LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demultiplexer IS
    PORT(
        Input, Select_2, Select_1, Select_0: IN STD_LOGIC;
        Output_7, Output_6, Output_5, Output_4, Output_3, Output_2, Output_1, Output_0: OUT STD_LOGIC
    );
END demultiplexer;

ARCHITECTURE demux_architecture OF demultiplexer IS
BEGIN
    Output_7 <= Select_0 AND Select_1 AND Select_2 AND Input;
    Output_6 <= (NOT Select_0) AND Select_1 AND Select_2 AND Input;
    Output_5 <= Select_0 AND (NOT Select_1) AND Select_2 AND Input;
    Output_4 <= (NOT Select_0) AND (NOT Select_1) AND Select_2 AND Input;
    Output_3 <= Select_0 AND Select_1 AND (NOT Select_1) AND Input;
    Output_2 <= (NOT Select_0) AND Select_1 AND (NOT Select_2) AND Input;
    Output_1 <= Select_0 AND (NOT Select_1) AND (NOT Select_2) AND Input;
    Output_0 <= (NOT Select_0) AND (NOT Select_1) AND (NOT Select_2) AND Input;
END demux_architecture;
