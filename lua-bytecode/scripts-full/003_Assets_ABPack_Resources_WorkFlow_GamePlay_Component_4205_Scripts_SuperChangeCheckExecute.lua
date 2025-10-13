-- Decompiled from 003_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_4205_Scripts_SuperChangeCheckExecute
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/4205/Scripts/SuperChangeCheckExecute.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 9 code words, 5 consts
function <main>(...)
       0| [04154000] CALL   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [00274004] GETTABLE   (main, u16-swap op)
       4| [021a0080] BXOR   (main, u16-swap op)
       5| [00474004] GETTABLE   (main, u16-swap op)
       6| [02220080] BXOR   (main, u16-swap op)
       7| [90024004] SHR   (main, u16-swap op)
       8| [7802fc00] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'SuperChangeCheckExecute'
--   const[2] 'OnEnter'
--   const[3] 'OnTick'
--   const[4] 'CheckFinish'
-- function keys (registration order): ['OnEnter', 'OnTick', 'CheckFinish']

-- tail: 839 bytes
-- nested hdr5: 01 7d 00 20 00  (ld=1 ll=125 np=0 ms=32 va=0)
-- field4: 03 84 00 51  u32@+9: 10 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x000d..0x0019 (3 words)

function <nested_0:OnEnter>(...)
       0| if not R0 then   [10000f0b]
       1| SHR [47001602]   [47001602]
       2| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0023 [marker] b'self'
--   +0x006f [tag04] b'SetFinish'
--   +0x007a [tag04] b'insId'
--   +0x0096 [marker] b'x}'
--   +0x009d [marker] b'deltaTime'
--   +0x00aa [marker] b'isFinish'
--   +0x0114 [marker] b'M '
--   +0x01a0 [marker] b'?j'
--   +0x01b2 [tag04] b'GetBattleTime'
--   +0x01c1 [tag04] b'targetTime'
--   +0x01cd [tag04] b'Fix64'
--   +0x01d4 [tag04] b'fromInt'
--   +0x01de [marker] b'm|'
--   +0x01ee [tag04] b'HasBuffByID'
--   +0x01fb [tag04] b'eyeEffectBuff'
--   +0x020a [tag04] b'id'
--   +0x020e [tag04] b'scanBuff'
--   +0x0218 [tag04] b'realEyeBuff'
--   +0x022f [tag04] b'FrameEngine'
--   +0x023c [tag04] b'Common'
--   +0x0244 [tag04] b'BuffType'
--   +0x024e [tag04] b'BT_XSPACE'
--   +0x0259 [tag04] b'BT_GOLDBODY'
--   +0x0266 [tag04] b'IsInZombieState'
--   +0x0277 [tag04] b'IsFakeDead'
--   +0x0283 [tag04] b'IsDead'
--   +0x028b [tag04] b'IsCastingSkill'
--   +0x029b [tag04] b'IsFightState'
--   +0x033e [marker] b'_ENV'