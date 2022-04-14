LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY door_lock_02 IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		reset: IN STD_LOGIC;
		sw0 :  IN  STD_LOGIC;
		sw1 :  IN  STD_LOGIC;
		sw2 :  IN  STD_LOGIC;
		sw3 :  IN  STD_LOGIC;
		sw4 :  IN  STD_LOGIC;
		sw5 :  IN  STD_LOGIC;
		sw6 :  IN  STD_LOGIC;
		sw7 :  IN  STD_LOGIC;
		sw8 :  IN  STD_LOGIC;
		sw9 :  IN  STD_LOGIC;
		y1 :  buffer  STD_LOGIC;
		y2 :  buffer  STD_LOGIC;
		y3 :  buffer  STD_LOGIC;
		unlock : out STD_LOGIC

	);
END door_lock_02;

ARCHITECTURE behavior OF door_lock_02 IS
signal A : STD_LOGIC;
signal B : STD_LOGIC;
signal C : STD_LOGIC;
signal D : STD_LOGIC;
signal X : STD_LOGIC;
signal Y : STD_LOGIC;
signal Z : STD_LOGIC;
signal sw6b : STD_LOGIC;

BEGIN 

X <= y1;
Y <= y2;
Z <= y3;

sw6b <= sw6 or reset;

A <= sw7 OR sw8 OR sw9 OR reset;
B <= sw3 OR sw4 OR sw5 OR sw6b;
C <= sw1 OR sw2 OR sw5 OR sw6b OR sw9;
D <= sw0 or sw2 or sw4 or sw6b or sw8;

unlock <= y1 and y2 and not(y3);

	process(CLK)
	begin
	if  (rising_edge(CLK)) then
		y1 <= (NOT a AND b AND NOT c AND d AND x AND NOT y) OR (NOT a AND NOT b AND NOT c AND NOT d AND x AND NOT y) OR (NOT a AND NOT b AND NOT c AND NOT d AND x AND NOT z) OR (NOT a AND NOT b AND NOT c AND NOT d AND NOT x AND y AND z);
	end if;
	end process;
	process(CLK)
	begin
	if (rising_edge(CLK)) then 
		y2 <= (a AND NOT b AND NOT c AND d AND NOT x AND y) OR (NOT a AND NOT b AND NOT c AND NOT d AND y AND NOT z) OR (NOT a AND NOT b AND NOT c AND NOT d AND NOT y AND z);
	end if;
	end process;
	process(CLK)
	begin
	if(rising_edge(CLK)) then
		y3 <= (a AND NOT b AND NOT c AND d AND NOT x AND y) OR (NOT a AND b AND NOT c AND d AND x AND NOT y) OR (NOT a AND NOT b AND c AND NOT d AND NOT x AND NOT y);
	end if;
	end process;
	
end behavior;