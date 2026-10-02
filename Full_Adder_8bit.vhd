library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Full_Adder_8bit is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           A4 : in  STD_LOGIC;
           A5 : in  STD_LOGIC;
           A6 : in  STD_LOGIC;
           A7 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           B4 : in  STD_LOGIC; 
			  B5 : in  STD_LOGIC;
           B6 : in  STD_LOGIC;
           B7 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           S0 : out  STD_LOGIC;
           S1 : out  STD_LOGIC;
           S2 : out  STD_LOGIC;
           S3 : out  STD_LOGIC;
           S4 : out  STD_LOGIC;
           S5 : out  STD_LOGIC;
           S6 : out  STD_LOGIC;
           S7 : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end Full_Adder_8bit;
architecture Structural of Full_Adder_8bit is

 component Full_Adder_1bit
     Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
     end component;
    signal C1,C2,C3,C4,C5,C6,C7 : STD_LOGIC;
begin
 fa0 : Full_Adder_1bit port map (A=>A0,B=>B0,cin=>cin,sum=>S0,cout=>c1);
    fa1 : Full_Adder_1bit port map (A=>A1,B=>B1,cin=>c1,sum=>S1,cout=>c2);
    fa2 : Full_Adder_1bit port map (A=>A2,B=>B2,cin=>c2,sum=>S2,cout=>c3);
    fa3 : Full_Adder_1bit port map (A=>A3,b=>B3,cin=>c3,sum=>S3,cout=>c4);
    fa4 : Full_Adder_1bit port map (A=>A4,b=>B4,cin=>c4,sum=>S4,cout=>c5);
	  fa5 : Full_Adder_1bit port map (A=>A5,b=>B5,cin=>c5,sum=>S5,cout=>c6);
    fa6 : Full_Adder_1bit port map (A=>A6,B=>B6,cin=>c6,sum=>S6,cout=>c7);
    fa7 : Full_Adder_1bit port map (A=>A7,B=>B7,cin=>c7,sum=>S7,cout=>cout);

end Structural;
