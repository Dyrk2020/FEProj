-- Decompiled from 001_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4204_Scripts_luckyBox
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4204/Scripts/luckyBox.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 9 code words, 5 consts
function <main>(...)
       0| [04154000] CALL   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [00274004] GETTABLE   (main, u16-swap op)
       4| [021a0080] BXOR   (main, u16-swap op)
       5| [00474004] GETTABLE   (main, u16-swap op)
       6| [02220080] BXOR   (main, u16-swap op)
       7| [90024004] SHR   (main, u16-swap op)
       8| [0802f401] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'luckyBox'
--   const[2] 'OnEnter'
--   const[3] 'OnTick'
--   const[4] num8(128780458976894976)
-- function keys (registration order): ['OnEnter', 'OnTick']

-- tail: 608 bytes
-- nested hdr5: 6a 00 20 00 03  (ld=106 ll=0 np=32 ms=0 va=3)
-- field4: 71 00 00 05  u32@+9: 252776704 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x001f..0x00ff (56 words)

function <nested_0:OnEnter>(...)
       0| SETTABLE R0, K28, V0 [200500e0]   [200500e0]
       1| SETTABLE R0, K56, V6 [20070dc0]   [20070dc0]
       2| LOADKx [600805a0]   [600805a0]
       3| LOADKx [600a16a0]   [600a16a0]
       4| R1 = R24..R5   [00300ac0]
       5| R0 = U16   [40041d80]
       6| LOADKx [600e1540]   [600e1540]
       7| LOADKx [601100a0]   [601100a0]
       8| R0.. = ...   [a01200c0]
       9| R0.. = ...   [a01425c0]
      10| R1 = R20..R7   [00320ea0]
      11| FORPREP [80041140]   [80041140]
      12| R0.. = ...   [a0130000]
      13| R0.. = ...   [a0152dc0]
      14| R1 = R20..R7   [00340ea0]
      15| FORPREP [80051140]   [80051140]
      16| ADD [e0120000]   [e0120000]
      17| ADD [e01435c0]   [e01435c0]
      18| R1 = R20..R7   [00360ea0]
      19| GETTABUP R0, U8, K8 [c0001140]   [c0001140]
      20| R0 = U0   [40050500]
      21| R0.. = ...   [a0100040]
      22| R0 = R24..R20   [0a0028c0]
      23| BAND [c0045af1]   [c0045af1]
      24| ADD [e0130000]   [e0130000]
      25| ADD [e0153dc0]   [e0153dc0]
      26| R1 = R20..R11   [003016a0]
      27| GETTABUP R0, U8, K8 [c0011140]   [c0011140]
      28| FORPREP [80000500]   [80000500]
      29| R0 = R8..R2   [00030540]
      30| SETTABLE R0, K40, V3 [20050740]   [20050740]
      31| SETTABLE R0, K48, V7 [20170f80]   [20170f80]
      32| R0 = R12..R7   [00050e60]
      33| R0 = R4..R7   [04190f20]
      34| R0 = R4..R12   [00009820]
      35| R1 = R14..R2   [00340470]
      36| LOADKx [601b0d20]   [601b0d20]
      37| R0 = R20..R12   [0f0319a0]
      38| R3 = R0..R6   [00700c00]
      39| R0.. = ...   [a000d020]
      40| ADD [e00a0e80]   [e00a0e80]
      41| SETTABLE R1, K24, V22 [28202cc0]   [28202cc0]
      42| BAND [c0041d21]   [c0041d21]
      43| R0 = R8..R27   [04193740]
      44| R0 = R4..R0   [00004020]
      45| ADD [e01f3670]   [e01f3670]
      46| R0 = R24..R26   [081334c0]
      47| POW [60080521]   [60080521]
      48| POW [600a56a1]   [600a56a1]
      49| BAND [cc701ac1]   [cc701ac1]
      50| R0 = U0   [4107f000]
      51| GETTABLE R10, R3, K7 [a1600e55]   [a1600e55]
      52| R3 = K6 [40003616]   [40003616]
      53| R0 = call R0(R1, R2, R3, R4)   [00c00329]
      54| FORLOOP [804fff83]   [804fff83]
      55| return   [ea028802]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0103 [marker] b'super'
--   +0x010d [marker] b'Battlefield'
--   +0x0119 [tag04] b'CreateActor'
--   +0x0126 [tag04] b'assetArgs'
--   +0x0131 [tag04] b'at'
--   +0x013a [tag04] b'id'
--   +0x013e [tag04] b'FixVector3'
--   +0x014a [tag04] b'Fix64'
--   +0x0151 [tag04] b'fromInt'
--   +0x015a [tag04] b'GetAllHeros'
--   +0x0168 [tag04] b'size'
--   +0x0173 [marker] b'AddBuff'
--   +0x01ac [marker] b'self'
--   +0x01b4 [marker] b'heroList'
--   +0x01c2 [marker] b'(for index)'
--   +0x01fe [marker] b'_ENV'
--   +0x022a [marker] b'7@'
--   +0x0257 [marker] b'_ENV'