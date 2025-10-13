-- Decompiled from 002_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4204_Scripts_luckyBoxPickup
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4204/Scripts/luckyBoxPickup.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 14 code words, 7 consts
function <main>(...)
       0| [04154000] CALL   (main, u16-swap op)
       1| [01034000] LOADBOOL   (main, u16-swap op)
       2| [00074000] GETTABLE   (main, u16-swap op)
       3| [04100100] CONCAT   (main, u16-swap op)
       4| [00274004] GETTABLE   (main, u16-swap op)
       5| [04180100] CONCAT   (main, u16-swap op)
       6| [00474004] GETTABLE   (main, u16-swap op)
       7| [04200100] CONCAT   (main, u16-swap op)
       8| [00674004] GETTABLE   (main, u16-swap op)
       9| [04280100] CONCAT   (main, u16-swap op)
      10| [00874004] GETTABLE   (main, u16-swap op)
      11| [04300100] CONCAT   (main, u16-swap op)
      12| [20024004] SHR   (main, u16-swap op)
      13| [7002f400] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'luckyBoxPickup'
--   const[2] 'OnEnter'
--   const[3] 'OnTick'
--   const[4] num8(-3925690649339498496)
--   const[5] 'GetVfxData'
--   const[6] 'Pickup'
-- function keys (registration order): ['OnEnter', 'OnTick', 'GetVfxData', 'Pickup']

-- tail: 3601 bytes
-- nested hdr5: 01 98 00 20 00  (ld=1 ll=152 np=0 ms=32 va=0)
-- field4: 05 9f 00 52  u32@+9: 4 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0021..0x0061 (16 words)

function <nested_0:OnEnter>(...)
       0| GETTABUP R1, U0, K2 [c0200500]   [c0200500]
       1| GETTABLE R1, R1, K3 [a020070d]   [a020070d]
       2| GETTABLE R0, R3, K4 [a0600805]   [a0600805]
       3| R4 = R2; R3 = R2[K5]   [c0600a16]
       4| FORPREP [80003008]   [80003008]
       5| R0 = call R0(R1, R2)   [4040001d]
       6| R1 = call R1()   [40000505]
       7| GETTABLE R7, R1, K8 [e024113e]   [e024113e]
       8| GETTABLE R0, R3, K2 [a0600405]   [a0600405]
       9| GETTABLE R2, R3, K9 [a0601215]   [a0601215]
      10| GETTABLE R0, R3, K4 [a0600905]   [a0600905]
      11| R0 = K6 [4000300e]   [4000300e]
      12| if not R2 then   [0040041b]
      13| U0 = R5   [a2a82003]
      14| R4 = R0; R3 = R0[K10]   [a0601406]
      15| return   [e0400212]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0069 [marker] b'super'
--   +0x0073 [marker] b'FE'
--   +0x0076 [tag04] b'CastToSharedBool'
--   +0x0088 [tag04] b'args'
--   +0x008e [tag04] b'at'
--   +0x0097 [tag04] b'rawValue'
--   +0x00a5 [tag04] b'SafeGetBool'
--   +0x00d9 [marker] b'self'
--   +0x00e1 [marker] b'isPick'
--   +0x0202 [tag04] b'bindType'
--   +0x020c [tag04] b'FrameEngine'
--   +0x0219 [tag04] b'Interface'
--   +0x0224 [tag04] b'FlowActionSetVfx_Bind'
--   +0x023b [tag04] b'Position'
--   +0x024e [tag04] b'GetPosition'
--   +0x025b [tag04] b'vfxRemoveType'
--   +0x027a [tag04] b'FixTime'
--   +0x0283 [tag04] b'remove_fixTime'
--   +0x0293 [tag04] b'Fix64'
--   +0x029a [tag04] b'fromInt'
--   +0x02a9 [tag04] b'vfxForwardType'
--   +0x02c8 [tag04] b'ForwardFix'
--   +0x02ed [tag04] b'ignoreBindActorReplaceMat'
--   +0x0342 [marker] b'owner'
--   +0x034b [marker] b'vfxParam'
--   +0x0390 [marker] b'?U'
--   +0x053d [marker] b'%u'
--   +0x0553 [marker] b'12'
--   +0x0584 [marker] b'12'
--   +0x05b1 [marker] b'12'
--   +0x05d9 [marker] b']<X'
--   +0x0600 [marker] b']\\'
--   +0x060c [marker] b'12'
--   +0x065c [marker] b'12'
--   +0x068a [marker] b'12'
--   +0x06b7 [marker] b'12'
--   +0x06e4 [marker] b'12'
--   +0x0712 [marker] b'12'
--   +0x0763 [marker] b'5\\='
--   +0x076c [marker] b'12'
--   +0x07a9 [marker] b'12'
--   +0x07ce [marker] b'1}'
--   +0x0839 [marker] b'5]=@'
--   +0x0856 [marker] b']=>'
--   +0x0882 [marker] b']='
--   +0x089d [marker] b'Zv+C@'
--   +0x08b0 [marker] b'ActorManager'
--   +0x08bd [tag04] b'GetActor'
--   +0x08c7 [tag04] b'GetID'
--   +0x08ce [tag04] b'Battlefield'
--   +0x08db [tag04] b'SearchHeros'
--   +0x08fa [marker] b'All'
--   +0x0902 [tag04] b'size'
--   +0x090c [tag04] b'IsDead'
--   +0x0916 [tag04] b'IsFakeDead'
--   +0x0930 [marker] b'Common'
--   +0x0941 [marker] b'BT_XSPACE'
--   +0x094b [tag04] b'BT_GOLDBODY'
--   +0x0958 [tag04] b'LFEList'
--   +0x0961 [tag04] b'TDB_NEW_FELIST_INT'
--   +0x0975 [tag04] b'push_back'
--   +0x0993 [marker] b'GameAPI'
--   +0x099b [tag04] b'GetRandomIndexByWeight'
--   +0x09d3 [tag04] b'assetArgs'
--   +0x09de [tag04] b'id'
--   +0x09f0 [marker] b'key'
--   +0x09fa [marker] b'PostBattleEvent'
--   +0x0a7a [marker] b'Custom1'
--   +0x0a91 [marker] b'IlyF'
--   +0x0a95 [tag04] b'hero'
--   +0x0abe [tag04] b'SetFinish'
--   +0x0d34 [marker] b'num'
--   +0x0d3c [marker] b'list_int'
--   +0x0da5 [marker] b'a}@'
--   +0x0e08 [marker] b'_ENV'