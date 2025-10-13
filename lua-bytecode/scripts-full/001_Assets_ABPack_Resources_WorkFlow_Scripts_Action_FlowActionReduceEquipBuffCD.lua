-- Decompiled from 001_Assets_ABPack_Resources_WorkFlow_Scripts_Action_FlowActionReduceEquipBuffCD
-- [main proto consts anomalous; using structural tail parse]
-- tail: 334 bytes
-- nested hdr5: 01 81 00 20 00  (ld=1 ll=129 np=0 ms=32 va=0)
-- field4: 03 88 00 00  u32@+9: 252838022 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = ?: +0x000c..0x002c (8 words)

function <nested_0:?>(...)
       0| R0 = <closure P0> [10000f0f]   [10000f0f]
       1| GETTABLE R0, R0, K8 [f0009106]   [f0009106]
       2| BAND [c0200109]   [c0200109]
       3| if R9 == K1 then -- EQ   [6001034c]
       4| goto +1 -- JMP   [f000000c]
       5| R2 = R0; R1 = R0[K1]   [a0200306]
       6| POW [60000311]   [60000311]
       7| return   [ea028802]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0031 [marker] b'TriggerOnLeave'
--   +0x0056 [marker] b'self'
--   +0x00b4 [marker] b'7='
--   +0x00ba [tag04] b'targetActor'
--   +0x00c8 [tag04] b'BattleEquipManager'
--   +0x00dc [tag04] b'SetEquipBuffCD'
--   +0x00ec [tag04] b'equipResId'
--   +0x00f8 [tag04] b'reduceCD'
--   +0x0145 [marker] b'_ENV'