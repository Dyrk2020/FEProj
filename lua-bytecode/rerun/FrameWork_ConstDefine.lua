-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/ConstDefine.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/ConstDefine.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['Fix64']
       1| R0 = R1['fromInt']
       2| R1 = 0
       3| R1 = call R1(R2)
       4| _ENV['Fix64_ZERO'] = R1
       5| R1 = _ENV['Fix64']
       6| R0 = R1['fromInt']
       7| R1 = 1
       8| R1 = call R1(R2)
       9| _ENV['Fix64_ONE'] = R1
      10| R1 = _ENV['FixVector2']
      11| R1 = _ENV['Fix64_ZERO']
      12| R3 = _ENV['Fix64_ZERO']
      13| R1 = call R1(R2, R3)
      14| _ENV['FixVector2_ZERO'] = R1
      15| R1 = _ENV['FixVector3']
      16| R1 = _ENV['Fix64_ZERO']
      17| R3 = _ENV['Fix64_ZERO']
      18| R3 = _ENV['Fix64_ZERO']
      19| R1 = call R1(R2, R3, R4)
      20| _ENV['FixVector3_ZERO'] = R1
      21| R0 = <function #0>
      22| _ENV['STRING'] = R1
      23| return
end

    function <function_0>(...)
           0| R1 = _ENV['Fix64_ZERO']  -- local str starts here
           1| R1 = R1['Fix64']
           2| MOVE R16, R3 [80682005]  -- [LOW-CONF MOVE]
           3| return R2(...)
           4| return
           5| return
    end

