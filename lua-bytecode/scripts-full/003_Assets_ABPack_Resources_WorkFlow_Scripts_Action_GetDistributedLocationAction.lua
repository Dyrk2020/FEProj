-- Decompiled from 003_Assets_ABPack_Resources_WorkFlow_Scripts_Action_GetDistributedLocationAction
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/GetDistributedLocationAction.res
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
--   const[1] 'GetDistributedLocationAction'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 226 bytes
-- nested hdr5: 01 5d 00 10 00  (ld=1 ll=93 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 19 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0020..0x0044 (9 words)

function <nested_0:OnEnter>(...)
       0| FORPREP [80000cb0]   [80000cb0]
       1| R2 = R1; R1 = R1[K2]   [a020050e]
       2| testset [20000513]   [20000513]
       3| R7 = {}   [06f00014]
       4| R0 = not R2   [b0000012]
       5| R4 = R1; R3 = R1[K4]   [a060080e]
       6| testset [20400413]   [20400413]
       7| SETTABLE R0, K3, V2 [6004041d]   [6004041d]
       8| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0049 [marker] b'targetActor'
--   +0x0056 [tag04] b'GetPlayer'
--   +0x0061 [tag04] b'distributedLoc'
--   +0x0071 [tag04] b'GetRoomDistributedLoc'
--   +0x00ac [marker] b'player'
--   +0x00d9 [marker] b'_ENV'