-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/FlowAction.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/FlowAction.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['NEW_CLASS']
       1| U0 = R0
       2| R1 = call R1(R2)
       3| R4 = <function #0>  -- local FlowAction starts here
       4| R0 = not R2
       5| R4 = <function #1>
       6| R0 = not R3
       7| R4 = <function #2>
       8| R0 = not R4
       9| R4 = <function #3>
      10| R0 = not R5
      11| R4 = <function #4>
      12| R0 = not R6
      13| R4 = <function #5>
      14| R0 = not R7
      15| R4 = <function #6>
      16| R0 = not R8
      17| R4 = <function #7>
      18| R0 = not R9
      19| R4 = <function #0>
      20| R0 = not R10
      21| R4 = <function #1>
      22| R0 = not R11
      23| R4 = <function #2>
      24| R0 = not R12
      25| return
      26| return
end

    function <function_0>(...)
           0| R0['NEW_CLASS'] = 'FlowAction'  -- local args starts here  -- local assetArgs starts here  -- local insId starts here  -- local self starts here  -- local varShells starts here
           1| R0['FlowAction'] = 'ctor'
           2| R0['ctor'] = 'ParseValue'
           3| R6 = R0; R5 = R0['ParseShells']
           4| R7 = {}
           5| R0 = call R0(R1, R2)
           6| R6 = R0; R5 = R0['ParseValue']
           7| R6 = {}
           8| R0 = call R0(R1, R2)
           9| return
    end

    function <function_1>(...)
           0| if not R0 then  -- local paramList starts here  -- local self starts here
           1| goto L13  -- JMP
           2| R2 = 'NEW_CLASS'
           3| R1 = R3['FlowAction']
           4| R0 = call R0(R1, R2)
           5| R0 = 'ctor'
           6| forprep [80a00c50]  -- [LOW-CONF FORPREP]  -- local (for index) starts here  -- local (for limit) starts here  -- local (for step) starts here
           7| R8 = R1; R7 = R1['ParseShells']  -- local i starts here
           8| R1 = {}
           9| R1 = call R1(R2, R3)
          10| R7 = _ENV['ParseValue']  -- local tempObj starts here
          11| R7 = R7['SetValue']
          12| R6 = R1['OnEnter']
          13| R1 = call R1(R2)
          14| if not R6 then  -- local customName starts here
          15| goto L36  -- JMP
          16| R1 = _ENV['OnTick']
          17| nop
          18| nop
          19| R1 = _ENV['OnTick']
          20| R3 = _ENV['SetFinish']
          21| R10 = R3['OnActorEvent']
          22| nop
          23| nop
          24| R1 = call R1(R2)
          25| if R8 == 'SetFinish' then -- EQ
          26| MOD [50000049]  -- [LOW-CONF MOD]
          27| R6 = R1[K13]
          28| R0 = _ENV[R0]
          29| goto L33  -- JMP
          30| R2 = R6; R1 = R6[K13]
          31| CLOSURE R0, P0 [c1000413]  -- [LOW-CONF CLOSURE]
          32| if not R0 then
          33| goto L34  -- JMP
          34| R4..R0 = nil
          35| R0['OnTick'] = 'OnLeave'
          36| goto L44  -- JMP
          37| if not R6 then
          38| goto L62  -- JMP
          39| R1 = _ENV['OnTick']
          40| nop
          41| nop
          42| R1 = _ENV['OnTick']
          43| R3 = _ENV['SetFinish']
          44| R10 = R3['OnActorEvent']
          45| nop
          46| nop
          47| R1 = call R1(R2)
          48| if R8 == 'SetFinish' then -- EQ
          49| MOD [50000061]  -- [LOW-CONF MOD]
          50| R6 = R1[K15]
          51| R0 = _ENV[R0]
          52| goto L56  -- JMP
          53| R2 = R6; R1 = R6[K15]
          54| CLOSURE R0, P0 [c1000413]  -- [LOW-CONF CLOSURE]
          55| if not R0 then
          56| goto L60  -- JMP
          57| R1 = _ENV[K14]
          58| R8 = R1[K16]
          59| R1 = 'NEW_CLASS'
          60| loadkx [61000410]  -- [LOW-CONF LOADKx]
          61| R0['OnTick'] = 'OnLeave'
          62| goto L76  -- JMP
          63| if not R6 then
          64| goto L85  -- JMP
          65| R1 = _ENV['OnTick']
          66| nop
          67| nop
          68| R1 = _ENV['OnTick']
          69| R3 = _ENV['SetFinish']
          70| R10 = R3['OnActorEvent']
          71| nop
          72| nop
          73| R1 = call R1(R2)
          74| if R8 == 'SetFinish' then -- EQ
          75| MOD [50000049]  -- [LOW-CONF MOD]
          76| R6 = R1[K18]
          77| R0 = _ENV[R0]
          78| goto L82  -- JMP
          79| R2 = R6; R1 = R6[K18]
          80| CLOSURE R0, P0 [c1000413]  -- [LOW-CONF CLOSURE]
          81| if not R0 then
          82| goto L83  -- JMP
          83| R0 = 'NEW_CLASS'
          84| R0['OnTick'] = 'OnLeave'
          85| goto L108  -- JMP
          86| if not R6 then
          87| goto L104  -- JMP
          88| R1 = _ENV['OnTick']
          89| nop
          90| nop
          91| R1 = _ENV['OnTick']
          92| R3 = _ENV['SetFinish']
          93| R10 = R3['OnActorEvent']
          94| nop
          95| nop
          96| R1 = call R1(R2)
          97| if R8 == 'SetFinish' then -- EQ
          98| MOD [50000029]  -- [LOW-CONF MOD]
          99| R6 = R1[K20]
         100| R0 = _ENV[R1]
         101| goto L102  -- JMP
         102| R0 = 'NEW_CLASS'
         103| R0['OnTick'] = 'OnLeave'
         104| goto L108  -- JMP
         105| if not R6 then
         106| goto L127  -- JMP
         107| R1 = _ENV['OnTick']
         108| nop
         109| nop
         110| R1 = _ENV['OnTick']
         111| R3 = _ENV['SetFinish']
         112| R10 = R3['OnActorEvent']
         113| nop
         114| nop
         115| R1 = call R1(R2)
         116| if R8 == 'SetFinish' then -- EQ
         117| MOD [50000049]  -- [LOW-CONF MOD]
         118| R6 = R1[K22]
         119| R0 = _ENV[R0]
         120| goto L124  -- JMP
         121| R2 = R6; R1 = R6[K22]
         122| CLOSURE R0, P0 [c1000413]  -- [LOW-CONF CLOSURE]
         123| if not R0 then
         124| goto L125  -- JMP
         125| R1 = _ENV[K23]
         126| R0['OnTick'] = 'OnLeave'
         127| goto L140  -- JMP
         128| if not R6 then
         129| goto L150  -- JMP
         130| R1 = _ENV['OnTick']
         131| nop
         132| nop
         133| R1 = _ENV['OnTick']
         134| R3 = _ENV['SetFinish']
         135| R10 = R3['OnActorEvent']
         136| nop
         137| nop
         138| R1 = call R1(R2)
         139| if R8 == 'SetFinish' then -- EQ
         140| MOD [50000049]  -- [LOW-CONF MOD]
         141| R6 = R1[K25]
         142| R0 = _ENV[R0]
         143| goto L147  -- JMP
         144| R2 = R6; R1 = R6[K25]
         145| CLOSURE R0, P0 [c1000413]  -- [LOW-CONF CLOSURE]
         146| if not R0 then
         147| goto L148  -- JMP
         148| R0 = 'NEW_CLASS'
         149| R0['OnTick'] = 'OnLeave'
         150| goto L172  -- JMP
         151| if not R6 then
         152| goto L173  -- JMP
         153| R1 = _ENV['OnTick']
         154| nop
         155| nop
         156| R1 = _ENV['OnTick']
         157| R3 = _ENV['SetFinish']
         158| R10 = R3['OnActorEvent']
         159| nop
         160| nop
         161| R1 = call R1(R2)
         162| if R8 == 'SetFinish' then -- EQ
         163| MOD [50000049]  -- [LOW-CONF MOD]
         164| R6 = R1[K27]
         165| R0 = _ENV[R0]
         166| goto L170  -- JMP
         167| R2 = R6; R1 = R6[K27]
         168| CLOSURE R0, P0 [c1000413]  -- [LOW-CONF CLOSURE]
         169| if not R0 then
         170| goto L171  -- JMP
         171| R4..R0 = nil
         172| R0['OnTick'] = 'OnLeave'
         173| goto L204  -- JMP
         174| if not R6 then
         175| goto L204  -- JMP
         176| R1 = _ENV['OnTick']
         177| nop
         178| nop
         179| R1 = _ENV['OnTick']
         180| R3 = _ENV['SetFinish']
         181| R10 = R3['OnActorEvent']
         182| nop
         183| nop
         184| R1 = call R1(R2)
         185| if R8 == 'SetFinish' then -- EQ
         186| MOD [50000089]  -- [LOW-CONF MOD]
         187| R0 = {}
         188| R6 = R1[K20]  -- local argsTb starts here
         189| R0 = _ENV[R1]
         190| goto L191  -- JMP
         191| R1 = 'NEW_CLASS'
         192| R29 = R0[R9]
         193| nop
         194| R3 = _ENV[K31]
         195| R3 = _ENV['ParseValue']
         196| R11 = R3['SetValue']
         197| R6 = R5['NEW_CLASS']
         198| R1 = call R1(R2)
         199| R10 = R2[R11]
         200| R1 = R2
         201| R0 = R3..R2
         202| R0['OnTick'] = 'SetFinish'
         203| R8 = R1[K29]
         204| R6 = ~R20
         205| forloop [804ff9c3]  -- [LOW-CONF FORLOOP]
         206| return
    end

    function <function_2>(...)
           0| if not R0 then  -- local paramList starts here  -- local self starts here
           1| goto L20  -- JMP
           2| R2 = 'NEW_CLASS'
           3| R1 = R3['FlowAction']
           4| R0 = call R0(R1, R2)
           5| R0 = 'ctor'
           6| forprep [80a000c0]  -- [LOW-CONF FORPREP]  -- local (for index) starts here  -- local (for limit) starts here  -- local (for step) starts here
           7| R8 = R1; R7 = R1['ParseShells']  -- local i starts here
           8| R0 = {}
           9| R1 = call R1(R2, R3)
          10| if not R6 then  -- local tempObj starts here
          11| goto L19  -- JMP
          12| R6 = R7['ParseValue']
          13| R6 = _ENV[R0]
          14| goto L19  -- JMP
          15| R7 = _ENV['SetValue']
          16| R7 = R7['OnEnter']
          17| R6 = R1['ParseValue']
          18| R1 = call R1(R2)
          19| SETTABLE R0, K7, V6 [60000c3d]  -- [LOW-CONF SETTABLE]  -- local customName starts here
          20| forloop [804fff8b]  -- [LOW-CONF FORLOOP]
          21| return
    end

    function <function_3>(...)
           0| R0 = R3['NEW_CLASS']  -- local key starts here  -- local self starts here  -- local value starts here
           1| R2 = _ENV[R0]
           2| goto L34  -- JMP
           3| R3 = 'FlowAction'
           4| R0 = R5['NEW_CLASS']
           5| R4 = R5['ctor']
           6| R0 = call R0(R1, R2, R3)
           7| R1 = 'ParseShells'
           8| forprep [80e00780]  -- [LOW-CONF FORPREP]  -- local (for index) starts here  -- local (for limit) starts here  -- local (for step) starts here
           9| R0 = R7['NEW_CLASS']  -- local i starts here
          10| R8 = R7; R7 = R7['ParseValue']
          11| R1 = {}
          12| R1 = call R1(R2, R3)
          13| if not R6 then  -- local tempObj starts here
          14| goto L33  -- JMP
          15| R1 = _ENV['SetValue']
          16| R8 = R1['OnEnter']
          17| R7 = R1['OnTick']
          18| R1 = call R1(R2)
          19| if R8 == 'FlowAction' then -- EQ
          20| MOD [50000361]  -- [LOW-CONF MOD]
          21| R1 = _ENV['OnLeave']
          22| nop
          23| nop
          24| R1 = _ENV['OnLeave']
          25| R3 = _ENV['OnActorEvent']
          26| R10 = R3['OnLgcEvent']
          27| nop
          28| nop
          29| R1 = call R1(R2)
          30| if R8 == 'SetFinish' then -- EQ
          31| MOD [50000031]  -- [LOW-CONF MOD]
          32| R7 = R1[K14]
          33| R0 = _ENV[R0]
          34| goto L38  -- JMP
          35| R2 = R7; R1 = R7[K14]
          36| R2 = {}
          37| R0 = call R0(R1, R2)
          38| goto L65  -- JMP
          39| R1 = _ENV['OnLeave']
          40| nop
          41| nop
          42| R1 = _ENV['OnLeave']
          43| R3 = _ENV['OnActorEvent']
          44| R10 = R3['OnLgcEvent']
          45| nop
          46| nop
          47| R1 = call R1(R2)
          48| if R8 == 'SetFinish' then -- EQ
          49| MOD [50000031]  -- [LOW-CONF MOD]
          50| R7 = R1[K16]
          51| R0 = _ENV[R0]
          52| goto L56  -- JMP
          53| R2 = R7; R1 = R7[K16]
          54| R2 = {}
          55| R0 = call R0(R1, R2)
          56| goto L65  -- JMP
          57| R1 = _ENV['OnLeave']
          58| nop
          59| nop
          60| R1 = _ENV['OnLeave']
          61| R3 = _ENV['OnActorEvent']
          62| R10 = R3['OnLgcEvent']
          63| nop
          64| nop
          65| R1 = call R1(R2)
          66| if R8 == 'SetFinish' then -- EQ
          67| MOD [50000031]  -- [LOW-CONF MOD]
          68| R7 = R1[K18]
          69| R0 = _ENV[R0]
          70| goto L74  -- JMP
          71| R2 = R7; R1 = R7[K18]
          72| R3 = {}
          73| R0 = call R0(R1, R2)
          74| goto L97  -- JMP
          75| R1 = _ENV['OnLeave']
          76| nop
          77| nop
          78| R1 = _ENV['OnLeave']
          79| R3 = _ENV['OnActorEvent']
          80| R10 = R3['OnLgcEvent']
          81| nop
          82| nop
          83| R1 = call R1(R2)
          84| if R8 == 'SetFinish' then -- EQ
          85| MOD [50000031]  -- [LOW-CONF MOD]
          86| R7 = R1[K20]
          87| R0 = _ENV[R0]
          88| goto L92  -- JMP
          89| R2 = R7; R1 = R7[K20]
          90| R2 = {}
          91| R0 = call R0(R1, R2)
          92| goto L97  -- JMP
          93| R1 = _ENV['OnLeave']
          94| nop
          95| nop
          96| R1 = _ENV['OnLeave']
          97| R3 = _ENV['OnActorEvent']
          98| R10 = R3['OnLgcEvent']
          99| nop
         100| nop
         101| R1 = call R1(R2)
         102| if R8 == 'SetFinish' then -- EQ
         103| MOD [50000031]  -- [LOW-CONF MOD]
         104| R7 = R1[K22]
         105| R0 = _ENV[R0]
         106| goto L110  -- JMP
         107| R2 = R7; R1 = R7[K22]
         108| R2 = {}
         109| R0 = call R0(R1, R2)
         110| goto L129  -- JMP
         111| R1 = _ENV['OnLeave']
         112| nop
         113| nop
         114| R1 = _ENV['OnLeave']
         115| R3 = _ENV['OnActorEvent']
         116| R10 = R3['OnLgcEvent']
         117| nop
         118| nop
         119| R1 = call R1(R2)
         120| if R8 == 'SetFinish' then -- EQ
         121| MOD [50000039]  -- [LOW-CONF MOD]
         122| if R2 == K24 then -- EQ
         123| MOD [50000019]  -- [LOW-CONF MOD]
         124| R1 = _ENV[K25]
         125| nop
         126| nop
         127| goto L129  -- JMP
         128| R0 = 'NEW_CLASS'
         129| return
         130| forloop [806ffc2b]  -- [LOW-CONF FORLOOP]
         131| R0 = 'NEW_CLASS'
         132| return
         133| return
    end

    function <function_4>(...)
           0| return  -- local self starts here
    end

    function <function_5>(...)
           0| return  -- local self starts here
    end

    function <function_6>(...)
           0| return  -- local self starts here
    end

    function <function_7>(...)
           0| R3 = _ENV['NEW_CLASS']  -- local insId starts here  -- local self starts here
           1| R2 = R3['FlowAction']
           2| MOVE R18, R2 [6040650e]  -- [LOW-CONF MOVE]
           3| R2 = R2..R1
           4| return
    end

    function <function_8>(...)
           0| return  -- local actorObjId starts here  -- local eventId starts here  -- local msg starts here  -- local self starts here
    end

    function <function_9>(...)
           0| return  -- local eventId starts here  -- local msg starts here  -- local self starts here
    end

    function <function_10>(...)
           0| return  -- local self starts here
    end

