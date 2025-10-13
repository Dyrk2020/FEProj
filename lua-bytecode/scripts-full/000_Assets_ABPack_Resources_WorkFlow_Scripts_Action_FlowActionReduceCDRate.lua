-- Decompiled from 000_Assets_ABPack_Resources_WorkFlow_Scripts_Action_FlowActionReduceCDRate
-- [main proto consts anomalous; using structural tail parse]
-- tail: 557 bytes
-- nested hdr5: 01 7c 00 20 00  (ld=1 ll=124 np=0 ms=32 va=0)
-- field4: 03 83 00 52  u32@+9: 21 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = ?: +0x000d..0x002d (8 words)

function <nested_0:?>(...)
       0| R3 = call R3(R4, R5)   [10000f19]
       1| GETTABLE R0, R0, K6 [f0008c06]   [f0008c06]
       2| BAND [c0200109]   [c0200109]
       3| GETTABUP R0, U9, K1 [8001034c]   [8001034c]
       4| goto +1 -- JMP   [f000000c]
       5| R2 = R0; R1 = R0[K1]   [a0200306]
       6| MOD [40000311]   [40000311]
       7| return   [ea028802]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0032 [marker] b'TriggerOnLeave'
--   +0x0057 [marker] b'self'
--   +0x010f [marker] b'7l'
--   +0x0116 [marker] b'targetActor'
--   +0x0123 [tag04] b'GetSkillMgr'
--   +0x0130 [tag04] b'ReduceCDRate'
--   +0x013e [tag04] b'slotIndex'
--   +0x0153 [tag04] b'IsVfxWhenCDReset'
--   +0x016f [tag04] b'includeStockCd'
--   +0x017f [tag04] b'onlyStockCd'
--   +0x019b [tag04] b'tonumber'
--   +0x01a5 [tag04] b'skillTagType1'
--   +0x0224 [marker] b'_ENV'