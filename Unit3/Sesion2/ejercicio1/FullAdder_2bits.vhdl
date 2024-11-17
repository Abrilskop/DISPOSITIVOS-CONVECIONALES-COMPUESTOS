-- Full Adder de 2 bits en VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder_2bits is
    Port ( A0, A1  : in  STD_LOGIC;  -- Primer número (A1, A0)
           B0, B1  : in  STD_LOGIC;  -- Segundo número (B1, B0)
           Cin     : in  STD_LOGIC;  -- Acarreo de entrada
           SUM0, SUM1  : out STD_LOGIC;  -- Resultados de la suma (SUM1, SUM0)
           Cout    : out STD_LOGIC   -- Acarreo de salida
         );
end FullAdder_2bits;

architecture Behavioral of FullAdder_2bits is

    -- Definir componentes de un Full Adder de 1 bit
    component FullAdder_1bit is
        Port ( A    : in  STD_LOGIC;
               B    : in  STD_LOGIC;
               Cin  : in  STD_LOGIC;
               S    : out STD_LOGIC;
               Cout : out STD_LOGIC);
    end component;

    -- Señales intermedias para los acarreos
    signal C1 : STD_LOGIC;  -- Acarreo intermedio de la primera suma

begin

    -- Primer sumador de 1 bit (para A0, B0 y Cin)
    FA1: FullAdder_1bit
        Port map (A => A0, 
                  B => B0, 
                  Cin => Cin, 
                  S => SUM0, 
                  Cout => C1);  -- Acarreo intermedio C1

    -- Segundo sumador de 1 bit (para A1, B1 y C1)
    FA2: FullAdder_1bit
        Port map (A => A1, 
                  B => B1, 
                  Cin => C1, 
                  S => SUM1, 
                  Cout => Cout);  -- Acarreo de salida final Cout

end Behavioral;
