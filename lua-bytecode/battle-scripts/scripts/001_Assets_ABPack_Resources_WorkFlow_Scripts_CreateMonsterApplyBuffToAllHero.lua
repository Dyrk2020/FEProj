-- Decompiled from LData vfs entry: 0f29e09db1a65918f243606b9ce02aba.vfs__001_Assets_ABPack_Resources_WorkFlow_Scripts_CreateMonsterApplyBuffToAllHero.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/CreateMonsterApplyBuffToAllHero.res
-- header: 86 00 f0 4e 01 02 07 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 01 f2
function <main>(...)
      0| CONCAT      [0415a000]  (u16-swap op: GETTABLE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| LOADK       [3002a004]  (u16-swap op: NOT)
      4| FORLOOP     [9002ec03]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'CreateMonsterApplyBuffToAllHero'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   509 bytes; head: 01 60 00 10 00 06 00 10 00 65 00 11 16 0f 00 20 0c 22 70 00 f0 79 01 20 e0 03 0c 00 a0 15 03 00 40 00 05 20 c0 0f 07 20
--   nested hdr5=01 60 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 10 00 65 00 11 16  u32@+9=370212965
--   decoded strings in tail (verified):
--     @+0xa8: 'PPLog CreateMonsterApplyBuffToAllHero  OnEnter Run '
--     @+0xdd: 'Battlefield'
--     @+0xf5: 'monsterAsset'
--     @+0x107: 'FixVector3_ZERO'
--     @+0x118: 'GetAllHeros'
--     @+0x12a: 'size'
--     @+0x139: 'AddBuff'
--     @+0x142: 'buffAsset'
--   upvalname '_ENV' at tail+0x1d3 (trailer)
