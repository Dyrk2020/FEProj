-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/Logic/BattleLogic.res (1479 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/Logic/BattleLogic.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=3 upvals=_ENV
function <main>(...)
       0| R1 = _ENV["_G"]
       1| R0 = R1["print"]
       2| R4 = {}  -- local oldPrint starts here
       3| R0 = {}  -- local FEBattleLoadRequire starts here
       4| _ENV["FEBattleStart"] = R1
       5| R0 = {}
       6| _ENV["FEBattleStart"] = R1
       7| R0 = {}
       8| _ENV["FEBattleReset"] = R1
       9| R0 = {}
      10| _ENV["FEBattleReset"] = R1
      11| return
end

    -- proto#1 lines 3..15 np=0 va=0 ms=2 upvals=_ENV
    function <function_0>()
           0| UNK60 [80200007]  -- [LOW-CONF UNK60]
           1| UNK59 [60200207]  -- [LOW-CONF UNK59]
           2| UNK49 [2000020e]  -- [LOW-CONF UNK49]
           3| R1 = _ENV["Loader"]
           4| R0 = R1["reloadrequire"]
           5| R1 = "FrameWork/ToggleMgr"
           6| R0 = call R0(R1)
           7| R1 = _ENV["Loader"]
           8| R0 = R1["reloadrequire"]
           9| R1 = "FrameWork/ConstDefine"
          10| R0 = call R0(R1)
          11| R1 = _ENV["Loader"]
          12| R0 = R1["reloadrequire"]
          13| R1 = "FrameWork/GlobalFunc"
          14| R0 = call R0(R1)
          15| R1 = _ENV["Loader"]
          16| R0 = R1["reloadrequire"]
          17| R1 = "LuaGen/FEEnumForLua"
          18| R0 = call R0(R1)
          19| R1 = _ENV["Loader"]
          20| R0 = R1["reloadrequire"]
          21| R1 = "FrameWork/PathHashMap"
          22| R0 = call R0(R1)
          23| R1 = _ENV["Loader"]
          24| R0 = R1["reloadrequire"]
          25| R1 = "FrameWork/WorkFlowUtils"
          26| R0 = call R0(R1)
          27| R1 = _ENV["Loader"]
          28| R0 = R1["reloadrequire"]
          29| R1 = "FrameWork/BattleGlobalFunc"
          30| R0 = call R0(R1)
          31| R1 = _ENV["Loader"]
          32| R0 = R1["reloadrequire"]
          33| R1 = "FrameWork/ActionMgr"
          34| R0 = call R0(R1)
          35| R1 = _ENV["Loader"]
          36| R0 = R1["reloadrequire"]
          37| R1 = "FrameWork/EvaluatorMgr"
          38| R0 = call R0(R1)
          39| R1 = _ENV["Loader"]
          40| R0 = R1["reloadrequire"]
          41| R1 = "FrameWork/ScriptMgr"
          42| R0 = call R0(R1)
          43| return
    end

    -- proto#2 lines 17..20 np=0 va=0 ms=2 upvals=FEBattleLoadRequire,_ENV
    function <function_1>()
           0| R2["_G"] = R0  -- [LOW-CONF SETTABLE]
           1| R0 = call R0()
           2| R1 = _ENV["_G"]
           3| R1 = _ENV["FE"]
           4| UNK46 [c020030d]  -- [LOW-CONF UNK46]
           5| UNK2 [40040208]  -- [LOW-CONF UNK2]
           6| return
    end

    -- proto#3 lines 22..23 np=0 va=0 ms=2
    function <function_2>()
           0| return
    end

    -- proto#4 lines 25..26 np=0 va=0 ms=2
    function <function_3>()
           0| return
    end

    -- proto#5 lines 28..30 np=0 va=0 ms=2 upvals=_ENV,oldPrint
    function <function_4>()
           0| R1 = _ENV["_G"]
           1| R1["_G"] = R0  -- [LOW-CONF SETTABLE]
           2| R0["print"] = "print"
           3| return
    end
