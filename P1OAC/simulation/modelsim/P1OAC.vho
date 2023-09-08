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

-- DATE "09/01/2023 02:20:05"

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

ENTITY 	P1OAC IS
    PORT (
	A : OUT std_logic;
	RESET : IN std_logic;
	CLK : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic
	);
END P1OAC;

-- Design Ports Information
-- A	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P1OAC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|cuenta[0]~26_combout\ : std_logic;
SIGNAL \inst1|cuenta[0]~27\ : std_logic;
SIGNAL \inst1|cuenta[1]~28_combout\ : std_logic;
SIGNAL \inst1|cuenta[1]~29\ : std_logic;
SIGNAL \inst1|cuenta[2]~30_combout\ : std_logic;
SIGNAL \inst1|cuenta[2]~31\ : std_logic;
SIGNAL \inst1|cuenta[3]~32_combout\ : std_logic;
SIGNAL \inst1|cuenta[3]~33\ : std_logic;
SIGNAL \inst1|cuenta[4]~34_combout\ : std_logic;
SIGNAL \inst1|cuenta[4]~35\ : std_logic;
SIGNAL \inst1|cuenta[5]~36_combout\ : std_logic;
SIGNAL \inst1|cuenta[5]~37\ : std_logic;
SIGNAL \inst1|cuenta[6]~38_combout\ : std_logic;
SIGNAL \inst1|cuenta[6]~39\ : std_logic;
SIGNAL \inst1|cuenta[7]~40_combout\ : std_logic;
SIGNAL \inst1|cuenta[7]~41\ : std_logic;
SIGNAL \inst1|cuenta[8]~42_combout\ : std_logic;
SIGNAL \inst1|cuenta[8]~43\ : std_logic;
SIGNAL \inst1|cuenta[9]~44_combout\ : std_logic;
SIGNAL \inst1|cuenta[9]~45\ : std_logic;
SIGNAL \inst1|cuenta[10]~46_combout\ : std_logic;
SIGNAL \inst1|cuenta[10]~47\ : std_logic;
SIGNAL \inst1|cuenta[11]~48_combout\ : std_logic;
SIGNAL \inst1|cuenta[11]~49\ : std_logic;
SIGNAL \inst1|cuenta[12]~50_combout\ : std_logic;
SIGNAL \inst1|cuenta[12]~51\ : std_logic;
SIGNAL \inst1|cuenta[13]~52_combout\ : std_logic;
SIGNAL \inst1|cuenta[13]~53\ : std_logic;
SIGNAL \inst1|cuenta[14]~54_combout\ : std_logic;
SIGNAL \inst1|cuenta[14]~55\ : std_logic;
SIGNAL \inst1|cuenta[15]~56_combout\ : std_logic;
SIGNAL \inst1|cuenta[15]~57\ : std_logic;
SIGNAL \inst1|cuenta[16]~58_combout\ : std_logic;
SIGNAL \inst1|cuenta[16]~59\ : std_logic;
SIGNAL \inst1|cuenta[17]~60_combout\ : std_logic;
SIGNAL \inst1|cuenta[17]~61\ : std_logic;
SIGNAL \inst1|cuenta[18]~62_combout\ : std_logic;
SIGNAL \inst1|cuenta[18]~63\ : std_logic;
SIGNAL \inst1|cuenta[19]~64_combout\ : std_logic;
SIGNAL \inst1|cuenta[19]~65\ : std_logic;
SIGNAL \inst1|cuenta[20]~66_combout\ : std_logic;
SIGNAL \inst1|cuenta[20]~67\ : std_logic;
SIGNAL \inst1|cuenta[21]~68_combout\ : std_logic;
SIGNAL \inst1|cuenta[21]~69\ : std_logic;
SIGNAL \inst1|cuenta[22]~70_combout\ : std_logic;
SIGNAL \inst1|cuenta[22]~71\ : std_logic;
SIGNAL \inst1|cuenta[23]~72_combout\ : std_logic;
SIGNAL \inst1|cuenta[23]~73\ : std_logic;
SIGNAL \inst1|cuenta[24]~74_combout\ : std_logic;
SIGNAL \inst1|cuenta[24]~75\ : std_logic;
SIGNAL \inst1|cuenta[25]~76_combout\ : std_logic;
SIGNAL \inst|26~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|26~q\ : std_logic;
SIGNAL \inst|5~combout\ : std_logic;
SIGNAL \inst|25~0_combout\ : std_logic;
SIGNAL \inst|25~q\ : std_logic;
SIGNAL \inst|51~combout\ : std_logic;
SIGNAL \inst|24~0_combout\ : std_logic;
SIGNAL \inst|24~q\ : std_logic;
SIGNAL \inst|21~combout\ : std_logic;
SIGNAL \inst|23~0_combout\ : std_logic;
SIGNAL \inst|23~q\ : std_logic;
SIGNAL \inst1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_RESET <= RESET;
ww_CLK <= CLK;
B <= ww_B;
C <= ww_C;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X46_Y54_N2
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|26~q\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|25~q\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|24~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|23~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N6
\inst1|cuenta[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[0]~26_combout\ = \inst1|cuenta\(0) $ (VCC)
-- \inst1|cuenta[0]~27\ = CARRY(\inst1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(0),
	datad => VCC,
	combout => \inst1|cuenta[0]~26_combout\,
	cout => \inst1|cuenta[0]~27\);

-- Location: FF_X45_Y53_N7
\inst1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(0));

