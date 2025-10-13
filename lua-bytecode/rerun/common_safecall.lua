-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/safecall.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/safecall.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R0 = {}
       1| R4 = <function #0>  -- local safecall starts here
       2| R0 = #R0
       3| R4 = <function #1>
       4| R0 = #R1
       5| R4 = <function #2>
       6| _ENV['lg_execute_s'] = R1
       7| return
       8| return
end

    function <function_0>(...)
           0| R0 = 'execute'  -- local arg1 starts here  -- local arg10 starts here  -- local arg11 starts here  -- local arg2 starts here  -- local arg3 starts here  -- local arg4 starts here  -- local arg5 starts here  -- local arg6 starts here  -- local arg7 starts here  -- local arg8 starts here  -- local arg9 starts here  -- local f starts here
           1| R1 = 'execute'  -- local ret starts here
           2| if R1 == 'execute_ec' then -- EQ  -- local errmsg starts here
           3| return
           4| R7 = _ENV['lg_execute_s']
           5| GETTABLE R0, R7, K16 [a1e82105]  -- [LOW-CONF GETTABLE]
           6| R1 = call R1(R2)
           7| R9 = R4
           8| R1 = K4
           9| goto L20  -- JMP
          10| if R2 == 'execute_ec' then -- EQ
          11| return
          12| R7 = _ENV['lg_execute_s']
          13| GETTABLE R0, R7, K18 [a1f06505]  -- [LOW-CONF GETTABLE]
          14| R6 = R0
          15| R6 = not R3
          16| R18 = R5
          17| R1 = 'execute'
          18| goto L20  -- JMP
          19| if R3 == 'execute_ec' then -- EQ
          20| return
          21| R7 = _ENV['lg_execute_s']
          22| R0 = R6[R24]
          23| R8 = R0
          24| R2 = K4
          25| R1 = call R1(R2, R3, R4)
          26| R15 = R5
          27| R1 = 'execute_ec'
          28| goto L52  -- JMP
          29| if R4 == 'execute_ec' then -- EQ
          30| return
          31| R7 = _ENV['lg_execute_s']
          32| R0 = R6[R20]
          33| R22 = R1
          34| R2 = K4
          35| MOVE R29, R2 [62407a1e]  -- [LOW-CONF MOVE]
          36| R6 = not R5
          37| R10 = R4
          38| LOADK R1, K13 [21b86a74]  -- [LOW-CONF LOADK]
          39| goto L52  -- JMP
          40| if R5 == 'execute_ec' then -- EQ
          41| return
          42| R7 = _ENV['lg_execute_s']
          43| R0 = R7[K6]
          44| MOVE R31, R1 [62203e0e]  -- [LOW-CONF MOVE]
          45| R3 = K9
          46| R25 = R3
          47| LOADK R2, K12 [22406524]  -- [LOW-CONF LOADK]
          48| R1 = call R1(R2, R3, R4, R5, R6)
          49| R21 = R4
          50| LOADK R0, K13 [21a06874]  -- [LOW-CONF LOADK]
          51| goto L52  -- JMP
          52| if R6 == 'execute_ec' then -- EQ
          53| return
          54| R7 = _ENV['lg_execute_s']
          55| R0 = R7[K4]
          56| MOVE R27, R0 [6200360e]  -- [LOW-CONF MOVE]
          57| LOADK R1, K11 [22085b14]  -- [LOW-CONF LOADK]
          58| R12 = R3
          59| R2 = 'execute'
          60| MOVE R30, R4 [62903c2e]  -- [LOW-CONF MOVE]
          61| R6 = not R7
          62| R25 = R5
          63| R3 = 'lg_execute_s'
          64| goto L84  -- JMP
          65| if R7 == 'execute_ec' then -- EQ
          66| return
          67| R7 = _ENV['lg_execute_s']
          68| R0 = R6[R13]
          69| R6 = R1
          70| R3 = K4
          71| R13 = R3
          72| R3 = 'execute'
          73| R22 = R4
          74| R2 = K8
          75| R1 = call R1(R2, R3, R4, R5, R6, R7, R8)
          76| R7 = R4
          77| R0 = K8
          78| goto L84  -- JMP
          79| if R8 == 'execute_ec' then -- EQ
          80| return
          81| R7 = _ENV['lg_execute_s']
          82| GETTABLE R0, R6, K27 [a1d03705]  -- [LOW-CONF GETTABLE]
          83| MOVE R29, R0 [62183a0e]  -- [LOW-CONF MOVE]
          84| R0 = K4
          85| MOVE R31, R3 [62707e1e]  -- [LOW-CONF MOVE]
          86| R0 = K6
          87| MOVE R30, R5 [62b83c2e]  -- [LOW-CONF MOVE]
          88| R1 = 'execute'
          89| R17 = R7
          90| R6 = not R9
          91| R8 = R5
          92| R0 = K9
          93| goto L116  -- JMP
          94| if R9 == 'execute_ec' then -- EQ
          95| return
          96| R7 = _ENV['lg_execute_s']
          97| GETTABLE R0, R7, K11 [a1e81705]  -- [LOW-CONF GETTABLE]
          98| R21 = R0
          99| R0 = K5
         100| MOVE R28, R3 [6270781e]  -- [LOW-CONF MOVE]
         101| R2 = 'lg_execute_s'
         102| R8 = R4
         103| R1 = 'execute_ec'
         104| R19 = R7
         105| LOADK R3, K15 [22e07f44]  -- [LOW-CONF LOADK]
         106| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10)
         107| MOVE R27, R4 [6180777e]  -- [LOW-CONF MOVE]
         108| R0 = K10
         109| goto L116  -- JMP
         110| if R10 == 'execute_ec' then -- EQ
         111| return
         112| R7 = _ENV['lg_execute_s']
         113| R0 = R7[K9]
         114| MOVE R28, R1 [6230780e]  -- [LOW-CONF MOVE]
         115| R2 = K8
         116| R21 = R2
         117| LOADK R3, K14 [22707724]  -- [LOW-CONF LOADK]
         118| R20 = R5
         119| LOADK R3, K14 [22a87734]  -- [LOW-CONF LOADK]
         120| R8 = R7
         121| LOADK R2, K14 [22d07544]  -- [LOW-CONF LOADK]
         122| R16 = R0
         123| R6 = not R11
         124| R17 = R5
         125| LOADK R3, K13 [21906e74]  -- [LOW-CONF LOADK]
         126| goto L148  -- JMP
         127| if R11 == 'execute_ec' then -- EQ
         128| return
         129| R7 = _ENV['lg_execute_s']
         130| R0 = R6[R3]
         131| R19 = R0
         132| R1 = K4
         133| MOVE R30, R3 [62683c1e]  -- [LOW-CONF MOVE]
         134| R1 = K7
         135| R25 = R4
         136| R3 = K3
         137| R4 = R7
         138| R2 = K3
         139| MOVE R26, R0 [6308344e]  -- [LOW-CONF MOVE]
         140| R3 = K3
         141| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12)
         142| R10 = R4
         143| R3 = K3
         144| goto L148  -- JMP
         145| R7 = _ENV[K3]
         146| R14 = R7[K4]
         147| R3 = K5
         148| R0 = call R0(R1)
         149| if R12 == K6 then -- EQ
         150| return
         151| R7 = _ENV[K3]
         152| R14 = R7[K4]
         153| R3 = K7
         154| R21 = R0
         155| R1 = K8
         156| R3['execute'] = K9
         157| R18 = R3[K10]
         158| R1 = call R1()
         159| R2 = R15..R15
         160| R0 = call R0(R1)
         161| return
    end

    function <function_1>(...)
           0| R0 = 'execute'  -- local arg1 starts here  -- local arg10 starts here  -- local arg11 starts here  -- local arg2 starts here  -- local arg3 starts here  -- local arg4 starts here  -- local arg5 starts here  -- local arg6 starts here  -- local arg7 starts here  -- local arg8 starts here  -- local arg9 starts here  -- local callback starts here  -- local f starts here
           1| R2 = 'execute'  -- local ret starts here
           2| if R2 == 'execute_ec' then -- EQ  -- local errmsg starts here
           3| return
           4| R7 = _ENV['lg_execute_s']
           5| R0 = R0[R5]
           6| R5 = R1
           7| R6 = not R3
           8| R22 = R7
           9| R1 = 'execute_ec'
          10| goto L31  -- JMP
          11| if R3 == 'execute_ec' then -- EQ
          12| return
          13| R7 = _ENV['lg_execute_s']
          14| R0 = R0[R9]
          15| R5 = R0
          16| LOADK R0, K13 [22486814]  -- [LOW-CONF LOADK]
          17| R1 = call R1(R2, R3, R4)
          18| R22 = R6
          19| R2 = K8
          20| goto L31  -- JMP
          21| if R4 == 'execute_ec' then -- EQ
          22| return
          23| R7 = _ENV['lg_execute_s']
          24| R0 = R1['lg_execute_s']
          25| R27 = R1
          26| LOADK R3, K14 [22607614]  -- [LOW-CONF LOADK]
          27| R12 = R2
          28| R6 = not R5
          29| R10 = R7
          30| R0 = 'execute_ec'
          31| goto L63  -- JMP
          32| if R5 == 'execute_ec' then -- EQ
          33| return
          34| R7 = _ENV['lg_execute_s']
          35| R0 = R0[R11]
          36| MOVE R31, R1 [62207f0e]  -- [LOW-CONF MOVE]
          37| R2 = K7
          38| R17 = R2
          39| R1 = K4
          40| R1 = call R1(R2, R3, R4, R5, R6)
          41| MOVE R31, R7 [61e03e86]  -- [LOW-CONF MOVE]
          42| R1 = K8
          43| goto L63  -- JMP
          44| if R6 == 'execute_ec' then -- EQ
          45| return
          46| R7 = _ENV['lg_execute_s']
          47| R0 = R0[R12]
          48| R23 = R1
          49| LOADK R1, K14 [22687214]  -- [LOW-CONF LOADK]
          50| R6 = R3
          51| LOADK R2, K15 [22b87c24]  -- [LOW-CONF LOADK]
          52| R3 = R5
          53| R6 = not R7
          54| MOVE R29, R6 [61c07a86]  -- [LOW-CONF MOVE]
          55| R1 = 'execute'
          56| goto L63  -- JMP
          57| if R7 == 'execute_ec' then -- EQ
          58| return
          59| R7 = _ENV['lg_execute_s']
          60| GETTABLE R0, R1, K28 [a2283805]  -- [LOW-CONF GETTABLE]
          61| R18 = R0
          62| R1 = K6
          63| MOVE R30, R3 [62607d1e]  -- [LOW-CONF MOVE]
          64| R0 = K6
          65| R6 = R5
          66| R2 = K5
          67| R1 = call R1(R2, R3, R4, R5, R6, R7, R8)
          68| R23 = R6
          69| R1 = K8
          70| goto L95  -- JMP
          71| if R8 == 'execute_ec' then -- EQ
          72| return
          73| R7 = _ENV['lg_execute_s']
          74| GETTABLE R0, R1, K23 [a2386e05]  -- [LOW-CONF GETTABLE]
          75| R14 = R1
          76| R3 = K7
          77| R4 = R3
          78| LOADK R1, K14 [22a87224]  -- [LOW-CONF LOADK]
          79| R7 = R5
          80| R2 = K5
          81| R25 = R7
          82| R6 = not R9
          83| R1 = R6
          84| R1 = K3
          85| goto L95  -- JMP
          86| if R9 == 'execute_ec' then -- EQ
          87| return
          88| R7 = _ENV['lg_execute_s']
          89| GETTABLE R0, R0, K28 [a2107805]  -- [LOW-CONF GETTABLE]
          90| R8 = R1
          91| R3 = K7
          92| R4 = R2
          93| R0 = K6
          94| R23 = R4
          95| R2 = 'lg_execute_s'
          96| MOVE R30, R7 [62f83d3e]  -- [LOW-CONF MOVE]
          97| R2 = 'execute'
          98| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10)
          99| R18 = R6
         100| R2 = K7
         101| goto L127  -- JMP
         102| if R10 == 'execute_ec' then -- EQ
         103| return
         104| R7 = _ENV['lg_execute_s']
         105| R0 = R0[R4]
         106| R4 = R0
         107| R3 = 'execute'
         108| R15 = R3
         109| LOADK R2, K11 [22b85c24]  -- [LOW-CONF LOADK]
         110| R6 = R4
         111| R0 = K9
         112| R10 = R6
         113| R0 = K8
         114| MOVE R29, R0 [63087b4e]  -- [LOW-CONF MOVE]
         115| R6 = not R11
         116| R16 = R7
         117| R2 = K6
         118| goto L127  -- JMP
         119| if R11 == 'execute_ec' then -- EQ
         120| return
         121| R7 = _ENV['lg_execute_s']
         122| GETTABLE R0, R1, K11 [a2305605]  -- [LOW-CONF GETTABLE]
         123| R24 = R1
         124| R1 = K8
         125| R9 = R2
         126| R1 = 'execute_ec'
         127| MOVE R30, R4 [62887d2e]  -- [LOW-CONF MOVE]
         128| R1 = K7
         129| R5 = R7
         130| R1 = K6
         131| R13 = R0
         132| R2 = K8
         133| R1 = call R1(R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12)
         134| MOVE R30, R6 [61c03c86]  -- [LOW-CONF MOVE]
         135| LOADK R0, K12 [2190617c]  -- [LOW-CONF LOADK]
         136| goto L159  -- JMP
         137| if R12 == 'execute_ec' then -- EQ
         138| return
         139| R7 = _ENV['lg_execute_s']
         140| R0 = R0[R6]
         141| R25 = R1
         142| R0 = K3
         143| R4 = R3
         144| R2 = K10
         145| R22 = R5
         146| R0 = K4
         147| R27 = R6
         148| R2 = K7
         149| R25 = R0
         150| LOADK R2, K14 [23507454]  -- [LOW-CONF LOADK]
         151| R19 = R2
         152| R6 = not R13
         153| R9 = R6
         154| R3 = 'execute_ec'
         155| goto L159  -- JMP
         156| R7 = _ENV[K3]
         157| R15 = R7[K4]
         158| R0 = K5
         159| R0 = call R0(R1)
         160| if R13 == K6 then -- EQ
         161| return
         162| R7 = _ENV[K3]
         163| R15 = R7[K4]
         164| R0 = K7
         165| R22 = R0
         166| R2 = K8
         167| SETTABLE R3, K32, V9 [62601305]  -- [LOW-CONF SETTABLE]
         168| R19 = R3[K10]
         169| R1 = call R1()
         170| R2 = R16..R16
         171| R0 = call R0(R1)
         172| return
    end

    function <function_2>(...)
           0| R1 = _ENV['execute']  -- local les starts here
           1| GETTABLE R0, R3, K18 [a0786405]  -- [LOW-CONF GETTABLE]
           2| R1 = call R1(R2)
           3| MOVE R21, R3 [80606a0d]  -- [LOW-CONF MOVE]  -- local func starts here
           4| return R4(...)
           5| return
           6| return
    end

