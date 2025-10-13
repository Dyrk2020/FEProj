-- Decompiled from LData vfs entry: 08b8e64ab2b191ad9d60f73f06bff908.vfs__001_Assets_ABPack_Resources_WorkFlow_Scripts_Action_FlowActionReduceEquipBuffCD.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/FlowActionReduceEquipBuffCD.res
-- header: 89 00 f0 59 01 02 0b 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 9 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [0415c000]  (u16-swap op: GETTABLE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02100080]  (u16-swap op: CONCAT)
      3| NEWTABLE    [0027c004]  (u16-swap op: NOP)
      4| CONCAT      [02180080]  (u16-swap op: CONCAT)
      5| NEWTABLE    [0047c004]  (u16-swap op: NOP)
      6| CONCAT      [02200080]  (u16-swap op: CONCAT)
      7| GETTABUP    [9002c004]  (u16-swap op: LEN)
      8| CALL        [0802f401]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'FlowActionReduceEquipBuffCD'
--   const[2] = 'OnEnter'
--   const[3] = num8(-3925690649340022784)
--   const[4] = 'DoReduceCD'

-- tail (nested function body area) [structure partially decoded]:
--   334 bytes; head: 01 81 00 20 00 03 88 00 00 86 00 12 0f 0f 00 10 06 91 00 f0 09 01 20 c0 4c 03 01 60 0c 00 00 f0 06 03 20 a0 11 03 00 60
--   nested hdr5=01 81 00 20 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=03 88 00 00 86 00 12 0f  u32@+9=252838022
--   decoded strings in tail (verified):
--     @+0xba: 'targetActor'
--     @+0xc8: 'BattleEquipManager'
--     @+0xdc: 'SetEquipBuffCD'
--     @+0xec: 'equipResId'
--     @+0xf8: 'reduceCD'
--   upvalname '_ENV' at tail+0x145 (trailer)
