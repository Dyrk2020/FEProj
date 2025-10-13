-- Decompiled from 001_Assets_ABPack_Resources_WorkFlow_Scripts_Evaluator_EvaluatorCheckBuffIsInGroupId
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Evaluator/EvaluatorCheckBuffIsInGroupId.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04156000] SETTABLE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [30026004] UNM   (main, u16-swap op)
       4| [9002ec03] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_EVALUATOR'
--   const[1] 'EvaluatorCheckBuffIsInGroupId'
--   const[2] 'Execute'
-- function keys (registration order): ['Execute']

-- tail: 277 bytes
-- nested hdr5: 01 61 00 10 00  (ld=1 ll=97 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 9 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = Execute: +0x0021..0x0069 (18 words)

function <nested_0:Execute>(...)
       0| SETTABLE R0, K34, V2 [20050510]   [20050510]
       1| R0 = R20..R7   [04020fa0]
       2| R0 = R4..R5   [00000a20]
       3| R0 = R2..R1   [00010310]
       4| R4 = R8..R5   [02800a40]
       5| R0 = K0 [200700f4]   [200700f4]
       6| SETTABLE R0, K56, V6 [20090dc0]   [20090dc0]
       7| LOADKx [600005a0]   [600005a0]
       8| R0 = R20..R10   [000515a0]
       9| ADD [f0002c40]   [f0002c40]
      10| BXOR [00003202]   [00003202]
      11| LOADKx [600a0d10]   [600a0d10]
      12| LOADKx [600505a0]   [600505a0]
      13| SETTABLE R0, K52, V11 [240717a0]   [240717a0]
      14| R1 = R4..R1   [00300220]
      15| R2 = U24   [404002c0]
      16| R0 = K0 [4040000b]   [4040000b]
      17| return   [e4024812]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0078 [marker] b'BuffId'
--   +0x0080 [tag04] b'GroupId'
--   +0x0089 [tag04] b'ConfigMgr'
--   +0x0094 [tag04] b'FindBuff'
--   +0x00d5 [marker] b'buffResObjcet'
--   +0x00ea [marker] b'_ENV'
--   +0x010c [marker] b'_ENV'