library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_HalfAdder is
end TB_HalfAdder;

architecture behavior of TB_HalfAdder is

    -- Declaración del componente para la Unidad Bajo Prueba (UUT)
    component HalfAdder
        Port ( A    : in  STD_LOGIC;
               B    : in  STD_LOGIC;
               Sum  : out STD_LOGIC;
               Cout : out STD_LOGIC );
    end component;

    -- Señales para conectar al UUT
    signal A, B : STD_LOGIC := '0';
    signal Sum, Cout : STD_LOGIC;

begin

    -- Instanciación del HalfAdder
    uut: HalfAdder port map (A => A, B => B, Sum => Sum, Cout => Cout);

    -- Proceso de prueba
    stim_proc: process
    begin
        -- Vector de prueba 1: A=0, B=0
        A <= '0'; B <= '0';
        wait for 10 ns;
        
        -- Vector de prueba 2: A=0, B=1
        A <= '0'; B <= '1';
        wait for 10 ns;
        
        -- Vector de prueba 3: A=1, B=0
        A <= '1'; B <= '0';
        wait for 10 ns;
        
        -- Vector de prueba 4: A=1, B=1
        A <= '1'; B <= '1';
        wait for 10 ns;
        
        -- Fin de la prueba
        wait;
    end process;

end behavior;
