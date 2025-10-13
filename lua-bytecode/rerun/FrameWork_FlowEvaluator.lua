-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/FlowEvaluator.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/FlowEvaluator.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['NEW_CLASS']
       1| R2 = call R2()
       2| R1 = call R1(R2)
       3| R4 = <function #0>  -- local FlowEvaluator starts here
       4| R0['ctor'] = 'FlowEvaluator'
       5| R4 = <function #1>
       6| R0['ParseShells'] = 'FlowEvaluator'
       7| R4 = <function #2>
       8| R0['Execute'] = 'FlowEvaluator'
       9| return
      10| return
end

    function <function_0>(...)
           0| R0['NEW_CLASS'] = 'FlowEvaluator'  -- local assetArgs starts here  -- local insId starts here  -- local self starts here  -- local varShells starts here
           1| R6 = R0; R5 = R0['FlowEvaluator']
           2| SETTABLE R7, K3, V16 [60e8201d]  -- [LOW-CONF SETTABLE]
           3| R0 = call R0(R1, R2)
           4| return
    end

    function <function_1>(...)
           0| if not R0 then  -- local paramList starts here  -- local self starts here
           1| goto L8  -- JMP
           2| R2 = 'NEW_CLASS'
           3| R1 = R3['FlowEvaluator']
           4| R0 = call R0(R1, R2)
           5| R0 = 'ctor'
           6| forprep [80a00600]  -- [LOW-CONF FORPREP]  -- local (for index) starts here  -- local (for limit) starts here  -- local (for step) starts here
           7| R8 = R1; R7 = R1['ParseShells']  -- local i starts here
           8| R0[K5] = K17
           9| R1 = call R1(R2, R3)
          10| R7 = _ENV['Execute']  -- local tempObj starts here
          11| R7 = R7[K5]
          12| R6 = R1[K6]
          13| R1 = call R1(R2)
          14| if not R6 then  -- local customName starts here
          15| goto L36  -- JMP
          16| R1 = _ENV[K7]
          17| nop
          18| nop
          19| R1 = _ENV[K7]
          20| R3 = _ENV[K9]
          21| R10 = R3[K10]
          22| nop
          23| nop
          24| R1 = call R1(R2)
          25| if R8 == K9 then -- EQ
          26| R0 = _ENV[R0]
          27| R6 = R1[K13]
          28| if R0 == 'NEW_CLASS' then -- EQ
          29| goto L33  -- JMP
          30| R2 = R6; R1 = R6[K13]
          31| R2 = 'NEW_CLASS'
          32| if not R0 then
          33| goto L34  -- JMP
          34| R4..R0 = nil
          35| R0[K7] = K8
          36| goto L39  -- JMP
          37| if not R6 then
          38| goto L62  -- JMP
          39| R1 = _ENV[K7]
          40| nop
          41| nop
          42| R1 = _ENV[K7]
          43| R3 = _ENV[K9]
          44| R10 = R3[K10]
          45| nop
          46| nop
          47| R1 = call R1(R2)
          48| if R8 == K9 then -- EQ
          49| R0 = _ENV[R0]
          50| R6 = R1[K15]
          51| if R0 == 'NEW_CLASS' then -- EQ
          52| goto L56  -- JMP
          53| R2 = R6; R1 = R6[K15]
          54| R2 = 'NEW_CLASS'
          55| if not R0 then
          56| goto L60  -- JMP
          57| R1 = _ENV[K14]
          58| R8 = R1[K16]
          59| R1 = 'NEW_CLASS'
          60| BOR [e1000411]  -- [LOW-CONF BOR]
          61| R0[K7] = K8
          62| goto L71  -- JMP
          63| if not R6 then
          64| goto L85  -- JMP
          65| R1 = _ENV[K7]
          66| nop
          67| nop
          68| R1 = _ENV[K7]
          69| R3 = _ENV[K9]
          70| R10 = R3[K10]
          71| nop
          72| nop
          73| R1 = call R1(R2)
          74| if R8 == K9 then -- EQ
          75| R0 = _ENV[R0]
          76| R6 = R1[K18]
          77| if R0 == 'NEW_CLASS' then -- EQ
          78| goto L82  -- JMP
          79| R2 = R6; R1 = R6[K18]
          80| R2 = 'NEW_CLASS'
          81| if not R0 then
          82| goto L83  -- JMP
          83| R0 = 'NEW_CLASS'
          84| R0[K7] = K8
          85| goto L103  -- JMP
          86| if not R6 then
          87| goto L103  -- JMP
          88| R1 = _ENV[K7]
          89| nop
          90| nop
          91| R1 = _ENV[K7]
          92| R3 = _ENV[K9]
          93| R10 = R3[K10]
          94| nop
          95| nop
          96| R1 = call R1(R2)
          97| if R8 == K9 then -- EQ
          98| R0 = _ENV[R0]
          99| R6 = R1[K20]
         100| if R0 == 'FlowEvaluator' then -- EQ
         101| goto L102  -- JMP
         102| R0 = 'NEW_CLASS'
         103| R0[K7] = K8
         104| forloop [804ffceb]  -- [LOW-CONF FORLOOP]
         105| return
    end

    function <function_2>(...)
           0| LOADK R0, K0 [40000103]  -- [LOW-CONF LOADK]  -- local self starts here
           1| return
           2| return
    end

