-- Full Adder de 1 bit
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_1bit is
    Port ( A    : in  STD_LOGIC;    -- Primer bit
           B    : in  STD_LOGIC;    -- Segundo bit
           Cin  : in  STD_LOGIC;    -- Acarreo de entrada
           S    : out STD_LOGIC;    -- Resultado de la suma
           Cout : out STD_LOGIC     -- Acarreo de salida
         );
end FullAdder_1bit;

architecture Behavioral of FullAdder_1bit is
begin
    -- Ecuaciones para el Full Adder
    S <= A XOR B XOR Cin;          -- Suma
    Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin); -- Acarreo de salida
end Behavioral;
