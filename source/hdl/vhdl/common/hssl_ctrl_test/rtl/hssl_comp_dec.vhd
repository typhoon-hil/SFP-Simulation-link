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

  component hssl_ctrl_axis_fifo
  port (
    m_aclk         : in  std_logic;
    s_aclk         : in  std_logic;
    s_aresetn      : in  std_logic;
    s_axis_tvalid  : in  std_logic;
    s_axis_tready  : out std_logic;
    s_axis_tdata   : in  std_logic_vector(31 downto 0);
    s_axis_tlast   : in  std_logic;
    m_axis_tvalid  : out std_logic;
    m_axis_tready  : in  std_logic;
    m_axis_tdata   : out std_logic_vector(31 downto 0);
    m_axis_tlast   : out std_logic;
    axis_prog_full : out std_logic
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
