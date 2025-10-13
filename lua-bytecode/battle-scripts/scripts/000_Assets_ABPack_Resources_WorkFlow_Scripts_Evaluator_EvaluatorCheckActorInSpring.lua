-- Decompiled from LData vfs entry: 0821f700720c9888ea63c249f0df5823.vfs__000_Assets_ABPack_Resources_WorkFlow_Scripts_Evaluator_EvaluatorCheckActorInSpring.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Evaluator/EvaluatorCheckActorInSpring.res
-- header: 8c 00 f0 4d 01 02 07 00 00 00 05 00 20 e0 02 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 03 ea
function <main>(...)
      0| CONCAT      [04158000]  (u16-swap op: MOVE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02110080]  (u16-swap op: CALL)
      3| GETTABUP    [90028004]  (u16-swap op: BNOT)
      4| CALL        [3002fc01]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_EVALUATOR'
--   const[1] = 'EvaluatorCheckActorInSpring'
--   const[2] = 'Execute'

-- tail (nested function body area) [structure partially decoded]:
--   176 bytes; head: 01 5f 00 10 00 06 00 61 00 08 00 00 00 0e 0f 00 20 03 0a 6f 00 f0 04 01 20 a0 0f 02 04 20 0a 00 00 b0 03 01 00 40 0a 80
--   nested hdr5=01 5f 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 08 00 00 00  u32@+9=8
--   decoded strings in tail (verified):
--     @+0x4b: 'IsInSpring'
--   upvalname '_ENV' at tail+0xa7 (trailer)
