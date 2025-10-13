-- Decompiled from LData vfs entry: 631011d2dbcf739114b0bac0c072df21.vfs__000_Assets_ABPack_Resources_WorkFlow_Scripts_DataCollect_AICoachSandScorpionCollect.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/DataCollect/AICoachSandScorpionCollect.res
-- header: 8d 00 f0 49 01 02 07 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 01 fa
function <main>(...)
      0| CONCAT      [04158000]  (u16-swap op: MOVE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| GETTABUP    [88028004]  (u16-swap op: BNOT)
      4| BNOT        [9002ec02]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'AICoachSandScorpionCollect'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   186 bytes; head: 01 5b 00 10 00 06 00 61 00 06 00 00 00 09 0f 00 10 04 0b 00 f2 09 05 01 20 a0 00 02 60 c0 15 04 60 a0 0e 21 68 60 11 02
--   nested hdr5=01 5b 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 06 00 00 00  u32@+9=6
--   decoded strings in tail (verified):
--     @+0x3c: 'Battlefield'
--   upvalname '_ENV' at tail+0x8f (trailer)
