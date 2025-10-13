-- Decompiled from LData vfs entry: bba0e53b9c8ee44f81866e363cc2238f.vfs__000_Assets_ABPack_Resources_WorkFlow_Scripts_Trigger_BattleTimeTrigger.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Trigger/BattleTimeTrigger.res
-- header: 80 00 f0 57 01 02 0b 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 9 words; terminator: 03 ea
function <main>(...)
      0| CONCAT      [0415c000]  (u16-swap op: GETTABLE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02100080]  (u16-swap op: CONCAT)
      3| NEWTABLE    [0027c004]  (u16-swap op: NOP)
      4| CONCAT      [02180080]  (u16-swap op: CONCAT)
      5| NEWTABLE    [0047c004]  (u16-swap op: NOP)
      6| CONCAT      [02200080]  (u16-swap op: CONCAT)
      7| GETTABUP    [9002c004]  (u16-swap op: LEN)
      8| CALL        [3002fc01]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'BattleTimeTrigger'
--   const[2] = 'OnEnter'
--   const[3] = 'OnTick'
--   const[4] = num8(128780458976894976)

-- tail (nested function body area) [structure partially decoded]:
--   293 bytes; head: 73 00 20 00 03 7a 00 51 07 00 00 00 09 0f 00 11 02 10 00 c0 03 20 c0 05 02 04 60 02 80 02 f2 02 63 00 21 0c bf 57 00 86
--   nested hdr5=73 00 20 00 03  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=7a 00 51 07 00 00 00 09  u32@+9=150994944
--   decoded strings in tail (verified):
--     @+0x9a: 'triggerTime'
--     @+0xa7: 'SetFinish'
--     @+0xb2: 'insId'
--   upvalname '_ENV' at tail+0x11c (trailer)
