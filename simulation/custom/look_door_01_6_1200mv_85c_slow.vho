-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/14/2022 02:09:28"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	look_door_01 IS
    PORT (
	A1 : OUT std_logic;
	\0\ : IN std_logic;
	\2\ : IN std_logic;
	\4\ : IN std_logic;
	\8\ : IN std_logic;
	\6\ : IN std_logic;
	A2 : OUT std_logic;
	\1\ : IN std_logic;
	\5\ : IN std_logic;
	\9\ : IN std_logic;
	A3 : OUT std_logic;
	\3\ : IN std_logic;
	A4 : OUT std_logic;
	\7\ : IN std_logic;
	CLK : IN std_logic;
	reset : IN std_logic
	);
END look_door_01;

-- Design Ports Information
-- A1	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 8	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 0	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 6	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 9	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 7	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF look_door_01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL \ww_0\ : std_logic;
SIGNAL \ww_2\ : std_logic;
SIGNAL \ww_4\ : std_logic;
SIGNAL \ww_8\ : std_logic;
SIGNAL \ww_6\ : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL \ww_1\ : std_logic;
SIGNAL \ww_5\ : std_logic;
SIGNAL \ww_9\ : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL \ww_3\ : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL \ww_7\ : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \A1~output_o\ : std_logic;
SIGNAL \A2~output_o\ : std_logic;
SIGNAL \A3~output_o\ : std_logic;
SIGNAL \A4~output_o\ : std_logic;
SIGNAL \4~input_o\ : std_logic;
SIGNAL \8~input_o\ : std_logic;
SIGNAL \0~input_o\ : std_logic;
SIGNAL \6~input_o\ : std_logic;
SIGNAL \2~input_o\ : std_logic;
SIGNAL \or_A1~0_combout\ : std_logic;
SIGNAL \or_A1~combout\ : std_logic;
SIGNAL \9~input_o\ : std_logic;
SIGNAL \5~input_o\ : std_logic;
SIGNAL \1~input_o\ : std_logic;
SIGNAL \or_A2~combout\ : std_logic;
SIGNAL \3~input_o\ : std_logic;
SIGNAL \or_A3~0_combout\ : std_logic;
SIGNAL \7~input_o\ : std_logic;
SIGNAL \or_A4~0_combout\ : std_logic;

BEGIN

A1 <= ww_A1;
\ww_0\ <= \0\;
\ww_2\ <= \2\;
\ww_4\ <= \4\;
\ww_8\ <= \8\;
\ww_6\ <= \6\;
A2 <= ww_A2;
\ww_1\ <= \1\;
\ww_5\ <= \5\;
\ww_9\ <= \9\;
A3 <= ww_A3;
\ww_3\ <= \3\;
A4 <= ww_A4;
\ww_7\ <= \7\;
ww_CLK <= CLK;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N23
\A1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or_A1~combout\,
	devoe => ww_devoe,
	o => \A1~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\A2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or_A2~combout\,
	devoe => ww_devoe,
	o => \A2~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\A3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or_A3~0_combout\,
	devoe => ww_devoe,
	o => \A3~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\A4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or_A4~0_combout\,
	devoe => ww_devoe,
	o => \A4~output_o\);

-- Location: IOIBUF_X3_Y24_N1
\4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_4\,
	o => \4~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_8\,
	o => \8~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_0\,
	o => \0~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_6\,
	o => \6~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_2\,
	o => \2~input_o\);

-- Location: LCCOMB_X1_Y17_N24
\or_A1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \or_A1~0_combout\ = (!\6~input_o\ & !\2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \6~input_o\,
	datad => \2~input_o\,
	combout => \or_A1~0_combout\);

-- Location: LCCOMB_X1_Y17_N26
or_A1 : cycloneiii_lcell_comb
-- Equation(s):
-- \or_A1~combout\ = (\4~input_o\) # ((\8~input_o\) # ((\0~input_o\) # (!\or_A1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \4~input_o\,
	datab => \8~input_o\,
	datac => \0~input_o\,
	datad => \or_A1~0_combout\,
	combout => \or_A1~combout\);

-- Location: IOIBUF_X0_Y18_N22
\9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_9\,
	o => \9~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_5\,
	o => \5~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_1\,
	o => \1~input_o\);

-- Location: LCCOMB_X1_Y17_N12
or_A2 : cycloneiii_lcell_comb
-- Equation(s):
-- \or_A2~combout\ = (\9~input_o\) # ((\5~input_o\) # ((\1~input_o\) # (!\or_A1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \9~input_o\,
	datab => \5~input_o\,
	datac => \1~input_o\,
	datad => \or_A1~0_combout\,
	combout => \or_A2~combout\);

-- Location: IOIBUF_X0_Y19_N1
\3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_3\,
	o => \3~input_o\);

-- Location: LCCOMB_X1_Y17_N30
\or_A3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \or_A3~0_combout\ = (\4~input_o\) # ((\5~input_o\) # ((\6~input_o\) # (\3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \4~input_o\,
	datab => \5~input_o\,
	datac => \6~input_o\,
	datad => \3~input_o\,
	combout => \or_A3~0_combout\);

-- Location: IOIBUF_X0_Y11_N1
\7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_7\,
	o => \7~input_o\);

-- Location: LCCOMB_X1_Y17_N0
\or_A4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \or_A4~0_combout\ = (\8~input_o\) # ((\7~input_o\) # (\9~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \8~input_o\,
	datac => \7~input_o\,
	datad => \9~input_o\,
	combout => \or_A4~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_A1 <= \A1~output_o\;

ww_A2 <= \A2~output_o\;

ww_A3 <= \A3~output_o\;

ww_A4 <= \A4~output_o\;
END structure;


