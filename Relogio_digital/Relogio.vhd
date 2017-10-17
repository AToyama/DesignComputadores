library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity Relogio is
port (

		CLOCK_50 : in std_logic;


		-- Saidas da placa (nomenclatura definida no arquivo ¨.qsf¨)
      LEDR : out STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
      LEDG : out STD_LOGIC_VECTOR(8 DOWNTO 0)  := (others => '0');
      HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: OUT STD_LOGIC_VECTOR(6 downto 0);
		KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW: in STD_LOGIC_VECTOR(17 DOWNTO 0)
     
  );
end entity;


architecture comportamento of Relogio is

	COMPONENT SM is
        PORT (
            reset       :    IN STD_LOGIC;
            clock       :    IN STD_LOGIC;
            bt1     :    IN STD_LOGIC;
            bt2     :    IN STD_LOGIC;
            bt3     :    IN STD_LOGIC;
            saida   :    OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
  

  -- registradores
  signal auxRegSaidaA : std_logic_vector(3 downto 0) :="0000"; 
  signal auxRegSaidaB : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaC : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaD : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaE : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaF : std_logic_vector(3 downto 0) :="0000";
    
  --enables
  signal auxeB,auxeC,auxeD,auxeE,auxeF : std_logic := '0';
  signal auxeA : std_logic := '1';
  
  -- clock control
  signal count : integer :=1;
  signal auxClock : std_logic := '0';
  signal auxResetA : std_logic := '0';
  signal auxResetB : std_logic := '0';
  signal auxResetC : std_logic := '0';
  signal auxResetD : std_logic := '0';
  signal auxResetE : std_logic := '0';
  signal auxResetF : std_logic := '0';

  
  -- ULA
  constant auxUlaB : std_logic_vector(3 downto 0) := "0001";
  signal auxSaida : std_logic_vector(3 downto 0) := (others => '0');
  signal auxFuncaoULA : std_logic_vector(2 downto 0) := (others => '0');

  
  --MUX
  signal auxsaidaMUX : std_logic_vector(3 downto 0) := (others => '0');
  signal auxFuncaoMUX : std_logic_vector(2 downto 0) := (others => '0');
  
  signal useg_out,dseg_out,umin_out,dmin_out,uhr_out,dhr_out 	: std_logic_vector (6 downto 0);
  
  signal state: std_logic_vector(3 downto 0);
  
  signal set,set1: std_logic := '0';
  
  signal add1,auxReset_mq, auxBt1, auxBt2, auxBt3, auxBt1n : std_logic;
  
  signal compare_clk: integer :=25000000;

  signal last_State: std_logic;


begin

maqEstados : SM
	port map (
		reset   => auxReset_mq, clock => CLOCK_50, bt1 => auxBt1, bt2 => auxBt2, bt3 => auxBt3,
		saida  => state
);
	
  -- Instancia o fluxo de dados mais simples:
  FD : entity work.fluxoDados
    Port map (
      UlaEntrada_B => auxUlaB,
		funcaoULA 	 => auxFuncaoULA, 
		funcaoMUX 	 => auxFuncaoMUX,
      clk	    	 => auxClock, 
		rstA	    	 => auxResetA,
	   rstB	    	 => auxResetB,
		rstC	    	 => auxResetC,
		rstD	    	 => auxResetD,
		rstE	    	 => auxResetE,
		rstF	    	 => auxResetF,
      Resultado    => auxSaida, 
		eA			 	 => auxeA, 
		eB 			 => auxeB, 
		eC 			 => auxeC,
		eD 		 	 => auxeD,
		eE 			 => auxeE, 
		eF 			 => auxeF, 
		RegSaidaA 	 => auxRegSaidaA,
		RegSaidaB 	 => auxRegSaidaB, 
		RegSaidaC 	 => auxRegSaidaC, 
		RegSaidaD 	 => auxRegSaidaD,
		RegSaidaE 	 => auxRegSaidaE,
		RegSaidaF 	 => auxRegSaidaF, 
		saidaMUX  	 => auxsaidaMUX,
		useg_hex 	 => useg_out,
		dseg_hex 	 => dseg_out,
		umin_hex 	 => umin_out,
		dmin_hex 	 => dmin_out,
		uhr_hex 		 => uhr_out,
		dhr_hex 		 => dhr_out	
    );
	 
detectorSub0: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => auxReset_mq);
detectorSub1: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => auxBt1);
detectorSub2: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(2)), saida => auxBt2);
detectorSub3: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => auxBt3);

