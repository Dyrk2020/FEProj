-- Decompiled from LData vfs entry: 0f29e09db1a65918f243606b9ce02aba.vfs__004_Assets_ABPack_Resources_WorkFlow_Scripts_SetActorShopPurchaseLevel.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/SetActorShopPurchaseLevel.res
-- header: 80 00 f0 48 01 02 07 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 01 ea
function <main>(...)
      0| CONCAT      [0415a000]  (u16-swap op: GETTABLE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02100080]  (u16-swap op: CONCAT)
      3| NEWTABLE    [0802a004]  (u16-swap op: NOT)
      4| LEN         [c002ec02]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'SetActorShopPurchaseLevel'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   461 bytes; head: 01 5a 00 10 00 06 00 61 00 04 00 00 00 10 0f 00 21 07 1a 71 00 f0 25 20 c0 0d 03 20 a0 05 04 60 a0 06 1e 00 40 1a 05 00
--   nested hdr5=01 5a 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 04 00 00 00  u32@+9=4
--   decoded strings in tail (verified):
--     @+0x85: 'SafeGetActor'
--     @+0x93: 'args'
--     @+0x9e: 'ActorManager'
--     @+0xb2: 'GetID'
--     @+0xe6: 'safecall'
--     @+0xf0: 'execute'
--   upvalname '_ENV' at tail+0x1a1 (trailer)
