-- Decompiled from LData vfs entry: 08b8e64ab2b191ad9d60f73f06bff908.vfs__000_Assets_ABPack_Resources_WorkFlow_Scripts_Action_FlowActionReduceCDRate.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/FlowActionReduceCDRate.res
-- header: 84 00 f0 23 01 02 0b 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 9 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [04152000]  (u16-swap op: TAILCALL)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| NEWTABLE    [00272004]  (u16-swap op: EQ)
      4| CONCAT      [021a0080]  (u16-swap op: BXOR)
      5| NEWTABLE    [00472004]  (u16-swap op: EQ)
      6| CONCAT      [02220080]  (u16-swap op: BXOR)
      7| GETTABUP    [90022004]  (u16-swap op: SHL)
      8| CALL        [0802f401]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'FlowActionReduceCDRate'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   578 bytes; head: 09 00 f0 03 54 27 25 85 c9 04 0b 99 12 4a 27 20 86 cf b3 0d 7e 01 7c 00 20 00 03 83 00 52 15 00 00 00 19 0f 00 10 06 8c
--   nested hdr5=09 00 f0 03 54  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=27 25 85 c9 04 0b 99 12  u32@+9=312019716
--   decoded strings in tail (verified):
--     @+0x9: 'DoReduceCD'
--     @+0x138: 'GetSkillMgr'
--     @+0x145: 'ReduceCDRate'
--     @+0x153: 'slotIndex'
--     @+0x168: 'IsVfxWhenCDReset'
--     @+0x184: 'includeStockCd'
--     @+0x194: 'onlyStockCd'
--     @+0x1b0: 'tonumber'
--     @+0x1ba: 'skillTagType1'
--   upvalname '_ENV' at tail+0x239 (trailer)
