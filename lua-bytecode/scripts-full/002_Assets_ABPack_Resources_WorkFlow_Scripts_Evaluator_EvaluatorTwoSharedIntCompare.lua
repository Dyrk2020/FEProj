-- Decompiled from 002_Assets_ABPack_Resources_WorkFlow_Scripts_Evaluator_EvaluatorTwoSharedIntCompare
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Evaluator/EvaluatorTwoSharedIntCompare.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04150000] TESTSET   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02130080] TEST   (main, u16-swap op)
       3| [88020004] BXOR   (main, u16-swap op)
       4| [9002ec02] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_EVALUATOR'
--   const[1] 'EvaluatorTwoSharedIntCompare'
--   const[2] 'Execute'
-- function keys (registration order): ['Execute']

-- tail: 140 bytes
-- nested hdr5: 01 60 00 10 00  (ld=1 ll=96 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 9 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = Execute: +0x000e..0x0032 (9 words)

function <nested_0:Execute>(...)
       0| R1 = <closure P0> [0320000f]   [0320000f]
       1| ADD [f0007008]   [f0007008]
       2| IDIV [a0200111]   [a0200111]
       3| GETTABLE R0, R3, K1 [a0600205]   [a0600205]
       4| if R1 == K2 then -- EQ   [2024050f]
       5| SHL [30000002]   [30000002]
       6| R1 = K0 [40000303]   [40000303]
       7| R0 = K0 [4000010b]   [4000010b]
       8| return   [f402800a]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x003b [marker] b'leftVar'
--   +0x0043 [tag04] b'rightVar'
--   +0x005d [marker] b'self'
--   +0x0083 [marker] b'_ENV'