-- Decompiled from LData vfs entry: 0f29e09db1a65918f243606b9ce02aba.vfs__002_Assets_ABPack_Resources_WorkFlow_Scripts_GetSimpleAnchorData.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/GetSimpleAnchorData.res
-- header: 7a 00 f0 42 01 02 07 00 00 00 05 00 20 e0 00 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [04150000]  (u16-swap op: TESTSET)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02130080]  (u16-swap op: TEST)
      3| SETTABUP    [48020004]  (u16-swap op: BXOR)
      4| BNOT        [8802e402]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'GetSimpleAnchorData'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   223 bytes; head: 01 54 00 10 00 06 00 00 50 00 21 00 11 0f 00 20 03 0d 10 00 fa 0e 03 20 c0 0f 05 20 40 07 06 60 60 16 08 60 20 15 05 00
--   nested hdr5=01 54 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 00 50 00 21 00 11  u32@+9=285221120
--   decoded strings in tail (verified):
--     @+0x42: 'outPosition'
--     @+0x4f: 'ConfigMgr'
--     @+0x68: 'anchorName'
--     @+0x74: 'key'
--     @+0x79: 'outForward'
--   upvalname '_ENV' at tail+0xd6 (trailer)
