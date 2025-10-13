-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/ScriptMgr.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/ScriptMgr.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['ScriptIns']
       1| if not R0 then
       2| goto L3  -- JMP
       3| R0 = {}
       4| _ENV['ScriptIns'] = R1
       5| R1 = _ENV['ScriptTemplate']
       6| if not R0 then
       7| goto L8  -- JMP
       8| R0 = {}
       9| _ENV['ScriptIns'] = R1
      10| R0 = <function #0>
      11| _ENV['RunScript'] = R1
      12| R0 = <function #1>
      13| _ENV['RunScript'] = R1
      14| R0 = <function #2>
      15| _ENV['EndScript'] = R1
      16| R0 = <function #3>
      17| _ENV['EndScript'] = R1
      18| R0 = <function #4>
      19| _ENV['ReloadScript'] = R1
      20| R0 = <function #5>
      21| _ENV['ReloadScript'] = R1
      22| R0 = <function #6>
      23| _ENV['PreloadScript'] = R1
      24| return
end

    function <function_0>(...)
           0| R3 = _ENV['ScriptIns']  -- local insId starts here  -- local objId starts here  -- local pathId starts here
           1| tforcall [c0a82004]  -- [LOW-CONF TFORCALL]
           2| MOVE R9, R4 [6088130e]  -- [LOW-CONF MOVE]
           3| nop
           4| R1 = call R1(R2, R3, R4)
           5| if R3 == 'ScriptTemplate' then -- EQ  -- local objIns starts here
           6| R0 = call R0()
           7| return
           8| R3 = R5['RunScript']
           9| R0 = 'ScriptIns'
          10| goto L12  -- JMP
          11| R6 = R3; R5 = R3['RunScript']
          12| forloop [80800213]  -- [LOW-CONF FORLOOP]
          13| return
    end

    function <function_1>(...)
           0| R1 = _ENV['ScriptIns']  -- local insId starts here
           1| R1 = R0[R0]
           2| if R1 == 'ScriptTemplate' then -- EQ  -- local objIns starts here
           3| R0 = call R0()
           4| return
           5| R1 = R3['RunScript']
           6| R0 = 'ScriptIns'
           7| goto L9  -- JMP
           8| R4 = R1; R3 = R1['RunScript']
           9| forloop [80400213]  -- [LOW-CONF FORLOOP]
          10| return
    end

    function <function_2>(...)
           0| R1 = _ENV['ScriptIns']  -- local insId starts here
           1| R1 = R0[R0]
           2| if R1 == 'ScriptTemplate' then -- EQ  -- local objIns starts here
           3| R0 = call R0()
           4| return
           5| R1 = R3['RunScript']
           6| R0 = 'ScriptIns'
           7| goto L9  -- JMP
           8| R4 = R1; R3 = R1['RunScript']
           9| forloop [80400213]  -- [LOW-CONF FORLOOP]
          10| R0 = R1['ScriptTemplate']
          11| _ENV['ScriptIns'] = R0
          12| R3['ScriptIns'] = 'ScriptTemplate'
          13| return
    end

    function <function_3>(...)
           0| R3 = _ENV['ScriptIns']  -- local insId starts here  -- local objId starts here  -- local pathId starts here
           1| R3 = R2[R0]
           2| R0 = 'ScriptIns'
           3| goto L6  -- JMP
           4| R3 = _ENV['ScriptIns']
           5| R3 = R2[R0]
           6| return
           7| R3 = _ENV['ScriptTemplate']
           8| R3 = R2[R1]
           9| if R3 == 'RunScript' then -- EQ  -- local scriptPath starts here
          10| R0 = call R0()
          11| R2..R0 = nil
          12| return
          13| R2..R0 = nil
          14| R5 = _ENV['TickScript']  -- local ins_t starts here
          15| if R5 == 'EndScript' then -- EQ
          16| R0 = call R0(R1, R2, R3, R4)
          17| R5 = _ENV['GetScriptIns']
          18| R5 = R5['ReloadScript']
          19| MOVE R22, R7 [60f82c1e]  -- [LOW-CONF MOVE]
          20| BAND [c0800511]  -- [LOW-CONF BAND]
          21| MOVE R18, R4 [8080242d]  -- [LOW-CONF MOVE]
          22| goto L31  -- JMP
          23| R5 = _ENV['RewindScript']
          24| R5 = R4[R1]
          25| testset [20114023]  -- [LOW-CONF TESTSET]
          26| goto L31  -- JMP
          27| R5 = _ENV['GetScriptIns']
          28| R5 = R5['ReloadScript']
          29| MOVE R29, R6 [60c07a1e]  -- [LOW-CONF MOVE]
          30| BAND [c0800511]  -- [LOW-CONF BAND]
          31| MOVE R10, R4 [8090542d]  -- [LOW-CONF MOVE]
          32| if not R4 then
          33| goto L59  -- JMP
          34| R4 = R5['PreloadScript']
          35| R0 = 'ScriptIns'
          36| goto L59  -- JMP
          37| R4 = R5['PreloadScript']
          38| MOVE R21, R7 [60f86a06]  -- [LOW-CONF MOVE]
          39| nop
          40| R1 = call R1(R2, R3)
          41| if not R4 then  -- local ins starts here
          42| goto L53  -- JMP
          43| R7 = _ENV['RewindScript']
          44| R1 = R6[R4]
          45| _ENV['ScriptIns'] = R0
          46| R6['ScriptIns'] = 'GetScriptIns'
          47| R5 = R7[K9]
          48| R0 = 'ScriptIns'
          49| goto L51  -- JMP
          50| R8 = R5; R7 = R5[K9]
          51| forloop [80c00213]  -- [LOW-CONF FORLOOP]
          52| return
          53| goto L64  -- JMP
          54| R7 = _ENV[K10]
          55| R0 = -R1
          56| R7 = R0
          57| R1 = R7..R7
          58| R0 = call R0(R1)
          59| goto L64  -- JMP
          60| R5 = _ENV[K10]
          61| R0 = -R1
          62| MOVE R25, R7 [80f8330d]  -- [LOW-CONF MOVE]
          63| R0 = R6..R6
          64| R0 = call R0(R1)
          65| R2..R0 = nil
          66| return
          67| return
    end

    function <function_4>(...)
           0| R3 = _ENV['ScriptIns']  -- local insId starts here  -- local objId starts here  -- local pathId starts here
           1| tforcall [c0a84804]  -- [LOW-CONF TFORCALL]
           2| MOVE R27, R4 [6080370e]  -- [LOW-CONF MOVE]
           3| nop
           4| R1 = call R1(R2, R3, R4)
           5| if R3 == 'ScriptTemplate' then -- EQ  -- local objIns starts here
           6| R0 = call R0()
           7| return
           8| R6 = R3; R5 = R3['RunScript']
           9| forloop [80800213]  -- [LOW-CONF FORLOOP]
          10| return
    end

    function <function_5>(...)
           0| R0 = {}
           1| _ENV['ScriptIns'] = R1
           2| return
    end

    function <function_6>(...)
           0| R1 = _ENV['ScriptIns']
           1| R1 = _ENV['ScriptTemplate']
           2| R2 = call R2(R3)
           3| goto L13  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
           4| R5 = _ENV['RunScript']  -- local key starts here  -- local value starts here
           5| R5 = R4[R3]
           6| R1 = 'ScriptIns'
           7| goto L13  -- JMP
           8| R5 = _ENV['RunScript']
           9| R7 = _ENV['TickScript']
          10| R6 = R7['EndScript']
          11| R7 = _ENV['GetScriptIns']
          12| R1 = call R1(R2)
          13| SETTABLE R4, K35, V6 [60800d1d]  -- [LOW-CONF SETTABLE]
          14| tforcall [c0015644]  -- [LOW-CONF TFORCALL]
          15| testset [0be607fd]  -- [LOW-CONF TESTSET]
          16| return
    end

