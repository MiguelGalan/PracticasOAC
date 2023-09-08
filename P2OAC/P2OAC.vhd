library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY P2OAC IS 
PORT( clk, E1, E2:  in std_logic; --DEFINIMOS LAS ENTRADAS DE NUESTRO CARTA ASM.
		S1, S2: out std_logic); --DEFINIMOS LAS SALIDAS DE NUESTRA CARTA ASM
END ENTITY;

ARCHITECTURE Behavioral of P2OAC is
signal div_clk: std_logic; --CORRESPONDE AL DIVISOR DE FRECUENCIAS DEL RELOJ
subtype estados is std_logic_vector (1 downto 0); --DEFIMOS SUBTIPO DE DATO PARA PODER REPRESENTAR LOS ESTADOS MAS ADELANTE
constant edo0 : std_logic_vector (1 downto 0) := B"00"; -- REPRESENTA AL ESTADO 0
constant edo1 : std_logic_vector (1 downto 0) := B"01"; -- REPRESENTA AL ESTADO 1
constant edo2 : std_logic_vector (1 downto 0) := B"10"; -- REPRESENTA AL ESTADO 2
constant edo3 : std_logic_vector (1 downto 0) := B"11"; -- REPRESENTA AL ESTADO 3
signal estado_actual, estado_siguiente: estados; --CORRESPONDE AL ESTADO SIGUIENTE Y AL ESTADO PRESENTE | DATOS DE TIPO ESTADO

begin
	process (clk) --PROCESO QUE CORRESPONDE AL DIVISOR DE FRECUENCIAS 
	variable cuenta: std_logic_vector (27 downto 0):= X"0000000";
	begin

	if rising_edge (clk) then
		if cuenta = 	X"FFFFFFF" then
				cuenta:= X"0000000";
			else
				cuenta:= cuenta+1;
			end if;
	end if;
	div_clk <= cuenta(24); -- 20 SEGUNDOS	
end process;


	process(div_clk) -- DEFINIMOS EL COMPORTAMIENTO DE LA MAQUINA DE ESTADOS.
		begin
			if rising_edge(div_clk) then -- CADA QUE TENGAMOS UN CICLO DE RELOJ ASCENDENTE
					estado_actual <=  estado_siguiente; --EL ESTADO ACTUAL ES EL SIGUIENTE
			end if;
		end process;
		
	process(E1,E2, estado_actual) --DEFINIMOS EL COMPORTAMIENTO EN CADA UNO DE LOS ESTADOS.
	begin

		case (estado_actual) is 
				when edo0=> --CUANDO EL ESTADO ACTUAL ES CERO
					S2 <= '1'; --ENCIENDE LA SALIDA S2
					S1 <= '0';
					if ( E1 = '0') then --REVISAMOS EL VALOR DE LA ENTRADA E1 SI
						estado_siguiente <= edo1; --ES CERO NO NOS IMPORTA EL VALOR DE E2 Y VAMOS DIRECTP AL ESTADO 1
					else
						if ( E2 = '0') then --SI E0 ES DIFERENTE DE 0, NO IMPORTA EL VALOR DE E2
							estado_siguiente <= edo0;--SI E2 ES CERO AVANZA AL ESTADO 0
						else
							estado_siguiente <= edo3;--SI E2 ES UNO AVANZA AL ESTADO 3
						end if;
					end if;
					
			when Edo1=> --CUANDO EL ESTADO ACTUAL ES UNO 
					S2 <='0';--NO ENCIENDAS NINGUNA DE LAS SALIDAS
					S1 <='0';
					if ( E2 = '1') then --REVISAMOS EL VALOR DE LA ENTRADA E2 SI
						estado_siguiente <= edo1;-- ES UNO, NO NOS IMPORTA EL VALOR DE E1, POR LO QUE VAMOS AL ESTADO 1
					else
						estado_siguiente <= edo2;--SINO VAMOS AL ESTADO 2
					end if;
					
				when Edo2=> --CUANDO EL ESTADO ACTUAL ES DOS 
					S2 <= '1'; --ENCIENDE AMBAS SALIDAS 
					S1 <= '1'; 
				   if ( E2 = '1') then --REVISAMOS EL VALOR DE LA ENTRADA E2 SI
						estado_siguiente <= edo3; --NO NOS IMPORTA EL VALOR DE E1, POR LO QUE VAMOS AL ESTADO 2
					else
						if ( E1 = '0') then --SINO REVISAMOS EL VALOR DE E1 SI
							estado_siguiente <= edo2; -- E2 = 0 Y E1 = 0, ENTONCES VAMOS AL ESTADO 2
						else
							estado_siguiente <= edo0; -- E2 = 0 Y E1 = 1, ENTONCES VAMOS AL ESTADO 0
						end if;
					end if;
					
				when edo3=> --CUANDO EL ESTADO ACTUAL ES TRES
					S2 <= '0'; -- NO ENCENDEMOS LA SALIDA S2
					S1 <= '1'; --ENCENDEMOS LA SALIDA S1
					estado_siguiente <= edo0; --NO NOS IMPORTAN LAS ENTRADAS, VAMOS AL ESTADO CERO.

				when others => null;	
				end case;
	end process;
end architecture;				