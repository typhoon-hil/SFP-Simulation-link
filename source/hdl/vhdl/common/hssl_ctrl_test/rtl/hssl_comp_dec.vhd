----------------------------------------------------------------------------------------------------------------------------------------
--
--  Package Name: hssl_comp_dec
--  Author: Nikola Stojkov<nikola.stojkov@typhoon-hil.ch>
--
--  Description:
--            HIL component declarations.
--
-----------------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.hil_lib.all;

package hssl_comp_dec is

  component hssl_ctrl_fifo_1x
  port (
    wr_clk        : in  std_logic;
    rd_clk        : in  std_logic;
    rst           : in  std_logic;
    din           : in  std_logic_vector(31 downto 0);
    wr_en         : in  std_logic;
    rd_en         : in  std_logic;
    dout          : out std_logic_vector(31 downto 0);
    full          : out std_logic;
    empty         : out std_logic;
    rd_data_count : out std_logic_vector(10 downto 0);
    wr_data_count : out std_logic_vector(10 downto 0)
  );
  end component;

  component hssl_ctrl_sync_fifo
  PORT (
    clk        : IN  STD_LOGIC;
    srst       : IN  STD_LOGIC;
    din        : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en      : IN  STD_LOGIC;
    rd_en      : IN  STD_LOGIC;
    dout       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full       : OUT STD_LOGIC;
    empty      : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
  END component;

end package;
