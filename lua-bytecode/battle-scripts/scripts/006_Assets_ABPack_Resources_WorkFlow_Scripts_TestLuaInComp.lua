-- Decompiled from LData vfs entry: 0f29e09db1a65918f243606b9ce02aba.vfs__006_Assets_ABPack_Resources_WorkFlow_Scripts_TestLuaInComp.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/TestLuaInComp.res
-- header: 74 00 f0 67 01 02 0d 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 11 words; terminator: 01 f2
function <main>(...)
      0| CONCAT      [04152000]  (u16-swap op: TAILCALL)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02100080]  (u16-swap op: CONCAT)
      3| NEWTABLE    [00272004]  (u16-swap op: EQ)
      4| CONCAT      [02180080]  (u16-swap op: CONCAT)
      5| NEWTABLE    [00472004]  (u16-swap op: EQ)
      6| CONCAT      [02200080]  (u16-swap op: CONCAT)
      7| NEWTABLE    [00672004]  (u16-swap op: EQ)
      8| CONCAT      [02280080]  (u16-swap op: CONCAT)
      9| LOADK       [30022004]  (u16-swap op: SHL)
     10| FORLOOP     [9002ec03]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_CLASS'
--   const[1] = 'TestLuaInComp'
--   const[2] = 'Awake'
--   const[3] = 'Update'
--   const[4] = 'Start'
--   const[5] = 'Reset'

-- tail (nested function body area) [structure partially decoded]:
--   266 bytes; head: 01 79 00 20 00 04 80 00 11 03 7e 00 00 0f 00 10 03 10 00 f0 02 05 01 20 e0 01 0c 00 20 15 03 00 40 02 80 02 f2 02 65 00
--   nested hdr5=01 79 00 20 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=04 80 00 11 03 7e 00 00  u32@+9=32259
--   decoded strings in tail (verified):
--     @+0x30: 'PPLog TestLuaInComp Awake Run '
--   upvalname '_ENV' at tail+0x101 (trailer)
