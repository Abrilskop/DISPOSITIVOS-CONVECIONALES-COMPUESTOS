library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( A    : in  STD_LOGIC;  -- Primer bit de entrada
           B    : in  STD_LOGIC;  -- Segundo bit de entrada
           Cin  : in  STD_LOGIC;  -- Acarreo de entrada
           Sum  : out STD_LOGIC;  -- Resultado de la suma
           Cout : out STD_LOGIC   -- Acarreo de salida
           );
end FullAdder;

architecture Behavioral of FullAdder is
begin
    process(A, B, Cin)
    begin
        -- La suma es el resultado de A XOR B XOR Cin
        Sum <= A XOR B XOR Cin;

        -- El acarreo de salida es (A AND B) o (Cin AND (A XOR B))
        Cout <= (A AND B) or (Cin AND (A XOR B));
    end process;
end Behavioral;