LEDG(0) <= not KEY(0);
LEDG(1) <= not KEY(1);
LEDG(2) <= not KEY(2);
LEDG(3) <= not KEY(3);


process(CLOCK_50)
	begin
		if(CLOCK_50'event and CLOCK_50='1') then
			count <= count+1;
			
				
			if(count = compare_clk) then
				auxClock <= not auxClock;
				count <= 1;
			
			end if;
		end if;	
end process;

process(auxClock)
	begin
		if(rising_edge(CLOCK_50)) then
			last_state <= KEY(3);
		end if;
end process;
	

process(auxClock)   --period of clk is 1 second.
	begin
	

		if(auxClock'event and auxClock='1') then
			
			auxResetA <= '0';
			auxResetB <= '0';
			auxResetC <= '0';
			auxResetD <= '0';
			auxResetE <= '0';
			auxResetF <= '0';
				
			auxeB <= '0';
			auxeC <= '0';
			auxeD <= '0';
			auxeE <= '0';
			auxeF <= '0';
			
			
			auxFuncaoMUX 	<= "000";
			
			auxFuncaoULA 	<= "001";   --soma
			
			
			if(auxRegSaidaA = "1001") then

				auxResetA <= '1';
				
				auxeB <= '1';
				auxFuncaoMUX <= "001";
				auxFuncaoULA <= "001";
				

				
				
				if(auxRegSaidaB = "0101") then
					
					auxResetB <= '1';
					
					auxeC <= '1';
					auxFuncaoMUX <= "010";
					auxFuncaoULA <= "001";
							
					
					if(auxRegSaidaC = "1001") then
						
						auxResetC <= '1';
						
						auxeD <= '1';
						auxFuncaoMUX <= "011";
						auxFuncaoULA <= "001";
												
						
						if(auxRegSaidaD = "0101") then
							
							auxResetD <= '1';
							
							auxeE <= '1';
							auxFuncaoMUX <= "100";
							auxFuncaoULA <= "001";
							
							
							if(auxRegSaidaE = "1001") then
								
								auxResetE <= '1';
								
								auxeF <= '1';
								auxFuncaoMUX <= "101";
								auxFuncaoULA <= "001";
								
								
								if (auxRegSaidaF = "0010" and auxRegSaidaE = "0011") then
									
									auxResetA <= '1';
									auxResetB <= '1';
									auxResetC <= '1';
									auxResetD <= '1';
									auxResetE <= '1';
									auxResetF <= '1';

							
								end if;
							end if;
						end if;
				end if;
			end if;
		end if;
		case state is
				when "0001" => compare_clk <= 25000000/96;
				when "0010" => set <= '1' ;
				when others => compare_clk <= 25000000;
		end case;
		
	
			if(KEY(3) = '0') then
				if(SW(0) = '1') then
					auxeA <= '1';
					auxFuncaoMUX 	<= "000";
					auxFuncaoULA 	<= "001";
				end if;
				if(SW(1) = '0') then
					auxeB <= '1';
					auxFuncaoMUX 	<= "001";
					auxFuncaoULA 	<= "001";
				end if;
				if(SW(2) = '0') then
					auxeC <= '1';
					auxFuncaoMUX 	<= "010";
					auxFuncaoULA 	<= "001";
				end if;
				if(SW(3) = '0') then
					auxeD <= '1';
					auxFuncaoMUX 	<= "011";
					auxFuncaoULA 	<= "001";
				end if;
				if(SW(4) = '0') then
					auxeE <= '1';
					auxFuncaoMUX 	<= "100";
					auxFuncaoULA 	<= "001";
				end if;
				if(SW(5) = '0') then
					auxeF <= '1';
					auxFuncaoMUX 	<= "101";
					auxFuncaoULA 	<= "001";
				end if;
					
		end if;
	end if;

end process;

LEDR(0) <= '0';

HEX0 <= useg_out;
HEX1 <= dseg_out;
HEX4 <= umin_out;
HEX5 <= dmin_out;
HEX6 <= uhr_out;
HEX7 <= dhr_out;

HEX2 <= "1111111";
HEX3 <= "1111111";

end architecture;