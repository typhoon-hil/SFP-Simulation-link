library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package hil_lib is

  ----------------------------------------------------------------------------------------
  -- Function/procedure declerations
  ----------------------------------------------------------------------------------------

  function LOG2 (x : natural) return natural;
  function BOOL_CHOICE (expresion : boolean; value1 : integer; value2 : integer) return integer;

end package;
package body hil_lib is

--   ----------------------------------------------------------------------------------------
--   -- Function/procedure bodies
--   ----------------------------------------------------------------------------------------

  function LOG2 (x : natural) return natural is
  begin
    if (x = 1) then
      return(0);
    end if;
    for i in 1 to 30 loop -- Works for up to 32 bit integers
      if(2**i >= x) then 
              return (i);
      end if;
    end loop;
    return(30);
  end function log2;
  
  function BOOL_CHOICE (expresion : boolean; value1 : integer; value2 : integer) return integer is
    variable res : integer;
  begin
    if (expresion = true)  then
      res := value1;
    else
      res := value2;
    end if;
    return res;
  end;

end package body;
