----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2024 03:46:45 PM
-- Design Name: 
-- Module Name: BUTTON_LED - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
-- -- VHDL Data Type Example
-- -- Standard Logic
-- SIGNAL sig_A : STD_LOGIC := '0';
-- SIGNAL sig_B : STD_LOGIC := '1';
-- sig_A <= '1';
-- sig_A <= '0';
-- sig_A <= sig_B;
-- -- Standard logic vector
-- SIGNAL sig_C : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
-- SIGNAL sig_D : STD_LOGIC_VECTOR(5 DOWNTO 0) := (OTHERS => '1'); -- that will make them all logic 1
-- sig_C <= sig_D; --since both have the same width
-- sig_C(3) <= sig_D(0);

-- --unsigned data types 
-- SIGNAL sig_E : UNSIGNED(3 DOWNTO 0) := (OTHERS => '1');
-- SIGNAL sig_F : UNSIGNED(3 DOWNTO 0) := "0010"; --2
-- sig_E <= (OTHERS => '0');
-- sig_F <= sig_F + 1; -- also valid

-- --signed data types
-- SIGNAL sig_G : SIGNED(3 DOWNTO 0) := (OTHERS => '1');
-- SIGNAL sig_H : SIGNED(3 DOWNTO 0) := "1011"; --5
-- sig_G <= (OTHERS => '0');
-- sig_F <= sig_G - 1; -- 
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY BUTTON_LED IS
    --  Port ( );
    GENERIC (
        NUM_BUTTONS : int := 4);
    PORT (
        LED_OUT : IN STD_LOGIC_VECTOR(Bits - 1 DOWNTO 0);
        BUTTON_IN : IN STD_LOGIC_VECTOR(Bits - 1 DOWNTO 0);
        ENABLE : IN STD_LOGIC;
    );
END BUTTON_LED;

ARCHITECTURE BEHAVE OF BUTTON_LED IS
BEGIN

END BEHAVE;