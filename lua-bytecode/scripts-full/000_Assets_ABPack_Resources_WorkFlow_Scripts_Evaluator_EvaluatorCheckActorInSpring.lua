-- Decompiled from 000_Assets_ABPack_Resources_WorkFlow_Scripts_Evaluator_EvaluatorCheckActorInSpring
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Evaluator/EvaluatorCheckActorInSpring.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04158000] MOVE   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02110080] CALL   (main, u16-swap op)
       3| [90028004] BNOT   (main, u16-swap op)
       4| [3002fc01] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_EVALUATOR'
--   const[1] 'EvaluatorCheckActorInSpring'
--   const[2] 'Execute'
-- function keys (registration order): ['Execute']

-- tail: 176 bytes
-- nested hdr5: 01 5f 00 10 00  (ld=1 ll=95 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 8 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = Execute: +0x0016..0x003a (9 words)

function <nested_0:Execute>(...)
       0| LE [a0200104]   [a0200104]
       1| if R1 == K1 then -- EQ   [2004020f]
       2| R0 = not R1   [b000000a]
       3| R0 = K0 [40000103]   [40000103]
       4| return   [f402800a]
       5| R7 = {}   [00f20014]
       6| R2 = R1; R1 = R1[K2]   [a020050e]
       7| testset [20000513]   [20000513]
       8| return   [e402480a]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0041 [marker] b'curActor'
--   +0x004b [tag04] b'IsInSpring'
--   +0x0078 [marker] b'bInSpring'
--   +0x00a7 [marker] b'_ENV'