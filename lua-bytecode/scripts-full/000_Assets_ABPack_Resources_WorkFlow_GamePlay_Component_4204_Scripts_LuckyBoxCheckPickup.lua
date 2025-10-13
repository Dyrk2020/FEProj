-- Decompiled from 000_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4204_Scripts_LuckyBoxCheckPickup
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4204/Scripts/LuckyBoxCheckPickup.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 9 code words, 5 consts
function <main>(...)
       0| [04150000] TESTSET   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02100080] CONCAT   (main, u16-swap op)
       3| [00270004] CLOSURE   (main, u16-swap op)
       4| [02180080] CONCAT   (main, u16-swap op)
       5| [00470004] CLOSURE   (main, u16-swap op)
       6| [02200080] CONCAT   (main, u16-swap op)
       7| [c0020004] BXOR   (main, u16-swap op)
       8| [4002ec01] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'LuckyBoxCheckPickup'
--   const[2] 'OnEnter'
--   const[3] 'OnTick'
--   const[4] 'CheckFinish'
-- function keys (registration order): ['OnEnter', 'OnTick', 'CheckFinish']

-- tail: 806 bytes
-- nested hdr5: 01 79 00 20 00  (ld=1 ll=121 np=0 ms=32 va=0)
-- field4: 03 80 00 51  u32@+9: 7 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x0011..0x0019 (2 words)

function <nested_0:OnEnter>(...)
       0| SHR [47001602]   [47001602]
       1| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0023 [marker] b'self'
--   +0x0068 [tag04] b'super'
--   +0x006f [tag04] b'SetFinish'
--   +0x007a [tag04] b'insId'
--   +0x0096 [marker] b'x}'
--   +0x009d [marker] b'deltaTime'
--   +0x00aa [marker] b'isFinish'
--   +0x01a5 [tag04] b'SearchHeros'
--   +0x01b2 [tag04] b'owner'
--   +0x01b9 [tag04] b'FrameEngine'
--   +0x01c6 [tag04] b'Interface'
--   +0x01d1 [tag04] b'CampFilterType'
--   +0x01e1 [tag04] b'All'
--   +0x01e6 [tag04] b'Fix64'
--   +0x01ed [tag04] b'fromInt'
--   +0x01fa [tag04] b'size'
--   +0x0205 [marker] b'at'
--   +0x0208 [tag04] b'IsDead'
--   +0x0212 [tag04] b'IsFakeDead'
--   +0x021e [tag04] b'HasBuffByType'
--   +0x022d [tag04] b'Common'
--   +0x0235 [tag04] b'BuffType'
--   +0x023f [tag04] b'BT_XSPACE'
--   +0x024a [tag04] b'BT_GOLDBODY'
--   +0x0257 [tag04] b'curActor'
--   +0x02ad [marker] b'heroList'
--   +0x02ba [marker] b'(for index)'
--   +0x0315 [marker] b'*~'
--   +0x0317 [marker] b'M|'
--   +0x031d [marker] b'_ENV'