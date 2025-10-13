-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/LuaGen/LuaStruct.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/LuaGen/LuaStruct.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R0 = {}
       1| nop
       2| nop
       3| R1['LuaStruct3'] = 3
       4| _ENV['LuaStructType'] = R1
       5| R0 = <function #0>
       6| _ENV[3] = R1
       7| return
end

    function <function_0>(...)
           0| R3 = _ENV['LuaStructType']  -- local allocIndex starts here  -- local structype starts here
           1| R2 = R3['LuaStruct1']
           2| if R0 == 1 then -- EQ
           3| R0 = call R0(R1, R2, R3, R4)
           4| R3 = _ENV[1]
           5| R0 = -R0
           6| R0 = 'LuaStruct2'
           7| MOVE R16, R5 [80a8210d]  -- [LOW-CONF MOVE]
           8| return R4(...)
           9| return
          10| R3 = _ENV['LuaStructType']
          11| R2 = R3[2]
          12| if R0 == 1 then -- EQ
          13| R0 = call R0(R1, R2, R3, R4)
          14| R3 = _ENV[1]
          15| R0 = -R0
          16| R0 = 'LuaStruct2'
          17| MOVE R17, R4 [8098230d]  -- [LOW-CONF MOVE]
          18| return R4(...)
          19| return
          20| R3 = _ENV['LuaStructType']
          21| R2 = R3['LuaStruct3']
          22| if R0 == 1 then -- EQ
          23| R0 = call R0(R1, R2, R3, R4)
          24| R3 = _ENV[1]
          25| R0 = -R0
          26| R0 = 'LuaStruct2'
          27| MOVE R6, R4 [80984d0d]  -- [LOW-CONF MOVE]
          28| return R4(...)
          29| return
          30| R3 = _ENV[3]
          31| R2 = R3['DefineLuaStruct']
          32| R3 = K8
          33| R5 = {}
          34| R1 = R4
          35| BAND [c0800411]  -- [LOW-CONF BAND]
          36| R0 = R3..R3
          37| R0 = call R0(R1)
          38| R1..R0 = nil
          39| return
          40| return
    end

