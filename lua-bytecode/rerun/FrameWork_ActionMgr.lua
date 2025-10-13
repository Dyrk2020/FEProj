-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/ActionMgr.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/ActionMgr.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R0 = <function #0>
       1| _ENV['OnActionPreload'] = R1
       2| R0 = <function #1>
       3| _ENV['OnActionPreload'] = R1
       4| R0 = <function #2>
       5| _ENV['OnActionTick'] = R1
       6| R0 = <function #3>
       7| _ENV['OnActionTick'] = R1
       8| R0 = <function #4>
       9| _ENV['OnActionActorEvent'] = R1
      10| R0 = <function #5>
      11| _ENV['OnActionActorEvent'] = R1
      12| R0 = <function #6>
      13| _ENV['GetActionIns'] = R1
      14| R0 = <function #7>
      15| _ENV['GetActionIns'] = R1
      16| R0 = <function #0>
      17| _ENV['OnActionRewind'] = R1
      18| return
end

    function <function_0>(...)
           0| R1 = _ENV['OnActionPreload']  -- local pathIdStr starts here
           1| nop
           2| R1 = call R1(R2)
           3| if R1 == 'OnActionEnter' then -- EQ  -- local pathId starts here
           4| loadkx [70000000]  -- [LOW-CONF LOADKx]
           5| return
           6| R3 = _ENV['OnActionTick']
           7| R2 = R3['OnActionLeave']
           8| MOVE R17, R2 [6058230e]  -- [LOW-CONF MOVE]
           9| R2['OnActionTick'] = 'OnActionTick'
          10| MOVE R18, R1 [80306515]  -- [LOW-CONF MOVE]
          11| R3 = _ENV['OnActionActorEvent']
          12| R2 = R2[R1]
          13| if R2 == 'OnActionEnter' then -- EQ  -- local scriptPath starts here
          14| loadkx [70000000]  -- [LOW-CONF LOADKx]
          15| return
          16| R3 = _ENV['OnActionLgcEvent']
          17| R3 = R2[R1]
          18| R2 = {}
          19| goto L20  -- JMP
          20| return
          21| R3 = _ENV['OnActionLgcEvent']
          22| R5 = _ENV['GetActionIns']
          23| R4 = R5['OnActionReload']
          24| R1 = R4
          25| R4['OnActionTick'] = 'OnActionTick'
          26| SETTABLE R2, K33, V4 [6040090d]  -- [LOW-CONF SETTABLE]
          27| return
    end

    function <function_1>(...)
           0| R5 = _ENV['OnActionPreload']  -- local args starts here  -- local assetArgs starts here  -- local insId starts here  -- local pathId starts here  -- local varShells starts here
           1| nop
           2| MOVE R18, R7 [60f0250e]  -- [LOW-CONF MOVE]
           3| GETTABLE R2, R1, K15 [a1381e15]  -- [LOW-CONF GETTABLE]
           4| R5 = R0
           5| GETTABLE R4, R2, K20 [a1402825]  -- [LOW-CONF GETTABLE]
           6| R1 = call R1(R2, R3, R4, R5, R6)
           7| if R5 == 'OnActionEnter' then -- EQ  -- local action starts here
           8| loadkx [70000000]  -- [LOW-CONF LOADKx]
           9| return
          10| R8 = R5; R7 = R5['OnActionTick']
          11| ADD [e0c00210]  -- [LOW-CONF ADD]
          12| return
    end

    function <function_2>(...)
           0| R1 = _ENV['OnActionPreload']  -- local insId starts here
           1| R1 = R0[R0]
           2| if R1 == 'OnActionEnter' then -- EQ  -- local action starts here
           3| loadkx [70000000]  -- [LOW-CONF LOADKx]
           4| return
           5| R4 = R1; R3 = R1['OnActionTick']
           6| ADD [e0400210]  -- [LOW-CONF ADD]
           7| return
    end

    function <function_3>(...)
           0| R1 = _ENV['OnActionPreload']  -- local insId starts here
           1| R1 = R0[R0]
           2| if R1 == 'OnActionEnter' then -- EQ  -- local action starts here
           3| loadkx [70000000]  -- [LOW-CONF LOADKx]
           4| return
           5| R4 = R1; R3 = R1['OnActionTick']
           6| ADD [e0400210]  -- [LOW-CONF ADD]
           7| R3 = _ENV['OnActionPreload']
           8| R3['OnActionPreload'] = 'OnActionEnter'
           9| return
    end

    function <function_4>(...)
           0| R5 = _ENV['OnActionPreload']  -- local actorObjId starts here  -- local eventId starts here  -- local funcId starts here  -- local insId starts here  -- local msg starts here
           1| R5 = R4[R2]
           2| if R5 == 'OnActionEnter' then -- EQ  -- local action starts here
           3| loadkx [70000000]  -- [LOW-CONF LOADKx]
           4| return
           5| R8 = R5; R7 = R5['OnActionTick']
           6| LOADK R3, K9 [21004e04]  -- [LOW-CONF LOADK]
           7| MOVE R25, R1 [6138330e]  -- [LOW-CONF MOVE]
           8| GETTABLE R4, R2, K18 [a1406425]  -- [LOW-CONF GETTABLE]
           9| R0 = call R0(R1, R2, R3, R4)
          10| return
    end

    function <function_5>(...)
           0| R5 = _ENV['OnActionPreload']  -- local eventId starts here  -- local funcId starts here  -- local insId starts here  -- local msg starts here
           1| R4 = R4[R1]
           2| if R4 == 'OnActionEnter' then -- EQ  -- local action starts here
           3| loadkx [70000000]  -- [LOW-CONF LOADKx]
           4| return
           5| R6 = R4; R5 = R4['OnActionTick']
           6| LOADK R0, K9 [20e84904]  -- [LOW-CONF LOADK]
           7| MOVE R27, R0 [6100361e]  -- [LOW-CONF MOVE]
           8| SETTABLE R4, K36, V1 [20800320]  -- [LOW-CONF SETTABLE]
           9| return
    end

    function <function_6>(...)
           0| R5 = _ENV['OnActionPreload']  -- local args starts here  -- local assetArgs starts here  -- local insId starts here  -- local pathId starts here  -- local varShells starts here
           1| R5 = R4[R0]
           2| R4 = {}
           3| goto L6  -- JMP
           4| R5 = _ENV['OnActionPreload']
           5| R5 = R4[R0]
           6| return
           7| R5 = _ENV['OnActionEnter']
           8| R5 = R4[R1]
           9| if R5 == 'OnActionTick' then -- EQ  -- local scriptPath starts here
          10| loadkx [70000008]  -- [LOW-CONF LOADKx]
          11| R3..R0 = nil
          12| return
          13| R3..R0 = nil
          14| R7 = _ENV['OnActionLeave']  -- local action_t starts here
          15| if R7 == 'OnActionActorEvent' then -- EQ
          16| loadkx [70000028]  -- [LOW-CONF LOADKx]
          17| R7 = _ENV['OnActionLgcEvent']
          18| R7 = R7['GetActionIns']
          19| R11 = R1
          20| SETTABLE R6, K34, V2 [20c00510]  -- [LOW-CONF SETTABLE]
          21| MOVE R13, R6 [80d81a3d]  -- [LOW-CONF MOVE]
          22| goto L31  -- JMP
          23| R7 = _ENV['OnActionReload']
          24| R7 = R6[R1]
          25| testset [2011c033]  -- [LOW-CONF TESTSET]
          26| goto L31  -- JMP
          27| R7 = _ENV['OnActionLgcEvent']
          28| R7 = R7['GetActionIns']
          29| R6 = R1
          30| SETTABLE R6, K34, V2 [20c00510]  -- [LOW-CONF SETTABLE]
          31| MOVE R19, R6 [80d8263d]  -- [LOW-CONF MOVE]
          32| if not R6 then
          33| goto L56  -- JMP
          34| R6 = R7['OnActionRewind']
          35| R6 = {}
          36| goto L56  -- JMP
          37| R6 = R7['OnActionRewind']
          38| MOVE R13, R1 [61305a06]  -- [LOW-CONF MOVE]
          39| R2 = R0[R3]
          40| MOVE R22, R2 [61406c1e]  -- [LOW-CONF MOVE]
          41| R4 = R3['OnActionTick']
          42| R1 = call R1(R2, R3, R4, R5)
          43| if not R6 then  -- local action starts here
          44| goto L50  -- JMP
          45| R1 = _ENV['OnActionReload']
          46| R1 = R0[R6]
          47| tforcall [c1200004]  -- [LOW-CONF TFORCALL]
          48| R0['OnActionPreload'] = 'OnActionReload'
          49| return
          50| goto L61  -- JMP
          51| R1 = _ENV[K9]
          52| R1 = K10
          53| R0 = R3
          54| R1 = R9..R9
          55| R0 = call R0(R1)
          56| goto L61  -- JMP
          57| R7 = _ENV[K9]
          58| R0 = K11
          59| MOVE R27, R0 [8110370d]  -- [LOW-CONF MOVE]
          60| R1 = R8..R8
          61| R0 = call R0(R1)
          62| R3..R0 = nil
          63| return
          64| return
    end

    function <function_7>(...)
           0| R7 = _ENV['OnActionPreload']  -- local actorList starts here  -- local args starts here  -- local assetArgs starts here  -- local fix64List starts here  -- local insId starts here  -- local intList starts here  -- local pathId starts here
           1| nop
           2| MOVE R30, R1 [61383d0e]  -- [LOW-CONF MOVE]
           3| R2 = R3['OnActionEnter']
           4| MOVE R17, R3 [6168231e]  -- [LOW-CONF MOVE]
           5| GETTABLE R4, R5, K8 [a1b01025]  -- [LOW-CONF GETTABLE]
           6| R4 = R4
           7| GETTABLE R6, R7, K11 [a1e81635]  -- [LOW-CONF GETTABLE]
           8| R1 = call R1(R2, R3, R4, R5, R6, R7, R8)
           9| if R7 == 'OnActionEnter' then -- EQ  -- local action starts here
          10| loadkx [70000000]  -- [LOW-CONF LOADKx]
          11| return
          12| R2 = R7; R1 = R7['OnActionTick']
          13| ADD [e1000210]  -- [LOW-CONF ADD]
          14| return
    end

    function <function_8>(...)
           0| R0 = {}
           1| _ENV['OnActionPreload'] = R1
           2| return
    end

