-- Decompiled from LData vfs entry: ed0694a163d07bfdce7790e0e270033c.vfs__003_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4205_Scripts_SuperChangeCheckExecute.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4205/Scripts/SuperChangeCheckExecute.res
-- header: 96 00 f0 6b 01 02 0b 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 9 words; terminator: 02 fa
function <main>(...)
      0| CONCAT      [04154000]  (u16-swap op: CALL)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| NEWTABLE    [00274004]  (u16-swap op: GETTABLE)
      4| CONCAT      [021a0080]  (u16-swap op: BXOR)
      5| NEWTABLE    [00474004]  (u16-swap op: GETTABLE)
      6| CONCAT      [02220080]  (u16-swap op: BXOR)
      7| GETTABUP    [90024004]  (u16-swap op: SHR)
      8| LOADKx      [7802fc00]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'SuperChangeCheckExecute'
--   const[2] = 'OnEnter'
--   const[3] = 'OnTick'
--   const[4] = 'CheckFinish'

-- tail (nested function body area) [structure partially decoded]:
--   839 bytes; head: 01 7d 00 20 00 03 84 00 51 0a 00 00 00 0b 0f 00 10 02 16 00 47 02 80 02 f2 38 01 25 00 01 1f 00 74 00 00 05 ae 18 74 24
--   nested hdr5=01 7d 00 20 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=03 84 00 51 0a 00 00 00  u32@+9=10
--   decoded strings in tail (verified):
--     @+0x6f: 'SetFinish'
--     @+0x7a: 'insId'
--     @+0x1b2: 'GetBattleTime'
--     @+0x1c1: 'targetTime'
--     @+0x1cd: 'Fix64'
--     @+0x1d4: 'fromInt'
--     @+0x1ee: 'HasBuffByID'
--     @+0x1fb: 'eyeEffectBuff'
--     @+0x20e: 'scanBuff'
--     @+0x218: 'realEyeBuff'
--     @+0x22f: 'FrameEngine'
--     @+0x23c: 'Common'
--     @+0x244: 'BuffType'
--     @+0x24e: 'BT_XSPACE'
--     @+0x259: 'BT_GOLDBODY'
--     @+0x266: 'IsInZombieState'
--     @+0x277: 'IsFakeDead'
--     @+0x283: 'IsDead'
--     @+0x28b: 'IsCastingSkill'
--     @+0x29b: 'IsFightState'
--   upvalname '_ENV' at tail+0x33e (trailer)
