-- Decompiled from LData vfs entry: 08b8e64ab2b191ad9d60f73f06bff908.vfs__003_Assets_ABPack_Resources_WorkFlow_Scripts_Action_GetDistributedLocationAction.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Action/GetDistributedLocationAction.res
-- header: 8a 00 f0 4b 01 02 07 00 00 00 05 00 20 e0 02 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
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
--   const[1] = 'GetDistributedLocationAction'
--   const[2] = 'OnEnter'

-- tail (nested function body area) [structure partially decoded]:
--   226 bytes; head: 01 5d 00 10 00 06 00 61 00 13 00 00 00 1a 0f 00 20 04 0c 6d 00 b0 01 20 a0 0f 03 04 20 3a 00 00 b0 0c 00 80 0e 05 20 a0
--   nested hdr5=01 5d 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 13 00 00 00  u32@+9=19
--   decoded strings in tail (verified):
--     @+0x56: 'GetPlayer'
--     @+0x61: 'distributedLoc'
--     @+0x71: 'GetRoomDistributedLoc'
--   upvalname '_ENV' at tail+0xd9 (trailer)
