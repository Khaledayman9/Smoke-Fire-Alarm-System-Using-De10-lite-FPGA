library ieee;
use ieee.std_logic_1164.all;

entity DSDProject1 is
port(smoke,prox: in std_logic;
 buzzer:out std_logic;
 leds1: out std_logic_vector(4 downto 0);
 leds2: out std_logic_vector(9 downto 5);
 visual1,visual2,visual3,visual4,visualP : OUT std_logic_vector(0 to 6));
end DSDProject1;

architecture arch of DSDProject1 is
begin
process(smoke,prox)
begin
if smoke ='0' then
   leds1 <= "11111";
	buzzer <= '1';
	visual1 <= "0110000";
	visual2 <= "0001000";
	visual3 <= "1111001";
	visual4 <= "0111000";
else
  leds1 <= "00000";
  buzzer <= '0';
  visual1 <= "0110000";
  visual2 <= "0111000";
  visual3 <= "0001000";
  visual4 <= "0100100";
end if;
if (smoke = '0') and (prox = '0') then
	leds2 <= "11111";
	visualP <= "0011000";
else  
   leds2 <= "00000";
	visualP <= "0110000";
end if;
end process;
end arch;




