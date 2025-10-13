-- Decompiled from 000_Assets_ABPack_Resources_WorkFlow_Scripts_Trigger_BattleTimeTrigger
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Trigger/BattleTimeTrigger.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 9 code words, 5 consts
function <main>(...)
       0| [0415c000] GETTABLE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02100080] CONCAT   (main, u16-swap op)
       3| [0027c004] NOP   (main, u16-swap op)
       4| [02180080] CONCAT   (main, u16-swap op)
       5| [0047c004] NOP   (main, u16-swap op)
       6| [02200080] CONCAT   (main, u16-swap op)
       7| [9002c004] LEN   (main, u16-swap op)
       8| [3002fc01] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'BattleTimeTrigger'
--   const[2] 'OnEnter'
--   const[3] 'OnTick'
--   const[4] num8(128780458976894976)
-- function keys (registration order): ['OnEnter', 'OnTick']

-- tail: 293 bytes
-- nested hdr5: 73 00 20 00 03  (ld=115 ll=0 np=32 ms=0 va=3)
-- field4: 7a 00 51 07  u32@+9: 150994944 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x001f..0x0087 (26 words)

function <nested_0:OnEnter>(...)
       0| SHL [21006302]   [21006302]
       1| R2 = {}   [0057bf0c]
       2| nop   [2bbfca86]
       3| GETTABUP R0, U10, K1 [0c04c356]   [0c04c356]
       4| R0 = <closure P4> [15000d9f]   [15000d9f]
       5| R3 = call R3()   [0000bd01]
       6| R0 = R7..R0   [08130038]
       7| SETTABUP K0, R0 [4b020004]   [4b020004]
       8| R0 = R0..R26   [00007400]
       9| SETTABLE R0, K0, V23 [7418ae05]   [7418ae05]
      10| R0 = {}   [01001d24]
      11| R0 = call R0(R1)   [82500011]
      12| R0 = R7..R11   [00145638]
      13| GETTABUP R0, U28, K0 [0f1100e6]   [0f1100e6]
      14| BXOR [04200012]   [04200012]
      15| return   [fd00150a]
      16| IDIV [a0200119]   [a0200119]
      17| GETTABLE R1, R1, K1 [a020030d]   [a020030d]
      18| R1 = call R1()   [4000050d]
      19| GETTABLE R0, R3, K2 [a0600405]   [a0600405]
      20| LE [a280000c]   [a280000c]
      21| goto +2 -- JMP   [f0000014]
      22| R1 = U0   [40200700]
      23| GETTABLE R0, R3, K4 [a0600905]   [a0600905]
      24| R0 = call R0(R1, R2)   [4000031d]
      25| return   [e2024802]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x008c [marker] b'GetBattleTime'
--   +0x009a [tag04] b'triggerTime'
--   +0x00a7 [tag04] b'SetFinish'
--   +0x00b2 [tag04] b'insId'
--   +0x011c [marker] b'_ENV'