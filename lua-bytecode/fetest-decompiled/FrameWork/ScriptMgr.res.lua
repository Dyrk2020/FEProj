-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/ScriptMgr.res (2716 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/ScriptMgr.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R1 = _ENV["ScriptIns"]
       1| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
       2| jmp-ish [f0000004]  -- [LOW-CONF JMP]
       3| R0 = {}
       4| _ENV["ScriptIns"] = R1
       5| R1 = _ENV["ScriptTemplate"]
       6| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
       7| jmp-ish [f0000004]  -- [LOW-CONF JMP]
       8| R0 = {}
       9| _ENV["ScriptIns"] = R1
      10| R0 = {}
      11| _ENV["RunScript"] = R1
      12| R0 = {}
      13| _ENV["RunScript"] = R1
      14| R0 = {}
      15| _ENV["EndScript"] = R1
      16| R0 = {}
      17| _ENV["EndScript"] = R1
      18| R0 = {}
      19| _ENV["ReloadScript"] = R1
      20| R0 = {}
      21| _ENV["ReloadScript"] = R1
      22| R0 = {}
      23| _ENV["PreloadScript"] = R1
      24| return
end

    -- proto#1 lines 4..12 np=3 va=0 ms=7 upvals=_ENV
    function <function_0>(p0, p1, p2)
           0| R3 = _ENV["GetScriptIns"]  -- local objId starts here
           1| UNK38 [c0a82004]  -- [LOW-CONF UNK38]
           2| UNK51 [6088130e]  -- [LOW-CONF UNK51]
           3| UNK63 [e0d82217]  -- [LOW-CONF UNK63]
           4| R1 = call R1(R2, R3, R4)
           5| UNK57 [2004021f]  -- local objIns starts here  -- [LOW-CONF UNK57]
           6| R0 = call R0()
           7| return
           8| UNK46 [c0a0041d]  -- [LOW-CONF UNK46]
           9| R0 = "GetScriptIns"
          10| jmp-ish [f000000c]  -- [LOW-CONF JMP]
          11| UNK53 [a0a0041e]  -- [LOW-CONF UNK53]
          12| forloop/jmp [80800213]  -- [LOW-CONF FORLOOP]
          13| return
    end

    -- proto#2 lines 14..22 np=1 va=0 ms=4 upvals=_ENV
    function <function_1>(p0)
           0| R1 = _ENV["objIns"]  -- local insId starts here
           1| R1 = R0["objIns"]
           2| UNK57 [2004020f]  -- local objIns starts here  -- [LOW-CONF UNK57]
           3| R0 = call R0()
           4| return
           5| UNK46 [c060040d]  -- [LOW-CONF UNK46]
           6| R0 = "objIns"
           7| jmp-ish [f000000c]  -- [LOW-CONF JMP]
           8| UNK53 [a060040e]  -- [LOW-CONF UNK53]
           9| forloop/jmp [80400213]  -- [LOW-CONF FORLOOP]
          10| return
    end

    -- proto#3 lines 24..34 np=1 va=0 ms=4 upvals=_ENV
    function <function_2>(p0)
           0| R1 = _ENV["objIns"]  -- local insId starts here
           1| R1 = R0["objIns"]
           2| UNK57 [2004020f]  -- local objIns starts here  -- [LOW-CONF UNK57]
           3| R0 = call R0()
           4| return
           5| UNK46 [c060040d]  -- [LOW-CONF UNK46]
           6| R0 = "objIns"
           7| jmp-ish [f000000c]  -- [LOW-CONF JMP]
           8| UNK53 [a060040e]  -- [LOW-CONF UNK53]
           9| forloop/jmp [80400213]  -- [LOW-CONF FORLOOP]
          10| UNK55 [e0200306]  -- [LOW-CONF UNK55]
          11| _ENV["objIns"] = R0
          12| R3["objIns"] = nil
          13| return
    end

    -- proto#4 lines 36..68 np=3 va=0 ms=9 upvals=_ENV
    function <function_3>(p0, p1, p2)
           0| R3 = _ENV["ScriptIns"]  -- local objId starts here
           1| UNK46 [c040011d]  -- [LOW-CONF UNK46]
           2| R0 = "ScriptIns"
           3| jmp-ish [f0000014]  -- [LOW-CONF JMP]
           4| R3 = _ENV["ScriptIns"]
           5| R3 = R2["ScriptIns"]
           6| return
           7| R3 = _ENV["PathHashMap"]
           8| R3 = R2["PathHashMap"]
           9| UNK57 [2004041f]  -- local scriptPath starts here  -- [LOW-CONF UNK57]
          10| R0 = call R0()
          11| UNK31 [e04e7803]  -- [LOW-CONF UNK31]
          12| return
          13| UNK31 [e040a003]  -- [LOW-CONF UNK31]
          14| R5 = _ENV["Release"]  -- local ins_t starts here
          15| UNK57 [2004082f]  -- [LOW-CONF UNK57]
          16| R0 = call R0(R1, R2, R3, R4)
          17| R5 = _ENV["Loader"]
          18| R5 = R5["reloadrequire"]
          19| UNK51 [60f82c1e]  -- [LOW-CONF UNK51]
          20| UNK14 [c0800511]  -- [LOW-CONF UNK14]
          21| UNK44 [8080242d]  -- [LOW-CONF UNK44]
          22| jmp-ish [f0000044]  -- [LOW-CONF JMP]
          23| R5 = _ENV["ScriptTemplate"]
          24| R5 = R4["PathHashMap"]
          25| UNK25 [20114023]  -- [LOW-CONF UNK25]
          26| jmp-ish [f0000024]  -- [LOW-CONF JMP]
          27| R5 = _ENV["Loader"]
          28| R5 = R5["reloadrequire"]
          29| UNK51 [60c07a1e]  -- [LOW-CONF UNK51]
          30| UNK14 [c0800511]  -- [LOW-CONF UNK14]
          31| UNK44 [8090542d]  -- [LOW-CONF UNK44]
          32| if not R4 then -- TEST-ish  -- [LOW-CONF TEST]
          33| jmp-ish [f00000cc]  -- [LOW-CONF JMP]
          34| UNK46 [c0a01125]  -- [LOW-CONF UNK46]
          35| R0 = "ScriptIns"
          36| jmp-ish [f00000b4]  -- [LOW-CONF JMP]
          37| R4 = R5["new"]
          38| UNK51 [60f86a06]  -- [LOW-CONF UNK51]
          39| UNK63 [e0f00d17]  -- [LOW-CONF UNK63]
          40| R1 = call R1(R2, R3)
          41| if not R4 then -- TEST-ish  -- local ins starts here  -- [LOW-CONF TEST]
          42| jmp-ish [f0000054]  -- [LOW-CONF JMP]
          43| R7 = _ENV["ScriptTemplate"]
          44| UNK55 [e0c0080e]  -- [LOW-CONF UNK55]
          45| _ENV["ScriptIns"] = R0
          46| R6["ScriptIns"] = "Loader"
          47| UNK46 [c0e0122d]  -- [LOW-CONF UNK46]
          48| R0 = "ScriptIns"
          49| jmp-ish [f000000c]  -- [LOW-CONF JMP]
          50| UNK53 [a0e0122e]  -- [LOW-CONF UNK53]
          51| forloop/jmp [80c00213]  -- [LOW-CONF FORLOOP]
          52| return
          53| jmp-ish [f0000054]  -- [LOW-CONF JMP]
          54| R7 = _ENV["print"]
          55| UNK19 [60005e0a]  -- [LOW-CONF UNK19]
          56| UNK44 [81004e0d]  -- [LOW-CONF UNK44]
          57| UNK0 [00200e38]  -- [LOW-CONF UNK0]
          58| R0 = call R0(R1)
          59| jmp-ish [f0000024]  -- [LOW-CONF JMP]
          60| R5 = _ENV["print"]
          61| UNK19 [6000640a]  -- [LOW-CONF UNK19]
          62| UNK44 [80f8330d]  -- [LOW-CONF UNK44]
          63| UNK0 [001c0c30]  -- [LOW-CONF UNK0]
          64| R0 = call R0(R1)
          65| UNK31 [e0519003]  -- [LOW-CONF UNK31]
          66| return
          67| return
    end

    -- proto#5 lines 70..76 np=3 va=0 ms=7 upvals=_ENV
    function <function_4>(p0, p1, p2)
           0| R3 = _ENV["GetActionIns"]  -- local objId starts here
           1| UNK38 [c0a84804]  -- [LOW-CONF UNK38]
           2| UNK51 [6080370e]  -- [LOW-CONF UNK51]
           3| UNK63 [e0c85a17]  -- [LOW-CONF UNK63]
           4| R1 = call R1(R2, R3, R4)
           5| UNK57 [2004021f]  -- local objIns starts here  -- [LOW-CONF UNK57]
           6| R0 = call R0()
           7| return
           8| UNK53 [a0a0041e]  -- [LOW-CONF UNK53]
           9| forloop/jmp [80800213]  -- [LOW-CONF FORLOOP]
          10| return
    end

    -- proto#6 lines 78..80 np=0 va=0 ms=2 upvals=_ENV
    function <function_5>()
           0| R0 = {}
           1| _ENV["ScriptIns"] = R1
           2| return
    end

    -- proto#7 lines 82..88 np=0 va=0 ms=8 upvals=_ENV
    function <function_6>()
           0| R1 = _ENV["pairs"]
           1| R1 = _ENV["PathHashMap"]
           2| R2 = call R2(R3)
           3| jmp-ish [f000004c]  -- local (for control) starts here  -- [LOW-CONF JMP]
           4| R5 = _ENV["ScriptTemplate"]  -- local value starts here
           5| UNK46 [c080072d]  -- [LOW-CONF UNK46]
           6| R1 = "pairs"
           7| jmp-ish [f000002c]  -- [LOW-CONF JMP]
           8| R5 = _ENV["ScriptTemplate"]
           9| R7 = _ENV["Loader"]
          10| R6 = R7["reloadrequire"]
          11| R7 = _ENV["scriptPath"]
          12| R1 = call R1(R2)
          13| SETTABLE R4, K35, V6 [60800d1d]  -- [LOW-CONF SETTABLE]
          14| UNK38 [c0015644]  -- [LOW-CONF UNK38]
          15| UNK40 [0be607fd]  -- [LOW-CONF UNK40]
          16| return
    end
