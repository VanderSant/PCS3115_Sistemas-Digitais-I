
entity zero_detector is
    port (
      A    : in  bit_vector(7 downto 0);
      zero : out bit
      );
  end entity;

  architecture when_else_arch of zero_detector is
    begin
      ZERO <= '1' when A = "00000000" else
              '0';
    end architecture;