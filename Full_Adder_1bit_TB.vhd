LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY Full_Adder_1bit_TB IS
END Full_Adder_1bit_TB;
 
ARCHITECTURE behavior OF Full_Adder_1bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder_1bit
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
	   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

     --Outputs
   signal sum : std_logic;
   signal cout : std_logic;

 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder_1bit PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sum => sum,
          cout => cout
        );

-- Stimulus process
   stim_proc: process
   begin
         a <= '0'; b<= '0'; cin<= '0'; wait for 50 ns;
        a <= '0'; b<= '0'; cin<= '1'; wait for 50 ns;
        a <= '0'; b<= '1'; cin<= '0'; wait for 50 ns;
        a <= '0'; b<= '1'; cin<= '1'; wait for 50 ns;
		   a <= '1'; b<= '0'; cin<= '0'; wait for 50 ns;
        a <= '1'; b<= '0'; cin<= '1'; wait for 50 ns;
        a <= '1'; b<= '1'; cin<= '0'; wait for 50 ns;
        a <= '1'; b<= '1'; cin<= '1'; wait for 50 ns;
        wait;

   end process;

END;

