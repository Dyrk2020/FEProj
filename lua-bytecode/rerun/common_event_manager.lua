-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/event_manager.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/event_manager.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['Loader']
       1| R0 = R1['reloadrequire']
       2| R1 = 'LuaGen/FEEnumForLua'
       3| R0 = ~R2
       4| R1 = _ENV['_G']
       5| R0 = R1['print']
       6| R1 = _ENV['FE']  -- local print starts here
       7| R1 = R1['print']
       8| R4 = <function #0>
       9| _ENV['RegisterLgcEvent'] = R1
      10| R4 = <function #1>
      11| _ENV['RegisterLgcEvent'] = R1
      12| R4 = <function #2>
      13| _ENV['OnDispatchLgcEvent'] = R1
      14| R4 = <function #3>
      15| _ENV['OnDispatchLgcEvent'] = R1
      16| R4 = <function #4>
      17| _ENV['UnRegisterActorEvent'] = R1
      18| R4 = <function #5>
      19| _ENV['UnRegisterActorEvent'] = R1
      20| return
end

    function <function_0>(...)
           0| R3 = _ENV['Loader']  -- local eventId starts here  -- local funcId starts here  -- local insId starts here
           1| R3 = R3['reloadrequire']
           2| MOVE R16, R5 [60a82006]  -- [LOW-CONF MOVE]
           3| SETTABLE R4, K33, V9 [6088130d]  -- [LOW-CONF SETTABLE]
           4| MOVE R17, R6 [60d82216]  -- [LOW-CONF MOVE]
           5| U4 = R2
           6| return
    end

    function <function_1>(...)
           0| R3 = _ENV['Loader']  -- local eventId starts here  -- local funcId starts here  -- local insId starts here
           1| R3 = R3['reloadrequire']
           2| R6 = R4
           3| SETTABLE R5, K33, V50 [60a0650d]  -- [LOW-CONF SETTABLE]
           4| R1 = R6
           5| U4 = R2
           6| return
    end

    function <function_2>(...)
           0| R3['Loader'] = 'LuaGen/FEEnumForLua'  -- local eventId starts here  -- local funcId starts here  -- local insId starts here  -- local msg starts here
           1| R1 = 'Loader'
           2| MOVE R18, R7 [80f02405]  -- [LOW-CONF MOVE]
           3| R3 = 'reloadrequire'
           4| MOVE R15, R1 [81381e0d]  -- [LOW-CONF MOVE]
           5| R1 = 'LuaGen/FEEnumForLua'
           6| R5 = R2
           7| R3 = '_G'
           8| _ENV['Loader'] = R0
           9| MOVE R20, R4 [6180291e]  -- [LOW-CONF MOVE]
          10| U2 = R4
          11| R1 = R5..R5
          12| R0 = call R0(R1)
          13| R5 = _ENV['FE']
          14| GETTABUP R5, U0, K22 [80b82d04]  -- [LOW-CONF GETTABUP]
          15| MOVE R18, R6 [60c0240e]  -- [LOW-CONF MOVE]
          16| SETTABLE R6, K34, V61 [60c07b15]  -- [LOW-CONF SETTABLE]
          17| R10 = R0
          18| U5 = R4
          19| return
    end

    function <function_3>(...)
           0| R5 = _ENV['Loader']  -- local actorObjId starts here  -- local eventId starts here  -- local funcId starts here  -- local insId starts here
           1| R4 = R5['reloadrequire']
           2| R6 = R5
           3| R7['reloadrequire'] = R31
           4| R7 = R6
           5| SETTABLE R1, K3, V25 [6138321d]  -- [LOW-CONF SETTABLE]
           6| R0 = call R0(R1, R2, R3, R4)
           7| return
    end

    function <function_4>(...)
           0| R5 = _ENV['Loader']  -- local actorObjId starts here  -- local eventId starts here  -- local funcId starts here  -- local insId starts here
           1| R4 = R5['reloadrequire']
           2| MOVE R21, R4 [60982b06]  -- [LOW-CONF MOVE]
           3| R7['reloadrequire'] = R52
           4| R4 = R7
           5| SETTABLE R0, K3, V27 [6100361d]  -- [LOW-CONF SETTABLE]
           6| R0 = call R0(R1, R2, R3, R4)
           7| return
    end

    function <function_5>(...)
           0| R5 = _ENV['Loader']  -- local actorObjId starts here  -- local eventId starts here  -- local funcId starts here  -- local insId starts here  -- local msg starts here
           1| GETTABUP R7, U0, K12 [80e85804]  -- [LOW-CONF GETTABUP]
           2| R2 = R7
           3| SETTABLE R0, K2, V30 [61103c15]  -- [LOW-CONF SETTABLE]
           4| MOVE R25, R1 [6138331e]  -- [LOW-CONF MOVE]
           5| SETTABLE R3, K4, V11 [61781625]  -- [LOW-CONF SETTABLE]
           6| R0 = call R0(R1, R2, R3, R4, R5)
           7| return
    end

