-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/Logic/BattleLogic.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/Logic/BattleLogic.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['_G']
       1| R0 = R1['print']
       2| R4 = <function #0>  -- local oldPrint starts here
       3| R0 = <function #1>  -- local FEBattleLoadRequire starts here
       4| _ENV['FEBattleStart'] = R1
       5| R0 = <function #2>
       6| _ENV['FEBattleStart'] = R1
       7| R0 = <function #3>
       8| _ENV['FEBattleReset'] = R1
       9| R0 = <function #4>
      10| _ENV['FEBattleReset'] = R1
      11| return
end

    function <function_0>(...)
           0| R1 = _ENV['_G']
           1| nop
           2| nop
           3| R1 = _ENV['_G']
           4| R0 = R1['FEBattleAwake']
           5| R1 = 'FEBattleStart'
           6| R0 = call R0(R1)
           7| R1 = _ENV['_G']
           8| R0 = R1['FEBattleAwake']
           9| R1 = 'FEBattleUpdate'
          10| R0 = call R0(R1)
          11| R1 = _ENV['_G']
          12| R0 = R1['FEBattleAwake']
          13| R1 = 'FEBattleReset'
          14| R0 = call R0(R1)
          15| R1 = _ENV['_G']
          16| R0 = R1['FEBattleAwake']
          17| R1 = K6
          18| R0 = call R0(R1)
          19| R1 = _ENV['_G']
          20| R0 = R1['FEBattleAwake']
          21| R1 = K7
          22| R0 = call R0(R1)
          23| R1 = _ENV['_G']
          24| R0 = R1['FEBattleAwake']
          25| R1 = K8
          26| R0 = call R0(R1)
          27| R1 = _ENV['_G']
          28| R0 = R1['FEBattleAwake']
          29| R1 = K9
          30| R0 = call R0(R1)
          31| R1 = _ENV['_G']
          32| R0 = R1['FEBattleAwake']
          33| R1 = K10
          34| R0 = call R0(R1)
          35| R1 = _ENV['_G']
          36| R0 = R1['FEBattleAwake']
          37| R1 = K11
          38| R0 = call R0(R1)
          39| R1 = _ENV['_G']
          40| R0 = R1['FEBattleAwake']
          41| R1 = K12
          42| R0 = call R0(R1)
          43| return
    end

    function <function_1>(...)
           0| R2['_G'] = '_G'
           1| R0 = call R0()
           2| R1 = _ENV['_G']
           3| R1 = _ENV['FEBattleAwake']
           4| R1 = R1['print']
           5| R0 = _ENV
           6| return
    end

    function <function_2>(...)
           0| return
    end

    function <function_3>(...)
           0| return
    end

    function <function_4>(...)
           0| R1 = _ENV['_G']
           1| R1['_G'] = '_G'
           2| R0['print'] = 'print'
           3| return
    end

