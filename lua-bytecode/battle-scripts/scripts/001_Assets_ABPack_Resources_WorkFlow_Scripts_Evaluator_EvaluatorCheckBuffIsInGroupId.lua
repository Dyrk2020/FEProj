-- Decompiled from LData vfs entry: 0821f700720c9888ea63c249f0df5823.vfs__001_Assets_ABPack_Resources_WorkFlow_Scripts_Evaluator_EvaluatorCheckBuffIsInGroupId.res
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/Evaluator/EvaluatorCheckBuffIsInGroupId.res
-- header: 8e 00 f0 4f 01 02 07 00 00 00 05 00 20 e0 03 0a  (b0=srcLen+13, b4=nup=1, b6=code_words+2)
-- code: 5 words; terminator: 01 f2
function <main>(...)
      0| CONCAT      [04156000]  (u16-swap op: SETTABLE)
      1| CONCAT      [00074000]  (u16-swap op: GETTABLE)
      2| CONCAT      [02120080]  (u16-swap op: BXOR)
      3| LOADK       [30026004]  (u16-swap op: UNM)
      4| FORLOOP     [9002ec03]  (u16-swap op: RETURN)
end

-- constants:
--   const[0] = 'NEW_EVALUATOR'
--   const[1] = 'EvaluatorCheckBuffIsInGroupId'
--   const[2] = 'Execute'

-- tail (nested function body area) [structure partially decoded]:
--   277 bytes; head: 01 61 00 10 00 06 00 61 00 09 00 00 00 12 0f 00 20 04 18 71 00 f0 20 01 20 a0 0f 03 04 20 12 00 00 10 05 05 20 a0 0f 02
--   nested hdr5=01 61 00 10 00  (ld,ll,np,ms,va as u8 [INFERENCE])
--   bytes[5:13]=06 00 61 00 09 00 00 00  u32@+9=9
--   decoded strings in tail (verified):
--     @+0x80: 'GroupId'
--     @+0x89: 'ConfigMgr'
--     @+0x94: 'FindBuff'
--   upvalname '_ENV' at tail+0xea (trailer)
