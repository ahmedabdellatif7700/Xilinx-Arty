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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY EXAMPLE IS
    --  Port ( );
    GENERIC (
        Bits : int := 3); -- we will use this generic bits to define inputs and outputs
    PORT (
        A : IN STD_LOGIC_VECTOR(Bits - 1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(Bits - 1 DOWNTO 0);
        C : OUT STD_LOGIC;
    );
END EXAMPLE;

ARCHITECTURE BEHAVE OF BUTTON_LED IS
BEGIN
    C <= A AND B;
END BEHAVE;