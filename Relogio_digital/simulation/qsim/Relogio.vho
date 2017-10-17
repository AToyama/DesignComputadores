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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/10/2017 14:05:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Relogio IS
    PORT (
	clk1 : IN std_logic;
	seconds_u : BUFFER std_logic_vector(3 DOWNTO 0);
	minutes_u : BUFFER std_logic_vector(3 DOWNTO 0);
	hours_u : BUFFER std_logic_vector(3 DOWNTO 0);
	seconds_d : BUFFER std_logic_vector(3 DOWNTO 0);
	minutes_d : BUFFER std_logic_vector(3 DOWNTO 0);
	hours_d : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Relogio;

-- Design Ports Information
-- seconds_u[0]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seconds_u[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seconds_u[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seconds_u[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_u[0]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_u[1]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_u[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_u[3]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_u[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_u[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_u[2]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_u[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seconds_d[0]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seconds_d[1]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seconds_d[2]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seconds_d[3]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_d[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_d[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_d[2]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutes_d[3]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_d[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_d[1]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_d[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hours_d[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_seconds_u : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_minutes_u : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hours_u : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seconds_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_minutes_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hours_d : std_logic_vector(3 DOWNTO 0);
SIGNAL \auxClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seconds_u[0]~output_o\ : std_logic;
SIGNAL \seconds_u[1]~output_o\ : std_logic;
SIGNAL \seconds_u[2]~output_o\ : std_logic;
SIGNAL \seconds_u[3]~output_o\ : std_logic;
SIGNAL \minutes_u[0]~output_o\ : std_logic;
SIGNAL \minutes_u[1]~output_o\ : std_logic;
SIGNAL \minutes_u[2]~output_o\ : std_logic;
SIGNAL \minutes_u[3]~output_o\ : std_logic;
SIGNAL \hours_u[0]~output_o\ : std_logic;
SIGNAL \hours_u[1]~output_o\ : std_logic;
SIGNAL \hours_u[2]~output_o\ : std_logic;
SIGNAL \hours_u[3]~output_o\ : std_logic;
SIGNAL \seconds_d[0]~output_o\ : std_logic;
SIGNAL \seconds_d[1]~output_o\ : std_logic;
SIGNAL \seconds_d[2]~output_o\ : std_logic;
SIGNAL \seconds_d[3]~output_o\ : std_logic;
SIGNAL \minutes_d[0]~output_o\ : std_logic;
SIGNAL \minutes_d[1]~output_o\ : std_logic;
SIGNAL \minutes_d[2]~output_o\ : std_logic;
SIGNAL \minutes_d[3]~output_o\ : std_logic;
SIGNAL \hours_d[0]~output_o\ : std_logic;
SIGNAL \hours_d[1]~output_o\ : std_logic;
SIGNAL \hours_d[2]~output_o\ : std_logic;
SIGNAL \hours_d[3]~output_o\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \auxClock~0_combout\ : std_logic;
SIGNAL \auxClock~feeder_combout\ : std_logic;
SIGNAL \auxClock~q\ : std_logic;
SIGNAL \auxClock~clkctrl_outclk\ : std_logic;
SIGNAL \auxFuncaoULA[0]~feeder_combout\ : std_logic;
SIGNAL \FD|registradorE|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \FD|registradorD|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \FD|registradorC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \FD|registradorA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \auxResetA~feeder_combout\ : std_logic;
SIGNAL \auxResetA~q\ : std_logic;
SIGNAL \FD|registradorA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \auxFuncaoMUX~2_combout\ : std_logic;
SIGNAL \auxFuncaoMUX~4_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux1~0_combout\ : std_logic;
SIGNAL \FD|registradorD|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \FD|registradorC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \FD|registradorB|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux1~1_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux1~2_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux1~3_combout\ : std_logic;
SIGNAL \FD|registradorE|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux3~2_combout\ : std_logic;
SIGNAL \FD|registradorC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \FD|registradorB|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux3~0_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux3~1_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux3~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~0_combout\ : std_logic;
SIGNAL \FD|registradorA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \auxFuncaoMUX[1]~6_combout\ : std_logic;
SIGNAL \auxResetB~q\ : std_logic;
SIGNAL \FD|registradorC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \auxFuncaoMUX[1]~0_combout\ : std_logic;
SIGNAL \auxFuncaoMUX[1]~5_combout\ : std_logic;
SIGNAL \auxResetC~q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \auxFuncaoMUX~1_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux0~0_combout\ : std_logic;
SIGNAL \FD|registradorB|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux0~1_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux0~2_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux0~3_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux2~1_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux2~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~0_combout\ : std_logic;
SIGNAL \auxFuncaoMUX~3_combout\ : std_logic;
SIGNAL \auxFuncaoMUX~7_combout\ : std_logic;
SIGNAL \auxResetE~q\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux2~0_combout\ : std_logic;
SIGNAL \FD|MuxRelogio|Mux2~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~0_combout\ : std_logic;
SIGNAL \FD|registradorB|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \auxResetD~0_combout\ : std_logic;
SIGNAL \auxResetD~feeder_combout\ : std_logic;
SIGNAL \auxResetD~q\ : std_logic;
SIGNAL \FD|ULA|Mux3~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|registradorA|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|registradorC|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL auxFuncaoMUX : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|registradorE|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|registradorB|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|registradorD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL auxFuncaoULA : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|registradorF|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_auxResetE~q\ : std_logic;
SIGNAL \ALT_INV_auxResetB~q\ : std_logic;
SIGNAL \ALT_INV_auxResetC~q\ : std_logic;
SIGNAL \ALT_INV_auxResetA~q\ : std_logic;
SIGNAL \ALT_INV_auxResetD~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk1 <= clk1;
seconds_u <= ww_seconds_u;
minutes_u <= ww_minutes_u;
hours_u <= ww_hours_u;
seconds_d <= ww_seconds_d;
minutes_d <= ww_minutes_d;
hours_d <= ww_hours_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\auxClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \auxClock~q\);

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);
\ALT_INV_auxResetE~q\ <= NOT \auxResetE~q\;
\ALT_INV_auxResetB~q\ <= NOT \auxResetB~q\;
\ALT_INV_auxResetC~q\ <= NOT \auxResetC~q\;
\ALT_INV_auxResetA~q\ <= NOT \auxResetA~q\;
\ALT_INV_auxResetD~q\ <= NOT \auxResetD~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X27_Y0_N23
\seconds_u[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorA|DOUT\(0),
	devoe => ww_devoe,
	o => \seconds_u[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\seconds_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorA|DOUT\(1),
	devoe => ww_devoe,
	o => \seconds_u[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\seconds_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorA|DOUT\(2),
	devoe => ww_devoe,
	o => \seconds_u[2]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\seconds_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorA|DOUT\(3),
	devoe => ww_devoe,
	o => \seconds_u[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\minutes_u[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorC|DOUT\(0),
	devoe => ww_devoe,
	o => \minutes_u[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\minutes_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorC|DOUT\(1),
	devoe => ww_devoe,
	o => \minutes_u[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\minutes_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorC|DOUT\(2),
	devoe => ww_devoe,
	o => \minutes_u[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\minutes_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorC|DOUT\(3),
	devoe => ww_devoe,
	o => \minutes_u[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\hours_u[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorE|DOUT\(0),
	devoe => ww_devoe,
	o => \hours_u[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\hours_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorE|DOUT\(1),
	devoe => ww_devoe,
	o => \hours_u[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\hours_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorE|DOUT\(2),
	devoe => ww_devoe,
	o => \hours_u[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\hours_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorE|DOUT\(3),
	devoe => ww_devoe,
	o => \hours_u[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\seconds_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorB|DOUT\(0),
	devoe => ww_devoe,
	o => \seconds_d[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\seconds_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorB|DOUT\(1),
	devoe => ww_devoe,
	o => \seconds_d[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\seconds_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorB|DOUT\(2),
	devoe => ww_devoe,
	o => \seconds_d[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\seconds_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorB|DOUT\(3),
	devoe => ww_devoe,
	o => \seconds_d[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\minutes_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorD|DOUT\(0),
	devoe => ww_devoe,
	o => \minutes_d[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\minutes_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorD|DOUT\(1),
	devoe => ww_devoe,
	o => \minutes_d[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\minutes_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorD|DOUT\(2),
	devoe => ww_devoe,
	o => \minutes_d[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\minutes_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorD|DOUT\(3),
	devoe => ww_devoe,
	o => \minutes_d[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\hours_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorF|DOUT\(0),
	devoe => ww_devoe,
	o => \hours_d[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\hours_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorF|DOUT\(1),
	devoe => ww_devoe,
	o => \hours_d[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\hours_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorF|DOUT\(2),
	devoe => ww_devoe,
	o => \hours_d[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\hours_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|registradorF|DOUT\(3),
	devoe => ww_devoe,
	o => \hours_d[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G2
\clk1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y72_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X54_Y72_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X54_Y72_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X54_Y72_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X54_Y72_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X54_Y72_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X54_Y72_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X54_Y72_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X54_Y72_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X54_Y72_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X54_Y72_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X54_Y72_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X54_Y72_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X54_Y72_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X54_Y72_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X54_Y72_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X54_Y72_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X54_Y71_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X54_Y71_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X54_Y71_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X54_Y71_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X54_Y71_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X54_Y71_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X54_Y71_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X54_Y71_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X54_Y71_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X54_Y71_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X54_Y71_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X54_Y71_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X54_Y71_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X54_Y71_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X54_Y71_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X54_Y71_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X55_Y71_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(21) & (!count(22) & (!count(20) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => count(20),
	datad => count(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X54_Y71_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X54_Y71_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X54_Y71_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X54_Y71_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X54_Y71_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X54_Y71_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X54_Y71_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X54_Y71_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X54_Y71_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X54_Y71_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X54_Y71_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X54_Y71_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X54_Y71_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X54_Y71_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X54_Y71_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X54_Y71_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X55_Y71_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(29) & (!count(31) & (!count(30) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(31),
	datac => count(30),
	datad => count(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X55_Y71_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(24) & (!count(25) & (!count(26) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(25),
	datac => count(26),
	datad => count(27),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X55_Y71_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(16) & (!count(18) & (!count(19) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(18),
	datac => count(19),
	datad => count(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X55_Y71_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~8_combout\ & (\Equal0~7_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X54_Y72_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (GND)
-- \Add0~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X55_Y72_N8
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (!\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~2_combout\);

-- Location: FF_X54_Y72_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X54_Y72_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X55_Y72_N12
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~2_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~9_combout\,
	datad => \Add0~2_combout\,
	combout => \count~1_combout\);

-- Location: FF_X54_Y72_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \count~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X54_Y72_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X55_Y72_N20
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~4_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Add0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \count~0_combout\);

-- Location: FF_X54_Y72_N1
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X54_Y72_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X54_Y72_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X54_Y72_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X54_Y72_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X54_Y72_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X54_Y72_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X54_Y72_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X54_Y72_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X54_Y72_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X55_Y72_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(7) & (!count(4) & (!count(5) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(4),
	datac => count(5),
	datad => count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X55_Y72_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(8) & (!count(10) & (!count(9) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(10),
	datac => count(9),
	datad => count(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X55_Y72_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(13) & (!count(14) & (!count(15) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => count(15),
	datad => count(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X55_Y72_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(0) & (!count(3) & (!count(1) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(3),
	datac => count(1),
	datad => count(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X55_Y72_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X55_Y72_N24
\auxClock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxClock~0_combout\ = \auxClock~q\ $ (((\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \auxClock~q\,
	datad => \Equal0~9_combout\,
	combout => \auxClock~0_combout\);

-- Location: LCCOMB_X55_Y72_N4
\auxClock~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxClock~feeder_combout\ = \auxClock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxClock~0_combout\,
	combout => \auxClock~feeder_combout\);

-- Location: FF_X55_Y72_N5
auxClock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \auxClock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxClock~q\);

-- Location: CLKCTRL_G12
\auxClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auxClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auxClock~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y2_N8
\auxFuncaoULA[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoULA[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auxFuncaoULA[0]~feeder_combout\);

-- Location: FF_X18_Y2_N9
\auxFuncaoULA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxFuncaoULA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => auxFuncaoULA(0));

-- Location: LCCOMB_X19_Y2_N6
\FD|registradorE|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorE|DOUT[1]~feeder_combout\ = \FD|ULA|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|registradorE|DOUT[1]~feeder_combout\);

-- Location: FF_X19_Y2_N27
\FD|registradorF|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|ULA|Mux0~0_combout\,
	ena => \auxResetE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorF|DOUT\(3));

-- Location: LCCOMB_X20_Y2_N30
\FD|registradorD|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorD|DOUT[1]~feeder_combout\ = \FD|ULA|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|registradorD|DOUT[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y2_N10
\FD|registradorC|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorC|DOUT[1]~feeder_combout\ = \FD|ULA|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|registradorC|DOUT[1]~feeder_combout\);

-- Location: LCCOMB_X20_Y2_N26
\FD|registradorA|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorA|DOUT[1]~feeder_combout\ = \FD|ULA|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|registradorA|DOUT[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y2_N22
\auxResetA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxResetA~feeder_combout\ = \Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~0_combout\,
	combout => \auxResetA~feeder_combout\);

-- Location: FF_X21_Y2_N23
auxResetA : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxResetA~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxResetA~q\);

-- Location: FF_X20_Y2_N27
\FD|registradorA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorA|DOUT[1]~feeder_combout\,
	clrn => \ALT_INV_auxResetA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorA|DOUT\(1));

-- Location: LCCOMB_X20_Y2_N14
\FD|registradorA|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorA|DOUT[3]~feeder_combout\ = \FD|ULA|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Mux0~0_combout\,
	combout => \FD|registradorA|DOUT[3]~feeder_combout\);

-- Location: FF_X20_Y2_N15
\FD|registradorA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorA|DOUT[3]~feeder_combout\,
	clrn => \ALT_INV_auxResetA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorA|DOUT\(3));

-- Location: LCCOMB_X21_Y2_N26
\auxFuncaoMUX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX~2_combout\ = (\Equal1~0_combout\ & (((!\Equal4~0_combout\ & \auxFuncaoMUX[1]~0_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \auxFuncaoMUX[1]~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \auxFuncaoMUX~2_combout\);

-- Location: LCCOMB_X21_Y2_N12
\auxFuncaoMUX~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX~4_combout\ = (\auxFuncaoMUX~2_combout\) # ((\auxFuncaoMUX~3_combout\ & \auxResetD~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxFuncaoMUX~2_combout\,
	datac => \auxFuncaoMUX~3_combout\,
	datad => \auxResetD~0_combout\,
	combout => \auxFuncaoMUX~4_combout\);

-- Location: FF_X21_Y2_N13
\auxFuncaoMUX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxFuncaoMUX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => auxFuncaoMUX(0));

-- Location: FF_X19_Y2_N21
\FD|registradorF|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|ULA|Mux1~0_combout\,
	ena => \auxResetE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorF|DOUT\(2));

-- Location: FF_X19_Y2_N1
\FD|registradorE|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	asdata => \FD|ULA|Mux1~0_combout\,
	clrn => \ALT_INV_auxResetE~q\,
	sload => VCC,
	ena => \auxResetD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorE|DOUT\(2));

-- Location: LCCOMB_X19_Y2_N16
\FD|MuxRelogio|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux1~0_combout\ = (auxFuncaoMUX(1)) # ((auxFuncaoMUX(0) & (\FD|registradorF|DOUT\(2))) # (!auxFuncaoMUX(0) & ((\FD|registradorE|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoMUX(0),
	datab => \FD|registradorF|DOUT\(2),
	datac => auxFuncaoMUX(1),
	datad => \FD|registradorE|DOUT\(2),
	combout => \FD|MuxRelogio|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y2_N16
\FD|registradorD|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorD|DOUT[2]~feeder_combout\ = \FD|ULA|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux1~0_combout\,
	combout => \FD|registradorD|DOUT[2]~feeder_combout\);

-- Location: FF_X20_Y2_N17
\FD|registradorD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorD|DOUT[2]~feeder_combout\,
	clrn => \ALT_INV_auxResetD~q\,
	ena => \auxResetC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorD|DOUT\(2));

-- Location: LCCOMB_X21_Y2_N24
\FD|registradorC|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorC|DOUT[2]~feeder_combout\ = \FD|ULA|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux1~0_combout\,
	combout => \FD|registradorC|DOUT[2]~feeder_combout\);

-- Location: FF_X21_Y2_N25
\FD|registradorC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorC|DOUT[2]~feeder_combout\,
	clrn => \ALT_INV_auxResetC~q\,
	ena => \auxResetB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorC|DOUT\(2));

-- Location: LCCOMB_X18_Y2_N16
\FD|registradorB|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorB|DOUT[2]~feeder_combout\ = \FD|ULA|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Mux1~0_combout\,
	combout => \FD|registradorB|DOUT[2]~feeder_combout\);

-- Location: FF_X18_Y2_N17
\FD|registradorB|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorB|DOUT[2]~feeder_combout\,
	clrn => \ALT_INV_auxResetB~q\,
	ena => \auxResetA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorB|DOUT\(2));

-- Location: LCCOMB_X20_Y2_N28
\FD|MuxRelogio|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux1~1_combout\ = (auxFuncaoMUX(1) & (((auxFuncaoMUX(0))))) # (!auxFuncaoMUX(1) & ((auxFuncaoMUX(0) & ((\FD|registradorB|DOUT\(2)))) # (!auxFuncaoMUX(0) & (\FD|registradorA|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoMUX(1),
	datab => \FD|registradorA|DOUT\(2),
	datac => auxFuncaoMUX(0),
	datad => \FD|registradorB|DOUT\(2),
	combout => \FD|MuxRelogio|Mux1~1_combout\);

-- Location: LCCOMB_X20_Y2_N18
\FD|MuxRelogio|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux1~2_combout\ = (auxFuncaoMUX(1) & ((\FD|MuxRelogio|Mux1~1_combout\ & (\FD|registradorD|DOUT\(2))) # (!\FD|MuxRelogio|Mux1~1_combout\ & ((\FD|registradorC|DOUT\(2)))))) # (!auxFuncaoMUX(1) & (((\FD|MuxRelogio|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoMUX(1),
	datab => \FD|registradorD|DOUT\(2),
	datac => \FD|registradorC|DOUT\(2),
	datad => \FD|MuxRelogio|Mux1~1_combout\,
	combout => \FD|MuxRelogio|Mux1~2_combout\);

-- Location: LCCOMB_X20_Y2_N20
\FD|MuxRelogio|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux1~3_combout\ = (\auxResetD~q\ & (\FD|MuxRelogio|Mux1~0_combout\)) # (!\auxResetD~q\ & ((\FD|MuxRelogio|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxResetD~q\,
	datac => \FD|MuxRelogio|Mux1~0_combout\,
	datad => \FD|MuxRelogio|Mux1~2_combout\,
	combout => \FD|MuxRelogio|Mux1~3_combout\);

-- Location: FF_X19_Y2_N13
\FD|registradorF|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|ULA|Mux3~0_combout\,
	ena => \auxResetE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorF|DOUT\(0));

-- Location: LCCOMB_X19_Y2_N28
\FD|registradorE|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorE|DOUT[0]~feeder_combout\ = \FD|ULA|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux3~0_combout\,
	combout => \FD|registradorE|DOUT[0]~feeder_combout\);

-- Location: FF_X19_Y2_N29
\FD|registradorE|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorE|DOUT[0]~feeder_combout\,
	clrn => \ALT_INV_auxResetE~q\,
	ena => \auxResetD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorE|DOUT\(0));

-- Location: LCCOMB_X19_Y2_N4
\FD|MuxRelogio|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux3~2_combout\ = (auxFuncaoMUX(1)) # ((auxFuncaoMUX(0) & (\FD|registradorF|DOUT\(0))) # (!auxFuncaoMUX(0) & ((\FD|registradorE|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorF|DOUT\(0),
	datab => \FD|registradorE|DOUT\(0),
	datac => auxFuncaoMUX(1),
	datad => auxFuncaoMUX(0),
	combout => \FD|MuxRelogio|Mux3~2_combout\);

-- Location: FF_X20_Y2_N5
\FD|registradorD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	asdata => \FD|ULA|Mux3~0_combout\,
	clrn => \ALT_INV_auxResetD~q\,
	sload => VCC,
	ena => \auxResetC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorD|DOUT\(0));

-- Location: LCCOMB_X21_Y2_N16
\FD|registradorC|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorC|DOUT[0]~feeder_combout\ = \FD|ULA|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux3~0_combout\,
	combout => \FD|registradorC|DOUT[0]~feeder_combout\);

-- Location: FF_X21_Y2_N17
\FD|registradorC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorC|DOUT[0]~feeder_combout\,
	clrn => \ALT_INV_auxResetC~q\,
	ena => \auxResetB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorC|DOUT\(0));

-- Location: LCCOMB_X18_Y2_N28
\FD|registradorB|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorB|DOUT[0]~feeder_combout\ = \FD|ULA|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Mux3~0_combout\,
	combout => \FD|registradorB|DOUT[0]~feeder_combout\);

-- Location: FF_X18_Y2_N29
\FD|registradorB|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorB|DOUT[0]~feeder_combout\,
	clrn => \ALT_INV_auxResetB~q\,
	ena => \auxResetA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorB|DOUT\(0));

-- Location: LCCOMB_X20_Y2_N12
\FD|MuxRelogio|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux3~0_combout\ = (auxFuncaoMUX(1) & (((auxFuncaoMUX(0))))) # (!auxFuncaoMUX(1) & ((auxFuncaoMUX(0) & ((\FD|registradorB|DOUT\(0)))) # (!auxFuncaoMUX(0) & (\FD|registradorA|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoMUX(1),
	datab => \FD|registradorA|DOUT\(0),
	datac => auxFuncaoMUX(0),
	datad => \FD|registradorB|DOUT\(0),
	combout => \FD|MuxRelogio|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y2_N22
\FD|MuxRelogio|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux3~1_combout\ = (auxFuncaoMUX(1) & ((\FD|MuxRelogio|Mux3~0_combout\ & (\FD|registradorD|DOUT\(0))) # (!\FD|MuxRelogio|Mux3~0_combout\ & ((\FD|registradorC|DOUT\(0)))))) # (!auxFuncaoMUX(1) & (((\FD|MuxRelogio|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoMUX(1),
	datab => \FD|registradorD|DOUT\(0),
	datac => \FD|registradorC|DOUT\(0),
	datad => \FD|MuxRelogio|Mux3~0_combout\,
	combout => \FD|MuxRelogio|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y2_N10
\FD|MuxRelogio|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux3~3_combout\ = (\auxResetD~q\ & (\FD|MuxRelogio|Mux3~2_combout\)) # (!\auxResetD~q\ & ((\FD|MuxRelogio|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxResetD~q\,
	datac => \FD|MuxRelogio|Mux3~2_combout\,
	datad => \FD|MuxRelogio|Mux3~1_combout\,
	combout => \FD|MuxRelogio|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y2_N20
\FD|ULA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~0_combout\ = (auxFuncaoULA(0) & (\FD|MuxRelogio|Mux1~3_combout\ $ (((\FD|MuxRelogio|Mux2~3_combout\ & \FD|MuxRelogio|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxRelogio|Mux2~3_combout\,
	datab => auxFuncaoULA(0),
	datac => \FD|MuxRelogio|Mux1~3_combout\,
	datad => \FD|MuxRelogio|Mux3~3_combout\,
	combout => \FD|ULA|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y2_N0
\FD|registradorA|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorA|DOUT[2]~feeder_combout\ = \FD|ULA|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux1~0_combout\,
	combout => \FD|registradorA|DOUT[2]~feeder_combout\);

-- Location: FF_X20_Y2_N1
\FD|registradorA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorA|DOUT[2]~feeder_combout\,
	clrn => \ALT_INV_auxResetA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorA|DOUT\(2));

-- Location: LCCOMB_X20_Y2_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\FD|registradorA|DOUT\(1) & (\FD|registradorA|DOUT\(3) & (\FD|registradorA|DOUT\(0) & !\FD|registradorA|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorA|DOUT\(1),
	datab => \FD|registradorA|DOUT\(3),
	datac => \FD|registradorA|DOUT\(0),
	datad => \FD|registradorA|DOUT\(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X18_Y2_N2
\auxFuncaoMUX[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX[1]~6_combout\ = (\Equal2~0_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \auxFuncaoMUX[1]~6_combout\);

-- Location: FF_X18_Y2_N3
auxResetB : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxFuncaoMUX[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxResetB~q\);

-- Location: FF_X21_Y2_N11
\FD|registradorC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorC|DOUT[1]~feeder_combout\,
	clrn => \ALT_INV_auxResetC~q\,
	ena => \auxResetB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorC|DOUT\(1));

-- Location: LCCOMB_X21_Y2_N18
\FD|registradorC|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorC|DOUT[3]~feeder_combout\ = \FD|ULA|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Mux0~0_combout\,
	combout => \FD|registradorC|DOUT[3]~feeder_combout\);

-- Location: FF_X21_Y2_N19
\FD|registradorC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorC|DOUT[3]~feeder_combout\,
	clrn => \ALT_INV_auxResetC~q\,
	ena => \auxResetB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorC|DOUT\(3));

-- Location: LCCOMB_X21_Y2_N30
\auxFuncaoMUX[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX[1]~0_combout\ = (!\FD|registradorC|DOUT\(1) & (\FD|registradorC|DOUT\(3) & (\FD|registradorC|DOUT\(0) & !\FD|registradorC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorC|DOUT\(1),
	datab => \FD|registradorC|DOUT\(3),
	datac => \FD|registradorC|DOUT\(0),
	datad => \FD|registradorC|DOUT\(2),
	combout => \auxFuncaoMUX[1]~0_combout\);

-- Location: LCCOMB_X21_Y2_N0
\auxFuncaoMUX[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX[1]~5_combout\ = (\auxFuncaoMUX[1]~0_combout\ & (\Equal2~0_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxFuncaoMUX[1]~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \auxFuncaoMUX[1]~5_combout\);

-- Location: FF_X21_Y2_N1
auxResetC : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxFuncaoMUX[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxResetC~q\);

-- Location: FF_X20_Y2_N31
\FD|registradorD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorD|DOUT[1]~feeder_combout\,
	clrn => \ALT_INV_auxResetD~q\,
	ena => \auxResetC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorD|DOUT\(1));

-- Location: FF_X20_Y2_N7
\FD|registradorD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	asdata => \FD|ULA|Mux0~0_combout\,
	clrn => \ALT_INV_auxResetD~q\,
	sload => VCC,
	ena => \auxResetC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorD|DOUT\(3));

-- Location: LCCOMB_X20_Y2_N4
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\FD|registradorD|DOUT\(1) & (\FD|registradorD|DOUT\(2) & (\FD|registradorD|DOUT\(0) & !\FD|registradorD|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorD|DOUT\(1),
	datab => \FD|registradorD|DOUT\(2),
	datac => \FD|registradorD|DOUT\(0),
	datad => \FD|registradorD|DOUT\(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X21_Y2_N6
\auxFuncaoMUX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX~1_combout\ = (\Equal2~0_combout\ & (\Equal1~0_combout\ & ((!\auxFuncaoMUX[1]~0_combout\) # (!\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \auxFuncaoMUX[1]~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \auxFuncaoMUX~1_combout\);

-- Location: FF_X21_Y2_N7
\auxFuncaoMUX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxFuncaoMUX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => auxFuncaoMUX(1));

-- Location: LCCOMB_X19_Y2_N22
\FD|MuxRelogio|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux0~0_combout\ = (auxFuncaoMUX(1)) # ((auxFuncaoMUX(0) & (\FD|registradorF|DOUT\(3))) # (!auxFuncaoMUX(0) & ((\FD|registradorE|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorF|DOUT\(3),
	datab => auxFuncaoMUX(1),
	datac => \FD|registradorE|DOUT\(3),
	datad => auxFuncaoMUX(0),
	combout => \FD|MuxRelogio|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y2_N18
\FD|registradorB|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorB|DOUT[3]~feeder_combout\ = \FD|ULA|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux0~0_combout\,
	combout => \FD|registradorB|DOUT[3]~feeder_combout\);

-- Location: FF_X18_Y2_N19
\FD|registradorB|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorB|DOUT[3]~feeder_combout\,
	clrn => \ALT_INV_auxResetB~q\,
	ena => \auxResetA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorB|DOUT\(3));

-- Location: LCCOMB_X20_Y2_N10
\FD|MuxRelogio|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux0~1_combout\ = (auxFuncaoMUX(1) & (((auxFuncaoMUX(0)) # (\FD|registradorC|DOUT\(3))))) # (!auxFuncaoMUX(1) & (\FD|registradorA|DOUT\(3) & (!auxFuncaoMUX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoMUX(1),
	datab => \FD|registradorA|DOUT\(3),
	datac => auxFuncaoMUX(0),
	datad => \FD|registradorC|DOUT\(3),
	combout => \FD|MuxRelogio|Mux0~1_combout\);

-- Location: LCCOMB_X20_Y2_N6
\FD|MuxRelogio|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux0~2_combout\ = (auxFuncaoMUX(0) & ((\FD|MuxRelogio|Mux0~1_combout\ & ((\FD|registradorD|DOUT\(3)))) # (!\FD|MuxRelogio|Mux0~1_combout\ & (\FD|registradorB|DOUT\(3))))) # (!auxFuncaoMUX(0) & (((\FD|MuxRelogio|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorB|DOUT\(3),
	datab => auxFuncaoMUX(0),
	datac => \FD|registradorD|DOUT\(3),
	datad => \FD|MuxRelogio|Mux0~1_combout\,
	combout => \FD|MuxRelogio|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y2_N14
\FD|MuxRelogio|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux0~3_combout\ = (\auxResetD~q\ & (\FD|MuxRelogio|Mux0~0_combout\)) # (!\auxResetD~q\ & ((\FD|MuxRelogio|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxResetD~q\,
	datac => \FD|MuxRelogio|Mux0~0_combout\,
	datad => \FD|MuxRelogio|Mux0~2_combout\,
	combout => \FD|MuxRelogio|Mux0~3_combout\);

-- Location: LCCOMB_X20_Y2_N24
\FD|MuxRelogio|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux2~1_combout\ = (auxFuncaoMUX(0) & (((auxFuncaoMUX(1))))) # (!auxFuncaoMUX(0) & ((auxFuncaoMUX(1) & ((\FD|registradorC|DOUT\(1)))) # (!auxFuncaoMUX(1) & (\FD|registradorA|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorA|DOUT\(1),
	datab => auxFuncaoMUX(0),
	datac => \FD|registradorC|DOUT\(1),
	datad => auxFuncaoMUX(1),
	combout => \FD|MuxRelogio|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y2_N2
\FD|MuxRelogio|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux2~2_combout\ = (auxFuncaoMUX(0) & ((\FD|MuxRelogio|Mux2~1_combout\ & (\FD|registradorD|DOUT\(1))) # (!\FD|MuxRelogio|Mux2~1_combout\ & ((\FD|registradorB|DOUT\(1)))))) # (!auxFuncaoMUX(0) & (((\FD|MuxRelogio|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorD|DOUT\(1),
	datab => \FD|registradorB|DOUT\(1),
	datac => auxFuncaoMUX(0),
	datad => \FD|MuxRelogio|Mux2~1_combout\,
	combout => \FD|MuxRelogio|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y2_N8
\FD|ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~0_combout\ = (\FD|MuxRelogio|Mux3~2_combout\ & \FD|MuxRelogio|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MuxRelogio|Mux3~2_combout\,
	datad => \FD|MuxRelogio|Mux2~0_combout\,
	combout => \FD|ULA|Add0~0_combout\);

-- Location: LCCOMB_X19_Y2_N2
\FD|ULA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~1_combout\ = (\auxResetD~q\ & (((\FD|ULA|Add0~0_combout\)))) # (!\auxResetD~q\ & (\FD|MuxRelogio|Mux2~2_combout\ & ((\FD|MuxRelogio|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxRelogio|Mux2~2_combout\,
	datab => \auxResetD~q\,
	datac => \FD|ULA|Add0~0_combout\,
	datad => \FD|MuxRelogio|Mux3~1_combout\,
	combout => \FD|ULA|Add0~1_combout\);

-- Location: LCCOMB_X19_Y2_N26
\FD|ULA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~0_combout\ = (auxFuncaoULA(0) & (\FD|MuxRelogio|Mux0~3_combout\ $ (((\FD|MuxRelogio|Mux1~3_combout\ & \FD|ULA|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoULA(0),
	datab => \FD|MuxRelogio|Mux0~3_combout\,
	datac => \FD|MuxRelogio|Mux1~3_combout\,
	datad => \FD|ULA|Add0~1_combout\,
	combout => \FD|ULA|Mux0~0_combout\);

-- Location: FF_X19_Y2_N23
\FD|registradorE|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	asdata => \FD|ULA|Mux0~0_combout\,
	clrn => \ALT_INV_auxResetE~q\,
	sload => VCC,
	ena => \auxResetD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorE|DOUT\(3));

-- Location: LCCOMB_X19_Y2_N0
\auxFuncaoMUX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX~3_combout\ = (!\FD|registradorE|DOUT\(1) & (\FD|registradorE|DOUT\(3) & (!\FD|registradorE|DOUT\(2) & \FD|registradorE|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorE|DOUT\(1),
	datab => \FD|registradorE|DOUT\(3),
	datac => \FD|registradorE|DOUT\(2),
	datad => \FD|registradorE|DOUT\(0),
	combout => \auxFuncaoMUX~3_combout\);

-- Location: LCCOMB_X18_Y2_N24
\auxFuncaoMUX~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxFuncaoMUX~7_combout\ = (\auxFuncaoMUX~3_combout\ & \auxResetD~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxFuncaoMUX~3_combout\,
	datad => \auxResetD~0_combout\,
	combout => \auxFuncaoMUX~7_combout\);

-- Location: FF_X18_Y2_N25
auxResetE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxFuncaoMUX~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxResetE~q\);

-- Location: FF_X19_Y2_N7
\FD|registradorE|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorE|DOUT[1]~feeder_combout\,
	clrn => \ALT_INV_auxResetE~q\,
	ena => \auxResetD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorE|DOUT\(1));

-- Location: FF_X19_Y2_N19
\FD|registradorF|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|ULA|Mux2~0_combout\,
	ena => \auxResetE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorF|DOUT\(1));

-- Location: LCCOMB_X19_Y2_N24
\FD|MuxRelogio|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux2~0_combout\ = (auxFuncaoMUX(1)) # ((auxFuncaoMUX(0) & ((\FD|registradorF|DOUT\(1)))) # (!auxFuncaoMUX(0) & (\FD|registradorE|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorE|DOUT\(1),
	datab => auxFuncaoMUX(0),
	datac => auxFuncaoMUX(1),
	datad => \FD|registradorF|DOUT\(1),
	combout => \FD|MuxRelogio|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y2_N30
\FD|MuxRelogio|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxRelogio|Mux2~3_combout\ = (\auxResetD~q\ & (\FD|MuxRelogio|Mux2~0_combout\)) # (!\auxResetD~q\ & ((\FD|MuxRelogio|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MuxRelogio|Mux2~0_combout\,
	datac => \auxResetD~q\,
	datad => \FD|MuxRelogio|Mux2~2_combout\,
	combout => \FD|MuxRelogio|Mux2~3_combout\);

-- Location: LCCOMB_X19_Y2_N18
\FD|ULA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~0_combout\ = (auxFuncaoULA(0) & (\FD|MuxRelogio|Mux2~3_combout\ $ (\FD|MuxRelogio|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoULA(0),
	datac => \FD|MuxRelogio|Mux2~3_combout\,
	datad => \FD|MuxRelogio|Mux3~3_combout\,
	combout => \FD|ULA|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y2_N30
\FD|registradorB|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|registradorB|DOUT[1]~feeder_combout\ = \FD|ULA|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|registradorB|DOUT[1]~feeder_combout\);

-- Location: FF_X18_Y2_N31
\FD|registradorB|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \FD|registradorB|DOUT[1]~feeder_combout\,
	clrn => \ALT_INV_auxResetB~q\,
	ena => \auxResetA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorB|DOUT\(1));

-- Location: LCCOMB_X18_Y2_N26
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\FD|registradorB|DOUT\(1) & (\FD|registradorB|DOUT\(2) & (!\FD|registradorB|DOUT\(3) & \FD|registradorB|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|registradorB|DOUT\(1),
	datab => \FD|registradorB|DOUT\(2),
	datac => \FD|registradorB|DOUT\(3),
	datad => \FD|registradorB|DOUT\(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X21_Y2_N28
\auxResetD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxResetD~0_combout\ = (\Equal2~0_combout\ & (\Equal4~0_combout\ & (\auxFuncaoMUX[1]~0_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \auxFuncaoMUX[1]~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \auxResetD~0_combout\);

-- Location: LCCOMB_X21_Y2_N20
\auxResetD~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxResetD~feeder_combout\ = \auxResetD~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auxResetD~0_combout\,
	combout => \auxResetD~feeder_combout\);

-- Location: FF_X21_Y2_N21
auxResetD : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	d => \auxResetD~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxResetD~q\);

-- Location: LCCOMB_X19_Y2_N12
\FD|ULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~0_combout\ = (auxFuncaoULA(0) & ((\auxResetD~q\ & (!\FD|MuxRelogio|Mux3~2_combout\)) # (!\auxResetD~q\ & ((!\FD|MuxRelogio|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => auxFuncaoULA(0),
	datab => \auxResetD~q\,
	datac => \FD|MuxRelogio|Mux3~2_combout\,
	datad => \FD|MuxRelogio|Mux3~1_combout\,
	combout => \FD|ULA|Mux3~0_combout\);

-- Location: FF_X20_Y2_N9
\FD|registradorA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auxClock~clkctrl_outclk\,
	asdata => \FD|ULA|Mux3~0_combout\,
	clrn => \ALT_INV_auxResetA~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|registradorA|DOUT\(0));

ww_seconds_u(0) <= \seconds_u[0]~output_o\;

ww_seconds_u(1) <= \seconds_u[1]~output_o\;

ww_seconds_u(2) <= \seconds_u[2]~output_o\;

ww_seconds_u(3) <= \seconds_u[3]~output_o\;

ww_minutes_u(0) <= \minutes_u[0]~output_o\;

ww_minutes_u(1) <= \minutes_u[1]~output_o\;

ww_minutes_u(2) <= \minutes_u[2]~output_o\;

ww_minutes_u(3) <= \minutes_u[3]~output_o\;

ww_hours_u(0) <= \hours_u[0]~output_o\;

ww_hours_u(1) <= \hours_u[1]~output_o\;

ww_hours_u(2) <= \hours_u[2]~output_o\;

ww_hours_u(3) <= \hours_u[3]~output_o\;

ww_seconds_d(0) <= \seconds_d[0]~output_o\;

ww_seconds_d(1) <= \seconds_d[1]~output_o\;

ww_seconds_d(2) <= \seconds_d[2]~output_o\;

ww_seconds_d(3) <= \seconds_d[3]~output_o\;

ww_minutes_d(0) <= \minutes_d[0]~output_o\;

ww_minutes_d(1) <= \minutes_d[1]~output_o\;

ww_minutes_d(2) <= \minutes_d[2]~output_o\;

ww_minutes_d(3) <= \minutes_d[3]~output_o\;

ww_hours_d(0) <= \hours_d[0]~output_o\;

ww_hours_d(1) <= \hours_d[1]~output_o\;

ww_hours_d(2) <= \hours_d[2]~output_o\;

ww_hours_d(3) <= \hours_d[3]~output_o\;
END structure;


