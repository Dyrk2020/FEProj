-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/ActionMgr.res (3304 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/ActionMgr.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R0 = {}
       1| _ENV["OnActionPreload"] = R1
       2| R0 = {}
       3| _ENV["OnActionPreload"] = R1
       4| R0 = {}
       5| _ENV["OnActionTick"] = R1
       6| R0 = {}
       7| _ENV["OnActionTick"] = R1
       8| R0 = {}
       9| _ENV["OnActionActorEvent"] = R1
      10| R0 = {}
      11| _ENV["OnActionActorEvent"] = R1
      12| R0 = {}
      13| _ENV["GetActionIns"] = R1
      14| R0 = {}
      15| _ENV["GetActionIns"] = R1
      16| R0 = {}
      17| _ENV["OnActionRewind"] = R1
      18| return
end

    -- proto#1 lines 1..18 np=1 va=0 ms=6 upvals=_ENV
    function <function_0>(p0)
           0| R1 = _ENV["tonumber"]  -- local pathIdStr starts here
           1| UNK63 [e0682007]  -- [LOW-CONF UNK63]
           2| R1 = call R1(R2)
           3| UNK57 [2020020f]  -- local pathId starts here  -- [LOW-CONF UNK57]
           4| UNK3 [70000000]  -- [LOW-CONF UNK3]
           5| return
           6| R3 = _ENV["math"]
           7| R2 = R3["floor"]
           8| UNK51 [6058230e]  -- [LOW-CONF UNK51]
           9| R2["math"] = R1  -- [LOW-CONF SETTABLE]
          10| UNK44 [80306515]  -- [LOW-CONF UNK44]
          11| R3 = _ENV["PathHashMap"]
          12| R2 = R2[nil]
          13| UNK57 [20040217]  -- local scriptPath starts here  -- [LOW-CONF UNK57]
          14| UNK3 [70000000]  -- [LOW-CONF UNK3]
          15| return
          16| R3 = _ENV["ScriptTemplate"]
          17| UNK46 [c040031d]  -- [LOW-CONF UNK46]
          18| R2 = {}
          19| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          20| return
          21| R3 = _ENV["ScriptTemplate"]
          22| R5 = _ENV["Loader"]
          23| R4 = R5["reloadrequire"]
          24| UNK51 [60980316]  -- [LOW-CONF UNK51]
          25| R4["math"] = R1  -- [LOW-CONF SETTABLE]
          26| SETTABLE R2, K33, V4 [6040090d]  -- [LOW-CONF SETTABLE]
          27| return
    end

    -- proto#2 lines 20..26 np=5 va=0 ms=11 upvals=_ENV
    function <function_1>(p0, p1, p2, p3, p4)
           0| R5 = _ENV["GetActionIns"]  -- local varShells starts here
           1| UNK63 [e0c85007]  -- [LOW-CONF UNK63]
           2| UNK51 [60f0250e]  -- [LOW-CONF UNK51]
           3| GETTABLE R2, R1, K15 [a1381e15]  -- [LOW-CONF GETTABLE]
           4| UNK51 [61180b1e]  -- [LOW-CONF UNK51]
           5| GETTABLE R4, R2, K20 [a1402825]  -- [LOW-CONF GETTABLE]
           6| R1 = call R1(R2, R3, R4, R5, R6)
           7| UNK57 [2004022f]  -- local action starts here  -- [LOW-CONF UNK57]
           8| UNK3 [70000000]  -- [LOW-CONF UNK3]
           9| return
          10| UNK53 [a0e0042e]  -- [LOW-CONF UNK53]
          11| UNK7 [e0c00210]  -- [LOW-CONF UNK7]
          12| return
    end

    -- proto#3 lines 29..36 np=1 va=0 ms=4 upvals=_ENV
    function <function_2>(p0)
           0| R1 = _ENV["ScriptIns"]  -- local insId starts here
           1| R1 = R0["ScriptIns"]
           2| UNK57 [2004020f]  -- local action starts here  -- [LOW-CONF UNK57]
           3| UNK3 [70000000]  -- [LOW-CONF UNK3]
           4| return
           5| UNK53 [a060040e]  -- [LOW-CONF UNK53]
           6| UNK7 [e0400210]  -- [LOW-CONF UNK7]
           7| return
    end

    -- proto#4 lines 38..46 np=1 va=0 ms=4 upvals=_ENV
    function <function_3>(p0)
           0| R1 = _ENV["ScriptIns"]  -- local insId starts here
           1| R1 = R0["ScriptIns"]
           2| UNK57 [2004020f]  -- local action starts here  -- [LOW-CONF UNK57]
           3| UNK3 [70000000]  -- [LOW-CONF UNK3]
           4| return
           5| UNK53 [a060040e]  -- [LOW-CONF UNK53]
           6| UNK7 [e0400210]  -- [LOW-CONF UNK7]
           7| R3 = _ENV["ScriptIns"]
           8| R3["ScriptIns"] = nil
           9| return
    end

    -- proto#5 lines 48..55 np=5 va=0 ms=11 upvals=_ENV
    function <function_4>(p0, p1, p2, p3, p4)
           0| R5 = _ENV["ScriptIns"]  -- local msg starts here
           1| R5 = R4["OnActorEvent"]
           2| UNK57 [2004022f]  -- local action starts here  -- [LOW-CONF UNK57]
           3| UNK3 [70000000]  -- [LOW-CONF UNK3]
           4| return
           5| UNK54 [c0e0042e]  -- [LOW-CONF UNK54]
           6| LOADK R39, K? [21004e04]  -- [LOW-CONF LOADK]
           7| UNK51 [6138330e]  -- [LOW-CONF UNK51]
           8| GETTABLE R4, R2, K18 [a1406425]  -- [LOW-CONF GETTABLE]
           9| R0 = call R0(R1, R2, R3, R4)
          10| return
    end

    -- proto#6 lines 57..64 np=4 va=0 ms=9 upvals=_ENV
    function <function_5>(p0, p1, p2, p3)
           0| R5 = _ENV["ScriptIns"]  -- local msg starts here
           1| R4 = R4[nil]
           2| UNK57 [20040227]  -- local action starts here  -- [LOW-CONF UNK57]
           3| UNK3 [70000000]  -- [LOW-CONF UNK3]
           4| return
           5| UNK54 [c0a00526]  -- [LOW-CONF UNK54]
           6| LOADK R36, K? [20e84904]  -- [LOW-CONF LOADK]
           7| UNK51 [6100361e]  -- [LOW-CONF UNK51]
           8| SETTABLE R4, K4, R0 [20800320]  -- [LOW-CONF SETTABLE]
           9| return
    end

    -- proto#7 lines 66..95 np=5 va=0 ms=12 upvals=_ENV
    function <function_6>(p0, p1, p2, p3, p4)
           0| R5 = _ENV["ScriptIns"]  -- local varShells starts here
           1| UNK46 [c080012d]  -- [LOW-CONF UNK46]
           2| R4 = {}
           3| jmp-ish [f0000014]  -- [LOW-CONF JMP]
           4| R5 = _ENV["ScriptIns"]
           5| R5 = R4["ScriptIns"]
           6| return
           7| R5 = _ENV["PathHashMap"]
           8| R5 = R4["PathHashMap"]
           9| UNK57 [2004042f]  -- local scriptPath starts here  -- [LOW-CONF UNK57]
          10| UNK3 [70000008]  -- [LOW-CONF UNK3]
          11| UNK31 [e06e1003]  -- [LOW-CONF UNK31]
          12| return
          13| UNK31 [e06ec803]  -- [LOW-CONF UNK31]
          14| R7 = _ENV["Release"]  -- local action_t starts here
          15| UNK57 [2004083f]  -- [LOW-CONF UNK57]
          16| UNK3 [70000028]  -- [LOW-CONF UNK3]
          17| R7 = _ENV["Loader"]
          18| R7 = R7["reloadrequire"]
          19| UNK51 [6138162e]  -- [LOW-CONF UNK51]
          20| R6[nil] = R1  -- [LOW-CONF SETTABLE]
          21| UNK44 [80d81a3d]  -- [LOW-CONF UNK44]
          22| jmp-ish [f0000044]  -- [LOW-CONF JMP]
          23| R7 = _ENV["ScriptTemplate"]
          24| R7 = R6["PathHashMap"]
          25| UNK25 [2011c033]  -- [LOW-CONF UNK25]
          26| jmp-ish [f0000024]  -- [LOW-CONF JMP]
          27| R7 = _ENV["Loader"]
          28| R7 = R7["reloadrequire"]
          29| UNK51 [61204c2e]  -- [LOW-CONF UNK51]
          30| R6[nil] = R1  -- [LOW-CONF SETTABLE]
          31| UNK44 [80d8263d]  -- [LOW-CONF UNK44]
          32| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
          33| jmp-ish [f00000b4]  -- [LOW-CONF JMP]
          34| UNK46 [c0e01135]  -- [LOW-CONF UNK46]
          35| R6 = {}
          36| jmp-ish [f000009c]  -- [LOW-CONF JMP]
          37| R6 = R7["new"]
          38| UNK51 [61305a06]  -- [LOW-CONF UNK51]
          39| R2 = R0["Release"]
          40| UNK51 [61406c1e]  -- [LOW-CONF UNK51]
          41| R4 = R3[nil]
          42| R1 = call R1(R2, R3, R4, R5)
          43| if not R6 then -- TEST-ish  -- local action starts here  -- [LOW-CONF TEST]
          44| jmp-ish [f000002c]  -- [LOW-CONF JMP]
          45| R1 = _ENV["ScriptTemplate"]
          46| UNK55 [e1000c0e]  -- [LOW-CONF UNK55]
          47| UNK38 [c1200004]  -- [LOW-CONF UNK38]
          48| R0["ScriptIns"] = "ScriptTemplate"
          49| return
          50| jmp-ish [f0000054]  -- [LOW-CONF JMP]
          51| R1 = _ENV["print"]
          52| R1 = "PPLog GetActionIns error 1: "
          53| UNK44 [8168400d]  -- [LOW-CONF UNK44]
          54| UNK0 [00281248]  -- [LOW-CONF UNK0]
          55| R0 = call R0(R1)
          56| jmp-ish [f0000024]  -- [LOW-CONF JMP]
          57| R7 = _ENV["print"]
          58| R0 = "PPLog GetActionIns error 2: "
          59| UNK44 [8110370d]  -- [LOW-CONF UNK44]
          60| UNK0 [00241040]  -- [LOW-CONF UNK0]
          61| R0 = call R0(R1)
          62| UNK31 [e076e803]  -- [LOW-CONF UNK31]
          63| return
          64| return
    end

    -- proto#8 lines 97..103 np=7 va=0 ms=15 upvals=_ENV
    function <function_7>(p0, p1, p2, p3, p4, p5, p6)
           0| R7 = _ENV["GetActionIns"]  -- local intList starts here
           1| UNK63 [e1003007]  -- [LOW-CONF UNK63]
           2| UNK51 [61383d0e]  -- [LOW-CONF UNK51]
           3| R2 = R3[nil]
           4| UNK51 [6168231e]  -- [LOW-CONF UNK51]
           5| GETTABLE R4, R5, K8 [a1b01025]  -- [LOW-CONF GETTABLE]
           6| UNK51 [6198492e]  -- [LOW-CONF UNK51]
           7| GETTABLE R6, R7, K11 [a1e81635]  -- [LOW-CONF GETTABLE]
           8| R1 = call R1(R2, R3, R4, R5, R6, R7, R8)
           9| UNK57 [2004023f]  -- local action starts here  -- [LOW-CONF UNK57]
          10| UNK3 [70000000]  -- [LOW-CONF UNK3]
          11| return
          12| UNK53 [a120043e]  -- [LOW-CONF UNK53]
          13| UNK7 [e1000210]  -- [LOW-CONF UNK7]
          14| return
    end

    -- proto#9 lines 105..107 np=0 va=0 ms=2 upvals=_ENV
    function <function_8>()
           0| R0 = {}
           1| _ENV["ScriptIns"] = R1
           2| return
    end
