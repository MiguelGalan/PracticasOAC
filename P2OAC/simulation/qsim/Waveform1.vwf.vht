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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/07/2023 22:15:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          P2OAC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY P2OAC_vhd_vec_tst IS
END P2OAC_vhd_vec_tst;
ARCHITECTURE P2OAC_arch OF P2OAC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL E1 : STD_LOGIC;
SIGNAL E2 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
COMPONENT P2OAC
	PORT (
	clk : IN STD_LOGIC;
	E1 : IN STD_LOGIC;
	E2 : IN STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : P2OAC
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	E1 => E1,
	E2 => E2,
	S1 => S1,
	S2 => S2
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- E1
t_prcs_E1: PROCESS
BEGIN
	E1 <= '0';
WAIT;
END PROCESS t_prcs_E1;

-- E2
t_prcs_E2: PROCESS
BEGIN
	E2 <= '1';
	WAIT FOR 150000 ps;
	E2 <= '0';
WAIT;
END PROCESS t_prcs_E2;
END P2OAC_arch;
