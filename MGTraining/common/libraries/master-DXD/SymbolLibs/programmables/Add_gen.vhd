LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

entity add_gen is
	Port (
                signal reset, enable, clock : in std_logic;
		signal tc : out std_logic;
		signal addr : out std_logic_vector(11 downto 0)
	     );
end add_gen;

architecture behv of add_gen is

signal cnt : std_logic_vector(11 downto 0);

begin

process (clock)

	begin

		if (clock'event and clock = '1') then
			if reset = '0' then
				cnt <= "000000000000";
			else
				if enable = '1' then
			   		cnt <= cnt;   
				elsif enable = '0' then
			   		cnt <= cnt + "000000000001";
				end if;
			end if;
		end if;
end process;

	tc <= '1' when
		cnt = "111111111111" 
	else '0';
	
	addr <= cnt;
end behv;
