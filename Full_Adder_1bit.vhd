library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Full_Adder_1bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end Full_Adder_1bit;

architecture Behavioral of Full_Adder_1bit is

begin
sum <= a xor b xor cin;
cout <= (a and b) or (b and cin) or (a and cin);

end Behavioral;