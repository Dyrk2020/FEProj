-- Decompiled from LData vfs entry: 08b8e64ab2b191ad9d60f73f06bff908.vfs__004_Assets_ABPack_Resources_WorkFlow_Scripts_Action_ShowUIAction.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/ShowUIAction.res
-- header: 7a 00 f0 3b 01 02 07 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [0415e000]  (u16-swap op: GETTABUP)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| SETTABUP    [4802e004]  (u16-swap op: RETURN)
      4| BNOT        [8802e402]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'ShowUIAction'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   171 bytes; head: 01 4d 00 10 00 06 00 61 00 0c 00 00 00 0e 0f 00 21 04 07 64 00 f0 0c 20 c0 0f 03 20 40 07 04 60 60 16 06 60 20 05 09 60
--   nested hdr5=01 4d 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 0c 00 00 00  u32@+9=12
--   decoded strings in tail (verified):
--     @+0x45: 'SendMsg'
--     @+0x4e: 'uiName'
--     @+0x56: 'key'
--     @+0x5b: 'sendOnReload'
--   upvalname '_ENV' at tail+0xa2 (trailer)
