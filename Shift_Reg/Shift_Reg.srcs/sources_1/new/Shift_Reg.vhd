-- Library
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

-- Entity declaration

ENTITY Shift_Reg IS
    PORT (
        A : OUT STD_LOGIC;
        B : OUT STD_LOGIC;
        C : OUT STD_LOGIC;
        D : OUT STD_LOGIC;
        data_in : IN STD_LOGIC;
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC
    );
END Shift_Reg;

-- Architecure
ARCHITECTURE behaviour OF Shift_Reg IS
    -- defined signal 
    SIGNAL A_reg, B_reg : STD_LOGIC := '0';
    SIGNAL C_reg, D_reg : STD_LOGIC := '0';
    -- begin architecure
BEGIN
    -- signal assignment
    A <= A_reg;
    B <= B_reg;
    C <= C_reg;
    D <= D_reg;

    -- Process that is used to shift the values 
    -- because we need this to happen on every clock cycle
    reg_process : PROCESS (clock)
    BEGIN
        IF (rising_edge(clock)) THEN
            IF (reset = '1') THEN
                A_reg <= '0';
                B_reg <= '0';
                C_reg <= '0';
                D_reg <= '0';

            ELSE -- perform shifting
                A_reg <= data_in;
                B_reg <= A_reg;
                C_reg <= B_reg;
                D_reg <= C_reg;
            END IF;
        END IF;
    END PROCESS reg_process;
END behaviour;