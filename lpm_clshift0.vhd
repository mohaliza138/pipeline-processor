-- megafunction wizard: %LPM_CLSHIFT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_CLSHIFT 

-- ============================================================
-- File Name: lpm_clshift0.vhd
-- Megafunction Name(s):
-- 			LPM_CLSHIFT
--
-- Simulation Library Files(s):
-- 			
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.0 Build 162 10/23/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_clshift0 IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		direction		: IN STD_LOGIC ;
		distance		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END lpm_clshift0;


ARCHITECTURE SYN OF lpm_clshift0 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (15 DOWNTO 0);



	COMPONENT lpm_clshift
	GENERIC (
		lpm_shifttype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL;
		lpm_widthdist		: NATURAL
	);
	PORT (
			data	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			direction	: IN STD_LOGIC ;
			distance	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(15 DOWNTO 0);

	LPM_CLSHIFT_component : LPM_CLSHIFT
	GENERIC MAP (
		lpm_shifttype => "ARITHMETIC",
		lpm_type => "LPM_CLSHIFT",
		lpm_width => 16,
		lpm_widthdist => 4
	)
	PORT MAP (
		data => data,
		direction => direction,
		distance => distance,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Arria II GX"
-- Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "1"
-- Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "16"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: lpm_widthdist NUMERIC "4"
-- Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: PRIVATE: port_direction NUMERIC "2"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "ARITHMETIC"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
-- Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "4"
-- Retrieval info: USED_PORT: data 0 0 16 0 INPUT NODEFVAL "data[15..0]"
-- Retrieval info: USED_PORT: direction 0 0 0 0 INPUT NODEFVAL "direction"
-- Retrieval info: USED_PORT: distance 0 0 4 0 INPUT NODEFVAL "distance[3..0]"
-- Retrieval info: USED_PORT: result 0 0 16 0 OUTPUT NODEFVAL "result[15..0]"
-- Retrieval info: CONNECT: @data 0 0 16 0 data 0 0 16 0
-- Retrieval info: CONNECT: @direction 0 0 0 0 direction 0 0 0 0
-- Retrieval info: CONNECT: @distance 0 0 4 0 distance 0 0 4 0
-- Retrieval info: CONNECT: result 0 0 16 0 @result 0 0 16 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_clshift0_inst.vhd FALSE
