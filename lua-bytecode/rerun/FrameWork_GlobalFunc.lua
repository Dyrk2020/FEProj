-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/GlobalFunc.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/GlobalFunc.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R0 = <function #0>
       1| _ENV['NEW_CLASS'] = R1
       2| return
end

    function <function_0>(...)
           0| R0 = {}  -- local classname starts here
           1| nop
           2| R2 = {}  -- local cls starts here
           3| R3.. = ...
           4| setlist [60080013]  -- [LOW-CONF SETLIST]
           5| R3 = _ENV[K1]  -- local supers starts here
           6| R1 = K2
           7| R2 = call R2(R3)
           8| goto L9  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
           9| R1 = _ENV[K2]  -- local _ starts here  -- local super starts here
          10| R1 = K4
          11| R1 = call R1(R2)
          12| if R8 == K3 then -- EQ  -- local superType starts here
          13| R0 = 'NEW_CLASS'
          14| SETTABLE R0, K36, V7 [60040f25]  -- [LOW-CONF SETTABLE]
          15| goto L41  -- JMP
          16| if R8 == K5 then -- EQ
          17| R0 = 'NEW_CLASS'
          18| R1 = R1[K6]
          19| SETTABLE R0, K32, V1 [61000305]  -- [LOW-CONF SETTABLE]
          20| goto L21  -- JMP
          21| R0 = {}
          22| SETTABLE R0, K38, V9 [60041335]  -- [LOW-CONF SETTABLE]
          23| R1 = R1[K6]
          24| R1 = R3[K6]
          25| R2 = #R10
          26| ADD [f5828080]  -- [LOW-CONF ADD]
          27| SETTABLE R0, K42, V7 [61000f55]  -- [LOW-CONF SETTABLE]
          28| R1 = R1[K8]
          29| SETTABLE R0, K50, V1 [61048395]  -- [LOW-CONF SETTABLE]
          30| goto L41  -- JMP
          31| SETTABLE R0, K40, V7 [60040f45]  -- [LOW-CONF SETTABLE]
          32| goto L41  -- JMP
          33| R1 = _ENV[K9]
          34| R9 = R1[K10]
          35| R3 = _ENV[K11]
          36| R10 = R3[K12]
          37| R3 = K13
          38| R1 = R4
          39| BXOR [0140041a]  -- [LOW-CONF BXOR]
          40| R3 = K14
          41| R0 = -R3
          42| tforcall [c30105c4]  -- [LOW-CONF TFORCALL]
          43| testset [17b807fd]  -- [LOW-CONF TESTSET]
          44| SETTABLE R0, K47, V1 [6004037d]  -- [LOW-CONF SETTABLE]
          45| R1 = R3[K6]
          46| SETTABLE R2, K50, V0 [60460195]  -- [LOW-CONF SETTABLE]
          47| goto L51  -- JMP
          48| R1 = R3[K6]
          49| R7 = #R19
          50| if R3 == K7 then -- EQ
          51| R0 = 'NEW_CLASS'
          52| R3 = _ENV[K16]
          53| R1 = K1
          54| R4 = {}
          55| R1 = R7[K8]
          56| forprep [80840d78]  -- [LOW-CONF FORPREP]
          57| R0 = call R0(R1, R2)
          58| goto L64  -- JMP
          59| R3 = _ENV[K16]
          60| R0 = K5
          61| R4 = {}
          62| R0 = <function #0>
          63| R4.. = ...
          64| R0 = call R0(R1, R2)
          65| R1 = R3[K17]
          66| SETTABLE R2, K53, V1 [604783ad]  -- [LOW-CONF SETTABLE]
          67| goto L69  -- JMP
          68| R4 = <function #1>
          69| R0.. = ...
          70| R4 = <function #2>
          71| R0.. = ...
          72| return
          73| return
    end

        function <function_0>(...)
               0| R3 = _ENV['NEW_CLASS']  -- local _ starts here  -- local key starts here
               1| IDIV [a0000e01]  -- [LOW-CONF IDIV]  -- local supers starts here
               2| R6 = #R4
               3| R1 = K1
               4| forprep [80e00050]  -- [LOW-CONF FORPREP]  -- local (for index) starts here  -- local (for limit) starts here  -- local (for step) starts here
               5| R2 = R6[R6]  -- local i starts here
               6| R7 = R0[R1]  -- local super starts here
               7| R0['NEW_CLASS'] = 'NEW_CLASS'
               8| goto L10  -- JMP
               9| R7 = R0[R1]
              10| return
              11| forloop [806fffc3]  -- [LOW-CONF FORLOOP]
              12| return
        end

        function <function_1>(...)
               0| return
        end

        function <function_2>(...)
               0| R0 = {}
               1| R1 = call R1()  -- local proxy starts here
               2| R0['NEW_CLASS'] = 'NEW_CLASS'
               3| R0 = R0[R2]
               4| forloop [81000003]  -- [LOW-CONF FORLOOP]
               5| R1 = R0[R2]
               6| R1 = R3[K2]  -- local mt starts here
               7| MOVE R13, R2 [60485b06]  -- [LOW-CONF MOVE]
               8| R5 = {}
               9| R0 = call R0(R1, R2)
              10| R6['NEW_CLASS'] = 'NEW_CLASS'
              11| R3 = U2
              12| R4.. = ...
              13| R0 = call R0()
              14| return
              15| return
        end

            function <function_0>(...)
                   0| R0 = 'NEW_CLASS'  -- local k starts here  -- local t starts here  -- local v starts here
                   1| R0 = R5['NEW_CLASS']  -- local canSet starts here
                   2| R4['NEW_CLASS'] = 'NEW_CLASS'
                   3| goto L8  -- JMP
                   4| R6 = R0; R5 = R0['NEW_CLASS']
                   5| R6 = _ENV[R7]
                   6| MOVE R25, R7 [60f83316]  -- [LOW-CONF MOVE]
                   7| BXOR [00800422]  -- [LOW-CONF BXOR]
                   8| MOVE R18, R2 [80406525]  -- [LOW-CONF MOVE]
                   9| if not R2 then
                  10| goto L15  -- JMP
                  11| R5 = _ENV[K1]
                  12| LOADK R1, K5 [20982b04]  -- [LOW-CONF LOADK]
                  13| MOVE R20, R7 [60e0680e]  -- [LOW-CONF MOVE]
                  14| R7 = {}
                  15| R0 = call R0(R1, R2, R3)
                  16| return
            end

