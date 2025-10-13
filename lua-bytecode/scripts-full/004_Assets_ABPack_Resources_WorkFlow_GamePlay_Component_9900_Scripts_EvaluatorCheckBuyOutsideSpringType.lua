-- Decompiled from 004_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_9900_Scripts_EvaluatorCheckBuyOutsideSpringType
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/9900/Scripts/EvaluatorCheckBuyOutsideSpringType.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04152000] TAILCALL   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02110080] CALL   (main, u16-swap op)
       3| [90022004] SHL   (main, u16-swap op)
       4| [3002fc01] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_EVALUATOR'
--   const[1] 'EvaluatorCheckBuyOutsideSpringType'
--   const[2] 'Execute'
-- function keys (registration order): ['Execute']

-- tail: 231 bytes
-- nested hdr5: 01 66 00 10 00  (ld=1 ll=102 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 10 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = Execute: +0x0016..0x004e (14 words)

function <nested_0:Execute>(...)
       0| LE [a0200104]   [a0200104]
       1| if R1 == K1 then -- EQ   [2004020f]
       2| BAND [d0000009]   [d0000009]
       3| R0 = K0 [40000103]   [40000103]
       4| return   [f402800a]
       5| R7 = {}   [02f00014]
       6| R2 = R1; R1 = R1[K2]   [a020050e]
       7| R0 = U2   [40000510]
       8| GETTABLE R0, R3, K3 [a0600605]   [a0600605]
       9| if R1 == K2 then -- EQ   [2024050f]
      10| BOR [f0002001]   [f0002001]
      11| MOD [40400201]   [40400201]
      12| R0 = K0 [4040000b]   [4040000b]
      13| return   [e4024812]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x0057 [marker] b'checkActor'
--   +0x0063 [tag04] b'GetBuyOutsideSpringType'
--   +0x007c [tag04] b'buyOutsideSpringType'
--   +0x00b7 [marker] b'type'
--   +0x00de [marker] b'_ENV'