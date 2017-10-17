library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_relogio is
    Port ( SEL : in  STD_LOGIC_vector (2 downto 0);
           A   : in  STD_LOGIC_VECTOR (3 downto 0);
           B   : in  STD_LOGIC_VECTOR (3 downto 0);
           C   : in  STD_LOGIC_VECTOR (3 downto 0);
           D   : in  STD_LOGIC_VECTOR (3 downto 0);
           E   : in  STD_LOGIC_VECTOR (3 downto 0);
           F   : in  STD_LOGIC_VECTOR (3 downto 0);

			  X   : out STD_LOGIC_VECTOR (3 downto 0)
	 );
end entity;

architecture Behavioral of mux_relogio is
begin

	 process(A,B,C,D,E,F,SEL) is
		 begin
			case SEL is
				
				when "000" => X <= A;
				when "001" => X <= B;
				when "010" => X <= C;
				when "011" => X <= D;
				when "100" => X <= E;
				when "101" => X <= F;
				
			end case;
	end process;
	
end architecture;