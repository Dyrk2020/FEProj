-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/EvaluatorMgr.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/EvaluatorMgr.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R0 = <function #0>
       1| _ENV['OnEvaluatorExecute'] = R1
       2| R0 = <function #1>
       3| _ENV['OnEvaluatorExecute'] = R1
       4| return
end

    function <function_0>(...)
           0| R5 = _ENV['OnEvaluatorExecute']  -- local assetArgs starts here  -- local insId starts here  -- local pathId starts here  -- local varShells starts here
           1| tforcall [c0a82104]  -- [LOW-CONF TFORCALL]
           2| MOVE R9, R6 [60c8120e]  -- [LOW-CONF MOVE]
           3| nop
           4| MOVE R18, R1 [6130641e]  -- [LOW-CONF MOVE]
           5| R1 = call R1(R2, R3, R4, R5)
           6| if R4 == 'GetEvaluatorIns' then -- EQ  -- local evaluator starts here
           7| POW [70000001]  -- [LOW-CONF POW]
           8| return
           9| R5 = U4
          10| return R2(...)
          11| return
          12| return
    end

    function <function_1>(...)
           0| R5 = _ENV['OnEvaluatorExecute']  -- local assetArgs starts here  -- local insId starts here  -- local pathId starts here  -- local varShells starts here
           1| R4 = R4[R0]
           2| R0 = 'OnEvaluatorExecute'
           3| goto L6  -- JMP
           4| R5 = _ENV['OnEvaluatorExecute']
           5| R4 = R4[R0]
           6| return
           7| R5 = _ENV['GetEvaluatorIns']
           8| R4 = R4[R1]
           9| if R4 == K2 then -- EQ  -- local scriptPath starts here
          10| POW [70000009]  -- [LOW-CONF POW]
          11| R2..R0 = nil
          12| return
          13| R2..R0 = nil
          14| R7 = _ENV[K3]  -- local ins_t starts here
          15| if R6 == K4 then -- EQ
          16| POW [70000029]  -- [LOW-CONF POW]
          17| R7 = _ENV[K5]
          18| R6 = R7[K6]
          19| R5 = R6
          20| R1 = call R1(R2)
          21| MOVE R20, R4 [80802935]  -- [LOW-CONF MOVE]
          22| goto L31  -- JMP
          23| R7 = _ENV[K7]
          24| R6 = R6[R1]
          25| testset [2011802b]  -- [LOW-CONF TESTSET]
          26| goto L31  -- JMP
          27| R7 = _ENV[K5]
          28| R6 = R7[K6]
          29| MOVE R22, R7 [60f82d26]  -- [LOW-CONF MOVE]
          30| R1 = call R1(R2)
          31| MOVE R18, R4 [80802535]  -- [LOW-CONF MOVE]
          32| if not R4 then
          33| goto L55  -- JMP
          34| R5 = R7[K8]
          35| R0 = 'OnEvaluatorExecute'
          36| goto L55  -- JMP
          37| R5 = R7[K8]
          38| MOVE R29, R6 [60c07b06]  -- [LOW-CONF MOVE]
          39| nop
          40| MOVE R21, R1 [61386b1e]  -- [LOW-CONF MOVE]
          41| R1 = call R1(R2, R3, R4)
          42| if not R6 then  -- local evaluator starts here
          43| goto L49  -- JMP
          44| R7 = _ENV[K7]
          45| R1 = R6[R5]
          46| _ENV['OnEvaluatorExecute'] = R0
          47| SETTABLE R6, K32, V6 [60c00d05]  -- [LOW-CONF SETTABLE]
          48| return
          49| goto L60  -- JMP
          50| R7 = _ENV[K9]
          51| R0 = U2
          52| MOVE R31, R1 [81203f0d]  -- [LOW-CONF MOVE]
          53| R1 = R8..R8
          54| R0 = call R0(R1)
          55| goto L60  -- JMP
          56| R7 = _ENV[K9]
          57| R0 = U1
          58| R7 = R0
          59| R1 = R7..R7
          60| R0 = call R0(R1)
          61| R3..R0 = nil
          62| return
          63| return
    end

