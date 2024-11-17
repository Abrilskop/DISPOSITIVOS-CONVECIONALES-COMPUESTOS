-- Testbench para FullAdder_2bits.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_FullAdder_2bits is
end entity;

architecture test_arch of TB_FullAdder_2bits is
    -- Componente FullAdder_2bits a probar
    component FullAdder_2bits
        Port ( A0, A1  : in  STD_LOGIC;
               B0, B1  : in  STD_LOGIC;
               Cin     : in  STD_LOGIC;
               SUM0, SUM1  : out STD_LOGIC;
               Cout    : out STD_LOGIC );
    end component;

    -- Señales internas para la simulación
    signal A0, A1, B0, B1 : STD_LOGIC := '0';
    signal Cin : STD_LOGIC := '0';
    signal SUM0, SUM1 : STD_LOGIC;
    signal Cout : STD_LOGIC;

begin
    -- Instancia del DUT (Device Under Test)
    DUT: FullAdder_2bits
        Port map (A0 => A0, A1 => A1, B0 => B0, B1 => B1, Cin => Cin, 
                  SUM0 => SUM0, SUM1 => SUM1, Cout => Cout);

    -- Proceso de estímulos con todos los valores de entrada de la tabla de verdad
    stimulus_process: process
    begin
        -- Primera fila de la tabla de verdad
        Cin <= '0'; A0 <= '0'; B0 <= '0'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '0'; B0 <= '0'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '0'; A0 <= '0'; B0 <= '0'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '0'; B0 <= '0'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        Cin <= '0'; A0 <= '0'; B0 <= '1'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '0'; B0 <= '1'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '0'; A0 <= '0'; B0 <= '1'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '0'; B0 <= '1'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '0'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '0'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '0'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '0'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '1'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '1'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '1'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '0'; A0 <= '1'; B0 <= '1'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '0'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '0'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '0'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '0'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '1'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '1'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '1'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '0'; B0 <= '1'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '0'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '0'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '0'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '0'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '1'; A1 <= '0'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '1'; A1 <= '0'; B1 <= '1'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '1'; A1 <= '1'; B1 <= '0'; wait for 10 ns;

        Cin <= '1'; A0 <= '1'; B0 <= '1'; A1 <= '1'; B1 <= '1'; wait for 10 ns;

        wait;
    end process;
end architecture;
