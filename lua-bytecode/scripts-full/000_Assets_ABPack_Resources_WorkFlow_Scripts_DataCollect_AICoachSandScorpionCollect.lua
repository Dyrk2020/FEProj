-- Decompiled from 000_Assets_ABPack_Resources_WorkFlow_Scripts_DataCollect_AICoachSandScorpionCollect
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/DataCollect/AICoachSandScorpionCollect.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04158000] MOVE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [88028004] BNOT   (main, u16-swap op)
       4| [9002ec02] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'AICoachSandScorpionCollect'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 186 bytes
-- nested hdr5: 01 5b 00 10 00  (ld=1 ll=91 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 6 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x000e..0x002e (8 words)

function <nested_0:OnEnter>(...)
       0| R0 = <closure P0> [0410000f]   [0410000f]
       1| if not R7 then   [09f2000b]
       2| GETTABLE R0, R1, K0 [a0200105]   [a0200105]
       3| GETTABUP R3, U0, K1 [c0600200]   [c0600200]
       4| GETTABLE R2, R3, K2 [a0600415]   [a0600415]
       5| R16 = R3   [6068210e]
       6| POW [60400211]   [60400211]
       7| return   [e2024802]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0031 [marker] b'ownerActo'
--   +0x003c [tag04] b'Battlefield'
--   +0x007d [marker] b'actorOwner'
--   +0x008f [marker] b'_ENV'
--   +0x00a9 [marker] b'U}'
--   +0x00b1 [marker] b'_ENV'