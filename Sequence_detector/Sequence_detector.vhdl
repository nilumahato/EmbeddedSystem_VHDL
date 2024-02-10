library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequence_detector is
    port (
        CLK : in std_logic;
        RST : in std_logic;
        INPUT : in std_logic;
        OUTPUT : out std_logic
    );
end entity sequence_detector;

architecture sequence_architecture of sequence_detector is
    type state_type is (STATE_Q0, STATE_Q1, STATE_Q2, STATE_Q3, STATE_Q4);
    signal current_state, next_state : state_type;
begin

    state_transition_process: process(CLK, RST) is
    begin
        if RST = '1' then
            current_state <= STATE_Q0;
        elsif rising_edge(CLK) then
            current_state <= next_state;
        end if;
    end process state_transition_process;

    state_comb_process: process(current_state, INPUT) is
    begin
        case current_state is
            when STATE_Q0 =>
                if INPUT = '1' then
                    next_state <= STATE_Q1;
                else
                    next_state <= STATE_Q0;
                end if;
            when STATE_Q1 =>
                if INPUT = '0' then
                    next_state <= STATE_Q2;
                else
                    next_state <= STATE_Q1;
                end if;
            when STATE_Q2 =>
                if INPUT = '1' then
                    next_state <= STATE_Q3;
                else
                    next_state <= STATE_Q0;
                end if;
            when STATE_Q3 =>
                if INPUT = '1' then
                    next_state <= STATE_Q4;
                else
                    next_state <= STATE_Q0;
                end if;
            when STATE_Q4 =>
                if INPUT = '0' then
                    next_state <= STATE_Q0;
                else
                    next_state <= STATE_Q1;
                end if;
        end case;
    end process state_comb_process;

    output_process: process(current_state) is
    begin
        case current_state is
            when STATE_Q0 | STATE_Q1 | STATE_Q2 | STATE_Q3 =>
                OUTPUT <= '0';
            when STATE_Q4 =>
                OUTPUT <= '1';
        end case;
    end process output_process;

end architecture sequence_architecture;
