-- Decompiled from LData vfs entry: 0f29e09db1a65918f243606b9ce02aba.vfs__000_Assets_ABPack_Resources_WorkFlow_Scripts_AddComponentToActor.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/AddComponentToActor.res
-- header: 7a 00 f0 42 01 02 07 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [04158000]  (u16-swap op: MOVE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| SETTABUP    [48028004]  (u16-swap op: BNOT)
      4| BNOT        [8802e402]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'AddComponentToActor'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   149 bytes; head: 01 54 00 10 00 06 00 61 00 09 00 00 00 10 0f 00 20 04 06 64 00 f0 09 01 20 a0 08 03 20 40 05 05 60 a0 1d 07 60 a0 1d 03
--   nested hdr5=01 54 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 09 00 00 00  u32@+9=9
--   decoded strings in tail (verified):
--     @+0x3a: 'RunScript'
--     @+0x45: 'scriptAsset'
--   upvalname '_ENV' at tail+0x8c (trailer)
