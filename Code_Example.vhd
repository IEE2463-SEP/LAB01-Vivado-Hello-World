library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab01_Blinking_VHDL is
    Port ( clock : in STD_LOGIC;
           sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
           sw2 : in STD_LOGIC;
           sw3 : in STD_LOGIC;
           led0 : out STD_LOGIC;
           led1 : out STD_LOGIC;
           led2 : out STD_LOGIC;
           led3 : out STD_LOGIC);
end Lab01_Blinking_VHDL;

architecture Behavioral of Lab01_Blinking_VHDL is

signal timer :  std_logic_vector(27 downto 0);

begin
    process(clock) is
    begin
        if (clock'event and clock='1') then -- Equivalently you can write: if(rising_edge(clock))
        timer <= timer+1; 
    end if;

end process;

led0 <= sw0 AND sw1 AND sw2;
led1 <= sw0 OR sw1 OR sw3;
led2 <= timer(25);
led3 <= timer(26);

end Behavioral;
