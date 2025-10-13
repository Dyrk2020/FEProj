-- Decompiled from LData vfs entry: 0f29e09db1a65918f243606b9ce02aba.vfs__003_Assets_ABPack_Resources_WorkFlow_Scripts_SetActorShopItemBan.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/SetActorShopItemBan.res
-- header: 7a 00 f0 42 01 02 07 00 00 00 05 00 20 e0 02 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 00 fa
function <main>(...)
      0| CONCAT      [0415a000]  (u16-swap op: GETTABLE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02110080]  (u16-swap op: CALL)
      3| SETTABUP    [4002a004]  (u16-swap op: NOT)
      4| FORLOOP     [9002e403]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'SetActorShopItemBan'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   535 bytes; head: 01 54 00 10 00 06 00 61 00 04 00 00 00 11 0f 00 21 08 24 6b 00 f0 25 20 c0 0d 03 20 a0 05 04 60 a0 06 1e 00 40 1b 05 00
--   nested hdr5=01 54 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 04 00 00 00  u32@+9=4
--   decoded strings in tail (verified):
--     @+0xa6: 'SafeGetActor'
--     @+0xb4: 'args'
--     @+0xbf: 'ActorManager'
--     @+0xd3: 'GetID'
--     @+0x11a: 'safecall'
--     @+0x124: 'execute'
--   upvalname '_ENV' at tail+0x1ec (trailer)
