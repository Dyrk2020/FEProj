-- Decompiled from 001_Assets_ABPack_Resources_WorkFlow_Scripts_CreateMonsterApplyBuffToAllHero
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/CreateMonsterApplyBuffToAllHero.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [0415a000] GETTABLE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [3002a004] NOT   (main, u16-swap op)
       4| [9002ec03] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'CreateMonsterApplyBuffToAllHero'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 509 bytes
-- nested hdr5: 01 60 00 10 00  (ld=1 ll=96 np=0 ms=16 va=0)
-- field4: 06 00 10 00  u32@+9: 370212965 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0015..0x009d (34 words)

function <nested_0:OnEnter>(...)
       0| BOR [e0200179]   [e0200179]
       1| U0 = R0   [a0000c03]
       2| R0 = call R0(R1)   [40000315]
       3| GETTABUP R1, U0, K2 [c0200500]   [c0200500]
       4| GETTABLE R1, R1, K3 [4020070f]   [4020070f]
       5| nop   [60600807]
       6| nop   [20600a16]
       7| GETTABUP R3, U0, K6 [c0600d00]   [c0600d00]
       8| GETTABUP R5, U0, K6 [c0a00c00]   [c0a00c00]
       9| R0 = call R0(R1, R2, R3)   [40000325]
      10| GETTABUP R1, U0, K2 [80200507]   [80200507]
      11| nop   [60200f0f]
      12| nop   [2000050e]
      13| if R1 == K8 then -- EQ   [2004100f]
      14| MOD [50000001]   [50000001]
      15| return   [f2028002]
      16| R2 = K9 [20004c04]   [20004c04]
      17| GETTABLE R1, R3, K10 [a060150d]   [a060150d]
      18| R0 = call R0(R1, R2)   [000f8219]
      19| R0 = K11 [2000580c]   [2000580c]
      20| FORPREP [80a000a0]   [80a000a0]
      21| R8 = R1; R7 = R1[K12]   [c0e0180e]
      22| R0 = {}   [0108122c]
      23| R1 = call R1(R2, R3)   [40c0041d]
      24| if not R6 then   [00c00003]
      25| goto +5 -- JMP   [f000002c]
      26| R8 = R6; R7 = R6[K13]   [c0e01b36]
      27| R0 = {}   [01182334]
      28| GETTABLE R0, R3, K14 [a1601c05]   [a1601c05]
      29| GETTABLE R10, R3, K5 [a1600a55]   [a1600a55]
      30| R3 = K9 [40004e16]   [40004e16]
      31| LOADKx [60c00328]   [60c00328]
      32| FORLOOP [804fff9b]   [804fff9b]
      33| return   [fa019002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x00a2 [marker] b'print'
--   +0x00a8 [tag04] b'PPLog CreateMonsterApplyBuffToAllHero  OnEnter Run '
--   +0x00c9 [marker] b'lHero  OnEnter Run'
--   +0x00dd [tag04] b'Battlefield'
--   +0x00f5 [tag04] b'monsterAsset'
--   +0x0103 [tag04] b'id'
--   +0x0107 [tag04] b'FixVector3_ZERO'
--   +0x0118 [tag04] b'GetAllHeros'
--   +0x012a [tag04] b'size'
--   +0x0136 [marker] b'at'
--   +0x0139 [tag04] b'AddBuff'
--   +0x0142 [tag04] b'buffAsset'
--   +0x0189 [marker] b'heroList'
--   +0x0197 [marker] b'(for index)'
--   +0x01d3 [marker] b'_ENV'
--   +0x01f4 [marker] b'_ENV'