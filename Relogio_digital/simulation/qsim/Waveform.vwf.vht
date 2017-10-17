-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/09/2017 15:14:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Relogio
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Relogio_vhd_vec_tst IS
END Relogio_vhd_vec_tst;
ARCHITECTURE Relogio_arch OF Relogio_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk1 : STD_LOGIC;
SIGNAL hours_d : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hours_u : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL minutes_d : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL minutes_u : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seconds_d : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seconds_u : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Relogio
	PORT (
	clk1 : IN STD_LOGIC;
	hours_d : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	hours_u : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	minutes_d : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	minutes_u : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seconds_d : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seconds_u : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Relogio
	PORT MAP (
-- list connections between master ports and signals
	clk1 => clk1,
	hours_d => hours_d,
	hours_u => hours_u,
	minutes_d => minutes_d,
	minutes_u => minutes_u,
	seconds_d => seconds_d,
	seconds_u => seconds_u
	);

-- clk1
t_prcs_clk1: PROCESS
BEGIN
LOOP
	clk1 <= '0';
	WAIT FOR 10000 ps;
	clk1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk1;
END Relogio_arch;
