-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/Loader.res (2594 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/Loader.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=3 upvals=_ENV
function <main>(...)
       0| R1 = _ENV["Loader"]
       1| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
       2| jmp-ish [f0000004]  -- [LOW-CONF JMP]
       3| R0 = {}
       4| R4 = <function #0>  -- local loader starts here
       5| R0["reloadrequire"] = R0  -- [LOW-CONF SETTABLE]
       6| R4 = <function #1>
       7| R0["loadrequire"] = R0  -- [LOW-CONF SETTABLE]
       8| R4 = <function #2>
       9| R0["unloadrequire"] = R0  -- [LOW-CONF SETTABLE]
      10| R4 = <function #3>
      11| R0["unloadall"] = R0  -- [LOW-CONF SETTABLE]
      12| R4 = <function #4>
      13| R0["GC"] = R0  -- [LOW-CONF SETTABLE]
      14| R4 = <function #5>
      15| R0["savetoglobal"] = R0  -- [LOW-CONF SETTABLE]
      16| R4 = {}
      17| R0 = {}  -- local hookFunctionCalls starts here
      18| _ENV["hookAllFunctions"] = R1
      19| R0 = {}
      20| SETTABUP K9, R1 [40001094]  -- [LOW-CONF SETTABUP]
      21| return
      22| return
end

    -- proto#1 lines 2..12 np=1 va=0 ms=9 upvals=_ENV
    function <function_0>(p0)
           0| R1 = _ENV["Release"]  -- local name starts here
           1| UNK57 [2004020f]  -- [LOW-CONF UNK57]
           2| R0 = _ENV["Release"]
           3| R1 = _ENV["pairs"]
           4| UNK60 [80600607]  -- [LOW-CONF UNK60]
           5| UNK59 [60600817]  -- [LOW-CONF UNK59]
           6| UNK49 [20000916]  -- [LOW-CONF UNK49]
           7| jmp-ish [f000004c]  -- local (for control) starts here  -- [LOW-CONF JMP]
           8| R7 = _ENV["string"]  -- local v starts here
           9| R6 = R7["match"]
          10| UNK51 [60e82126]  -- [LOW-CONF UNK51]
          11| GETTABUP R0, U0, K9 [81081204]  -- [LOW-CONF GETTABUP]
          12| R1 = call R1(R2, R3)
          13| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
          14| jmp-ish [f0000014]  -- [LOW-CONF JMP]
          15| R7 = _ENV["package"]
          16| UNK46 [c0e00835]  -- [LOW-CONF UNK46]
          17| R3["loaded"] = R7
          18| UNK38 [c1011684]  -- [LOW-CONF UNK38]
          19| UNK40 [0fe607fd]  -- [LOW-CONF UNK40]
          20| R1 = _ENV["require"]
          21| R3 = {}
          22| UNK41 [20402005]  -- [LOW-CONF UNK41]
          23| return
          24| return
    end

    -- proto#2 lines 14..16 np=1 va=0 ms=3 upvals=_ENV
    function <function_1>(p0)
           0| R1 = _ENV["require"]  -- local name starts here
           1| R2 = {}
           2| UNK41 [20402005]  -- [LOW-CONF UNK41]
           3| return
           4| return
    end

    -- proto#3 lines 18..24 np=1 va=0 ms=9 upvals=_ENV
    function <function_2>(p0)
           0| R1 = _ENV["pairs"]  -- local name starts here
           1| UNK60 [80600207]  -- [LOW-CONF UNK60]
           2| UNK59 [60600417]  -- [LOW-CONF UNK59]
           3| UNK49 [20000916]  -- [LOW-CONF UNK49]
           4| jmp-ish [f000004c]  -- local (for control) starts here  -- [LOW-CONF JMP]
           5| R7 = _ENV["string"]  -- local v starts here
           6| R6 = R7["match"]
           7| UNK51 [60f02526]  -- [LOW-CONF UNK51]
           8| GETTABUP R1, U0, K15 [81381e04]  -- [LOW-CONF GETTABUP]
           9| R1 = call R1(R2, R3)
          10| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
          11| jmp-ish [f0000014]  -- [LOW-CONF JMP]
          12| R7 = _ENV["package"]
          13| UNK46 [c0e00435]  -- [LOW-CONF UNK46]
          14| R2["match"] = R7
          15| UNK38 [c1015604]  -- [LOW-CONF UNK38]
          16| UNK40 [0fe607fd]  -- [LOW-CONF UNK40]
          17| return
    end

    -- proto#4 lines 26..30 np=0 va=0 ms=6 upvals=_ENV
    function <function_3>()
           0| R1 = _ENV["pairs"]
           1| UNK60 [80200307]  -- [LOW-CONF UNK60]
           2| UNK59 [6020050f]  -- [LOW-CONF UNK59]
           3| UNK49 [20000816]  -- [LOW-CONF UNK49]
           4| jmp-ish [f0000014]  -- local (for control) starts here  -- [LOW-CONF JMP]
           5| R5 = _ENV["package"]  -- local v starts here
           6| UNK46 [c0a0052d]  -- [LOW-CONF UNK46]
           7| R1[nil] = R5
           8| UNK38 [c0016e84]  -- [LOW-CONF UNK38]
           9| UNK40 [0bf407fd]  -- [LOW-CONF UNK40]
          10| return
    end

    -- proto#5 lines 32..34 np=0 va=0 ms=2 upvals=_ENV
    function <function_4>()
           0| R1 = _ENV["collectgarbage"]
           1| R2 = call R2()
           2| R0 = call R0(R1)
           3| return
    end

    -- proto#6 lines 36..38 np=2 va=0 ms=3 upvals=_ENV
    function <function_5>(p0, p1)
           0| R3 = _ENV["_G"]  -- local value starts here
           1| SETTABLE R2, K0, V1 [60400205]  -- [LOW-CONF SETTABLE]
           2| return
    end

    -- proto#7 lines 40..45 np=1 va=0 ms=11 upvals=_ENV
    function <function_6>(p0)
           0| R1 = _ENV["debug"]  -- local event starts here
           1| R1 = R1["getinfo"]
           2| R10 = 2
           3| R3 = "nSl"
           4| UNK15 [e0000519]  -- [LOW-CONF UNK15]
           5| UNK57 [2004090f]  -- local info starts here  -- [LOW-CONF UNK57]
           6| R0 = _ENV["debug"]
           7| R1 = R3["name"]
           8| UNK57 [20040917]  -- [LOW-CONF UNK57]
           9| R0 = _ENV["debug"]
          10| R1 = R3["short_src"]
          11| UNK57 [20040f17]  -- [LOW-CONF UNK57]
          12| R0 = _ENV["debug"]
          13| R3 = _ENV["FE"]
          14| R2 = R3["LogError"]
          15| R43 = "LuaHook call LuaFile:"
          16| R1 = R5["short_src"]
          17| R45 = ", FuncName:"
          18| R1 = R7["name"]
          19| R3 = ", line: "
          20| UNK44 [81201a05]  -- [LOW-CONF UNK44]
          21| R1 = R1["currentline"]
          22| R1 = call R1(R2)
          23| R61 = ", state:"
          24| UNK44 [81786a05]  -- [LOW-CONF UNK44]
          25| UNK0 [00280618]  -- [LOW-CONF UNK0]
          26| R0 = call R0(R1)
          27| return
    end

    -- proto#8 lines 47..49 np=0 va=0 ms=3 upvals=_ENV,hookFunctionCalls
    function <function_7>()
           0| R1 = _ENV["debug"]
           1| R0 = R1["sethook"]
           2| R0["debug"] = R0  -- [LOW-CONF SETTABLE]
           3| R2 = "cr"
           4| UNK15 [e0000219]  -- [LOW-CONF UNK15]
           5| return
    end

    -- proto#9 lines 51..53 np=0 va=0 ms=2 upvals=_ENV
    function <function_8>()
           0| UNK60 [80200007]  -- [LOW-CONF UNK60]
           1| UNK59 [60200207]  -- [LOW-CONF UNK59]
           2| UNK49 [2000020e]  -- [LOW-CONF UNK49]
           3| return
    end
