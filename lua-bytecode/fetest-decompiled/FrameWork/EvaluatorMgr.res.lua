-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/EvaluatorMgr.res (1452 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/EvaluatorMgr.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R0 = {}
       1| _ENV["OnEvaluatorExecute"] = R1
       2| R0 = {}
       3| _ENV["OnEvaluatorExecute"] = R1
       4| return
end

    -- proto#1 lines 1..7 np=4 va=0 ms=9 upvals=_ENV
    function <function_0>(p0, p1, p2, p3)
           0| R5 = _ENV["GetEvaluatorIns"]  -- local varShells starts here
           1| UNK38 [c0a82104]  -- [LOW-CONF UNK38]
           2| UNK51 [60c8120e]  -- [LOW-CONF UNK51]
           3| UNK63 [e0d82317]  -- [LOW-CONF UNK63]
           4| UNK51 [6130641e]  -- [LOW-CONF UNK51]
           5| R1 = call R1(R2, R3, R4, R5)
           6| UNK57 [20040227]  -- local evaluator starts here  -- [LOW-CONF UNK57]
           7| UNK11 [70000001]  -- [LOW-CONF UNK11]
           8| return
           9| UNK2 [40a00520]  -- [LOW-CONF UNK2]
          10| UNK41 [21402005]  -- [LOW-CONF UNK41]
          11| return
          12| return
    end

    -- proto#2 lines 10..40 np=4 va=0 ms=10 upvals=_ENV
    function <function_1>(p0, p1, p2, p3)
           0| R5 = _ENV["ScriptIns"]  -- local varShells starts here
           1| UNK46 [c0800025]  -- [LOW-CONF UNK46]
           2| R0 = "ScriptIns"
           3| jmp-ish [f0000014]  -- [LOW-CONF JMP]
           4| R5 = _ENV["ScriptIns"]
           5| R4 = R4["ScriptIns"]
           6| return
           7| R5 = _ENV["PathHashMap"]
           8| R4 = R4["PathHashMap"]
           9| UNK57 [20040427]  -- local scriptPath starts here  -- [LOW-CONF UNK57]
          10| UNK11 [70000009]  -- [LOW-CONF UNK11]
          11| UNK31 [e0534003]  -- [LOW-CONF UNK31]
          12| return
          13| UNK31 [e05e7803]  -- [LOW-CONF UNK31]
          14| R7 = _ENV["Release"]  -- local ins_t starts here
          15| UNK57 [20040837]  -- [LOW-CONF UNK57]
          16| UNK11 [70000029]  -- [LOW-CONF UNK11]
          17| R7 = _ENV["Loader"]
          18| R6 = R7["reloadrequire"]
          19| UNK51 [60d80b26]  -- [LOW-CONF UNK51]
          20| R1 = call R1(R2)
          21| UNK44 [80802935]  -- [LOW-CONF UNK44]
          22| jmp-ish [f0000044]  -- [LOW-CONF JMP]
          23| R7 = _ENV["ScriptTemplate"]
          24| R6 = R6["PathHashMap"]
          25| UNK25 [2011802b]  -- [LOW-CONF UNK25]
          26| jmp-ish [f0000024]  -- [LOW-CONF JMP]
          27| R7 = _ENV["Loader"]
          28| R6 = R7["reloadrequire"]
          29| UNK51 [60f82d26]  -- [LOW-CONF UNK51]
          30| R1 = call R1(R2)
          31| UNK44 [80802535]  -- [LOW-CONF UNK44]
          32| if not R4 then -- TEST-ish  -- [LOW-CONF TEST]
          33| jmp-ish [f00000ac]  -- [LOW-CONF JMP]
          34| UNK46 [c0e0102d]  -- [LOW-CONF UNK46]
          35| R0 = "ScriptIns"
          36| jmp-ish [f0000094]  -- [LOW-CONF JMP]
          37| R5 = R7["new"]
          38| UNK51 [60c07b06]  -- [LOW-CONF UNK51]
          39| UNK63 [e1105417]  -- [LOW-CONF UNK63]
          40| UNK51 [61386b1e]  -- [LOW-CONF UNK51]
          41| R1 = call R1(R2, R3, R4)
          42| if not R6 then -- TEST-ish  -- local evaluator starts here  -- [LOW-CONF TEST]
          43| jmp-ish [f000002c]  -- [LOW-CONF JMP]
          44| R7 = _ENV["ScriptTemplate"]
          45| UNK55 [e0c00b0e]  -- [LOW-CONF UNK55]
          46| _ENV["ScriptIns"] = R0
          47| SETTABLE R6, K32, V6 [60c00d05]  -- [LOW-CONF SETTABLE]
          48| return
          49| jmp-ish [f0000054]  -- [LOW-CONF JMP]
          50| R7 = _ENV["print"]
          51| UNK2 [40005010]  -- [LOW-CONF UNK2]
          52| UNK44 [81203f0d]  -- [LOW-CONF UNK44]
          53| UNK0 [00241040]  -- [LOW-CONF UNK0]
          54| R0 = call R0(R1)
          55| jmp-ish [f0000024]  -- [LOW-CONF JMP]
          56| R7 = _ENV["print"]
          57| UNK2 [40005e08]  -- [LOW-CONF UNK2]
          58| UNK44 [81004e0d]  -- [LOW-CONF UNK44]
          59| UNK0 [00200e38]  -- [LOW-CONF UNK0]
          60| R0 = call R0(R1)
          61| UNK31 [e06ec803]  -- [LOW-CONF UNK31]
          62| return
          63| return
    end
