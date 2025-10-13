-- Decompiled from 003_Assets_ABPack_Resources_WorkFlow_Scripts_SetActorShopItemBan
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/SetActorShopItemBan.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [0415a000] GETTABLE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02110080] CALL   (main, u16-swap op)
       3| [4002a004] NOT   (main, u16-swap op)
       4| [9002e403] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'SetActorShopItemBan'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 535 bytes
-- nested hdr5: 01 54 00 10 00  (ld=1 ll=84 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 4 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x000e..0x009e (36 words)

function <nested_0:OnEnter>(...)
       0| R1 = <closure P0> [0821000f]   [0821000f]
       1| goto +4 -- JMP   [f0006b24]
       2| testset [0dc02025]   [0dc02025]
       3| if not R5 then   [05a02003]
       4| R5 = {}   [06a06004]
       5| GETTABUP R2, U3, K0 [1b40001e]   [1b40001e]
       6| testset [00600005]   [00600005]
       7| R6 = R1..R16   [15c06008]
       8| BXOR [0ea0600a]   [0ea0600a]
       9| testset [12a0600d]   [12a0600d]
      10| R0 = call R0()   [05c04001]
      11| R2 = {}   [00404004]
      12| R0 = call R0()   [1dc06001]
      13| R5 = <closure P0> [05a0600f]   [05a0600f]
      14| R5 = {}   [0ea0a004]
      15| return   [f1002842]
      16| if not R3 then   [0060401b]
      17| SETTABLE R6, K0, V16 [25c0a000]   [25c0a000]
      18| GETTABUP R5, U1, K16 [05a0a00e]   [05a0a00e]
      19| testset [0ea0a005]   [0ea0a005]
      20| R2 = {}   [1b40004c]
      21| R3 = {}   [05608004]
      22| testset [0ae0a015]   [0ae0a015]
      23| R5 = {}   [1da0005c]
      24| R2 = call R2(R3, R4, R5)   [3080e821]
      25| R0 = {}   [15001c0c]
      26| if not R2 then   [14408003]
      27| R3 = R0..R18   [00646500]
      28| GETTABUP R0, U20, K18 [c81325a0]   [c81325a0]
      29| R7 = {}   [0af00014]
      30| R4 = <closure P0> [c2800003]   [c2800003]
      31| GETTABUP R7, U0, K13 [c0e01a00]   [c0e01a00]
      32| GETTABLE R6, R7, K14 [a0e01c35]   [a0e01c35]
      33| R1 = R6   [60d8032e]
      34| if not R6 then   [00c00213]
      35| return   [ea01c002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x00a3 [marker] b'FE'
--   +0x00a6 [tag04] b'SafeGetActor'
--   +0x00b4 [tag04] b'args'
--   +0x00bf [tag04] b'ActorManager'
--   +0x00d3 [tag04] b'GetID'
--   +0x00ec [marker] b'print'
--   +0x0105 [marker] b'pe = '
--   +0x011a [tag04] b'safecall'
--   +0x0124 [tag04] b'execute'
--   +0x0177 [marker] b'owner'
--   +0x017d [marker] b'type'
--   +0x0182 [marker] b'level'
--   +0x01bd [marker] b'searchActor'
--   +0x01ec [marker] b'_ENV'
--   +0x020e [marker] b'_ENV'