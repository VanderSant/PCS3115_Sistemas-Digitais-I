------------------------------------------------------
--! @file log2UC.vhdl
--! @brief 
--! @author Vanderson Santos (vanderson.santos@usp.br)
--! @date 06/2020
-------------------------------------------------------

entity mux4_2to1 is
    port (
      SEL : in bit;    
      A :   in bit_vector  (3 downto 0);
      B :   in bit_vector  (3 downto 0);
      Y :   out bit_vector (3 downto 0)
      );
  end entity mux4_2to1;
  
  architecture with_select of mux4_2to1 is
  begin
    with SEL select
      Y <= A when '0',
           B when '1',
           "0000" when others;
  end architecture with_select;