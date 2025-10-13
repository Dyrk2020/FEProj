-- Decompiled from 001_Assets_ABPack_Resources_WorkFlow_Scripts_DataCollect_AICoachTowerInfoCollect
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/DataCollect/AICoachTowerInfoCollect.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04154000] CALL   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02100080] CONCAT   (main, u16-swap op)
       3| [88024004] SHR   (main, u16-swap op)
       4| [9002ec02] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'AICoachTowerInfoCollect'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 223 bytes
-- nested hdr5: 01 58 00 10 00  (ld=1 ll=88 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 6 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0016..0x003e (10 words)

function <nested_0:OnEnter>(...)
       0| IDIV [a0200119]   [a0200119]
       1| GETTABUP R3, U0, K1 [c0600200]   [c0600200]
       2| GETTABLE R2, R3, K2 [a0600415]   [a0600415]
       3| R16 = R3   [8068210d]
       4| GETTABLE R0, R5, K3 [a0a00605]   [a0a00605]
       5| R6 = R4; R5 = R4[K4]   [c0a00826]
       6| FORPREP [80002c08]   [80002c08]
       7| R0 = call R0(R1, R2)   [4080001d]
       8| R0 = call R0()   [40400205]
       9| return   [e2024802]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0042 [marker] b'ownerActo'
--   +0x004d [tag04] b'Battlefield'
--   +0x0074 [tag04] b'args'
--   +0x007a [tag04] b'at'
--   +0x009f [marker] b'actorOwner'
--   +0x00b1 [marker] b'_ENV'
--   +0x00d6 [marker] b'_ENV'