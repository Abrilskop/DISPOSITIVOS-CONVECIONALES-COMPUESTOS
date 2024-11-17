library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_FullAdder is
end TB_FullAdder;

architecture behavior of TB_FullAdder is

    -- Declaración del componente bajo prueba (UUT: Unidad Bajo Prueba)
    component FullAdder
        Port ( A    : in  STD_LOGIC;  -- Primer bit de entrada
               B    : in  STD_LOGIC;  -- Segundo bit de entrada
               Cin  : in  STD_LOGIC;  -- Acarreo de entrada
               Sum  : out STD_LOGIC;  -- Resultado de la suma
               Cout : out STD_LOGIC   -- Acarreo de salida
               );
    end component;

    -- Señales para conectar al componente bajo prueba (UUT)
    signal A, B, Cin : STD_LOGIC := '0';  -- Entradas inicializadas en 0
    signal Sum, Cout : STD_LOGIC;         -- Salidas del Full Adder

begin

    -- Instanciación del Full Adder
    uut: FullAdder port map (A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout);

    -- Proceso de prueba (generación de vectores de prueba)
    stim_proc: process
    begin
        -- Vectores de prueba según la tabla de verdad

        A <= '0'; B <= '0'; Cin <= '0';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        A <= '0'; B <= '1'; Cin <= '0';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        A <= '1'; B <= '0'; Cin <= '0';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        A <= '1'; B <= '1'; Cin <= '0';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        A <= '0'; B <= '0'; Cin <= '1';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        A <= '0'; B <= '1'; Cin <= '1';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        A <= '1'; B <= '0'; Cin <= '1';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        A <= '1'; B <= '1'; Cin <= '1';  -- Establece las entradas
        wait for 10 ns;  -- Espera 10 ns

        -- Fin de la prueba
        wait;  -- El proceso espera indefinidamente al finalizar las pruebas
    end process;

end behavior;
