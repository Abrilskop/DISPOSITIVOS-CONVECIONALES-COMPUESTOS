library IEEE;
use IEEE.std_logic_1164.all;

-- Definición de la entidad para el testbench
entity full_adder_test is
end entity;

architecture test_arch of full_adder_test is
    component full_adder
        port (A, B, Cin : in std_logic;
              Sum, Cout : out std_logic);
    end component;

    -- Señales internas para la simulación
    signal A, B, Cin : std_logic := '0';  
    signal Sum, Cout : std_logic;

begin
    -- Instancia del componente full_adder
    DUT: full_adder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    -- Proceso de estímulos
    stimulus_process: process
    begin
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        wait;
    end process;
end architecture;
