-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/event_manager.res (2016 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/event_manager.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R1 = _ENV["Loader"]
       1| R0 = R1["reloadrequire"]
       2| R1 = "LuaGen/FEEnumForLua"
       3| UNK20 [80000212]  -- [LOW-CONF UNK20]
       4| R1 = _ENV["_G"]
       5| R0 = R1["print"]
       6| R1 = _ENV["FE"]  -- local print starts here
       7| R1 = R1["print"]
       8| R4 = {}
       9| _ENV["RegisterLgcEvent"] = R1
      10| R4 = {}
      11| _ENV["RegisterLgcEvent"] = R1
      12| R4 = {}
      13| _ENV["OnDispatchLgcEvent"] = R1
      14| R4 = {}
      15| _ENV["OnDispatchLgcEvent"] = R1
      16| R4 = {}
      17| _ENV["UnRegisterActorEvent"] = R1
      18| R4 = {}
      19| _ENV["UnRegisterActorEvent"] = R1
      20| return
end

    -- proto#1 lines 13..18 np=3 va=0 ms=7 upvals=_ENV
    function <function_0>(p0, p1, p2)
           0| R3 = _ENV["LgcEventManagerAdapter"]  -- local funcId starts here
           1| R3 = R3["RegisterEvent"]
           2| UNK51 [60a82006]  -- [LOW-CONF UNK51]
           3| SETTABLE R4, K33, V9 [6088130d]  -- [LOW-CONF SETTABLE]
           4| UNK51 [60d82216]  -- [LOW-CONF UNK51]
           5| UNK29 [a0400323]  -- [LOW-CONF UNK29]
           6| return
    end

    -- proto#2 lines 24..29 np=3 va=0 ms=7 upvals=_ENV
    function <function_1>(p0, p1, p2)
           0| R3 = _ENV["LgcEventManagerAdapter"]  -- local funcId starts here
           1| R3 = R3["UnRegisterEvent"]
           2| UNK51 [60984c06]  -- [LOW-CONF UNK51]
           3| SETTABLE R5, K33, V50 [60a0650d]  -- [LOW-CONF SETTABLE]
           4| UNK51 [60d80216]  -- [LOW-CONF UNK51]
           5| UNK29 [a0400323]  -- [LOW-CONF UNK29]
           6| return
    end

    -- proto#3 lines 32..47 np=4 va=0 ms=14 upvals=print,_ENV
    function <function_2>(p0, p1, p2, p3)
           0| R3["PPLog OnDispatchLgcEvent Run eventId="] = R1  -- local msg starts here  -- [LOW-CONF SETTABLE]
           1| R1 = "PPLog OnDispatchLgcEvent Run eventId="
           2| UNK44 [80f02405]  -- [LOW-CONF UNK44]
           3| R7 = " insId="
           4| UNK44 [81381e0d]  -- [LOW-CONF UNK44]
           5| R9 = " funcId="
           6| UNK44 [81580a15]  -- [LOW-CONF UNK44]
           7| R3 = " msg="
           8| _ENV["PPLog OnDispatchLgcEvent Run eventId="] = R0
           9| UNK51 [6180291e]  -- [LOW-CONF UNK51]
          10| UNK29 [a1800413]  -- [LOW-CONF UNK29]
          11| UNK0 [00300a28]  -- [LOW-CONF UNK0]
          12| R0 = call R0(R1)
          13| R5 = _ENV["OnActionLgcEvent"]
          14| GETTABUP R5, U0, K22 [80b82d04]  -- [LOW-CONF GETTABUP]
          15| UNK51 [60c0240e]  -- [LOW-CONF UNK51]
          16| SETTABLE R6, K34, V61 [60c07b15]  -- [LOW-CONF SETTABLE]
          17| UNK51 [6110541e]  -- [LOW-CONF UNK51]
          18| UNK29 [a080022b]  -- [LOW-CONF UNK29]
          19| return
    end

    -- proto#4 lines 55..62 np=4 va=0 ms=9 upvals=_ENV
    function <function_3>(p0, p1, p2, p3)
           0| R5 = _ENV["ActorEventManagerAdapter"]  -- local funcId starts here
           1| R4 = R5["RegisterEvent"]
           2| UNK51 [60b00d06]  -- [LOW-CONF UNK51]
           3| SETTABLE R7, K1, V31 [60e03e0d]  -- [LOW-CONF SETTABLE]
           4| UNK51 [60c04f16]  -- [LOW-CONF UNK51]
           5| SETTABLE R1, K3, V25 [6138321d]  -- [LOW-CONF SETTABLE]
           6| R0 = call R0(R1, R2, R3, R4)
           7| return
    end

    -- proto#5 lines 69..75 np=4 va=0 ms=9 upvals=_ENV
    function <function_4>(p0, p1, p2, p3)
           0| R5 = _ENV["ActorEventManagerAdapter"]  -- local funcId starts here
           1| R4 = R5["UnRegisterEvent"]
           2| UNK51 [60982b06]  -- [LOW-CONF UNK51]
           3| SETTABLE R7, K1, V52 [60e0680d]  -- [LOW-CONF SETTABLE]
           4| UNK51 [60e84916]  -- [LOW-CONF UNK51]
           5| SETTABLE R0, K3, V27 [6100361d]  -- [LOW-CONF SETTABLE]
           6| R0 = call R0(R1, R2, R3, R4)
           7| return
    end

    -- proto#6 lines 78..85 np=5 va=0 ms=11 upvals=_ENV
    function <function_5>(p0, p1, p2, p3, p4)
           0| R5 = _ENV["OnActionActorEvent"]  -- local msg starts here
           1| GETTABUP R7, U0, K12 [80e85804]  -- [LOW-CONF GETTABUP]
           2| UNK51 [60f8050e]  -- [LOW-CONF UNK51]
           3| SETTABLE R0, K2, V30 [61103c15]  -- [LOW-CONF SETTABLE]
           4| UNK51 [6138331e]  -- [LOW-CONF UNK51]
           5| SETTABLE R3, K4, V11 [61781625]  -- [LOW-CONF SETTABLE]
           6| R0 = call R0(R1, R2, R3, R4, R5)
           7| return
    end
