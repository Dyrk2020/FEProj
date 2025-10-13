-- Decompiled from 000_Assets_ABPack_Resources_WorkFlow_Scripts_AddComponentToActor
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/AddComponentToActor.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04158000] MOVE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [48028004] BNOT   (main, u16-swap op)
       4| [8802e402] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'AddComponentToActor'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 149 bytes
-- nested hdr5: 01 54 00 10 00  (ld=1 ll=84 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 9 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x000e..0x002e (8 words)

function <nested_0:OnEnter>(...)
       0| R1 = <closure P0> [0420000f]   [0420000f]
       1| GETTABLE R0, R0, K18 [f0006406]   [f0006406]
       2| IDIV [a0200109]   [a0200109]
       3| R1 = U1   [40200308]
       4| GETTABLE R0, R3, K2 [a0600505]   [a0600505]
       5| GETTABLE R3, R3, K3 [a060071d]   [a060071d]
       6| R0 = call R0(R1, R2)   [4000031d]
       7| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x003a [tag04] b'RunScript'
--   +0x0045 [tag04] b'scriptAsset'
--   +0x0052 [tag04] b'id'
--   +0x0066 [marker] b'self'
--   +0x008c [marker] b'_ENV'