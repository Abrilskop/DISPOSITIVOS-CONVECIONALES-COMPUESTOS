library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
    Port ( A    : in  STD_LOGIC;  -- Primer bit de entrada
           B    : in  STD_LOGIC;  -- Segundo bit de entrada
           Sum    : out STD_LOGIC;  -- Suma
           Cout : out STD_LOGIC   -- Acarreo de salida
           );
end HalfAdder;

architecture Behavioral of HalfAdder is
begin
    process(A, B)
    begin
        -- La suma S es el resultado de A XOR B
        Sum <= A XOR B;

        -- El acarreo de salida Cout es el resultado de A AND B
        Cout <= A AND B;
    end process;
end Behavioral;