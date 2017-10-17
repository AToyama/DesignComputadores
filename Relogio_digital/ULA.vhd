LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ULA IS
	PORT (
		 Sel : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		 A, B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		 C : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END ULA;

ARCHITECTURE comportamento OF ULA IS
	BEGIN
		PROCESS (Sel, A, B)
			BEGIN
				CASE Sel IS
					 WHEN "000" => C <= "0000";
					 WHEN "001" => C <= A + B;
					 WHEN "010" => C <= A - B;
					 WHEN "011" => C <= A or B;
					 WHEN "100" => C <= A and B;
					 WHEN "101" => C <= A xor B;
					 WHEN "110" => C <= not(A);
					 WHEN OTHERS => C <= "1111";
				END CASE;
END PROCESS;
END comportamento;