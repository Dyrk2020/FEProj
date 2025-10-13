-- Decompiled from LData vfs entry: ed0694a163d07bfdce7790e0e270033c.vfs__001_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4204_Scripts_luckyBox.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4204/Scripts/luckyBox.res
-- header: 87 00 f0 4e 01 02 0b 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 9 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [04154000]  (u16-swap op: CALL)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| NEWTABLE    [00274004]  (u16-swap op: GETTABLE)
      4| CONCAT      [021a0080]  (u16-swap op: BXOR)
      5| NEWTABLE    [00474004]  (u16-swap op: GETTABLE)
      6| CONCAT      [02220080]  (u16-swap op: BXOR)
      7| GETTABUP    [90024004]  (u16-swap op: SHR)
      8| CALL        [0802f401]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'luckyBox'
--   const[2] = 'OnEnter'
--   const[3] = 'OnTick'
--   const[4] = num8(128780458976894976)

-- tail (nested function body area) [structure partially decoded]:
--   608 bytes; head: 6a 00 20 00 03 71 00 00 05 00 11 11 0f 00 20 0d 41 7a 00 ff 54 01 20 a0 0e 03 20 a0 10 03 00 e0 00 05 20 c0 0d 07 20 a0
--   nested hdr5=6a 00 20 00 03  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=71 00 00 05 00 11 11 0f  u32@+9=252776704
--   decoded strings in tail (verified):
--     @+0x119: 'CreateActor'
--     @+0x126: 'assetArgs'
--     @+0x13e: 'FixVector3'
--     @+0x14a: 'Fix64'
--     @+0x151: 'fromInt'
--     @+0x15a: 'GetAllHeros'
--     @+0x168: 'size'
--   upvalname '_ENV' at tail+0x1fe (trailer)
