-- Decompiled from LData vfs entry: ed0694a163d07bfdce7790e0e270033c.vfs__000_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4204_Scripts_LuckyBoxCheckPickup.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4204/Scripts/LuckyBoxCheckPickup.res
-- header: 92 00 f0 67 01 02 0b 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 9 words; terminator: 03 e2
function <main>(...)
      0| CONCAT      [04150000]  (u16-swap op: TESTSET)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02100080]  (u16-swap op: CONCAT)
      3| NEWTABLE    [00270004]  (u16-swap op: CLOSURE)
      4| CONCAT      [02180080]  (u16-swap op: CONCAT)
      5| NEWTABLE    [00470004]  (u16-swap op: CLOSURE)
      6| CONCAT      [02200080]  (u16-swap op: CONCAT)
      7| TFORCALL    [c0020004]  (u16-swap op: BXOR)
      8| MOD         [4002ec01]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'LuckyBoxCheckPickup'
--   const[2] = 'OnEnter'
--   const[3] = 'OnTick'
--   const[4] = 'CheckFinish'

-- tail (nested function body area) [structure partially decoded]:
--   806 bytes; head: 01 79 00 20 00 03 80 00 51 07 00 00 00 08 0f 00 10 02 16 00 47 02 80 02 f2 30 01 25 00 01 1f 00 74 00 00 05 ae 18 74 24
--   nested hdr5=01 79 00 20 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=03 80 00 51 07 00 00 00  u32@+9=7
--   decoded strings in tail (verified):
--     @+0x68: 'super'
--     @+0x6f: 'SetFinish'
--     @+0x7a: 'insId'
--     @+0x1a5: 'SearchHeros'
--     @+0x1b2: 'owner'
--     @+0x1b9: 'FrameEngine'
--     @+0x1c6: 'Interface'
--     @+0x1d1: 'CampFilterType'
--     @+0x1e1: 'All'
--     @+0x1e6: 'Fix64'
--     @+0x1ed: 'fromInt'
--     @+0x1fa: 'size'
--     @+0x208: 'IsDead'
--     @+0x212: 'IsFakeDead'
--     @+0x21e: 'HasBuffByType'
--     @+0x22d: 'Common'
--     @+0x235: 'BuffType'
--     @+0x23f: 'BT_XSPACE'
--     @+0x24a: 'BT_GOLDBODY'
--     @+0x257: 'curActor'
--   upvalname '_ENV' at tail+0x31d (trailer)
