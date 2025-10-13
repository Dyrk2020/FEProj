-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/TestMain.res (698 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/TestMain.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=4 upvals=_ENV
function <main>(...)
       0| R0 = "202002211706"
       1| R1 = _ENV["require"]  -- local cdkey starts here
       2| R2 = "FrameWork/Loader"
       3| R1 = call R1(R2)
       4| _ENV["202002211706"] = R1
       5| R1 = _ENV["Loader"]
       6| R1 = R1["loadrequire"]
       7| R2 = "common/pprint"
       8| R1 = call R1(R2)
       9| _ENV["pp"] = R1
      10| R1 = _ENV["Loader"]
      11| R1 = R1["loadrequire"]
      12| R2 = "common/safecall"
      13| R1 = call R1(R2)
      14| _ENV["common/pprint"] = R1
      15| R1 = _ENV["Loader"]
      16| R1 = R1["reloadrequire"]
      17| R2 = "Logic/BattleLogic"
      18| R1 = call R1(R2)
      19| R1 = _ENV["Loader"]
      20| R1 = R1["reloadrequire"]
      21| R2 = "LuaGen/LuaStruct"
      22| R1 = call R1(R2)
      23| R1 = _ENV["collectgarbage"]
      24| R2 = "setpause"
      25| R3 = 60
      26| R1 = call R1(R2, R3)
      27| return
end
