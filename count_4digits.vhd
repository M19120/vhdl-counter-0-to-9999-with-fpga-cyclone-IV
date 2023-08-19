library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

 
entity count_4digits is
port ( clk_gen: in std_logic;
		 reset: in std_logic; 
		 ini_but: in std_logic;
		 numbers: out std_logic_vector(7 downto 0); --segments 
		 digit: out std_logic_vector(3 downto 0) --digits in cyclone iv, common cathode
		 );
end count_4digits;
  
architecture rtl of count_4digits is  

type state_mach is (unit, tens, hundred,thousand); 

signal prs_state,fut_state :state_mach:=unit;
signal delay_end :integer := 499999; --clk time, in cyclone iv:= 50 MHz
signal delay_sw :integer  := 4999; --time refresh between segments
signal princ_count : integer range 0 to 9:= 0;
signal count_unit , count_tens,count_hund , count_thous: integer range 0 to 9:= 0;
signal count_delay : integer range 0 to delay_end := 0; 
signal count_sw : integer range 0 to delay_sw := 0; 
begin
process (clk_gen)
begin 
	if(rising_edge(clk_gen)) then 
		if(reset = '0') then
			count_unit<= 0; 
			count_tens<= 0; 
			count_hund<= 0;
			count_thous<=0;
		else 
			if (ini_but= '1') then 
				if (count_delay = delay_end) then 
					count_delay <= 0; 
					count_unit<= count_unit +1;
					if(count_unit = 9) then 
						count_unit<= 0; 
						count_tens <= count_tens +1; 
						if(count_tens = 9) then 
							count_tens<= 0; 
							count_hund<= count_hund +1;
							if(count_hund=9) then 
								count_hund<=0;
								count_thous<= count_thous +1;
								if(count_thous = 9) then 
									count_thous<=0;
								end if;
							end if;
						end if;
					end if;
				else	
					count_delay <= count_delay +1; 
				end if;
			end if;
	   end if; 
	end if;
end process; 

process(prs_state)
begin
	case prs_state is 
		when unit => 
			digit <= "1110";
			fut_state<= tens;
		when tens => 
			digit <= "1101"; 
			fut_state<= hundred;
		when hundred =>
			digit <= "1011";
			fut_state<= thousand;
		when thousand => 
			digit<="0111";
			fut_state<=unit;
		when others => null; 
	end case;		
end process;

process(clk_gen,prs_state,fut_state)
begin 
	if(rising_edge(clk_gen)) then 
		count_sw<=count_sw +1;
		if (count_sw = delay_sw )then 
			count_sw <= 0;
			prs_state<=fut_state;
		end if;
	end if;
end process;

princ_count <= count_unit when prs_state = unit else 
					count_tens when prs_state = tens else
					count_hund when prs_state = hundred else 
					count_thous;
					 
					 

numbers<=    "00000011" when princ_count = 0 else -- 0 or 0x7f
				 "10011111" when princ_count = 1 else -- 1 or 0x9f
				 "00100101" when princ_count = 2 else --2 or 0x25
				 "00001101" when princ_count = 3 else --3 or 0x0d
				 "10011001" when princ_count = 4 else --4 or 0x49
				 "01001001" when princ_count = 5 else --5 or 0x49
				 "01000001" when princ_count = 6 else -- 6 or 0x41
				 "00011111" when princ_count = 7 else -- 7 or 0x1f
				 "00000001" when princ_count = 8 else -- 8 or 0x01
				 "00001001";
end rtl;


