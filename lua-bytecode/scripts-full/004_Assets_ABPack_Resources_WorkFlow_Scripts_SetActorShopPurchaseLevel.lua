-- Decompiled from 004_Assets_ABPack_Resources_WorkFlow_Scripts_SetActorShopPurchaseLevel
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/SetActorShopPurchaseLevel.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [0415a000] GETTABLE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02100080] CONCAT   (main, u16-swap op)
       3| [0802a004] NOT   (main, u16-swap op)
       4| [c002ec02] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'SetActorShopPurchaseLevel'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 461 bytes
-- nested hdr5: 01 5a 00 10 00  (ld=1 ll=90 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 4 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x000d..0x007d (28 words)

function <nested_0:OnEnter>(...)
       0| SETTABLE R0, K34, V7 [21000f10]   [21000f10]
       1| R3 = <closure P0> [00711a07]   [00711a07]
       2| GETTABUP R1, U30, K18 [c02025f0]   [c02025f0]
       3| GETTABLE R1, R1, K1 [a020030d]   [a020030d]
       4| GETTABLE R0, R3, K2 [a0600405]   [a0600405]
       5| R3 = K3 [40001e06]   [40001e06]
       6| R0 = -R3   [6000051a]
       7| GETTABUP R3, U0, K4 [c0600800]   [c0600800]
       8| GETTABLE R2, R3, K5 [a0600a15]   [a0600a15]
       9| R4 = R1; R3 = R1[K6]   [a0600d0e]
      10| BAND [c0400111]   [c0400111]
      11| R1 = call R1()   [40400405]
      12| GETTABUP R3, U0, K0 [c0600100]   [c0600100]
      13| GETTABLE R3, R3, K7 [a0600f1d]   [a0600f1d]
      14| GETTABLE R0, R5, K2 [a0a00405]   [a0a00405]
      15| GETTABUP R1, U1, K1 [0028420e]   [0028420e]
      16| LOADKx [604020f0]   [604020f0]
      17| GETTABUP R5, U0, K9 [e0a01205]   [e0a01205]
      18| IDIV [a0005209]   [a0005209]
      19| R16 = R7   [80e8201d]
      20| R0 = R5..R5   [00180a28]
      21| R0 = call R0(R1)   [40800215]
      22| R0 = <closure P0> [c2000003]   [c2000003]
      23| GETTABUP R5, U0, K11 [c0a01700]   [c0a01700]
      24| GETTABLE R5, R5, K12 [a0a0192d]   [a0a0192d]
      25| R6 = R6   [60d84c26]
      26| BXOR [00800312]   [00800312]
      27| return   [f2019002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0082 [marker] b'FE'
--   +0x0085 [tag04] b'SafeGetActor'
--   +0x0093 [tag04] b'args'
--   +0x009e [tag04] b'ActorManager'
--   +0x00b2 [tag04] b'GetID'
--   +0x00c6 [marker] b'print'
--   +0x00e6 [tag04] b'safecall'
--   +0x00f0 [tag04] b'execute'
--   +0x0140 [marker] b'owner'
--   +0x0146 [marker] b'value'
--   +0x0177 [marker] b'searchActor'
--   +0x0195 [marker] b'temp'
--   +0x01a1 [marker] b'_ENV'
--   +0x01c4 [marker] b'_ENV'