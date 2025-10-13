-- Decompiled from 004_Assets_ABPack_Resources_WorkFlow_Scripts_Action_ShowUIAction
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/ShowUIAction.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [0415e000] GETTABUP   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [4802e004] RETURN   (main, u16-swap op)
       4| [8802e402] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'ShowUIAction'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 171 bytes
-- nested hdr5: 01 4d 00 10 00  (ld=1 ll=77 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 12 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0021..0x0031 (4 words)

function <nested_0:OnEnter>(...)
       0| nop   [20600616]
       1| GETTABLE R0, R3, K4 [a0600905]   [a0600905]
       2| R0 = call R0(R1, R2)   [4000031d]
       3| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0036 [marker] b'LgcMsg_SHOW_UI'
--   +0x0045 [tag04] b'SendMsg'
--   +0x004e [tag04] b'uiName'
--   +0x0056 [tag04] b'key'
--   +0x005b [tag04] b'sendOnReload'
--   +0x007a [marker] b'self'
--   +0x00a2 [marker] b'_ENV'