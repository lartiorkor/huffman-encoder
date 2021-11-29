	----------------------------------------------------------------------------------
	-- Company: 
	-- Engineer: 
	-- 
	-- Create Date:    19:15:42 11/29/2021 
	-- Design Name: 
	-- Module Name:    occurence_calc - Behavioral 
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
	use IEEE.NUMERIC_STD.ALL;

	-- Uncomment the following library declaration if instantiating
	-- any Xilinx primitives in this code.
	--library UNISIM;
	--use UNISIM.VComponents.all;

	entity occurence_calc is
	Port(
	reset  : in  std_logic;
	clk    : in  std_logic;
	load   : in  std_logic;
	count  : in  std_logic;
	output : out std_logic_vector (3 downto 0)
	);
	end occurence_calc;

	architecture Behavioral of occurence_calc is
	
	
	--ADDER
	component adder
	Port( 
	data_in_1 : in  std_logic_vector(3 downto 0);
	data_in_2 : in  std_logic_vector(3 downto 0);
	data_out  : out std_logic_vector(3 downto 0)
	);
	end component;
	
	
	--REGISTER
	component reg_4bit
	Port (
	clk,reset,load: in std_logic;
	d             : in std_logic_vector(3 downto 0);
	q             : out std_logic_vector(3 downto 0)
	);
	end component;
	
	
	--COUNTER
	component up_counter_2bit
	Port(
	clk, reset, count : in std_logic;
	output            : out std_logic_vector(3 downto 0)
	);
	end component;
	
	--SIGNALS
	signal count_out, reg_out, add_out : std_logic_vector(3 downto 0);
	
	
	begin
	
	ADDER1 : adder 
	Port map(
	data_in_1 => count_out,
	data_in_2 => reg_out,
	data_out  => add_out
	);

	REGISTER1 : reg_4bit
	Port map (
	clk   => clk,
	reset => reset,
	load  => load,
	d     => add_out,
	q     => reg_out
	);

	COUNTER : up_counter_2bit
	Port map (
	clk    => clk,
	reset  => reset,
	count  => count,
	output => count_out
	);
	
	output <= add_out;
	
	end Behavioral;

