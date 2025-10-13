-- Decompiled from LData vfs entry: 08b8e64ab2b191ad9d60f73f06bff908.vfs__002_Assets_ABPack_Resources_WorkFlow_Scripts_Action_FlowActionSetEquipSkillGroupId.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/FlowActionSetEquipSkillGroupId.res
-- header: 8c 00 f0 4d 01 02 07 00 00 00 05 00 20 e0 00 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [04152000]  (u16-swap op: TAILCALL)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02130080]  (u16-swap op: TEST)
      3| SETTABUP    [48022004]  (u16-swap op: SHL)
      4| BNOT        [8802e402]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'FlowActionSetEquipSkillGroupId'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   230 bytes; head: 01 5f 00 10 00 06 00 61 00 0a 00 00 00 0e 0f 00 10 05 0b 00 f0 1a 05 01 20 a0 0f 03 04 20 2b 00 00 d0 00 05 20 c0 0f 07
--   nested hdr5=01 5f 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 0a 00 00 00  u32@+9=10
--   decoded strings in tail (verified):
--     @+0x50: 'BattleEquipManager'
--     @+0x64: 'SetEquipSkillGroupId'
--     @+0x7a: 'needChangeGroupId'
--     @+0x8d: 'newGroupId'
--   upvalname '_ENV' at tail+0xdd (trailer)
