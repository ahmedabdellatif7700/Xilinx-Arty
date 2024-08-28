--Library
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY test OF test_Shift_Reg IS
    -- completely blank
END;

ARCHITECTURE test OF test_Shift_Reg IS
    -- instantiate shift reg component
    COMPONENT Shift_Reg
        PORT (
            A : OUT STD_LOGIC;
            B : OUT STD_LOGIC;
            C : OUT STD_LOGIC;
            D : OUT STD_LOGIC;
            data_in : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            clock : IN STD_LOGIC;
        );
    END COMPONENT;

    SIGNAL data_in : STD_LOGIC := '0';
    SIGNAL reset : STD_LOGIC := '0';
    SIGNAL clock : STD_LOGIC := '0';
    SIGNAL A, B, C, D : STD_LOGIC;

BEGIN
    dev_to_test : Shift_reg
    PORT MAP(A, B, C, D, data_in, reset, clk);

    clock_stimulus : PROCESS
    BEGIN
        WAIT FOR 10 ns;
        clk <= NOT clk;
    END PROCESS clock_stimulus;

    data_stimulus : PROCESS
    BEGIN
        WAIT FOR 10 ns;
        data_in <= NOT data_in;
    END PROCESS data_stimulus;

END test;