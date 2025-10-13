-- Decompiled from 002_Assets_ABPack_Resources_WorkFlow_Scripts_GetSimpleAnchorData
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/GetSimpleAnchorData.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04150000] TESTSET   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02130080] TEST   (main, u16-swap op)
       3| [48020004] BXOR   (main, u16-swap op)
       4| [8802e402] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'GetSimpleAnchorData'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 223 bytes
-- nested hdr5: 01 54 00 10 00  (ld=1 ll=84 np=0 ms=16 va=0)
-- field4: 06 00 00 50  u32@+9: 285221120 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0016..0x003e (10 words)

function <nested_0:OnEnter>(...)
       0| if not R6 then   [0fc02003]
       1| testset [07402005]   [07402005]
       2| GETTABUP R3, U0, K16 [16606006]   [16606006]
       3| R1 = R1..R16   [15206008]
       4| testset [06400005]   [06400005]
       5| BXOR [07e00402]   [07e00402]
       6| if not R7 then   [0fe02003]
       7| R12 = R0   [8000180d]
       8| SETTABLE R0, K5, V1 [6004022d]   [6004022d]
       9| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0042 [tag04] b'outPosition'
--   +0x004f [tag04] b'ConfigMgr'
--   +0x0068 [tag04] b'anchorName'
--   +0x0074 [tag04] b'key'
--   +0x0079 [tag04] b'outForward'
--   +0x00a7 [marker] b'self'
--   +0x00d6 [marker] b'_ENV'