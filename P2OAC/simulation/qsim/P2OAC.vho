-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "09/07/2023 22:17:18"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	P2OAC IS
    PORT (
	clk : IN std_logic;
	E1 : IN std_logic;
	E2 : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic
	);
END P2OAC;

-- Design Ports Information
-- S1	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E2	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P2OAC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cuenta[24]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cuenta[0]~25_combout\ : std_logic;
SIGNAL \cuenta[0]~26\ : std_logic;
SIGNAL \cuenta[1]~27_combout\ : std_logic;
SIGNAL \cuenta[1]~28\ : std_logic;
SIGNAL \cuenta[2]~29_combout\ : std_logic;
SIGNAL \cuenta[2]~30\ : std_logic;
SIGNAL \cuenta[3]~31_combout\ : std_logic;
SIGNAL \cuenta[3]~32\ : std_logic;
SIGNAL \cuenta[4]~33_combout\ : std_logic;
SIGNAL \cuenta[4]~34\ : std_logic;
SIGNAL \cuenta[5]~35_combout\ : std_logic;
SIGNAL \cuenta[5]~36\ : std_logic;
SIGNAL \cuenta[6]~37_combout\ : std_logic;
SIGNAL \cuenta[6]~38\ : std_logic;
SIGNAL \cuenta[7]~39_combout\ : std_logic;
SIGNAL \cuenta[7]~40\ : std_logic;
SIGNAL \cuenta[8]~41_combout\ : std_logic;
SIGNAL \cuenta[8]~42\ : std_logic;
SIGNAL \cuenta[9]~43_combout\ : std_logic;
SIGNAL \cuenta[9]~44\ : std_logic;
SIGNAL \cuenta[10]~45_combout\ : std_logic;
SIGNAL \cuenta[10]~46\ : std_logic;
SIGNAL \cuenta[11]~47_combout\ : std_logic;
SIGNAL \cuenta[11]~48\ : std_logic;
SIGNAL \cuenta[12]~49_combout\ : std_logic;
SIGNAL \cuenta[12]~50\ : std_logic;
SIGNAL \cuenta[13]~51_combout\ : std_logic;
SIGNAL \cuenta[13]~52\ : std_logic;
SIGNAL \cuenta[14]~53_combout\ : std_logic;
SIGNAL \cuenta[14]~54\ : std_logic;
SIGNAL \cuenta[15]~55_combout\ : std_logic;
SIGNAL \cuenta[15]~56\ : std_logic;
SIGNAL \cuenta[16]~57_combout\ : std_logic;
SIGNAL \cuenta[16]~58\ : std_logic;
SIGNAL \cuenta[17]~59_combout\ : std_logic;
SIGNAL \cuenta[17]~60\ : std_logic;
SIGNAL \cuenta[18]~61_combout\ : std_logic;
SIGNAL \cuenta[18]~62\ : std_logic;
SIGNAL \cuenta[19]~63_combout\ : std_logic;
SIGNAL \cuenta[19]~64\ : std_logic;
SIGNAL \cuenta[20]~65_combout\ : std_logic;
SIGNAL \cuenta[20]~66\ : std_logic;
SIGNAL \cuenta[21]~67_combout\ : std_logic;
SIGNAL \cuenta[21]~68\ : std_logic;
SIGNAL \cuenta[22]~69_combout\ : std_logic;
SIGNAL \cuenta[22]~70\ : std_logic;
SIGNAL \cuenta[23]~71_combout\ : std_logic;
SIGNAL \cuenta[23]~72\ : std_logic;
SIGNAL \cuenta[24]~73_combout\ : std_logic;
SIGNAL \cuenta[24]~clkctrl_outclk\ : std_logic;
SIGNAL \E1~input_o\ : std_logic;
SIGNAL \E2~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL cuenta : std_logic_vector(27 DOWNTO 0);
SIGNAL estado_actual : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_estado_actual : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_E1 <= E1;
ww_E2 <= E2;
S1 <= ww_S1;
S2 <= ww_S2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\cuenta[24]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & cuenta(24));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_estado_actual(0) <= NOT estado_actual(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X16_Y0_N23
\S1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => estado_actual(1),
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\S2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_estado_actual(0),
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y2_N8
\cuenta[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[0]~25_combout\ = cuenta(0) $ (VCC)
-- \cuenta[0]~26\ = CARRY(cuenta(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cuenta(0),
	datad => VCC,
	combout => \cuenta[0]~25_combout\,
	cout => \cuenta[0]~26\);

-- Location: FF_X45_Y2_N9
\cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(0));

-- Location: LCCOMB_X45_Y2_N10
\cuenta[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[1]~27_combout\ = (cuenta(1) & (!\cuenta[0]~26\)) # (!cuenta(1) & ((\cuenta[0]~26\) # (GND)))
-- \cuenta[1]~28\ = CARRY((!\cuenta[0]~26\) # (!cuenta(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(1),
	datad => VCC,
	cin => \cuenta[0]~26\,
	combout => \cuenta[1]~27_combout\,
	cout => \cuenta[1]~28\);

-- Location: FF_X45_Y2_N11
\cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(1));

-- Location: LCCOMB_X45_Y2_N12
\cuenta[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[2]~29_combout\ = (cuenta(2) & (\cuenta[1]~28\ $ (GND))) # (!cuenta(2) & (!\cuenta[1]~28\ & VCC))
-- \cuenta[2]~30\ = CARRY((cuenta(2) & !\cuenta[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(2),
	datad => VCC,
	cin => \cuenta[1]~28\,
	combout => \cuenta[2]~29_combout\,
	cout => \cuenta[2]~30\);

-- Location: FF_X45_Y2_N13
\cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(2));

-- Location: LCCOMB_X45_Y2_N14
\cuenta[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[3]~31_combout\ = (cuenta(3) & (!\cuenta[2]~30\)) # (!cuenta(3) & ((\cuenta[2]~30\) # (GND)))
-- \cuenta[3]~32\ = CARRY((!\cuenta[2]~30\) # (!cuenta(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(3),
	datad => VCC,
	cin => \cuenta[2]~30\,
	combout => \cuenta[3]~31_combout\,
	cout => \cuenta[3]~32\);

-- Location: FF_X45_Y2_N15
\cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(3));

-- Location: LCCOMB_X45_Y2_N16
\cuenta[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[4]~33_combout\ = (cuenta(4) & (\cuenta[3]~32\ $ (GND))) # (!cuenta(4) & (!\cuenta[3]~32\ & VCC))
-- \cuenta[4]~34\ = CARRY((cuenta(4) & !\cuenta[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(4),
	datad => VCC,
	cin => \cuenta[3]~32\,
	combout => \cuenta[4]~33_combout\,
	cout => \cuenta[4]~34\);

-- Location: FF_X45_Y2_N17
\cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(4));

-- Location: LCCOMB_X45_Y2_N18
\cuenta[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[5]~35_combout\ = (cuenta(5) & (!\cuenta[4]~34\)) # (!cuenta(5) & ((\cuenta[4]~34\) # (GND)))
-- \cuenta[5]~36\ = CARRY((!\cuenta[4]~34\) # (!cuenta(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(5),
	datad => VCC,
	cin => \cuenta[4]~34\,
	combout => \cuenta[5]~35_combout\,
	cout => \cuenta[5]~36\);

-- Location: FF_X45_Y2_N19
\cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(5));

-- Location: LCCOMB_X45_Y2_N20
\cuenta[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[6]~37_combout\ = (cuenta(6) & (\cuenta[5]~36\ $ (GND))) # (!cuenta(6) & (!\cuenta[5]~36\ & VCC))
-- \cuenta[6]~38\ = CARRY((cuenta(6) & !\cuenta[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(6),
	datad => VCC,
	cin => \cuenta[5]~36\,
	combout => \cuenta[6]~37_combout\,
	cout => \cuenta[6]~38\);

-- Location: FF_X45_Y2_N21
\cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(6));

-- Location: LCCOMB_X45_Y2_N22
\cuenta[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[7]~39_combout\ = (cuenta(7) & (!\cuenta[6]~38\)) # (!cuenta(7) & ((\cuenta[6]~38\) # (GND)))
-- \cuenta[7]~40\ = CARRY((!\cuenta[6]~38\) # (!cuenta(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(7),
	datad => VCC,
	cin => \cuenta[6]~38\,
	combout => \cuenta[7]~39_combout\,
	cout => \cuenta[7]~40\);

-- Location: FF_X45_Y2_N23
\cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[7]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(7));

-- Location: LCCOMB_X45_Y2_N24
\cuenta[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[8]~41_combout\ = (cuenta(8) & (\cuenta[7]~40\ $ (GND))) # (!cuenta(8) & (!\cuenta[7]~40\ & VCC))
-- \cuenta[8]~42\ = CARRY((cuenta(8) & !\cuenta[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(8),
	datad => VCC,
	cin => \cuenta[7]~40\,
	combout => \cuenta[8]~41_combout\,
	cout => \cuenta[8]~42\);

-- Location: FF_X45_Y2_N25
\cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[8]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(8));

-- Location: LCCOMB_X45_Y2_N26
\cuenta[9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[9]~43_combout\ = (cuenta(9) & (!\cuenta[8]~42\)) # (!cuenta(9) & ((\cuenta[8]~42\) # (GND)))
-- \cuenta[9]~44\ = CARRY((!\cuenta[8]~42\) # (!cuenta(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(9),
	datad => VCC,
	cin => \cuenta[8]~42\,
	combout => \cuenta[9]~43_combout\,
	cout => \cuenta[9]~44\);

-- Location: FF_X45_Y2_N27
\cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[9]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(9));

-- Location: LCCOMB_X45_Y2_N28
\cuenta[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[10]~45_combout\ = (cuenta(10) & (\cuenta[9]~44\ $ (GND))) # (!cuenta(10) & (!\cuenta[9]~44\ & VCC))
-- \cuenta[10]~46\ = CARRY((cuenta(10) & !\cuenta[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(10),
	datad => VCC,
	cin => \cuenta[9]~44\,
	combout => \cuenta[10]~45_combout\,
	cout => \cuenta[10]~46\);

-- Location: FF_X45_Y2_N29
\cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(10));

-- Location: LCCOMB_X45_Y2_N30
\cuenta[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[11]~47_combout\ = (cuenta(11) & (!\cuenta[10]~46\)) # (!cuenta(11) & ((\cuenta[10]~46\) # (GND)))
-- \cuenta[11]~48\ = CARRY((!\cuenta[10]~46\) # (!cuenta(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(11),
	datad => VCC,
	cin => \cuenta[10]~46\,
	combout => \cuenta[11]~47_combout\,
	cout => \cuenta[11]~48\);

-- Location: FF_X45_Y2_N31
\cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[11]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(11));

-- Location: LCCOMB_X45_Y1_N0
\cuenta[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[12]~49_combout\ = (cuenta(12) & (\cuenta[11]~48\ $ (GND))) # (!cuenta(12) & (!\cuenta[11]~48\ & VCC))
-- \cuenta[12]~50\ = CARRY((cuenta(12) & !\cuenta[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(12),
	datad => VCC,
	cin => \cuenta[11]~48\,
	combout => \cuenta[12]~49_combout\,
	cout => \cuenta[12]~50\);

-- Location: FF_X45_Y1_N1
\cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[12]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(12));

-- Location: LCCOMB_X45_Y1_N2
\cuenta[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[13]~51_combout\ = (cuenta(13) & (!\cuenta[12]~50\)) # (!cuenta(13) & ((\cuenta[12]~50\) # (GND)))
-- \cuenta[13]~52\ = CARRY((!\cuenta[12]~50\) # (!cuenta(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(13),
	datad => VCC,
	cin => \cuenta[12]~50\,
	combout => \cuenta[13]~51_combout\,
	cout => \cuenta[13]~52\);

-- Location: FF_X45_Y1_N3
\cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[13]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(13));

-- Location: LCCOMB_X45_Y1_N4
\cuenta[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[14]~53_combout\ = (cuenta(14) & (\cuenta[13]~52\ $ (GND))) # (!cuenta(14) & (!\cuenta[13]~52\ & VCC))
-- \cuenta[14]~54\ = CARRY((cuenta(14) & !\cuenta[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(14),
	datad => VCC,
	cin => \cuenta[13]~52\,
	combout => \cuenta[14]~53_combout\,
	cout => \cuenta[14]~54\);

-- Location: FF_X45_Y1_N5
\cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[14]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(14));

-- Location: LCCOMB_X45_Y1_N6
\cuenta[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[15]~55_combout\ = (cuenta(15) & (!\cuenta[14]~54\)) # (!cuenta(15) & ((\cuenta[14]~54\) # (GND)))
-- \cuenta[15]~56\ = CARRY((!\cuenta[14]~54\) # (!cuenta(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(15),
	datad => VCC,
	cin => \cuenta[14]~54\,
	combout => \cuenta[15]~55_combout\,
	cout => \cuenta[15]~56\);

-- Location: FF_X45_Y1_N7
\cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[15]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(15));

-- Location: LCCOMB_X45_Y1_N8
\cuenta[16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[16]~57_combout\ = (cuenta(16) & (\cuenta[15]~56\ $ (GND))) # (!cuenta(16) & (!\cuenta[15]~56\ & VCC))
-- \cuenta[16]~58\ = CARRY((cuenta(16) & !\cuenta[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(16),
	datad => VCC,
	cin => \cuenta[15]~56\,
	combout => \cuenta[16]~57_combout\,
	cout => \cuenta[16]~58\);

-- Location: FF_X45_Y1_N9
\cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[16]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(16));

-- Location: LCCOMB_X45_Y1_N10
\cuenta[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[17]~59_combout\ = (cuenta(17) & (!\cuenta[16]~58\)) # (!cuenta(17) & ((\cuenta[16]~58\) # (GND)))
-- \cuenta[17]~60\ = CARRY((!\cuenta[16]~58\) # (!cuenta(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(17),
	datad => VCC,
	cin => \cuenta[16]~58\,
	combout => \cuenta[17]~59_combout\,
	cout => \cuenta[17]~60\);

-- Location: FF_X45_Y1_N11
\cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[17]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(17));

-- Location: LCCOMB_X45_Y1_N12
\cuenta[18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[18]~61_combout\ = (cuenta(18) & (\cuenta[17]~60\ $ (GND))) # (!cuenta(18) & (!\cuenta[17]~60\ & VCC))
-- \cuenta[18]~62\ = CARRY((cuenta(18) & !\cuenta[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(18),
	datad => VCC,
	cin => \cuenta[17]~60\,
	combout => \cuenta[18]~61_combout\,
	cout => \cuenta[18]~62\);

-- Location: FF_X45_Y1_N13
\cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[18]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(18));

-- Location: LCCOMB_X45_Y1_N14
\cuenta[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[19]~63_combout\ = (cuenta(19) & (!\cuenta[18]~62\)) # (!cuenta(19) & ((\cuenta[18]~62\) # (GND)))
-- \cuenta[19]~64\ = CARRY((!\cuenta[18]~62\) # (!cuenta(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(19),
	datad => VCC,
	cin => \cuenta[18]~62\,
	combout => \cuenta[19]~63_combout\,
	cout => \cuenta[19]~64\);

-- Location: FF_X45_Y1_N15
\cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[19]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(19));

-- Location: LCCOMB_X45_Y1_N16
\cuenta[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[20]~65_combout\ = (cuenta(20) & (\cuenta[19]~64\ $ (GND))) # (!cuenta(20) & (!\cuenta[19]~64\ & VCC))
-- \cuenta[20]~66\ = CARRY((cuenta(20) & !\cuenta[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(20),
	datad => VCC,
	cin => \cuenta[19]~64\,
	combout => \cuenta[20]~65_combout\,
	cout => \cuenta[20]~66\);

-- Location: FF_X45_Y1_N17
\cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[20]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(20));

-- Location: LCCOMB_X45_Y1_N18
\cuenta[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[21]~67_combout\ = (cuenta(21) & (!\cuenta[20]~66\)) # (!cuenta(21) & ((\cuenta[20]~66\) # (GND)))
-- \cuenta[21]~68\ = CARRY((!\cuenta[20]~66\) # (!cuenta(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(21),
	datad => VCC,
	cin => \cuenta[20]~66\,
	combout => \cuenta[21]~67_combout\,
	cout => \cuenta[21]~68\);

-- Location: FF_X45_Y1_N19
\cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[21]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(21));

-- Location: LCCOMB_X45_Y1_N20
\cuenta[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[22]~69_combout\ = (cuenta(22) & (\cuenta[21]~68\ $ (GND))) # (!cuenta(22) & (!\cuenta[21]~68\ & VCC))
-- \cuenta[22]~70\ = CARRY((cuenta(22) & !\cuenta[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(22),
	datad => VCC,
	cin => \cuenta[21]~68\,
	combout => \cuenta[22]~69_combout\,
	cout => \cuenta[22]~70\);

-- Location: FF_X45_Y1_N21
\cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[22]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(22));

-- Location: LCCOMB_X45_Y1_N22
\cuenta[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[23]~71_combout\ = (cuenta(23) & (!\cuenta[22]~70\)) # (!cuenta(23) & ((\cuenta[22]~70\) # (GND)))
-- \cuenta[23]~72\ = CARRY((!\cuenta[22]~70\) # (!cuenta(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(23),
	datad => VCC,
	cin => \cuenta[22]~70\,
	combout => \cuenta[23]~71_combout\,
	cout => \cuenta[23]~72\);

-- Location: FF_X45_Y1_N23
\cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[23]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(23));

-- Location: LCCOMB_X45_Y1_N24
\cuenta[24]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cuenta[24]~73_combout\ = \cuenta[23]~72\ $ (!cuenta(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cuenta(24),
	cin => \cuenta[23]~72\,
	combout => \cuenta[24]~73_combout\);

-- Location: FF_X45_Y1_N25
\cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(24));

-- Location: CLKCTRL_G17
\cuenta[24]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cuenta[24]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cuenta[24]~clkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N29
\E1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E1,
	o => \E1~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\E2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E2,
	o => \E2~input_o\);

-- Location: LCCOMB_X16_Y1_N6
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\E2~input_o\ & (((!estado_actual(1)) # (!estado_actual(0))))) # (!\E2~input_o\ & (!\E1~input_o\ & (!estado_actual(0) & !estado_actual(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~input_o\,
	datab => \E2~input_o\,
	datac => estado_actual(0),
	datad => estado_actual(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X16_Y1_N7
\estado_actual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cuenta[24]~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_actual(0));

-- Location: LCCOMB_X16_Y1_N0
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (estado_actual(0) & (((!\E2~input_o\ & !estado_actual(1))))) # (!estado_actual(0) & ((\E1~input_o\ & (\E2~input_o\)) # (!\E1~input_o\ & ((estado_actual(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~input_o\,
	datab => \E2~input_o\,
	datac => estado_actual(1),
	datad => estado_actual(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X16_Y1_N1
\estado_actual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cuenta[24]~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_actual(1));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;
END structure;


