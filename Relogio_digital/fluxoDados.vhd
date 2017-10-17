library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity fluxoDados is
    Port ( 
			
		  -- registrador

		  clk :  in std_logic;
		  eA,eB,eC,eD,eE,eF : in std_logic; -- enables 
		  RegSaidaA,RegSaidaB,RegSaidaC,RegSaidaD,RegSaidaE,RegSaidaF : buffer std_logic_vector (3 downto 0);
		  rstA,rstB,rstC,rstD,rstE,rstF : in std_logic;
		  
		  -- ULA
		  UlaEntrada_B : in std_logic_vector(3 downto 0);
		  funcaoULA    : in std_logic_vector(2 downto 0);
		  Resultado    : out std_logic_vector(3 downto 0);
		  
		  --Mux
		  funcaoMUX : in std_logic_vector(2 downto 0);
		  saidaMUX : buffer std_logic_vector(3 downto 0);
		  
		  --display
        useg_hex, dseg_hex, umin_hex, dmin_hex, uhr_hex, dhr_hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)

	 );
	
end entity;

architecture simples of fluxoDados is
  signal ULA_OUT : std_logic_vector(3 downto 0);
  signal RegA,RegB,RegC,RegD,RegE,RegF : std_logic_vector(3 downto 0);
  signal auxSaidaMux : std_logic_vector(3 downto 0);
   
begin

	 MuxRelogio  		 : entity work.mux_relogio   Port map(SEL => funcaoMUX, A => RegA, B => RegB, C => RegC, D => RegD, E => RegE, F => RegF, X => auxSaidaMUX);

    ULA         		 : entity work.ULA Port map (A => auxSaidaMUX, B => ULAEntrada_B, C => ULA_OUT, Sel => funcaoULA);
    
	 registradorA 		 : entity work.registradorGenerico port map (DIN => ULA_OUT, DOUT => RegA, CLK => clk, RST => rstA, ENABLE => eA);
    registradorB 		 : entity work.registradorGenerico port map (DIN => ULA_OUT, DOUT => RegB, CLK => clk, RST => rstB, ENABLE => eB);
    registradorC 		 : entity work.registradorGenerico port map (DIN => ULA_OUT, DOUT => RegC, CLK => clk, RST => rstC, ENABLE => eC);
    registradorD 		 : entity work.registradorGenerico port map (DIN => ULA_OUT, DOUT => RegD, CLK => clk, RST => rstD, ENABLE => eD);
    registradorE 		 : entity work.registradorGenerico port map (DIN => ULA_OUT, DOUT => RegE, CLK => clk, RST => rstE, ENABLE => eE);
    registradorF 		 : entity work.registradorGenerico port map (DIN => ULA_OUT, DOUT => RegF, CLK => clk, RST => rstF, ENABLE => eF);
    
	 
	 saidaMUX  <= auxSaidaMUX;
	 	 
	 RegSaidaA <= RegA;
	 RegSaidaB <= RegB;
	 RegSaidaC <= RegC;
	 RegSaidaD <= RegD;
	 RegSaidaE <= RegE;
	 RegSaidaF <= RegF;
	 
	 Resultado <= ULA_OUT;
	 
	 	 display0 : work.conversorHEX7Seg
    port map (
        dadoHex => RegA, apaga => '0', negativo => '0', overFlow => '0', saida7seg => useg_hex
    );
	 display1 : work.conversorHEX7Seg
    port map (
        dadoHex => RegB, apaga => '0', negativo => '0', overFlow => '0', saida7seg => dseg_hex
    );
	 display2 : work.conversorHEX7Seg
    port map (
        dadoHex => RegC, apaga => '0', negativo => '0', overFlow => '0', saida7seg => umin_hex
    );
	 display3 : work.conversorHEX7Seg
    port map (
        dadoHex => RegD, apaga => '0', negativo => '0', overFlow => '0', saida7seg => dmin_hex
    );
	 display4 : work.conversorHEX7Seg
    port map (
        dadoHex => RegE, apaga => '0', negativo => '0', overFlow => '0', saida7seg => uhr_hex
    );
	 display5 : work.conversorHEX7Seg
    port map (
        dadoHex =>RegF, apaga => '0', negativo => '0', overFlow => '0', saida7seg => dhr_hex
    );
	 
	 
end architecture;