-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/BattleGlobalFunc.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/BattleGlobalFunc.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R0 = <function #0>
       1| _ENV['NEW_ACTION'] = R1
       2| R0 = <function #1>
       3| _ENV['NEW_ACTION'] = R1
       4| R0 = <function #2>
       5| _ENV['NEW_EVALUATOR'] = R1
       6| R0 = <function #3>
       7| _ENV['NEW_EVALUATOR'] = R1
       8| return
end

    function <function_0>(...)
           0| R1 = _ENV['NEW_ACTION']  -- local classname starts here
           1| R1 = R1['NEW_COMPONENT']
           2| R2 = 'NEW_EVALUATOR'
           3| R0 = U2
           4| R3 = _ENV['GetRandomIndexByWeight']  -- local FlowAction starts here
           5| LOADK R0, K4 [20682104]  -- [LOW-CONF LOADK]
           6| MOVE R9, R4 [8088120d]  -- [LOW-CONF MOVE]
           7| R4.. = ...
           8| return R4(...)
           9| return
          10| return
    end

    function <function_1>(...)
           0| R1 = _ENV['NEW_ACTION']  -- local classname starts here
           1| R1 = R1['NEW_COMPONENT']
           2| R2 = 'NEW_EVALUATOR'
           3| R0 = U2
           4| R3 = _ENV['GetRandomIndexByWeight']  -- local ActorComponent starts here
           5| LOADK R2, K12 [20606504]  -- [LOW-CONF LOADK]
           6| R1 = R4
           7| R4.. = ...
           8| return R4(...)
           9| return
          10| return
    end

    function <function_2>(...)
           0| R1 = _ENV['NEW_ACTION']  -- local classname starts here
           1| R1 = R1['NEW_COMPONENT']
           2| R2 = 'NEW_EVALUATOR'
           3| R0 = U2
           4| R3 = _ENV['GetRandomIndexByWeight']  -- local FlowEvaluator starts here
           5| R3 = 'GetRandomIndexByWeight'
           6| R5 = R4
           7| R4.. = ...
           8| return R4(...)
           9| return
          10| return
    end

    function <function_3>(...)
           0| testset [20104013]  -- [LOW-CONF TESTSET]  -- local targetList starts here  -- local totalWeightDefault starts here
           1| goto L2  -- JMP
           2| R2 = 'NEW_ACTION'
           3| if R2 == 'NEW_COMPONENT' then -- EQ  -- local totalWeight starts here
           4| R0.. = ...
           5| le-ish [b2800004]  -- [LOW-CONF LE]
           6| goto L13  -- JMP
           7| R3 = _ENV['NEW_EVALUATOR']
           8| LOADK R1, K15 [20807a04]  -- [LOW-CONF LOADK]
           9| R2 = call R2(R3)
          10| goto L11  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
          11| ADD [e580a080]  -- [LOW-CONF ADD]  -- local index starts here  -- local weight starts here
          12| tforcall [c3012544]  -- [LOW-CONF TFORCALL]
          13| testset [17f807fd]  -- [LOW-CONF TESTSET]
          14| R3 = _ENV['GetRandomIndexByWeight']
          15| R3 = R3[K4]
          16| R0 = 'NEW_ACTION'
          17| MOVE R21, R5 [60b86b16]  -- [LOW-CONF MOVE]
          18| R2 = -R3
          19| R0 = 'NEW_ACTION'  -- local targetWeight starts here
          20| if R0 == 'NEW_EVALUATOR' then -- EQ  -- local weightInList starts here
          21| R6 = R7
          22| R4 = -R2
          23| goto L27  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
          24| ADD [e8812100]  -- [LOW-CONF ADD]  -- local index starts here  -- local weight starts here
          25| le-ish [a3800024]  -- [LOW-CONF LE]
          26| goto L27  -- JMP
          27| return
          28| tforcall [c5017104]  -- [LOW-CONF TFORCALL]
          29| testset [1ff207fd]  -- [LOW-CONF TESTSET]
          30| R1 = K5
          31| return
          32| return
    end

