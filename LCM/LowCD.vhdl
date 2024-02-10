library ieee;
use ieee.std_logic_1164.all;

entity fsm_lcm is
    port (
        RESET, CLK : in std_logic;
        INPUT_A, INPUT_B : in integer;
        LCM : out integer
    );
end entity fsm_lcm;

architecture behavior of fsm_lcm is
    type state_type is (START, INPUT, OUTPUT, CHECK, CHECK1, UPDATE_X, UPDATE_Y);
    signal current_state, next_state : state_type;
begin
    state_register: process(CLK, RESET)
    begin
        if RESET = '1' then
            current_state <= START;
        elsif rising_edge(CLK) then
            current_state <= next_state;
        end if;
    end process state_register;

    compute: process(INPUT_A, INPUT_B, current_state)
        variable x_var, y_var, z_var, r_var, p_var : integer;
    begin
        case current_state is 
            when START =>
                next_state <= INPUT;

            when INPUT =>
                x_var := INPUT_A;
                y_var := INPUT_B;
                z_var := x_var * y_var;
                next_state <= CHECK;

            when CHECK =>
                if x_var < y_var then
                    next_state <= UPDATE_X;
                else
                    next_state <= UPDATE_Y;
                end if;
                next_state <= CHECK1;

            when CHECK1 =>
                while y_var /= 0 loop
                    r_var := x_var mod y_var;
                    x_var := y_var;
                    y_var := r_var;
                end loop;
                next_state <= OUTPUT;

            when UPDATE_X =>
                p_var := x_var;
                x_var := y_var;
                y_var := p_var;
                next_state <= OUTPUT;

            when UPDATE_Y =>
                x_var := x_var;
                y_var := y_var;
                next_state <= OUTPUT;

            when OUTPUT =>
                LCM <= z_var / x_var;
                next_state <= START;

            when others =>
                next_state <= START;
        end case;
    end process compute;

end behavior;
