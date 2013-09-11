--
--This file was produced by ViewFSM/Capture 1.0
--

library ieee;
use ieee.std_logic_1164.all;

entity ram_cntrl is
  port (
        PRT_CNTRL: in std_logic;
        PAR_RDY: in std_logic;
        RESET: in std_logic;
        R_W_BAR: out std_logic;
        CE_BAR: out std_logic;
        ADDR_CLK: out std_logic;
        WORD_SYNC: out std_logic;
        CLOCK: in std_logic
  );
end ram_cntrl;

architecture  behave of ram_cntrl is
  type state_type is (S0,S1,S2,S3,S4,S5,S6);
  signal cur_state, nxt_state: state_type;

begin
  state_reg: process
  begin
  wait until ((CLOCK'event AND CLOCK = '1'));
      if (RESET = '0') then
          cur_state <= S0;
    else
          cur_state <= nxt_state;
      end if;
  end process state_reg;

 state_trans: process (cur_state, PRT_CNTRL, PAR_RDY)
 begin
   NXT_STATE <= CUR_STATE;
   ADDR_CLK <= '0';
   case cur_state IS
        when S0 =>
          WORD_SYNC <= '1';
          CE_BAR <= '1';
          R_W_BAR <= '1';
          ADDR_CLK <= '0';
          if (((PAR_RDY = '0') OR (PRT_CNTRL = '0'))) then
            nxt_state <= S1;
          end if;
        when S1 =>
          CE_BAR <= '0';
          if ((PRT_CNTRL = '0')) then
            nxt_state <= S4;
          elsif ((PAR_RDY = '0')) then
            nxt_state <= S2;
          end if;
        when S2 =>
          R_W_BAR <= '0';
          if ((PAR_RDY = '0')) then
            nxt_state <= S3;
          end if;
        when S3 =>
          R_W_BAR <= '1';
          if ((PAR_RDY = '0')) then
            nxt_state <= S4;
          end if;
        when S4 =>
          CE_BAR <= '1';
          if (((PAR_RDY = '0') OR (PRT_CNTRL = '0'))) then
            nxt_state <= S5;
          end if;
        when S5 =>
          ADDR_CLK <= '1';
          if (((PAR_RDY = '0') OR (PRT_CNTRL = '0'))) then
            nxt_state <= S6;
          end if;
        when S6 =>
          WORD_SYNC <= '0';
          if (((PAR_RDY = '1') OR (PRT_CNTRL = '0'))) then
            nxt_state <= S0;
          end if;
      end case;
    end process state_trans;
end behave;
