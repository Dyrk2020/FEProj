-- Decompiled from LData vfs entry: 0f29e09db1a65918f243606b9ce02aba.vfs__005_Assets_ABPack_Resources_WorkFlow_Scripts_SetBlockSize.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/SetBlockSize.res
-- header: 73 00 f0 3b 01 02 07 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 01 fa
function <main>(...)
      0| CONCAT      [04150000]  (u16-swap op: TESTSET)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| GETTABUP    [88020004]  (u16-swap op: BXOR)
      4| BNOT        [9002ec02]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'SetBlockSize'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   217 bytes; head: 01 4d 00 10 00 06 00 61 00 08 00 00 00 0e 0f 00 20 04 0c 5d 00 f0 0c 01 20 e0 03 0c 00 00 15 03 00 40 05 05 20 a0 0f 06
--   nested hdr5=01 4d 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 08 00 00 00  u32@+9=8
--   decoded strings in tail (verified):
--     @+0x62: 'targetActor'
--     @+0x70: 'ZoomBlockSize'
--     @+0x7f: 'scale'
--   upvalname '_ENV' at tail+0xd0 (trailer)
