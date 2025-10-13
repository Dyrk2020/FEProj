-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/GlobalFunc.res (2137 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/GlobalFunc.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=2 upvals=_ENV
function <main>(...)
       0| R0 = {}
       1| _ENV["NEW_CLASS"] = R1
       2| return
end

    -- proto#1 lines 1..59 np=1 va=1 ms=13 upvals=_ENV
    function <function_0>(p0, ...)
           0| R0 = {}  -- local classname starts here  -- [LOW-CONF NEWTABLE]
           1| UNK63 [e0040107]  -- [LOW-CONF UNK63]
           2| R2 = {}  -- local cls starts here
           3| UNK5 [a0682100]  -- [LOW-CONF UNK5]
           4| UNK27 [60080013]  -- [LOW-CONF UNK27]
           5| R3 = _ENV["ipairs"]  -- local supers starts here
           6| R9 = "type"
           7| R2 = call R2(R3)
           8| jmp-ish [f0000104]  -- local (for control) starts here  -- [LOW-CONF JMP]
           9| R1 = _ENV["type"]  -- local super starts here
          10| R17 = "__create"
          11| R1 = call R1(R2)
          12| UNK57 [20040647]  -- local superType starts here  -- [LOW-CONF UNK57]
          13| R0 = "__cname"
          14| SETTABLE R0, K36, V7 [60040f25]  -- [LOW-CONF SETTABLE]
          15| jmp-ish [f00000cc]  -- [LOW-CONF JMP]
          16| UNK57 [20040a47]  -- [LOW-CONF UNK57]
          17| R0 = "__cname"
          18| UNK46 [c1200d0d]  -- [LOW-CONF UNK46]
          19| SETTABLE R0, K32, V1 [61000305]  -- [LOW-CONF SETTABLE]
          20| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          21| R0 = {}
          22| SETTABLE R0, K38, V9 [60041335]  -- [LOW-CONF SETTABLE]
          23| R1 = R1["__supers"]
          24| R1 = R3["__supers"]
          25| R2["LogReport"] = R2  -- [LOW-CONF SETTABLE]
          26| UNK7 [f5828080]  -- [LOW-CONF UNK7]
          27| SETTABLE R0, K42, V7 [61000f55]  -- [LOW-CONF SETTABLE]
          28| UNK46 [c120110d]  -- [LOW-CONF UNK46]
          29| SETTABLE R0, K50, V1 [61048395]  -- [LOW-CONF SETTABLE]
          30| jmp-ish [f0000054]  -- [LOW-CONF JMP]
          31| SETTABLE R0, K40, V7 [60040f45]  -- [LOW-CONF SETTABLE]
          32| jmp-ish [f0000044]  -- [LOW-CONF JMP]
          33| R1 = _ENV["FE"]
          34| R9 = R1["LogReport"]
          35| R3 = _ENV["string"]
          36| R10 = R3["format"]
          37| R55 = "class() - create class \"%s\" with invalid super type"
          38| UNK51 [61980206]  -- [LOW-CONF UNK51]
          39| R1["function"] = R2
          40| R3 = 0
          41| UNK19 [6100031a]  -- [LOW-CONF UNK19]
          42| UNK38 [c30105c4]  -- [LOW-CONF UNK38]
          43| UNK40 [17b807fd]  -- [LOW-CONF UNK40]
          44| SETTABLE R0, K47, V1 [6004037d]  -- [LOW-CONF SETTABLE]
          45| UNK46 [c0600d0d]  -- [LOW-CONF UNK46]
          46| SETTABLE R2, K50, V0 [60460195]  -- [LOW-CONF SETTABLE]
          47| jmp-ish [f000001c]  -- [LOW-CONF JMP]
          48| R1 = R3["__supers"]
          49| SETTABLE R7, K19, R0 [d9e0039a]  -- [LOW-CONF SETTABLE]
          50| UNK57 [20040e1f]  -- [LOW-CONF UNK57]
          51| R0 = "__cname"
          52| R3 = _ENV["setmetatable"]
          53| R5 = "ipairs"
          54| R4 = {}
          55| UNK46 [c0e0100d]  -- [LOW-CONF UNK46]
          56| R1 = {}  -- [LOW-CONF NEWTABLE]
          57| R0 = call R0(R1, R2)
          58| jmp-ish [f000002c]  -- [LOW-CONF JMP]
          59| R3 = _ENV["setmetatable"]
          60| R20 = "table"
          61| R4 = {}
          62| R0 = <function #0>
          63| UNK5 [a0840d78]  -- [LOW-CONF UNK5]
          64| R0 = call R0(R1, R2)
          65| UNK46 [c060230d]  -- [LOW-CONF UNK46]
          66| SETTABLE R2, K53, V1 [604783ad]  -- [LOW-CONF SETTABLE]
          67| jmp-ish [f000000c]  -- [LOW-CONF JMP]
          68| R4 = <function #1>
          69| UNK5 [a0040788]  -- [LOW-CONF UNK5]
          70| R4 = <function #2>
          71| UNK5 [a0040790]  -- [LOW-CONF UNK5]
          72| return
          73| return
    end

        -- proto#101 lines 24..30 np=2 va=0 ms=9 upvals=cls
        function <function_0>(p0, p1)
               0| R3 = _ENV["__supers"]  -- local key starts here
               1| UNK13 [a0000e01]  -- local supers starts here  -- [LOW-CONF UNK13]
               2| SETTABLE R6, K4, R0 [dac00322]  -- [LOW-CONF SETTABLE]
               3| R5 = 1
               4| R0 = {}  -- local (for step) starts here  -- [LOW-CONF NEWTABLE]
               5| GETTABLE R2, R6, K6 [a0c00d15]  -- local i starts here  -- [LOW-CONF GETTABLE]
               6| UNK46 [c100023d]  -- local super starts here  -- [LOW-CONF UNK46]
               7| R0["__supers"] = "__supers"
               8| jmp-ish [f000000c]  -- [LOW-CONF JMP]
               9| R7 = R0[1]
              10| return
              11| forloop/jmp [806fffc3]  -- [LOW-CONF FORLOOP]
              12| return
        end

        -- proto#102 lines 34..34 np=0 va=0 ms=2
        function <function_1>()
               0| return
        end

        -- proto#103 lines 37..56 np=0 va=1 ms=5 upvals=cls,_ENV
        function <function_2>(...)
               0| R0 = {}  -- [LOW-CONF NEWTABLE]
               1| R1 = call R1()  -- local proxy starts here
               2| R0["__index"] = R0  -- [LOW-CONF SETTABLE]
               3| UNK55 [e0040506]  -- [LOW-CONF UNK55]
               4| forloop/jmp [81000003]  -- [LOW-CONF FORLOOP]
               5| UNK55 [e004050e]  -- [LOW-CONF UNK55]
               6| R1 = R3["setmetatable"]  -- local mt starts here
               7| UNK51 [60485b06]  -- [LOW-CONF UNK51]
               8| R5 = {}
               9| R0 = call R0(R1, R2)
              10| R6["__index"] = R0  -- [LOW-CONF SETTABLE]
              11| UNK2 [40600610]  -- [LOW-CONF UNK2]
              12| UNK5 [a0903c00]  -- [LOW-CONF UNK5]
              13| R0 = call R0()
              14| return
              15| return
        end

            -- proto#10301 lines 41..50 np=3 va=0 ms=8 upvals=_ENV
            function <function_0>(p0, p1, p2)
                   0| R0 = "SetValue"  -- local v starts here
                   1| UNK46 [c0a00005]  -- local canSet starts here  -- [LOW-CONF UNK46]
                   2| R4["SetValue"] = "SetValue"
                   3| jmp-ish [f0000024]  -- [LOW-CONF JMP]
                   4| UNK54 [c0a00006]  -- [LOW-CONF UNK54]
                   5| GETTABUP R6, U1, K7 [80c04e0c]  -- [LOW-CONF GETTABUP]
                   6| UNK51 [60f83316]  -- [LOW-CONF UNK51]
                   7| SETTABLE R1, K4, R4 [00800422]  -- [LOW-CONF SETTABLE]
                   8| UNK44 [80406525]  -- [LOW-CONF UNK44]
                   9| if not R2 then -- TEST-ish  -- [LOW-CONF TEST]
                  10| jmp-ish [f0000024]  -- [LOW-CONF JMP]
                  11| R5 = _ENV["rawset"]
                  12| LOADK R21, K? [20982b04]  -- [LOW-CONF LOADK]
                  13| UNK51 [60e0680e]  -- [LOW-CONF UNK51]
                  14| R7 = {}
                  15| R0 = call R0(R1, R2, R3)
                  16| return
            end
