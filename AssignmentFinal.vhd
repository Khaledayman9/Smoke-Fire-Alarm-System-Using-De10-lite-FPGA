library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity AssignmentFinal is
port( a,b: in std_logic_vector(2 downto 0);
      s,s1,s2:Buffer std_logic_vector(3 downto 0);
		leds1 ,leds2 : OUT std_logic_vector(0 to 6));
		
	end AssignmentFinal;

	
	
 
 architecture fulladdarch of AssignmentFinal is
 signal z : std_logic_vector(3 downto 0);
 signal x : std_logic_vector(4 downto 0);
 signal Adjust : std_logic;
 begin
 z <= ('0' & a)+ b;
 s <= z;
 Adjust <= '1' when z > 9 else '0';
 x <= ('0'&z)+6;
 s1 <= z when (Adjust = '0') else x(3 downto 0);
 s2 <= "000" & x(4);
process(s1,s2)
  begin
    case s1 is 
     when "0000" => leds1 <= "0000001";
	  when "0001" => leds1 <= "1001111";
	  when "0010" => leds1 <= "0010010";
	  when "0011" => leds1 <= "0000110";
	  when "0100" => leds1 <= "1001100";
	  when "0101" => leds1 <= "0100100";
	  when "0110" => leds1 <= "0100000";
	  when "0111" => leds1 <= "0001111";
	  when "1000" => leds1 <= "0000000";
	  when "1001" => leds1 <= "0001100";
	  when others => leds1 <= "-------";
    End case;
	 case s2 is
	  when "0000" => leds2 <= "0000001";
	  when "0001" => leds2 <= "1001111";
	  when "0010" => leds2 <= "0010010";
	  when "0011" => leds2 <= "0000110";
	  when "0100" => leds2 <= "1001100";
	  when "0101" => leds2 <= "0100100";
	  when "0110" => leds2 <= "0100000";
	  when "0111" => leds2 <= "0001111";
	  when "1000" => leds2 <= "0000000";
	  when "1001" => leds2 <= "0001100";
	  when others => leds2 <= "-------";
	  end case;
 End process;
end fulladdarch; 
 
	   
	
	
 
 
 