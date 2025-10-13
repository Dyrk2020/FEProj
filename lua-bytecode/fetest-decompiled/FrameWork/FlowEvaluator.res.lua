-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/FlowEvaluator.res (1904 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/FlowEvaluator.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R1 = _ENV["NEW_CLASS"]
       1| R2 = call R2()
       2| R1 = call R1(R2)
       3| R4 = <function #0>  -- local FlowEvaluator starts here
       4| R0["ctor"] = R0  -- [LOW-CONF SETTABLE]
       5| R4 = <function #1>
       6| R0["ParseShells"] = R0  -- [LOW-CONF SETTABLE]
       7| R4 = <function #2>
       8| R0["Execute"] = R0  -- [LOW-CONF SETTABLE]
       9| return
      10| return
end

    -- proto#1 lines 3..6 np=4 va=0 ms=7
    function <function_0>(p0, p1, p2, p3)
           0| R0["insId"] = "ParseShells"  -- local varShells starts here
           1| UNK54 [c0a00206]  -- [LOW-CONF UNK54]
           2| SETTABLE R7, K3, V16 [60e8201d]  -- [LOW-CONF SETTABLE]
           3| R0 = call R0(R1, R2)
           4| return
    end

    -- proto#2 lines 8..28 np=2 va=0 ms=11 upvals=_ENV
    function <function_1>(p0, p1)
           0| if not R0 then -- TEST-ish  -- local paramList starts here  -- [LOW-CONF TEST]
           1| jmp-ish [f0000334]  -- [LOW-CONF JMP]
           2| R2 = 0
           3| R1 = R3["size"]
           4| R0 = call R0(R1, R2)
           5| R8 = 1
           6| R0 = {}  -- local (for step) starts here  -- [LOW-CONF NEWTABLE]
           7| UNK54 [c0e0060e]  -- local i starts here  -- [LOW-CONF UNK54]
           8| R0["ToString"] = "Int"
           9| R1 = call R1(R2, R3)
          10| R7 = _ENV["FEString"]  -- local tempObj starts here
          11| R7 = R7["ToString"]
          12| R6 = R1["customName"]
          13| R1 = call R1(R2)
          14| if not R6 then -- TEST-ish  -- local customName starts here  -- [LOW-CONF TEST]
          15| jmp-ish [f00000a4]  -- [LOW-CONF JMP]
          16| UNK60 [81200e07]  -- [LOW-CONF UNK60]
          17| UNK59 [61201137]  -- [LOW-CONF UNK59]
          18| UNK49 [21000416]  -- [LOW-CONF UNK49]
          19| R1 = _ENV["tonumber"]
          20| R3 = _ENV["FrameEngine"]
          21| UNK58 [41601457]  -- [LOW-CONF UNK58]
          22| UNK59 [61601657]  -- [LOW-CONF UNK59]
          23| UNK49 [21601856]  -- [LOW-CONF UNK49]
          24| R1 = call R1(R2)
          25| UNK57 [20241247]  -- [LOW-CONF UNK57]
          26| R0 = _ENV[0]
          27| UNK46 [c1201a35]  -- [LOW-CONF UNK46]
          28| R0 = _ENV
          29| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          30| UNK53 [a1201a36]  -- [LOW-CONF UNK53]
          31| R2 = 0
          32| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
          33| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          34| UNK31 [e08d9003]  -- [LOW-CONF UNK31]
          35| R0["tonumber"] = "type"
          36| jmp-ish [f0000214]  -- [LOW-CONF JMP]
          37| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
          38| jmp-ish [f00000bc]  -- [LOW-CONF JMP]
          39| UNK60 [81200e07]  -- [LOW-CONF UNK60]
          40| UNK59 [61201137]  -- [LOW-CONF UNK59]
          41| UNK49 [21000416]  -- [LOW-CONF UNK49]
          42| R1 = _ENV["tonumber"]
          43| R3 = _ENV["FrameEngine"]
          44| UNK58 [41601457]  -- [LOW-CONF UNK58]
          45| UNK59 [61601657]  -- [LOW-CONF UNK59]
          46| UNK49 [21601c56]  -- [LOW-CONF UNK49]
          47| R1 = call R1(R2)
          48| UNK57 [20241247]  -- [LOW-CONF UNK57]
          49| R0 = _ENV[0]
          50| UNK46 [c1201e35]  -- [LOW-CONF UNK46]
          51| R0 = _ENV
          52| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          53| UNK53 [a1201e36]  -- [LOW-CONF UNK53]
          54| R2 = 0
          55| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
          56| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          57| R1 = _ENV["Fix64"]
          58| R8 = R1["fromInt"]
          59| R1 = 0
          60| UNK15 [e1000411]  -- [LOW-CONF UNK15]
          61| R0["tonumber"] = "type"
          62| jmp-ish [f0000144]  -- [LOW-CONF JMP]
          63| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
          64| jmp-ish [f00000a4]  -- [LOW-CONF JMP]
          65| UNK60 [81200e07]  -- [LOW-CONF UNK60]
          66| UNK59 [61201137]  -- [LOW-CONF UNK59]
          67| UNK49 [21000416]  -- [LOW-CONF UNK49]
          68| R1 = _ENV["tonumber"]
          69| R3 = _ENV["FrameEngine"]
          70| UNK58 [41601457]  -- [LOW-CONF UNK58]
          71| UNK59 [61601657]  -- [LOW-CONF UNK59]
          72| UNK49 [21602256]  -- [LOW-CONF UNK49]
          73| R1 = call R1(R2)
          74| UNK57 [20241247]  -- [LOW-CONF UNK57]
          75| R0 = _ENV[0]
          76| UNK46 [c1202435]  -- [LOW-CONF UNK46]
          77| R0 = _ENV
          78| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          79| UNK53 [a1202436]  -- [LOW-CONF UNK53]
          80| R2 = 0
          81| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
          82| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          83| R0 = 0
          84| R0["tonumber"] = "type"
          85| jmp-ish [f000008c]  -- [LOW-CONF JMP]
          86| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
          87| jmp-ish [f000007c]  -- [LOW-CONF JMP]
          88| UNK60 [81200e07]  -- [LOW-CONF UNK60]
          89| UNK59 [61201137]  -- [LOW-CONF UNK59]
          90| UNK49 [21000416]  -- [LOW-CONF UNK49]
          91| R1 = _ENV["tonumber"]
          92| R3 = _ENV["FrameEngine"]
          93| UNK58 [41601457]  -- [LOW-CONF UNK58]
          94| UNK59 [61601657]  -- [LOW-CONF UNK59]
          95| UNK49 [21602656]  -- [LOW-CONF UNK49]
          96| R1 = call R1(R2)
          97| UNK57 [20241247]  -- [LOW-CONF UNK57]
          98| R0 = _ENV[0]
          99| UNK46 [c1202835]  -- [LOW-CONF UNK46]
         100| R0 = _ENV
         101| jmp-ish [f0000004]  -- [LOW-CONF JMP]
         102| R0 = 0
         103| R0["tonumber"] = "type"
         104| forloop/jmp [804ffceb]  -- [LOW-CONF FORLOOP]
         105| return
    end

    -- proto#3 lines 30..32 np=1 va=0 ms=2
    function <function_2>(p0)
           0| LOADK R0, K0 [40000103]  -- local self starts here  -- [LOW-CONF LOADK]
           1| return
           2| return
    end