-- Location: LCCOMB_X45_Y53_N8
\inst1|cuenta[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[1]~28_combout\ = (\inst1|cuenta\(1) & (!\inst1|cuenta[0]~27\)) # (!\inst1|cuenta\(1) & ((\inst1|cuenta[0]~27\) # (GND)))
-- \inst1|cuenta[1]~29\ = CARRY((!\inst1|cuenta[0]~27\) # (!\inst1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(1),
	datad => VCC,
	cin => \inst1|cuenta[0]~27\,
	combout => \inst1|cuenta[1]~28_combout\,
	cout => \inst1|cuenta[1]~29\);

-- Location: FF_X45_Y53_N9
\inst1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(1));

-- Location: LCCOMB_X45_Y53_N10
\inst1|cuenta[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[2]~30_combout\ = (\inst1|cuenta\(2) & (\inst1|cuenta[1]~29\ $ (GND))) # (!\inst1|cuenta\(2) & (!\inst1|cuenta[1]~29\ & VCC))
-- \inst1|cuenta[2]~31\ = CARRY((\inst1|cuenta\(2) & !\inst1|cuenta[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(2),
	datad => VCC,
	cin => \inst1|cuenta[1]~29\,
	combout => \inst1|cuenta[2]~30_combout\,
	cout => \inst1|cuenta[2]~31\);

-- Location: FF_X45_Y53_N11
\inst1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(2));

-- Location: LCCOMB_X45_Y53_N12
\inst1|cuenta[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[3]~32_combout\ = (\inst1|cuenta\(3) & (!\inst1|cuenta[2]~31\)) # (!\inst1|cuenta\(3) & ((\inst1|cuenta[2]~31\) # (GND)))
-- \inst1|cuenta[3]~33\ = CARRY((!\inst1|cuenta[2]~31\) # (!\inst1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(3),
	datad => VCC,
	cin => \inst1|cuenta[2]~31\,
	combout => \inst1|cuenta[3]~32_combout\,
	cout => \inst1|cuenta[3]~33\);

-- Location: FF_X45_Y53_N13
\inst1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(3));

-- Location: LCCOMB_X45_Y53_N14
\inst1|cuenta[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[4]~34_combout\ = (\inst1|cuenta\(4) & (\inst1|cuenta[3]~33\ $ (GND))) # (!\inst1|cuenta\(4) & (!\inst1|cuenta[3]~33\ & VCC))
-- \inst1|cuenta[4]~35\ = CARRY((\inst1|cuenta\(4) & !\inst1|cuenta[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(4),
	datad => VCC,
	cin => \inst1|cuenta[3]~33\,
	combout => \inst1|cuenta[4]~34_combout\,
	cout => \inst1|cuenta[4]~35\);

-- Location: FF_X45_Y53_N15
\inst1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(4));

-- Location: LCCOMB_X45_Y53_N16
\inst1|cuenta[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[5]~36_combout\ = (\inst1|cuenta\(5) & (!\inst1|cuenta[4]~35\)) # (!\inst1|cuenta\(5) & ((\inst1|cuenta[4]~35\) # (GND)))
-- \inst1|cuenta[5]~37\ = CARRY((!\inst1|cuenta[4]~35\) # (!\inst1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(5),
	datad => VCC,
	cin => \inst1|cuenta[4]~35\,
	combout => \inst1|cuenta[5]~36_combout\,
	cout => \inst1|cuenta[5]~37\);

-- Location: FF_X45_Y53_N17
\inst1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(5));

-- Location: LCCOMB_X45_Y53_N18
\inst1|cuenta[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[6]~38_combout\ = (\inst1|cuenta\(6) & (\inst1|cuenta[5]~37\ $ (GND))) # (!\inst1|cuenta\(6) & (!\inst1|cuenta[5]~37\ & VCC))
-- \inst1|cuenta[6]~39\ = CARRY((\inst1|cuenta\(6) & !\inst1|cuenta[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(6),
	datad => VCC,
	cin => \inst1|cuenta[5]~37\,
	combout => \inst1|cuenta[6]~38_combout\,
	cout => \inst1|cuenta[6]~39\);

-- Location: FF_X45_Y53_N19
\inst1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(6));

-- Location: LCCOMB_X45_Y53_N20
\inst1|cuenta[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[7]~40_combout\ = (\inst1|cuenta\(7) & (!\inst1|cuenta[6]~39\)) # (!\inst1|cuenta\(7) & ((\inst1|cuenta[6]~39\) # (GND)))
-- \inst1|cuenta[7]~41\ = CARRY((!\inst1|cuenta[6]~39\) # (!\inst1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(7),
	datad => VCC,
	cin => \inst1|cuenta[6]~39\,
	combout => \inst1|cuenta[7]~40_combout\,
	cout => \inst1|cuenta[7]~41\);

-- Location: FF_X45_Y53_N21
\inst1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(7));

-- Location: LCCOMB_X45_Y53_N22
\inst1|cuenta[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[8]~42_combout\ = (\inst1|cuenta\(8) & (\inst1|cuenta[7]~41\ $ (GND))) # (!\inst1|cuenta\(8) & (!\inst1|cuenta[7]~41\ & VCC))
-- \inst1|cuenta[8]~43\ = CARRY((\inst1|cuenta\(8) & !\inst1|cuenta[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(8),
	datad => VCC,
	cin => \inst1|cuenta[7]~41\,
	combout => \inst1|cuenta[8]~42_combout\,
	cout => \inst1|cuenta[8]~43\);

-- Location: FF_X45_Y53_N23
\inst1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(8));

-- Location: LCCOMB_X45_Y53_N24
\inst1|cuenta[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[9]~44_combout\ = (\inst1|cuenta\(9) & (!\inst1|cuenta[8]~43\)) # (!\inst1|cuenta\(9) & ((\inst1|cuenta[8]~43\) # (GND)))
-- \inst1|cuenta[9]~45\ = CARRY((!\inst1|cuenta[8]~43\) # (!\inst1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(9),
	datad => VCC,
	cin => \inst1|cuenta[8]~43\,
	combout => \inst1|cuenta[9]~44_combout\,
	cout => \inst1|cuenta[9]~45\);

-- Location: FF_X45_Y53_N25
\inst1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(9));

-- Location: LCCOMB_X45_Y53_N26
\inst1|cuenta[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[10]~46_combout\ = (\inst1|cuenta\(10) & (\inst1|cuenta[9]~45\ $ (GND))) # (!\inst1|cuenta\(10) & (!\inst1|cuenta[9]~45\ & VCC))
-- \inst1|cuenta[10]~47\ = CARRY((\inst1|cuenta\(10) & !\inst1|cuenta[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(10),
	datad => VCC,
	cin => \inst1|cuenta[9]~45\,
	combout => \inst1|cuenta[10]~46_combout\,
	cout => \inst1|cuenta[10]~47\);

-- Location: FF_X45_Y53_N27
\inst1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(10));

-- Location: LCCOMB_X45_Y53_N28
\inst1|cuenta[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[11]~48_combout\ = (\inst1|cuenta\(11) & (!\inst1|cuenta[10]~47\)) # (!\inst1|cuenta\(11) & ((\inst1|cuenta[10]~47\) # (GND)))
-- \inst1|cuenta[11]~49\ = CARRY((!\inst1|cuenta[10]~47\) # (!\inst1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(11),
	datad => VCC,
	cin => \inst1|cuenta[10]~47\,
	combout => \inst1|cuenta[11]~48_combout\,
	cout => \inst1|cuenta[11]~49\);

-- Location: FF_X45_Y53_N29
\inst1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(11));

-- Location: LCCOMB_X45_Y53_N30
\inst1|cuenta[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[12]~50_combout\ = (\inst1|cuenta\(12) & (\inst1|cuenta[11]~49\ $ (GND))) # (!\inst1|cuenta\(12) & (!\inst1|cuenta[11]~49\ & VCC))
-- \inst1|cuenta[12]~51\ = CARRY((\inst1|cuenta\(12) & !\inst1|cuenta[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(12),
	datad => VCC,
	cin => \inst1|cuenta[11]~49\,
	combout => \inst1|cuenta[12]~50_combout\,
	cout => \inst1|cuenta[12]~51\);

-- Location: FF_X45_Y53_N31
\inst1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(12));

-- Location: LCCOMB_X45_Y52_N0
\inst1|cuenta[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[13]~52_combout\ = (\inst1|cuenta\(13) & (!\inst1|cuenta[12]~51\)) # (!\inst1|cuenta\(13) & ((\inst1|cuenta[12]~51\) # (GND)))
-- \inst1|cuenta[13]~53\ = CARRY((!\inst1|cuenta[12]~51\) # (!\inst1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(13),
	datad => VCC,
	cin => \inst1|cuenta[12]~51\,
	combout => \inst1|cuenta[13]~52_combout\,
	cout => \inst1|cuenta[13]~53\);

-- Location: FF_X45_Y52_N1
\inst1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(13));

-- Location: LCCOMB_X45_Y52_N2
\inst1|cuenta[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[14]~54_combout\ = (\inst1|cuenta\(14) & (\inst1|cuenta[13]~53\ $ (GND))) # (!\inst1|cuenta\(14) & (!\inst1|cuenta[13]~53\ & VCC))
-- \inst1|cuenta[14]~55\ = CARRY((\inst1|cuenta\(14) & !\inst1|cuenta[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(14),
	datad => VCC,
	cin => \inst1|cuenta[13]~53\,
	combout => \inst1|cuenta[14]~54_combout\,
	cout => \inst1|cuenta[14]~55\);

-- Location: FF_X45_Y52_N3
\inst1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(14));

-- Location: LCCOMB_X45_Y52_N4
\inst1|cuenta[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[15]~56_combout\ = (\inst1|cuenta\(15) & (!\inst1|cuenta[14]~55\)) # (!\inst1|cuenta\(15) & ((\inst1|cuenta[14]~55\) # (GND)))
-- \inst1|cuenta[15]~57\ = CARRY((!\inst1|cuenta[14]~55\) # (!\inst1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(15),
	datad => VCC,
	cin => \inst1|cuenta[14]~55\,
	combout => \inst1|cuenta[15]~56_combout\,
	cout => \inst1|cuenta[15]~57\);

-- Location: FF_X45_Y52_N5
\inst1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(15));

-- Location: LCCOMB_X45_Y52_N6
\inst1|cuenta[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[16]~58_combout\ = (\inst1|cuenta\(16) & (\inst1|cuenta[15]~57\ $ (GND))) # (!\inst1|cuenta\(16) & (!\inst1|cuenta[15]~57\ & VCC))
-- \inst1|cuenta[16]~59\ = CARRY((\inst1|cuenta\(16) & !\inst1|cuenta[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(16),
	datad => VCC,
	cin => \inst1|cuenta[15]~57\,
	combout => \inst1|cuenta[16]~58_combout\,
	cout => \inst1|cuenta[16]~59\);

-- Location: FF_X45_Y52_N7
\inst1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(16));

-- Location: LCCOMB_X45_Y52_N8
\inst1|cuenta[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[17]~60_combout\ = (\inst1|cuenta\(17) & (!\inst1|cuenta[16]~59\)) # (!\inst1|cuenta\(17) & ((\inst1|cuenta[16]~59\) # (GND)))
-- \inst1|cuenta[17]~61\ = CARRY((!\inst1|cuenta[16]~59\) # (!\inst1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(17),
	datad => VCC,
	cin => \inst1|cuenta[16]~59\,
	combout => \inst1|cuenta[17]~60_combout\,
	cout => \inst1|cuenta[17]~61\);

-- Location: FF_X45_Y52_N9
\inst1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(17));

-- Location: LCCOMB_X45_Y52_N10
\inst1|cuenta[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[18]~62_combout\ = (\inst1|cuenta\(18) & (\inst1|cuenta[17]~61\ $ (GND))) # (!\inst1|cuenta\(18) & (!\inst1|cuenta[17]~61\ & VCC))
-- \inst1|cuenta[18]~63\ = CARRY((\inst1|cuenta\(18) & !\inst1|cuenta[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(18),
	datad => VCC,
	cin => \inst1|cuenta[17]~61\,
	combout => \inst1|cuenta[18]~62_combout\,
	cout => \inst1|cuenta[18]~63\);

-- Location: FF_X45_Y52_N11
\inst1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(18));

-- Location: LCCOMB_X45_Y52_N12
\inst1|cuenta[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[19]~64_combout\ = (\inst1|cuenta\(19) & (!\inst1|cuenta[18]~63\)) # (!\inst1|cuenta\(19) & ((\inst1|cuenta[18]~63\) # (GND)))
-- \inst1|cuenta[19]~65\ = CARRY((!\inst1|cuenta[18]~63\) # (!\inst1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datad => VCC,
	cin => \inst1|cuenta[18]~63\,
	combout => \inst1|cuenta[19]~64_combout\,
	cout => \inst1|cuenta[19]~65\);

-- Location: FF_X45_Y52_N13
\inst1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(19));

-- Location: LCCOMB_X45_Y52_N14
\inst1|cuenta[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[20]~66_combout\ = (\inst1|cuenta\(20) & (\inst1|cuenta[19]~65\ $ (GND))) # (!\inst1|cuenta\(20) & (!\inst1|cuenta[19]~65\ & VCC))
-- \inst1|cuenta[20]~67\ = CARRY((\inst1|cuenta\(20) & !\inst1|cuenta[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(20),
	datad => VCC,
	cin => \inst1|cuenta[19]~65\,
	combout => \inst1|cuenta[20]~66_combout\,
	cout => \inst1|cuenta[20]~67\);

-- Location: FF_X45_Y52_N15
\inst1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(20));

-- Location: LCCOMB_X45_Y52_N16
\inst1|cuenta[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[21]~68_combout\ = (\inst1|cuenta\(21) & (!\inst1|cuenta[20]~67\)) # (!\inst1|cuenta\(21) & ((\inst1|cuenta[20]~67\) # (GND)))
-- \inst1|cuenta[21]~69\ = CARRY((!\inst1|cuenta[20]~67\) # (!\inst1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(21),
	datad => VCC,
	cin => \inst1|cuenta[20]~67\,
	combout => \inst1|cuenta[21]~68_combout\,
	cout => \inst1|cuenta[21]~69\);

-- Location: FF_X45_Y52_N17
\inst1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(21));

-- Location: LCCOMB_X45_Y52_N18
\inst1|cuenta[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[22]~70_combout\ = (\inst1|cuenta\(22) & (\inst1|cuenta[21]~69\ $ (GND))) # (!\inst1|cuenta\(22) & (!\inst1|cuenta[21]~69\ & VCC))
-- \inst1|cuenta[22]~71\ = CARRY((\inst1|cuenta\(22) & !\inst1|cuenta[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(22),
	datad => VCC,
	cin => \inst1|cuenta[21]~69\,
	combout => \inst1|cuenta[22]~70_combout\,
	cout => \inst1|cuenta[22]~71\);

-- Location: FF_X45_Y52_N19
\inst1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(22));

-- Location: LCCOMB_X45_Y52_N20
\inst1|cuenta[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[23]~72_combout\ = (\inst1|cuenta\(23) & (!\inst1|cuenta[22]~71\)) # (!\inst1|cuenta\(23) & ((\inst1|cuenta[22]~71\) # (GND)))
-- \inst1|cuenta[23]~73\ = CARRY((!\inst1|cuenta[22]~71\) # (!\inst1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(23),
	datad => VCC,
	cin => \inst1|cuenta[22]~71\,
	combout => \inst1|cuenta[23]~72_combout\,
	cout => \inst1|cuenta[23]~73\);

-- Location: FF_X45_Y52_N21
\inst1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(23));

-- Location: LCCOMB_X45_Y52_N22
\inst1|cuenta[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[24]~74_combout\ = (\inst1|cuenta\(24) & (\inst1|cuenta[23]~73\ $ (GND))) # (!\inst1|cuenta\(24) & (!\inst1|cuenta[23]~73\ & VCC))
-- \inst1|cuenta[24]~75\ = CARRY((\inst1|cuenta\(24) & !\inst1|cuenta[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(24),
	datad => VCC,
	cin => \inst1|cuenta[23]~73\,
	combout => \inst1|cuenta[24]~74_combout\,
	cout => \inst1|cuenta[24]~75\);

-- Location: FF_X45_Y52_N23
\inst1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(24));

-- Location: LCCOMB_X45_Y52_N24
\inst1|cuenta[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|cuenta[25]~76_combout\ = \inst1|cuenta[24]~75\ $ (\inst1|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cuenta\(25),
	cin => \inst1|cuenta[24]~75\,
	combout => \inst1|cuenta[25]~76_combout\);

-- Location: FF_X45_Y52_N25
\inst1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|cuenta[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(25));

-- Location: LCCOMB_X46_Y53_N30
\inst|26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|26~0_combout\ = !\inst|26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|26~q\,
	combout => \inst|26~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X46_Y53_N31
\inst|26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|cuenta\(25),
	d => \inst|26~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|26~q\);

-- Location: LCCOMB_X46_Y53_N20
\inst|5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|5~combout\ = LCELL((\inst1|cuenta\(25)) # (!\inst|26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cuenta\(25),
	datad => \inst|26~q\,
	combout => \inst|5~combout\);

-- Location: LCCOMB_X46_Y53_N2
\inst|25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|25~0_combout\ = !\inst|25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|25~q\,
	combout => \inst|25~0_combout\);

-- Location: FF_X46_Y53_N3
\inst|25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|5~combout\,
	d => \inst|25~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|25~q\);

-- Location: LCCOMB_X46_Y53_N6
\inst|51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|51~combout\ = LCELL((\inst1|cuenta\(25)) # ((!\inst|25~q\) # (!\inst|26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(25),
	datac => \inst|26~q\,
	datad => \inst|25~q\,
	combout => \inst|51~combout\);

-- Location: LCCOMB_X47_Y53_N24
\inst|24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|24~0_combout\ = !\inst|24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|24~q\,
	combout => \inst|24~0_combout\);

-- Location: FF_X47_Y53_N25
\inst|24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|51~combout\,
	d => \inst|24~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|24~q\);

-- Location: LCCOMB_X46_Y53_N16
\inst|21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|21~combout\ = LCELL((\inst1|cuenta\(25)) # (((!\inst|24~q\) # (!\inst|26~q\)) # (!\inst|25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(25),
	datab => \inst|25~q\,
	datac => \inst|26~q\,
	datad => \inst|24~q\,
	combout => \inst|21~combout\);

-- Location: LCCOMB_X47_Y53_N18
\inst|23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|23~0_combout\ = !\inst|23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|23~q\,
	combout => \inst|23~0_combout\);

-- Location: FF_X47_Y53_N19
\inst|23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|21~combout\,
	d => \inst|23~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|23~q\);

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

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


