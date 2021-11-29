	----------------------------------------------------------------------------------
	-- Company: 
	-- Engineer: 
	-- 
	-- Create Date:    20:13:09 11/29/2021 
	-- Design Name: 
	-- Module Name:    full_occurence - Behavioral 
	-- Project Name: 
	-- Target Devices: 
	-- Tool versions: 
	-- Description: 
	--
	-- Dependencies: 
	--
	-- Revision: 
	-- Revision 0.01 - File Created
	-- Additional Comments: 
	--
	----------------------------------------------------------------------------------
	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;

	-- Uncomment the following library declaration if using
	-- arithmetic functions with Signed or Unsigned values
	--use IEEE.NUMERIC_STD.ALL;

	-- Uncomment the following library declaration if instantiating
	-- any Xilinx primitives in this code.
	--library UNISIM;
	--use UNISIM.VComponents.all;

	entity full_occurence is
	Port (
	input    : in  std_logic_vector(3 downto 0);
	reset    : in  std_logic;
	clk      : in  std_logic;
	load     : in  std_logic;
	output0  : out std_logic_vector (3 downto 0);
	output1  : out std_logic_vector (3 downto 0);
	output2  : out std_logic_vector (3 downto 0);
	output3  : out std_logic_vector (3 downto 0);
	output4  : out std_logic_vector (3 downto 0);
	output5  : out std_logic_vector (3 downto 0);
	output6  : out std_logic_vector (3 downto 0);
	output7  : out std_logic_vector (3 downto 0);
	output8  : out std_logic_vector (3 downto 0);
	output9  : out std_logic_vector (3 downto 0);
	output10 : out std_logic_vector (3 downto 0);
	output11 : out std_logic_vector (3 downto 0);
	output12 : out std_logic_vector (3 downto 0);
	output13 : out std_logic_vector (3 downto 0);
	output14 : out std_logic_vector (3 downto 0);
	output15 : out std_logic_vector (3 downto 0)
	);
	end full_occurence;

	architecture Behavioral of full_occurence is
	
	--SIGNALS
	signal sig0  : std_logic;
	signal sig1  : std_logic;
	signal sig2  : std_logic;
	signal sig3  : std_logic;
	signal sig4  : std_logic;
	signal sig5  : std_logic;
	signal sig6  : std_logic;
	signal sig7  : std_logic;
	signal sig8  : std_logic;
	signal sig9  : std_logic;
	signal sig10 : std_logic;
	signal sig11 : std_logic;
	signal sig12 : std_logic;
	signal sig13 : std_logic;
	signal sig14 : std_logic;
	signal sig15 : std_logic;
	
	component occurence_calc
	Port(
	reset  : in  std_logic;
	clk    : in  std_logic;
	load   : in  std_logic;
	count  : in  std_logic;
	output : out std_logic_vector (3 downto 0)
	);
	end component;

	begin
	occurence_0 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig0,
	output => output0
	);
	
	occurence_1 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig1,
	output => output1
	);
	
	occurence_2 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig2,
	output => output2
	);
	
	occurence_3 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig3,
	output => output3
	);
	
	occurence_4 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig4,
	output => output4
	);
	
	occurence_5 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig5,
	output => output5
	);
	
	occurence_6 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig6,
	output => output6
	);
	
	occurence_7 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig7,
	output => output7
	);
	
	occurence_8 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig8,
	output => output8
	);
	
	occurence_9 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig9,
	output => output9
	);
	
	occurence_10 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig10,
	output => output10
	);
	
	occurence_11 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig11,
	output => output11
	);
	
	occurence_12 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig12,
	output => output12
	);
	
	occurence_13 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig13,
	output => output13
	);
	
	occurence_14 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig14,
	output => output14
	);
	
	occurence_15 : occurence_calc
	Port map (
	reset  => reset,
	clk    => clk,
	load   => load,
	count  => sig15,
	output => output15
	);

	--GATES
	sig0 <= not(input(3) or input(2) or input(1) or input(0));
	sig1 <= not input(3) and not input(2) and not input(1) and input(0);
	sig2 <= not input(3) and not input(2) and input(1) and not input(0);
	sig3 <= not input(3) and not input(2) and input(1) and input(0);
	sig4 <= not input(3) and input(2) and not input(1) and not input(0);
	sig5 <= not input(3) and input(2) and not input(1) and input(0);
	sig6 <= not input(3) and input(2) and input(1) and not input(0);
	sig7 <= not input(3) and input(2) and input(1) and input(0);
	sig8 <= input(3) and not input(2) and not input(1) and not input(0);
	sig9 <= input(3) and not input(2) and not input(1) and input(0);
	sig10 <= input(3) and not input(2) and input(1) and not input(0);
	sig11 <= input(3) and not input(2) and input(1) and input(0);
	sig12 <= input(3) and input(2) and not input(1) and not input(0);
	sig13 <= input(3) and input(2) and not input(1) and input(0);
	sig14 <= input(3) and input(2) and input(1) and not input(0);
	sig15 <= input(3) and input(2) and input(1) and input(0);
	
	
	
	
	end Behavioral;

