-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/BattleGlobalFunc.res (1775 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/BattleGlobalFunc.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R0 = {}
       1| _ENV["NEW_ACTION"] = R1
       2| R0 = {}
       3| _ENV["NEW_ACTION"] = R1
       4| R0 = {}
       5| _ENV["NEW_EVALUATOR"] = R1
       6| R0 = {}
       7| _ENV["NEW_EVALUATOR"] = R1
       8| return
end

    -- proto#1 lines 1..4 np=1 va=1 ms=6 upvals=_ENV
    function <function_0>(p0, ...)
           0| R1 = _ENV["Loader"]  -- local classname starts here
           1| R1 = R1["reloadrequire"]
           2| R2 = "FrameWork/FlowAction"
           3| UNK2 [40000510]  -- [LOW-CONF UNK2]
           4| R3 = _ENV["NEW_CLASS"]  -- local FlowAction starts here
           5| LOADK R16, K? [20682104]  -- [LOW-CONF LOADK]
           6| UNK44 [8088120d]  -- [LOW-CONF UNK44]
           7| UNK5 [a0982300]  -- [LOW-CONF UNK5]
           8| UNK41 [20800005]  -- [LOW-CONF UNK41]
           9| return
          10| return
    end

    -- proto#2 lines 6..9 np=1 va=1 ms=6 upvals=_ENV
    function <function_1>(p0, ...)
           0| R1 = _ENV["Loader"]  -- local classname starts here
           1| R1 = R1["reloadrequire"]
           2| R2 = "FrameWork/ActorComponent"
           3| UNK2 [40000510]  -- [LOW-CONF UNK2]
           4| R3 = _ENV["NEW_CLASS"]  -- local ActorComponent starts here
           5| LOADK R50, K? [20606504]  -- [LOW-CONF LOADK]
           6| UNK44 [8098020d]  -- [LOW-CONF UNK44]
           7| UNK5 [a0907100]  -- [LOW-CONF UNK5]
           8| UNK41 [20800005]  -- [LOW-CONF UNK41]
           9| return
          10| return
    end

    -- proto#3 lines 11..14 np=1 va=1 ms=6 upvals=_ENV
    function <function_2>(p0, ...)
           0| R1 = _ENV["Loader"]  -- local classname starts here
           1| R1 = R1["reloadrequire"]
           2| R2 = "FrameWork/FlowEvaluator"
           3| UNK2 [40000510]  -- [LOW-CONF UNK2]
           4| R3 = _ENV["NEW_CLASS"]  -- local FlowEvaluator starts here
           5| R15 = "NEW_CLASS"
           6| UNK44 [80980a0d]  -- [LOW-CONF UNK44]
           7| UNK5 [a0802900]  -- [LOW-CONF UNK5]
           8| UNK41 [20800005]  -- [LOW-CONF UNK41]
           9| return
          10| return
    end

    -- proto#4 lines 16..34 np=2 va=0 ms=11 upvals=_ENV
    function <function_3>(p0, p1)
           0| UNK25 [20104013]  -- local totalWeightDefault starts here  -- [LOW-CONF UNK25]
           1| jmp-ish [f0000004]  -- [LOW-CONF JMP]
           2| R2 = 0
           3| UNK57 [20040317]  -- local totalWeight starts here  -- [LOW-CONF UNK57]
           4| UNK5 [b0000008]  -- [LOW-CONF UNK5]
           5| UNK37 [b2800004]  -- [LOW-CONF UNK37]
           6| jmp-ish [f0000034]  -- [LOW-CONF JMP]
           7| R3 = _ENV["ipairs"]
           8| LOADK R61, K? [20807a04]  -- [LOW-CONF LOADK]
           9| R2 = call R2(R3)
          10| jmp-ish [f0000004]  -- local (for control) starts here  -- [LOW-CONF JMP]
          11| UNK7 [e580a080]  -- local weight starts here  -- [LOW-CONF UNK7]
          12| UNK38 [c3012544]  -- [LOW-CONF UNK38]
          13| UNK40 [17f807fd]  -- [LOW-CONF UNK40]
          14| R3 = _ENV["GameAPI"]
          15| R3 = R3["RandomInt"]
          16| R0 = 0
          17| UNK51 [60b86b16]  -- [LOW-CONF UNK51]
          18| UNK19 [6040051a]  -- [LOW-CONF UNK19]
          19| R0 = 0  -- local targetWeight starts here
          20| R5 = _ENV  -- local weightInList starts here
          21| UNK51 [60f00c06]  -- [LOW-CONF UNK51]
          22| UNK19 [60800912]  -- [LOW-CONF UNK19]
          23| jmp-ish [f000001c]  -- local (for control) starts here  -- [LOW-CONF JMP]
          24| UNK7 [e8812100]  -- local weight starts here  -- [LOW-CONF UNK7]
          25| UNK37 [a3800024]  -- [LOW-CONF UNK37]
          26| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          27| return
          28| UNK38 [c5017104]  -- [LOW-CONF UNK38]
          29| UNK40 [1ff207fd]  -- [LOW-CONF UNK40]
          30| R21 = -1
          31| return
          32| return
    end
