-- Decompiled from LData vfs entry: ed0694a163d07bfdce7790e0e270033c.vfs__002_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4204_Scripts_luckyBoxPickup.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4204/Scripts/luckyBoxPickup.res
-- header: 8d 00 f0 68 01 03 10 00 00 00 05 00 20 e0 01 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 14 words; terminator: 02 ea
function <main>(...)
      0| CONCAT      [04154000]  (u16-swap op: CALL)
      1| CONCAT      [01034000]  (u16-swap op: LOADBOOL)
      2| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      3| CONCAT      [04100100]  (u16-swap op: CONCAT)
      4| NEWTABLE    [00274004]  (u16-swap op: GETTABLE)
      5| CONCAT      [04180100]  (u16-swap op: CONCAT)
      6| NEWTABLE    [00474004]  (u16-swap op: GETTABLE)
      7| CONCAT      [04200100]  (u16-swap op: CONCAT)
      8| NEWTABLE    [00674004]  (u16-swap op: GETTABLE)
      9| CONCAT      [04280100]  (u16-swap op: CONCAT)
     10| NEWTABLE    [00874004]  (u16-swap op: GETTABLE)
     11| CONCAT      [04300100]  (u16-swap op: CONCAT)
     12| LOADK       [20024004]  (u16-swap op: SHR)
     13| LOADKx      [7002f400]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_ACTION'
--   const[1] = 'luckyBoxPickup'
--   const[2] = 'OnEnter'
--   const[3] = 'OnTick'
--   const[4] = num8(-3925690649339498496)
--   const[5] = 'GetVfxData'
--   const[6] = 'Pickup'

-- tail (nested function body area) [structure partially decoded]:
--   3601 bytes; head: 01 98 00 20 00 05 9f 00 52 04 00 00 00 0a 0f 00 10 14 a8 00 f0 41 01 20 a0 0e 03 20 a0 12 03 00 e0 00 05 20 c0 0d 07 20
--   nested hdr5=01 98 00 20 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=05 9f 00 52 04 00 00 00  u32@+9=4
--   decoded strings in tail (verified):
--     @+0x76: 'CastToSharedBool'
--     @+0x88: 'args'
--     @+0x97: 'rawValue'
--     @+0xa5: 'SafeGetBool'
--     @+0x202: 'bindType'
--     @+0x20c: 'FrameEngine'
--     @+0x219: 'Interface'
--     @+0x224: 'FlowActionSetVfx_Bind'
--     @+0x23b: 'Position'
--     @+0x24e: 'GetPosition'
--     @+0x25b: 'vfxRemoveType'
--     @+0x27a: 'FixTime'
--     @+0x283: 'remove_fixTime'
--     @+0x293: 'Fix64'
--     @+0x29a: 'fromInt'
--     @+0x2a9: 'vfxForwardType'
--     @+0x2c8: 'ForwardFix'
--     @+0x2ed: 'ignoreBindActorReplaceMat'
--     @+0x8bd: 'GetActor'
--     @+0x8c7: 'GetID'
--     @+0x8ce: 'Battlefield'
--     @+0x8db: 'SearchHeros'
--     @+0x902: 'size'
--     @+0x90c: 'IsDead'
--     @+0x916: 'IsFakeDead'
--     @+0x94b: 'BT_GOLDBODY'
--     @+0x958: 'LFEList'
--     @+0x961: 'TDB_NEW_FELIST_INT'
--     @+0x975: 'push_back'
--     @+0x99b: 'GetRandomIndexByWeight'
--     @+0x9b3: '�}�EDELETE_FELIST_INT'
--     @+0x9d3: 'assetArgs'
--     @+0xa95: 'hero'
--     @+0xabe: 'SetFinish'
--   upvalname '_ENV' at tail+0xe08 (trailer)
