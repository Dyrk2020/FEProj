-- Decompiled from LData vfs entry: 631011d2dbcf739114b0bac0c072df21.vfs__002_Assets_ABPack_Resources_WorkFlow_Scripts_DataCollect_AddGamePlayStat.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/DataCollect/AddGamePlayStat.res
-- header: 82 00 f0 3e 01 02 07 00 00 00 05 00 20 e0 02 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [04158000]  (u16-swap op: MOVE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02110080]  (u16-swap op: CALL)
      3| SETTABUP    [48028004]  (u16-swap op: BNOT)
      4| BNOT        [8802e402]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'AddGamePlayStat'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   817 bytes; head: 01 50 00 10 00 06 00 61 00 0b 00 00 00 22 0f 00 20 06 c1 60 00 f1 28 01 20 e0 02 0c 00 80 15 03 00 40 07 05 20 80 07 06
--   nested hdr5=01 50 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 0b 00 00 00  u32@+9=11
--   decoded strings in tail (verified):
--     @+0x114: 'PPLog AddGamePlayStat OnEnter Run '
--     @+0x138: 'tonumber'
--     @+0x142: 'statReportType'
--     @+0x152: 'FrameEngine'
--     @+0x15f: 'Logic'
--     @+0x166: 'GamePlayCustomStat'
--     @+0x17a: 'EasterEgg'
--     @+0x19e: 'SET_INT'
--     @+0x1a7: 'DataCollectMgr'
--     @+0x1b7: 'OnSetExtraIntToEasterEgg'
--     @+0x1d1: 'targetActor'
--     @+0x1de: 'valueIndex'
--     @+0x26d: 'Default'
--   upvalname '_ENV' at tail+0x328 (trailer)
