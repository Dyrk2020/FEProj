-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/FlowAction.res (5585 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/FlowAction.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R1 = _ENV["NEW_CLASS"]
       1| UNK29 [a0000a03]  -- [LOW-CONF UNK29]
       2| R1 = call R1(R2)
       3| R4 = <function #0>  -- local FlowAction starts here
       4| R0["ctor"] = R0  -- [LOW-CONF SETTABLE]
       5| R4 = <function #1>
       6| R0["ParseShells"] = R0  -- [LOW-CONF SETTABLE]
       7| R4 = <function #2>
       8| R0["ParseValue"] = R0  -- [LOW-CONF SETTABLE]
       9| R4 = <function #3>
      10| R0["SetValue"] = R0  -- [LOW-CONF SETTABLE]
      11| R4 = <function #4>
      12| R0["OnEnter"] = R0  -- [LOW-CONF SETTABLE]
      13| R4 = <function #5>
      14| R0["OnTick"] = R0  -- [LOW-CONF SETTABLE]
      15| R4 = <function #6>
      16| R0["OnLeave"] = R0  -- [LOW-CONF SETTABLE]
      17| R4 = <function #7>
      18| R0["SetFinish"] = R0  -- [LOW-CONF SETTABLE]
      19| R4 = <function #0>
      20| R0["OnActorEvent"] = R0  -- [LOW-CONF SETTABLE]
      21| R4 = <function #1>
      22| R0["OnLgcEvent"] = R0  -- [LOW-CONF SETTABLE]
      23| R4 = <function #2>
      24| R0["ReloadCfg"] = R0  -- [LOW-CONF SETTABLE]
      25| return
      26| return
end

    -- proto#1 lines 3..10 np=5 va=0 ms=8
    function <function_0>(p0, p1, p2, p3, p4)
           0| R0["insId"] = "args"  -- local varShells starts here
           1| R0["args"] = "varShells"
           2| R0["varShells"] = "ParseValue"
           3| UNK54 [c0a00706]  -- [LOW-CONF UNK54]
           4| R7 = {}
           5| R0 = call R0(R1, R2)
           6| UNK54 [c0a00906]  -- [LOW-CONF UNK54]
           7| R6 = {}
           8| R0 = call R0(R1, R2)
           9| return
    end

    -- proto#2 lines 12..46 np=2 va=0 ms=13 upvals=_ENV
    function <function_1>(p0, p1)
           0| if not R0 then -- TEST-ish  -- local paramList starts here  -- [LOW-CONF TEST]
           1| jmp-ish [f000065c]  -- [LOW-CONF JMP]
           2| R2 = 0
           3| R1 = R3["size"]
           4| R0 = call R0(R1, R2)
           5| R8 = 1
           6| R0 = {}  -- local (for step) starts here  -- [LOW-CONF NEWTABLE]
           7| UNK54 [c0e0060e]  -- local i starts here  -- [LOW-CONF UNK54]
           8| R1 = {}
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
          26| UNK10 [50000049]  -- [LOW-CONF UNK10]
          27| UNK46 [c1201a35]  -- [LOW-CONF UNK46]
          28| R0 = _ENV[0]
          29| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          30| UNK53 [a1201a36]  -- [LOW-CONF UNK53]
          31| R0 = {}
          32| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
          33| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          34| UNK31 [e0873003]  -- [LOW-CONF UNK31]
          35| R0["tonumber"] = "type"
          36| jmp-ish [f000053c]  -- [LOW-CONF JMP]
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
          49| UNK10 [50000061]  -- [LOW-CONF UNK10]
          50| UNK46 [c1201e35]  -- [LOW-CONF UNK46]
          51| R0 = _ENV[0]
          52| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          53| UNK53 [a1201e36]  -- [LOW-CONF UNK53]
          54| R0 = {}
          55| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
          56| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          57| R1 = _ENV["Fix64"]
          58| R8 = R1["fromInt"]
          59| R1 = 0
          60| UNK3 [61000410]  -- [LOW-CONF UNK3]
          61| R0["tonumber"] = "type"
          62| jmp-ish [f000046c]  -- [LOW-CONF JMP]
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
          75| UNK10 [50000049]  -- [LOW-CONF UNK10]
          76| UNK46 [c1202435]  -- [LOW-CONF UNK46]
          77| R0 = _ENV[0]
          78| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          79| UNK53 [a1202436]  -- [LOW-CONF UNK53]
          80| R0 = {}
          81| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
          82| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          83| R0 = 0
          84| R0["tonumber"] = "type"
          85| jmp-ish [f00003b4]  -- [LOW-CONF JMP]
          86| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
          87| jmp-ish [f0000084]  -- [LOW-CONF JMP]
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
          98| UNK10 [50000029]  -- [LOW-CONF UNK10]
          99| UNK46 [c1202835]  -- [LOW-CONF UNK46]
         100| R0 = _ENV["size"]
         101| jmp-ish [f0000004]  -- [LOW-CONF JMP]
         102| R0 = 0
         103| R0["tonumber"] = "type"
         104| jmp-ish [f000031c]  -- [LOW-CONF JMP]
         105| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
         106| jmp-ish [f00000a4]  -- [LOW-CONF JMP]
         107| UNK60 [81200e07]  -- [LOW-CONF UNK60]
         108| UNK59 [61201137]  -- [LOW-CONF UNK59]
         109| UNK49 [21000416]  -- [LOW-CONF UNK49]
         110| R1 = _ENV["tonumber"]
         111| R3 = _ENV["FrameEngine"]
         112| UNK58 [41601457]  -- [LOW-CONF UNK58]
         113| UNK59 [61601657]  -- [LOW-CONF UNK59]
         114| UNK49 [21602a56]  -- [LOW-CONF UNK49]
         115| R1 = call R1(R2)
         116| UNK57 [20241247]  -- [LOW-CONF UNK57]
         117| UNK10 [50000049]  -- [LOW-CONF UNK10]
         118| UNK46 [c1202c35]  -- [LOW-CONF UNK46]
         119| R0 = _ENV[0]
         120| jmp-ish [f000001c]  -- [LOW-CONF JMP]
         121| UNK53 [a1202c36]  -- [LOW-CONF UNK53]
         122| R0 = {}
         123| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
         124| jmp-ish [f0000004]  -- [LOW-CONF JMP]
         125| R1 = _ENV["FixVector3_ZERO"]
         126| R0["tonumber"] = "type"
         127| jmp-ish [f0000264]  -- [LOW-CONF JMP]
         128| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
         129| jmp-ish [f00000a4]  -- [LOW-CONF JMP]
         130| UNK60 [81200e07]  -- [LOW-CONF UNK60]
         131| UNK59 [61201137]  -- [LOW-CONF UNK59]
         132| UNK49 [21000416]  -- [LOW-CONF UNK49]
         133| R1 = _ENV["tonumber"]
         134| R3 = _ENV["FrameEngine"]
         135| UNK58 [41601457]  -- [LOW-CONF UNK58]
         136| UNK59 [61601657]  -- [LOW-CONF UNK59]
         137| UNK49 [21603056]  -- [LOW-CONF UNK49]
         138| R1 = call R1(R2)
         139| UNK57 [20241247]  -- [LOW-CONF UNK57]
         140| UNK10 [50000049]  -- [LOW-CONF UNK10]
         141| UNK46 [c1203235]  -- [LOW-CONF UNK46]
         142| R0 = _ENV[0]
         143| jmp-ish [f000001c]  -- [LOW-CONF JMP]
         144| UNK53 [a1203236]  -- [LOW-CONF UNK53]
         145| R0 = {}
         146| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
         147| jmp-ish [f0000004]  -- [LOW-CONF JMP]
         148| R0 = 0
         149| R0["tonumber"] = "type"
         150| jmp-ish [f00001ac]  -- [LOW-CONF JMP]
         151| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
         152| jmp-ish [f00000a4]  -- [LOW-CONF JMP]
         153| UNK60 [81200e07]  -- [LOW-CONF UNK60]
         154| UNK59 [61201137]  -- [LOW-CONF UNK59]
         155| UNK49 [21000416]  -- [LOW-CONF UNK49]
         156| R1 = _ENV["tonumber"]
         157| R3 = _ENV["FrameEngine"]
         158| UNK58 [41601457]  -- [LOW-CONF UNK58]
         159| UNK59 [61601657]  -- [LOW-CONF UNK59]
         160| UNK49 [21603456]  -- [LOW-CONF UNK49]
         161| R1 = call R1(R2)
         162| UNK57 [20241247]  -- [LOW-CONF UNK57]
         163| UNK10 [50000049]  -- [LOW-CONF UNK10]
         164| UNK46 [c1203635]  -- [LOW-CONF UNK46]
         165| R0 = _ENV[0]
         166| jmp-ish [f000001c]  -- [LOW-CONF JMP]
         167| UNK53 [a1203636]  -- [LOW-CONF UNK53]
         168| R0 = {}
         169| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
         170| jmp-ish [f0000004]  -- [LOW-CONF JMP]
         171| UNK31 [e0899003]  -- [LOW-CONF UNK31]
         172| R0["tonumber"] = "type"
         173| jmp-ish [f00000f4]  -- [LOW-CONF JMP]
         174| if not R6 then -- TEST-ish  -- [LOW-CONF TEST]
         175| jmp-ish [f00000e4]  -- [LOW-CONF JMP]
         176| UNK60 [81200e07]  -- [LOW-CONF UNK60]
         177| UNK59 [61201137]  -- [LOW-CONF UNK59]
         178| UNK49 [21000416]  -- [LOW-CONF UNK49]
         179| R1 = _ENV["tonumber"]
         180| R3 = _ENV["FrameEngine"]
         181| UNK58 [41601457]  -- [LOW-CONF UNK58]
         182| UNK59 [61601657]  -- [LOW-CONF UNK59]
         183| UNK49 [21603856]  -- [LOW-CONF UNK49]
         184| R1 = call R1(R2)
         185| UNK57 [20241247]  -- [LOW-CONF UNK57]
         186| UNK10 [50000089]  -- [LOW-CONF UNK10]
         187| R0 = {}
         188| UNK46 [c1202935]  -- local argsTb starts here  -- [LOW-CONF UNK46]
         189| R0 = _ENV["size"]
         190| jmp-ish [f0000004]  -- [LOW-CONF JMP]
         191| R1 = 0
         192| UNK55 [e10412ee]  -- [LOW-CONF UNK55]
         193| UNK63 [e1203d07]  -- [LOW-CONF UNK63]
         194| R3 = _ENV["LuaStructType"]
         195| R3 = _ENV["FEString"]
         196| R11 = R3["ToString"]
         197| R6 = R5[0]
         198| R1 = call R1(R2)
         199| R10 = R2["CommonVariableType"]
         200| UNK51 [61580346]  -- [LOW-CONF UNK51]
         201| UNK0 [01000518]  -- [LOW-CONF UNK0]
         202| R0["tonumber"] = "FrameEngine"
         203| UNK46 [c1203b45]  -- [LOW-CONF UNK46]
         204| UNK20 [80c412a2]  -- [LOW-CONF UNK20]
         205| forloop/jmp [804ff9c3]  -- [LOW-CONF FORLOOP]
         206| return
    end

    -- proto#3 lines 48..58 np=2 va=0 ms=9 upvals=_ENV
    function <function_2>(p0, p1)
           0| if not R0 then -- TEST-ish  -- local paramList starts here  -- [LOW-CONF TEST]
           1| jmp-ish [f0000094]  -- [LOW-CONF JMP]
           2| R2 = 0
           3| R1 = R3["size"]
           4| R0 = call R0(R1, R2)
           5| R8 = 1
           6| R0 = {}  -- local (for step) starts here  -- [LOW-CONF NEWTABLE]
           7| UNK54 [c0e0060e]  -- local i starts here  -- [LOW-CONF UNK54]
           8| R0 = {}
           9| R1 = call R1(R2, R3)
          10| if not R6 then -- TEST-ish  -- local tempObj starts here  -- [LOW-CONF TEST]
          11| jmp-ish [f000003c]  -- [LOW-CONF JMP]
          12| UNK46 [c0e00935]  -- [LOW-CONF UNK46]
          13| R6 = _ENV[0]
          14| jmp-ish [f0000024]  -- [LOW-CONF JMP]
          15| R7 = _ENV["FEString"]
          16| R7 = R7["ToString"]
          17| R6 = R1["customName"]
          18| R1 = call R1(R2)
          19| SETTABLE R0, K7, V6 [60000c3d]  -- local customName starts here  -- [LOW-CONF SETTABLE]
          20| forloop/jmp [804fff8b]  -- [LOW-CONF FORLOOP]
          21| return
    end

    -- proto#4 lines 60..92 np=3 va=0 ms=11 upvals=_ENV
    function <function_3>(p0, p1, p2)
           0| UNK46 [c0600105]  -- local value starts here  -- [LOW-CONF UNK46]
           1| R2 = _ENV["varShells"]
           2| jmp-ish [f00003fc]  -- [LOW-CONF JMP]
           3| R7 = 0
           4| R0 = R5["varShells"]
           5| R4 = R5["size"]
           6| R0 = call R0(R1, R2, R3)
           7| R13 = 1
           8| R1 = {}  -- local (for step) starts here  -- [LOW-CONF NEWTABLE]
           9| R0 = R7["varShells"]  -- local i starts here
          10| UNK54 [c0e0093e]  -- [LOW-CONF UNK54]
          11| R1 = {}
          12| R1 = call R1(R2, R3)
          13| if not R6 then -- TEST-ish  -- local tempObj starts here  -- [LOW-CONF TEST]
          14| jmp-ish [f0000394]  -- [LOW-CONF JMP]
          15| R1 = _ENV["FEString"]
          16| R8 = R1["ToString"]
          17| R7 = R1["customName"]
          18| R1 = call R1(R2)
          19| UNK57 [20240247]  -- [LOW-CONF UNK57]
          20| UNK10 [50000361]  -- [LOW-CONF UNK10]
          21| UNK60 [81201007]  -- [LOW-CONF UNK60]
          22| UNK59 [6120133f]  -- [LOW-CONF UNK59]
          23| UNK49 [21000416]  -- [LOW-CONF UNK49]
          24| R1 = _ENV["tonumber"]
          25| R3 = _ENV["FrameEngine"]
          26| UNK58 [41601657]  -- [LOW-CONF UNK58]
          27| UNK59 [61601857]  -- [LOW-CONF UNK59]
          28| UNK49 [21601a56]  -- [LOW-CONF UNK49]
          29| R1 = call R1(R2)
          30| UNK57 [20241247]  -- [LOW-CONF UNK57]
          31| UNK10 [50000031]  -- [LOW-CONF UNK10]
          32| UNK46 [c1201c3d]  -- [LOW-CONF UNK46]
          33| R0 = _ENV["varShells"]
          34| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          35| UNK54 [c1201c3e]  -- [LOW-CONF UNK54]
          36| R2 = {}
          37| R0 = call R0(R1, R2)
          38| jmp-ish [f00002d4]  -- [LOW-CONF JMP]
          39| UNK60 [81201007]  -- [LOW-CONF UNK60]
          40| UNK59 [6120133f]  -- [LOW-CONF UNK59]
          41| UNK49 [21000416]  -- [LOW-CONF UNK49]
          42| R1 = _ENV["tonumber"]
          43| R3 = _ENV["FrameEngine"]
          44| UNK58 [41601657]  -- [LOW-CONF UNK58]
          45| UNK59 [61601857]  -- [LOW-CONF UNK59]
          46| UNK49 [21601e56]  -- [LOW-CONF UNK49]
          47| R1 = call R1(R2)
          48| UNK57 [20241247]  -- [LOW-CONF UNK57]
          49| UNK10 [50000031]  -- [LOW-CONF UNK10]
          50| UNK46 [c120203d]  -- [LOW-CONF UNK46]
          51| R0 = _ENV["varShells"]
          52| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          53| UNK54 [c120203e]  -- [LOW-CONF UNK54]
          54| R2 = {}
          55| R0 = call R0(R1, R2)
          56| jmp-ish [f0000244]  -- [LOW-CONF JMP]
          57| UNK60 [81201007]  -- [LOW-CONF UNK60]
          58| UNK59 [6120133f]  -- [LOW-CONF UNK59]
          59| UNK49 [21000416]  -- [LOW-CONF UNK49]
          60| R1 = _ENV["tonumber"]
          61| R3 = _ENV["FrameEngine"]
          62| UNK58 [41601657]  -- [LOW-CONF UNK58]
          63| UNK59 [61601857]  -- [LOW-CONF UNK59]
          64| UNK49 [21602256]  -- [LOW-CONF UNK49]
          65| R1 = call R1(R2)
          66| UNK57 [20241247]  -- [LOW-CONF UNK57]
          67| UNK10 [50000031]  -- [LOW-CONF UNK10]
          68| UNK46 [c120243d]  -- [LOW-CONF UNK46]
          69| R0 = _ENV["varShells"]
          70| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          71| UNK54 [c120243e]  -- [LOW-CONF UNK54]
          72| R3 = {}
          73| R0 = call R0(R1, R2)
          74| jmp-ish [f00001b4]  -- [LOW-CONF JMP]
          75| UNK60 [81201007]  -- [LOW-CONF UNK60]
          76| UNK59 [6120133f]  -- [LOW-CONF UNK59]
          77| UNK49 [21000416]  -- [LOW-CONF UNK49]
          78| R1 = _ENV["tonumber"]
          79| R3 = _ENV["FrameEngine"]
          80| UNK58 [41601657]  -- [LOW-CONF UNK58]
          81| UNK59 [61601857]  -- [LOW-CONF UNK59]
          82| UNK49 [21602656]  -- [LOW-CONF UNK49]
          83| R1 = call R1(R2)
          84| UNK57 [20241247]  -- [LOW-CONF UNK57]
          85| UNK10 [50000031]  -- [LOW-CONF UNK10]
          86| UNK46 [c120283d]  -- [LOW-CONF UNK46]
          87| R0 = _ENV["varShells"]
          88| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          89| UNK54 [c120283e]  -- [LOW-CONF UNK54]
          90| R2 = {}
          91| R0 = call R0(R1, R2)
          92| jmp-ish [f0000124]  -- [LOW-CONF JMP]
          93| UNK60 [81201007]  -- [LOW-CONF UNK60]
          94| UNK59 [6120133f]  -- [LOW-CONF UNK59]
          95| UNK49 [21000416]  -- [LOW-CONF UNK49]
          96| R1 = _ENV["tonumber"]
          97| R3 = _ENV["FrameEngine"]
          98| UNK58 [41601657]  -- [LOW-CONF UNK58]
          99| UNK59 [61601857]  -- [LOW-CONF UNK59]
         100| UNK49 [21602a56]  -- [LOW-CONF UNK49]
         101| R1 = call R1(R2)
         102| UNK57 [20241247]  -- [LOW-CONF UNK57]
         103| UNK10 [50000031]  -- [LOW-CONF UNK10]
         104| UNK46 [c1202c3d]  -- [LOW-CONF UNK46]
         105| R0 = _ENV["varShells"]
         106| jmp-ish [f000001c]  -- [LOW-CONF JMP]
         107| UNK54 [c1202c3e]  -- [LOW-CONF UNK54]
         108| R2 = {}
         109| R0 = call R0(R1, R2)
         110| jmp-ish [f0000094]  -- [LOW-CONF JMP]
         111| UNK60 [81201007]  -- [LOW-CONF UNK60]
         112| UNK59 [6120133f]  -- [LOW-CONF UNK59]
         113| UNK49 [21000416]  -- [LOW-CONF UNK49]
         114| R1 = _ENV["tonumber"]
         115| R3 = _ENV["FrameEngine"]
         116| UNK58 [41601657]  -- [LOW-CONF UNK58]
         117| UNK59 [61601857]  -- [LOW-CONF UNK59]
         118| UNK49 [21602e56]  -- [LOW-CONF UNK49]
         119| R1 = call R1(R2)
         120| UNK57 [20241247]  -- [LOW-CONF UNK57]
         121| UNK10 [50000039]  -- [LOW-CONF UNK10]
         122| UNK57 [20043017]  -- [LOW-CONF UNK57]
         123| UNK10 [50000019]  -- [LOW-CONF UNK10]
         124| UNK60 [81203207]  -- [LOW-CONF UNK60]
         125| UNK59 [6120353f]  -- [LOW-CONF UNK59]
         126| UNK49 [21000216]  -- [LOW-CONF UNK49]
         127| jmp-ish [f000000c]  -- [LOW-CONF JMP]
         128| R0 = "varShells"
         129| return
         130| forloop/jmp [806ffc2b]  -- [LOW-CONF FORLOOP]
         131| R0 = "varShells"
         132| return
         133| return
    end

    -- proto#5 lines 94..95 np=1 va=0 ms=2
    function <function_4>(p0)
           0| return  -- local self starts here
    end

    -- proto#6 lines 97..98 np=1 va=0 ms=2
    function <function_5>(p0)
           0| return  -- local self starts here
    end

    -- proto#7 lines 100..101 np=1 va=0 ms=2
    function <function_6>(p0)
           0| return  -- local self starts here
    end

    -- proto#8 lines 103..105 np=2 va=0 ms=4 upvals=_ENV
    function <function_7>(p0, p1)
           0| R3 = _ENV["FlowMgr"]  -- local insId starts here
           1| R2 = R3["FinishAction"]
           2| UNK51 [6040650e]  -- [LOW-CONF UNK51]
           3| UNK0 [00400210]  -- [LOW-CONF UNK0]
           4| return
    end

    -- proto#9 lines 107..108 np=4 va=0 ms=4
    function <function_8>(p0, p1, p2, p3)
           0| return  -- local msg starts here
    end

    -- proto#10 lines 110..111 np=3 va=0 ms=3
    function <function_9>(p0, p1, p2)
           0| return  -- local msg starts here
    end

    -- proto#11 lines 113..114 np=1 va=0 ms=2
    function <function_10>(p0)
           0| return  -- local self starts here
    end
