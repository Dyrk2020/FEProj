-- Decompiled from LData vfs entry: 0821f700720c9888ea63c249f0df5823.vfs__002_Assets_ABPack_Resources_WorkFlow_Scripts_Evaluator_EvaluatorTwoSharedIntCompare.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Evaluator/EvaluatorTwoSharedIntCompare.res
-- header: 8d 00 f0 4e 01 02 07 00 00 00 05 00 20 e0 00 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 01 fa
function <main>(...)
      0| CONCAT      [04150000]  (u16-swap op: TESTSET)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02130080]  (u16-swap op: TEST)
      3| GETTABUP    [88020004]  (u16-swap op: BXOR)
      4| BNOT        [9002ec02]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_EVALUATOR'
--   const[1] = 'EvaluatorTwoSharedIntCompare'
--   const[2] = 'Execute'

-- tail (nested function body area) [structure partially decoded]:
--   140 bytes; head: 01 60 00 10 00 06 00 61 00 09 00 00 00 0c 0f 00 20 03 08 70 00 f0 11 01 20 a0 05 02 60 a0 0f 05 24 20 02 00 00 30 03 03
--   nested hdr5=01 60 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 09 00 00 00  u32@+9=9
--   decoded strings in tail (verified):
--     @+0x43: 'rightVar'
--   upvalname '_ENV' at tail+0x83 (trailer)
