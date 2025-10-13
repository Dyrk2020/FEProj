-- Decompiled from LData vfs entry: ed0694a163d07bfdce7790e0e270033c.vfs__004_Assets_ABPack_Resources_WorkFlow_GamePlay_Component_9900_Scripts_EvaluatorCheckBuyOutsideSpringType.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/�E�Play/Component/9900/Scripts/EvaluatorCheckBuyOutsideSpringType.res
-- header: a1 00 f0 54 01 02 07 00 00 00 05 00 20 e0 02 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 03 ea
function <main>(...)
      0| CONCAT      [04152000]  (u16-swap op: TAILCALL)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02110080]  (u16-swap op: CALL)
      3| GETTABUP    [90022004]  (u16-swap op: SHL)
      4| CALL        [3002fc01]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_EVALUATOR'
--   const[1] = 'EvaluatorCheckBuyOutsideSpringType'
--   const[2] = 'Execute'

-- tail (nested function body area) [structure partially decoded]:
--   231 bytes; head: 01 66 00 10 00 06 00 61 00 0a 00 00 00 10 0f 00 20 03 0f 76 00 f0 04 01 20 a0 0f 02 04 20 09 00 00 d0 03 01 00 40 0a 80
--   nested hdr5=01 66 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 0a 00 00 00  u32@+9=10
--   decoded strings in tail (verified):
--     @+0x63: 'GetBuyOutsideSpringType'
--     @+0x7c: 'buyOutsideSpringType'
--   upvalname '_ENV' at tail+0xde (trailer)
