-- Decompiled from LData vfs entry: f747729d4f6ad6863e38679eb0afdf6d.vfs__000_Assets_ABPack_Resources_WorkFlow_Scripts_ActorComponent_ActorComponentTest.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/ActorComponent/ActorComponentTest.res
-- header: 88 00 f0 70 01 02 0d 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 11 words; terminator: 01 f2
function <main>(...)
      0| CONCAT      [04150000]  (u16-swap op: TESTSET)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02100080]  (u16-swap op: CONCAT)
      3| NEWTABLE    [00270004]  (u16-swap op: CLOSURE)
      4| CONCAT      [02180080]  (u16-swap op: CONCAT)
      5| NEWTABLE    [00470004]  (u16-swap op: CLOSURE)
      6| CONCAT      [02200080]  (u16-swap op: CONCAT)
      7| NEWTABLE    [00670004]  (u16-swap op: CLOSURE)
      8| CONCAT      [02280080]  (u16-swap op: CONCAT)
      9| LOADK       [30020004]  (u16-swap op: BXOR)
     10| FORLOOP     [9002ec03]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_COMPONENT'
--   const[1] = 'ActorComponentTest'
--   const[2] = 'Awake'
--   const[3] = 'Start'
--   const[4] = 'Update'
--   const[5] = 'Reset'

-- tail (nested function body area) [structure partially decoded]:
--   279 bytes; head: 01 82 00 20 00 04 89 00 51 07 00 00 00 09 0f 00 10 03 10 00 f0 02 05 01 20 e0 01 0c 00 00 15 03 00 40 02 80 02 f2 02 6e
--   nested hdr5=01 82 00 20 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=04 89 00 51 07 00 00 00  u32@+9=7
--   decoded strings in tail (verified):
--     @+0x31: 'PPLog ActorComponentTest OnEnter() '
--   upvalname '_ENV' at tail+0x10e (trailer)
