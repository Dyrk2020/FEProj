-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/safecall.res (3980 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/safecall.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R0 = {}
       1| R4 = <function #0>  -- local safecall starts here
       2| R0["execute"] = R0  -- [LOW-CONF SETTABLE]
       3| R4 = <function #1>
       4| R0["execute_ec"] = R0  -- [LOW-CONF SETTABLE]
       5| R4 = {}
       6| _ENV["lg_execute_s"] = R1
       7| return
       8| return
end

    -- proto#1 lines 4..35 np=12 va=0 ms=26 upvals=_ENV
    function <function_0>(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
           0| R0 = ""  -- local arg11 starts here
           1| R1 = ""  -- local ret starts here
           2| UNK57 [2004020f]  -- local errmsg starts here  -- [LOW-CONF UNK57]
           3| return
           4| R7 = _ENV["pcall"]
           5| GETTABLE R0, R7, K16 [a1e82105]  -- [LOW-CONF GETTABLE]
           6| R1 = call R1(R2)
           7| UNK51 [6188137e]  -- [LOW-CONF UNK51]
           8| R17 = "LogReport"
           9| jmp-ish [f0000454]  -- [LOW-CONF JMP]
          10| UNK57 [20040217]  -- [LOW-CONF UNK57]
          11| return
          12| R7 = _ENV["pcall"]
          13| GETTABLE R0, R7, K18 [a1f06505]  -- [LOW-CONF GETTABLE]
          14| UNK51 [62184c0e]  -- [LOW-CONF UNK51]
          15| R6["FE"] = R1  -- [LOW-CONF SETTABLE]
          16| UNK51 [61a0657e]  -- [LOW-CONF UNK51]
          17| R1 = ""
          18| jmp-ish [f000040c]  -- [LOW-CONF JMP]
          19| UNK57 [2004021f]  -- [LOW-CONF UNK57]
          20| return
          21| R7 = _ENV["pcall"]
          22| GETTABLE R0, R6, K24 [a1d07105]  -- [LOW-CONF GETTABLE]
          23| UNK51 [6208500e]  -- [LOW-CONF UNK51]
          24| R18 = "LogReport"
          25| R1 = call R1(R2, R3, R4)
          26| UNK51 [61b81f7e]  -- [LOW-CONF UNK51]
          27| R5 = nil
          28| jmp-ish [f00003bc]  -- [LOW-CONF JMP]
          29| UNK57 [20040227]  -- [LOW-CONF UNK57]
          30| return
          31| R7 = _ENV["pcall"]
          32| GETTABLE R0, R6, K20 [a1c02905]  -- [LOW-CONF GETTABLE]
          33| UNK51 [62382c0e]  -- [LOW-CONF UNK51]
          34| R18 = "LogReport"
          35| UNK51 [62407a1e]  -- [LOW-CONF UNK51]
          36| R6["[Error] safecall.execute Arguments more than 10."] = R1  -- [LOW-CONF SETTABLE]
          37| UNK51 [6190557e]  -- [LOW-CONF UNK51]
          38| LOADK R53, K? [21b86a74]  -- [LOW-CONF LOADK]
          39| jmp-ish [f0000364]  -- [LOW-CONF JMP]
          40| UNK57 [2004022f]  -- [LOW-CONF UNK57]
          41| return
          42| R7 = _ENV["pcall"]
          43| R0 = R7[false]
          44| UNK51 [62203e0e]  -- [LOW-CONF UNK51]
          45| R39 = "debug"
          46| UNK51 [6278321e]  -- [LOW-CONF UNK51]
          47| LOADK R50, K? [22406524]  -- [LOW-CONF LOADK]
          48| R1 = call R1(R2, R3, R4, R5, R6)
          49| UNK51 [61982b7e]  -- [LOW-CONF UNK51]
          50| LOADK R52, K? [21a06874]  -- [LOW-CONF LOADK]
          51| jmp-ish [f0000304]  -- [LOW-CONF JMP]
          52| UNK57 [20040237]  -- [LOW-CONF UNK57]
          53| return
          54| R7 = _ENV["pcall"]
          55| R0 = R7["LogReport"]
          56| UNK51 [6200360e]  -- [LOW-CONF UNK51]
          57| LOADK R45, K? [22085b14]  -- [LOW-CONF LOADK]
          58| UNK51 [6268581e]  -- [LOW-CONF UNK51]
          59| R2 = ""
          60| UNK51 [62903c2e]  -- [LOW-CONF UNK51]
          61| R6["[Exception] safecall.execute msg:"] = R1  -- [LOW-CONF SETTABLE]
          62| UNK51 [61b8337e]  -- [LOW-CONF UNK51]
          63| R11 = "pcall"
          64| jmp-ish [f000029c]  -- [LOW-CONF JMP]
          65| UNK57 [2004023f]  -- [LOW-CONF UNK57]
          66| return
          67| R7 = _ENV["pcall"]
          68| GETTABLE R0, R6, K13 [a1d81b05]  -- [LOW-CONF GETTABLE]
          69| UNK51 [62204c0e]  -- [LOW-CONF UNK51]
          70| R19 = "LogReport"
          71| UNK51 [62705a1e]  -- [LOW-CONF UNK51]
          72| R3 = ""
          73| UNK51 [62806c2e]  -- [LOW-CONF UNK51]
          74| R34 = ", callstack:"
          75| R1 = call R1(R2, R3, R4, R5, R6, R7, R8)
          76| UNK51 [61884f7e]  -- [LOW-CONF UNK51]
          77| R32 = ", callstack:"
          78| jmp-ish [f000022c]  -- [LOW-CONF JMP]
          79| UNK57 [20040247]  -- [LOW-CONF UNK57]
          80| return
          81| R7 = _ENV["pcall"]
          82| GETTABLE R0, R6, K27 [a1d03705]  -- [LOW-CONF GETTABLE]
          83| UNK51 [62183a0e]  -- [LOW-CONF UNK51]
          84| R16 = "LogReport"
          85| UNK51 [62707e1e]  -- [LOW-CONF UNK51]
          86| R24 = false
          87| UNK51 [62b83c2e]  -- [LOW-CONF UNK51]
          88| R1 = ""
          89| UNK51 [62e8223e]  -- [LOW-CONF UNK51]
          90| R6["debug"] = R1  -- [LOW-CONF SETTABLE]
          91| UNK51 [61b0117e]  -- [LOW-CONF UNK51]
          92| R36 = "debug"
          93| jmp-ish [f00001b4]  -- [LOW-CONF JMP]
          94| UNK57 [2004024f]  -- [LOW-CONF UNK57]
          95| return
          96| R7 = _ENV["pcall"]
          97| GETTABLE R0, R7, K11 [a1e81705]  -- [LOW-CONF GETTABLE]
          98| UNK51 [62182a0e]  -- [LOW-CONF UNK51]
          99| R20 = "[Error] safecall.execute Arguments more than 10."
         100| UNK51 [6270781e]  -- [LOW-CONF UNK51]
         101| R10 = "pcall"
         102| UNK51 [6298502e]  -- [LOW-CONF UNK51]
         103| R5 = nil
         104| UNK51 [62e8263e]  -- [LOW-CONF UNK51]
         105| LOADK R63, K? [22e07f44]  -- [LOW-CONF LOADK]
         106| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10)
         107| UNK51 [6180777e]  -- [LOW-CONF UNK51]
         108| R40 = "traceback"
         109| jmp-ish [f0000134]  -- [LOW-CONF JMP]
         110| UNK57 [20040257]  -- [LOW-CONF UNK57]
         111| return
         112| R7 = _ENV["pcall"]
         113| R0 = R7["debug"]
         114| UNK51 [6230780e]  -- [LOW-CONF UNK51]
         115| R34 = ", callstack:"
         116| UNK51 [62506a1e]  -- [LOW-CONF UNK51]
         117| LOADK R59, K? [22707724]  -- [LOW-CONF LOADK]
         118| UNK51 [62a8282e]  -- [LOW-CONF UNK51]
         119| LOADK R59, K? [22a87734]  -- [LOW-CONF LOADK]
         120| UNK51 [62e0503e]  -- [LOW-CONF UNK51]
         121| LOADK R58, K? [22d07544]  -- [LOW-CONF LOADK]
         122| UNK51 [6300204e]  -- [LOW-CONF UNK51]
         123| SETTABLE R6, K11, R1 [a1c0065a]  -- [LOW-CONF SETTABLE]
         124| UNK51 [61a8637e]  -- [LOW-CONF UNK51]
         125| LOADK R55, K? [21906e74]  -- [LOW-CONF LOADK]
         126| jmp-ish [f00000ac]  -- [LOW-CONF JMP]
         127| UNK57 [2004025f]  -- [LOW-CONF UNK57]
         128| return
         129| R7 = _ENV["pcall"]
         130| R0 = R6["FE"]
         131| UNK51 [6208260e]  -- [LOW-CONF UNK51]
         132| R17 = "LogReport"
         133| UNK51 [62683c1e]  -- [LOW-CONF UNK51]
         134| R29 = "[Exception] safecall.execute msg:"
         135| UNK51 [6288322e]  -- [LOW-CONF UNK51]
         136| R15 = "FE"
         137| UNK51 [62e0083e]  -- [LOW-CONF UNK51]
         138| R14 = "FE"
         139| UNK51 [6308344e]  -- [LOW-CONF UNK51]
         140| R15 = "FE"
         141| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12)
         142| UNK51 [6190157e]  -- [LOW-CONF UNK51]
         143| R15 = "FE"
         144| jmp-ish [f000001c]  -- [LOW-CONF JMP]
         145| R7 = _ENV["FE"]
         146| R14 = R7["LogReport"]
         147| R3 = "[Error] safecall.execute Arguments more than 10."
         148| R0 = call R0(R1)
         149| UNK57 [20040c67]  -- [LOW-CONF UNK57]
         150| return
         151| R7 = _ENV["FE"]
         152| R14 = R7["LogReport"]
         153| R31 = "[Exception] safecall.execute msg:"
         154| UNK44 [82082a6d]  -- [LOW-CONF UNK44]
         155| R1 = ", callstack:"
         156| R3[""] = "debug"
         157| R18 = R3["traceback"]
         158| R1 = call R1()
         159| UNK0 [00481e78]  -- [LOW-CONF UNK0]
         160| R0 = call R0(R1)
         161| return
    end

    -- proto#2 lines 37..69 np=13 va=0 ms=28 upvals=_ENV
    function <function_1>(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
           0| R0 = ""  -- local arg11 starts here
           1| R2 = ""  -- local ret starts here
           2| UNK57 [20040217]  -- local errmsg starts here  -- [LOW-CONF UNK57]
           3| return
           4| R7 = _ENV["xpcall"]
           5| R0 = R0["[Error] safecall.execute_ec Arguments more than 10."]
           6| UNK51 [62284b0e]  -- [LOW-CONF UNK51]
           7| R6["FE"] = R1  -- [LOW-CONF SETTABLE]
           8| UNK51 [61f82c86]  -- [LOW-CONF UNK51]
           9| R5 = nil
          10| jmp-ish [f00004a4]  -- [LOW-CONF JMP]
          11| UNK57 [2004021f]  -- [LOW-CONF UNK57]
          12| return
          13| R7 = _ENV["xpcall"]
          14| R0 = R0["debug"]
          15| UNK51 [62104b0e]  -- [LOW-CONF UNK51]
          16| LOADK R52, K? [22486814]  -- [LOW-CONF LOADK]
          17| R1 = call R1(R2, R3, R4)
          18| UNK51 [61c06c86]  -- [LOW-CONF UNK51]
          19| R34 = ", callstack:"
          20| jmp-ish [f0000454]  -- [LOW-CONF JMP]
          21| UNK57 [20040227]  -- [LOW-CONF UNK57]
          22| return
          23| R7 = _ENV["xpcall"]
          24| R0 = R1["xpcall"]
          25| UNK51 [6220770e]  -- [LOW-CONF UNK51]
          26| LOADK R59, K? [22607614]  -- [LOW-CONF LOADK]
          27| UNK51 [6248191e]  -- [LOW-CONF UNK51]
          28| R6["[Error] safecall.execute_ec Arguments more than 10."] = R1  -- [LOW-CONF SETTABLE]
          29| UNK51 [61e05486]  -- [LOW-CONF UNK51]
          30| R4 = nil
          31| jmp-ish [f00003fc]  -- [LOW-CONF JMP]
          32| UNK57 [2004022f]  -- [LOW-CONF UNK57]
          33| return
          34| R7 = _ENV["xpcall"]
          35| GETTABLE R0, R0, K11 [a2085605]  -- [LOW-CONF GETTABLE]
          36| UNK51 [62207f0e]  -- [LOW-CONF UNK51]
          37| R30 = "[Exception] safecall.execute_ec msg:"
          38| UNK51 [6258231e]  -- [LOW-CONF UNK51]
          39| R17 = "LogReport"
          40| R1 = call R1(R2, R3, R4, R5, R6)
          41| UNK51 [61e03e86]  -- [LOW-CONF UNK51]
          42| R33 = ", callstack:"
          43| jmp-ish [f000039c]  -- [LOW-CONF JMP]
          44| UNK57 [20040237]  -- [LOW-CONF UNK57]
          45| return
          46| R7 = _ENV["xpcall"]
          47| GETTABLE R0, R0, K12 [a2181805]  -- [LOW-CONF GETTABLE]
          48| UNK51 [62382f0e]  -- [LOW-CONF UNK51]
          49| LOADK R57, K? [22687214]  -- [LOW-CONF LOADK]
          50| UNK51 [62680d1e]  -- [LOW-CONF UNK51]
          51| LOADK R62, K? [22b87c24]  -- [LOW-CONF LOADK]
          52| UNK51 [62a8072e]  -- [LOW-CONF UNK51]
          53| R6["[Exception] safecall.execute_ec msg:"] = R1  -- [LOW-CONF SETTABLE]
          54| UNK51 [61c07a86]  -- [LOW-CONF UNK51]
          55| R1 = ""
          56| jmp-ish [f0000334]  -- [LOW-CONF JMP]
          57| UNK57 [2004023f]  -- [LOW-CONF UNK57]
          58| return
          59| R7 = _ENV["xpcall"]
          60| GETTABLE R0, R1, K28 [a2283805]  -- [LOW-CONF GETTABLE]
          61| UNK51 [6218650e]  -- [LOW-CONF UNK51]
          62| R25 = false
          63| UNK51 [62607d1e]  -- [LOW-CONF UNK51]
          64| R24 = false
          65| UNK51 [62a84d2e]  -- [LOW-CONF UNK51]
          66| R22 = "[Error] safecall.execute_ec Arguments more than 10."
          67| R1 = call R1(R2, R3, R4, R5, R6, R7, R8)
          68| UNK51 [61c82e86]  -- [LOW-CONF UNK51]
          69| R33 = ", callstack:"
          70| jmp-ish [f00002c4]  -- [LOW-CONF JMP]
          71| UNK57 [20040247]  -- [LOW-CONF UNK57]
          72| return
          73| R7 = _ENV["xpcall"]
          74| GETTABLE R0, R1, K23 [a2386e05]  -- [LOW-CONF GETTABLE]
          75| UNK51 [62285d0e]  -- [LOW-CONF UNK51]
          76| R31 = "[Exception] safecall.execute_ec msg:"
          77| UNK51 [6278091e]  -- [LOW-CONF UNK51]
          78| LOADK R57, K? [22a87224]  -- [LOW-CONF LOADK]
          79| UNK51 [62b04f2e]  -- [LOW-CONF UNK51]
          80| R22 = "[Error] safecall.execute_ec Arguments more than 10."
          81| UNK51 [62f0333e]  -- [LOW-CONF UNK51]
          82| R6["debug"] = R1  -- [LOW-CONF SETTABLE]
          83| UNK51 [61c04286]  -- [LOW-CONF UNK51]
          84| R13 = "FE"
          85| jmp-ish [f000024c]  -- [LOW-CONF JMP]
          86| UNK57 [2004024f]  -- [LOW-CONF UNK57]
          87| return
          88| R7 = _ENV["xpcall"]
          89| GETTABLE R0, R0, K28 [a2107805]  -- [LOW-CONF GETTABLE]
          90| UNK51 [6230510e]  -- [LOW-CONF UNK51]
          91| R31 = "[Exception] safecall.execute_ec msg:"
          92| UNK51 [6258091e]  -- [LOW-CONF UNK51]
          93| R24 = false
          94| UNK51 [62802f2e]  -- [LOW-CONF UNK51]
          95| R10 = "xpcall"
          96| UNK51 [62f83d3e]  -- [LOW-CONF UNK51]
          97| R2 = ""
          98| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10)
          99| UNK51 [61c86486]  -- [LOW-CONF UNK51]
         100| R30 = "[Exception] safecall.execute_ec msg:"
         101| jmp-ish [f00001cc]  -- [LOW-CONF JMP]
         102| UNK57 [20040257]  -- [LOW-CONF UNK57]
         103| return
         104| R7 = _ENV["xpcall"]
         105| R0 = R0["LogReport"]
         106| UNK51 [6208090e]  -- [LOW-CONF UNK51]
         107| R3 = ""
         108| UNK51 [62781f1e]  -- [LOW-CONF UNK51]
         109| LOADK R46, K? [22b85c24]  -- [LOW-CONF LOADK]
         110| UNK51 [62904d2e]  -- [LOW-CONF UNK51]
         111| R36 = "debug"
         112| UNK51 [62d0553e]  -- [LOW-CONF UNK51]
         113| R32 = ", callstack:"
         114| UNK51 [63087b4e]  -- [LOW-CONF UNK51]
         115| SETTABLE R6, K11, R1 [a1c0075a]  -- [LOW-CONF SETTABLE]
         116| UNK51 [61e02086]  -- [LOW-CONF UNK51]
         117| R26 = false
         118| jmp-ish [f0000144]  -- [LOW-CONF JMP]
         119| UNK57 [2004025f]  -- [LOW-CONF UNK57]
         120| return
         121| R7 = _ENV["xpcall"]
         122| GETTABLE R0, R1, K11 [a2305605]  -- [LOW-CONF GETTABLE]
         123| UNK51 [6230310e]  -- [LOW-CONF UNK51]
         124| R33 = ", callstack:"
         125| UNK51 [6250531e]  -- [LOW-CONF UNK51]
         126| R5 = nil
         127| UNK51 [62887d2e]  -- [LOW-CONF UNK51]
         128| R29 = "[Exception] safecall.execute_ec msg:"
         129| UNK51 [62e04b3e]  -- [LOW-CONF UNK51]
         130| R25 = false
         131| UNK51 [63005b4e]  -- [LOW-CONF UNK51]
         132| R34 = ", callstack:"
         133| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12)
         134| UNK51 [61c03c86]  -- [LOW-CONF UNK51]
         135| LOADK R48, K? [2190617c]  -- [LOW-CONF LOADK]
         136| jmp-ish [f00000b4]  -- [LOW-CONF JMP]
         137| UNK57 [20040267]  -- [LOW-CONF UNK57]
         138| return
         139| R7 = _ENV["xpcall"]
         140| R0 = R0[false]
         141| UNK51 [6220730e]  -- [LOW-CONF UNK51]
         142| R12 = "FE"
         143| UNK51 [6278491e]  -- [LOW-CONF UNK51]
         144| R42 = "traceback"
         145| UNK51 [62b82d2e]  -- [LOW-CONF UNK51]
         146| R16 = "LogReport"
         147| UNK51 [62d0373e]  -- [LOW-CONF UNK51]
         148| R30 = "[Exception] safecall.execute_ec msg:"
         149| UNK51 [6318734e]  -- [LOW-CONF UNK51]
         150| LOADK R58, K? [23507454]  -- [LOW-CONF LOADK]
         151| UNK51 [6348275e]  -- [LOW-CONF UNK51]
         152| SETTABLE R6, K13, R1 [a1c0076a]  -- [LOW-CONF SETTABLE]
         153| UNK51 [61d81286]  -- [LOW-CONF UNK51]
         154| R7 = nil
         155| jmp-ish [f000001c]  -- [LOW-CONF JMP]
         156| R7 = _ENV["FE"]
         157| R15 = R7["LogReport"]
         158| R0 = "[Error] safecall.execute_ec Arguments more than 10."
         159| R0 = call R0(R1)
         160| UNK57 [20040c6f]  -- [LOW-CONF UNK57]
         161| return
         162| R7 = _ENV["FE"]
         163| R15 = R7["LogReport"]
         164| R28 = "[Exception] safecall.execute_ec msg:"
         165| UNK44 [82002d75]  -- [LOW-CONF UNK44]
         166| R2 = ", callstack:"
         167| SETTABLE R3, K32, V9 [62601305]  -- [LOW-CONF SETTABLE]
         168| R19 = R3["traceback"]
         169| R1 = call R1()
         170| UNK0 [004c2080]  -- [LOW-CONF UNK0]
         171| R0 = call R0(R1)
         172| return
    end

    -- proto#3 lines 71..74 np=1 va=0 ms=3 upvals=_ENV
    function <function_2>(p0)
           0| R1 = _ENV["load"]  -- local les starts here
           1| GETTABLE R0, R3, K18 [a0786405]  -- [LOW-CONF GETTABLE]
           2| R1 = call R1(R2)
           3| UNK44 [80606a0d]  -- local func starts here  -- [LOW-CONF UNK44]
           4| UNK41 [20801005]  -- [LOW-CONF UNK41]
           5| return
           6| return
    end
