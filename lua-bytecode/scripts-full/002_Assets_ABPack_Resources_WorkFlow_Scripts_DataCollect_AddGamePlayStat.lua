-- Decompiled from 002_Assets_ABPack_Resources_WorkFlow_Scripts_DataCollect_AddGamePlayStat
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/DataCollect/AddGamePlayStat.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04158000] MOVE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02110080] CALL   (main, u16-swap op)
       3| [48028004] BNOT   (main, u16-swap op)
       4| [8802e402] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'AddGamePlayStat'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 817 bytes
-- nested hdr5: 01 50 00 10 00  (ld=1 ll=80 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 11 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0021..0x0109 (58 words)

function <nested_0:OnEnter>(...)
       0| SETTABLE R0, K40, V3 [20050740]   [20050740]
       1| LOADKx [60060780]   [60060780]
       2| R0 = R12..R11   [00051660]
       3| LOADKx [60040020]   [60040020]
       4| LOADKx [600900c0]   [600900c0]
       5| LOADKx [600b1fc0]   [600b1fc0]
       6| LOADKx [600d1f40]   [600d1f40]
       7| LOADKx [600f1e60]   [600f1e60]
       8| R0 = U4   [40041520]
       9| SETTABLE R0, K40, V7 [24040f40]   [24040f40]
      10| R0 = R4..R13   [00029a20]
      11| R0 = R22..R22   [1f002cb0]
      12| R0 = R2..R22   [00002c10]
      13| R9 = R3   [60601356]
      14| GETTABUP R1, U3, K10 [002c151e]   [002c151e]
      15| R2 = <closure P7> [005221ff]   [005221ff]
      16| R0 = R0..R24   [1700b000]
      17| R0 = R4..R0   [190dc020]
      18| R0 = R4..R16   [1a05a020]
      19| R0 = R12..R16   [0507a060]
      20| R0 = R12..R0   [1c078060]
      21| R0 = R20..R16   [051660a0]
      22| R0 = R8..R16   [04072040]
      23| R0 = R20..R0   [1f0780a0]
      24| R0 = R20..R16   [001660a0]
      25| R0 = R16..R16   [03052080]
      26| R6 = R0..R0   [04dc4000]
      27| R2 = R0..R24   [0058f000]
      28| SHR [5821160a]   [5821160a]
      29| R2 = U0   [58421400]
      30| R1 = U0   [58231e00]
      31| SETTABLE R0, K32, V15 [24059f00]   [24059f00]
      32| R1 = R20..R16   [0325a0a0]
      33| R1 = U0   [503c4000]
      34| SETTABLE R0, K32, V6 [271f0d00]   [271f0d00]
      35| R0 = R21..R0   [1f0000a8]
      36| R2 = call R2(R3, R4, R5, R6)   [0f00a829]
      37| GETTABLE R5, R0, K6 [58038c2f]   [58038c2f]
      38| SETTABLE R0, K0, V6 [2b160c00]   [2b160c00]
      39| SETTABLE R1, K11, V0 [32230058]   [32230058]
      40| if not R0 then   [1f005803]
      41| testset [0700a82d]   [0700a82d]
      42| R0 = <closure P2> [0002ec4f]   [0002ec4f]
      43| R0 = R30..R30   [0a017cf0]
      44| GETTABUP R2, U2, K23 [00502f16]   [00502f16]
      45| R3 = <closure P0> [017c921f]   [017c921f]
      46| BAND [d4311f21]   [d4311f21]
      47| ADD [e42f0f00]   [e42f0f00]
      48| R3 = call R3()   [20017c01]
      49| R6 = <closure P0> [00d4331f]   [00d4331f]
      50| R2 = <closure P0> [01442f07]   [01442f07]
      51| R1 = {}   [1f20017c]
      52| testset [0f00a835]   [0f00a835]
      53| nop   [7c00942f]
      54| R1 = call R1()   [3a141701]
      55| SETTABLE R0, K11, V0 [371f0058]   [371f0058]
      56| R0 = U21   [500700a8]
      57| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x010e [marker] b'print'
--   +0x0114 [tag04] b'PPLog AddGamePlayStat OnEnter Run '
--   +0x0138 [tag04] b'tonumber'
--   +0x0142 [tag04] b'statReportType'
--   +0x0152 [tag04] b'FrameEngine'
--   +0x015f [tag04] b'Logic'
--   +0x0166 [tag04] b'GamePlayCustomStat'
--   +0x017a [tag04] b'EasterEgg'
--   +0x019c [marker] b',y'
--   +0x019e [tag04] b'SET_INT'
--   +0x01a7 [tag04] b'DataCollectMgr'
--   +0x01b7 [tag04] b'OnSetExtraIntToEasterEgg'
--   +0x01d1 [tag04] b'targetActor'
--   +0x01de [tag04] b'valueIndex'
--   +0x026d [tag04] b'Default'
--   +0x02fa [marker] b'self'
--   +0x0328 [marker] b'_ENV'