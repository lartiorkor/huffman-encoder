	----------------------------------------------------------------------------------
	-- Company: 
	-- Engineer: 
	-- 
	-- Create Date:    14:58:16 07/15/2021 
	-- Design Name: 
	-- Module Name:    up_counter_2bit - Behavioral 
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
	use IEEE.STD_LOGIC_UNSIGNED.ALL;

	-- Uncomment the following library declaration if instantiating
	-- any Xilinx primitives in this code.
	--library UNISIM;
	--use UNISIM.VComponents.all;

	entity up_counter_2bit is 
	Port(
	clk, reset, count : in std_logic;
	output            : out std_logic_vector(3 downto 0)
	);
	end up_counter_2bit;

	architecture Behavioral of up_counter_2bit is

   signal out_sig : std_logic_vector(3 downto 0);

	begin
	
	process(clk, reset)
	 begin
		if (reset = '1') then
		 out_sig <= "0000";
		elsif (rising_edge(clk)) then
			IF (COUNT = '1') THEN
				out_sig <= out_sig + "0001";
			END IF;
		end if;
	 end process;
	 
	 output <= out_sig;
--	 state_reg : process(clk, reset)
--						begin
--						if (reset = '1') then
--						PS <= ST0;
--						elsif (rising_edge(clk)) then
--						PS <= NS;
--						end if;
--						end process;
--						
--						
--	next_state_logic : process(PS, count)
--						begin
--						case PS is 
--						
--						when ST0 => 
--						if (count = '1') then
--						NS <= ST1;
--						else
--						NS <= ST0;
--						end if;
--						
--						when ST1=> 
--						if (count = '1') then
--						NS <= ST1;
--						else
--						NS <= ST0;
--						end if;
--						
--						end case;
--						end process;
--	 
--						
--	output_logic : process(PS)
--						begin
--						case (PS) is
--						
--						when ST0 => 
--						output <= "0001";
--						
--						when ST1 => 
--						output <= "0001";
--						
--						end case;
--						end process;

	end Behavioral;

