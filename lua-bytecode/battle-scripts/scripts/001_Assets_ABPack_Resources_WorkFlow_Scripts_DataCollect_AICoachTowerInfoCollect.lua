-- Decompiled from LData vfs entry: 631011d2dbcf739114b0bac0c072df21.vfs__001_Assets_ABPack_Resources_WorkFlow_Scripts_DataCollect_AICoachTowerInfoCollect.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/DataCollect/AICoachTowerInfoCollect.res
-- header: 8a 00 f0 46 01 02 07 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 01 fa
function <main>(...)
      0| CONCAT      [04154000]  (u16-swap op: CALL)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02100080]  (u16-swap op: CONCAT)
      3| GETTABUP    [88024004]  (u16-swap op: SHR)
      4| BNOT        [9002ec02]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'AICoachTowerInfoCollect'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   223 bytes; head: 01 58 00 10 00 06 00 61 00 06 00 00 00 1b 0f 00 20 07 0a 68 00 f1 19 01 20 a0 00 02 60 c0 15 04 60 a0 0d 21 68 80 05 06
--   nested hdr5=01 58 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 06 00 00 00  u32@+9=6
--   decoded strings in tail (verified):
--     @+0x4d: 'Battlefield'
--     @+0x74: 'args'
--   upvalname '_ENV' at tail+0xb1 (trailer)
