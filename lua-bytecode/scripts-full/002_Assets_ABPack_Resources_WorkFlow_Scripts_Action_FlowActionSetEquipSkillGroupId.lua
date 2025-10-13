-- Decompiled from 002_Assets_ABPack_Resources_WorkFlow_Scripts_Action_FlowActionSetEquipSkillGroupId
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/FlowActionSetEquipSkillGroupId.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04152000] TAILCALL   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02130080] TEST   (main, u16-swap op)
       3| [48022004] SHL   (main, u16-swap op)
       4| [8802e402] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'FlowActionSetEquipSkillGroupId'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 230 bytes
-- nested hdr5: 01 5f 00 10 00  (ld=1 ll=95 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 10 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x000e..0x003e (12 words)

function <nested_0:OnEnter>(...)
       0| R0 = <closure P0> [0510000f]   [0510000f]
       1| if not R7 then   [1af0000b]
       2| GETTABLE R0, R1, K0 [a0200105]   [a0200105]
       3| if R1 == K1 then -- EQ   [2004030f]
       4| R0 = <closure P1> [d000002b]   [d000002b]
       5| GETTABUP R1, U0, K2 [c0200500]   [c0200500]
       6| GETTABLE R1, R1, K3 [4020070f]   [4020070f]
       7| nop   [60600007]
       8| nop   [20600906]
       9| GETTABLE R0, R5, K5 [a0a00a05]   [a0a00a05]
      10| R0 = call R0(R1, R2, R3)   [40000325]
      11| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0043 [marker] b'targetActor'
--   +0x0050 [tag04] b'BattleEquipManager'
--   +0x0064 [tag04] b'SetEquipSkillGroupId'
--   +0x007a [tag04] b'needChangeGroupId'
--   +0x008d [tag04] b'newGroupId'
--   +0x00ae [marker] b'self'
--   +0x00dd [marker] b'_ENV'