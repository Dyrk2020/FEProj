-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/queue.res (2626 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/queue.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=4 upvals=_ENV
function <main>(...)
       0| R0 = {}  -- [LOW-CONF NEWTABLE]
       1| R1 = {}  -- local queue starts here  -- [LOW-CONF NEWTABLE]
       2| R0 = <function #0>  -- local queue_mt starts here
       3| R1["push"] = R0
       4| R0 = <function #1>
       5| R1["isEmpty"] = R0
       6| R0 = <function #2>
       7| R1["peek"] = R0
       8| R0 = <function #3>
       9| R1["pop"] = R0
      10| R0 = <function #4>
      11| R1["size"] = R0
      12| R0 = <function #5>
      13| R1["pairs"] = R0
      14| R0 = <function #6>
      15| R1["clear"] = R0
      16| R0 = <function #7>
      17| R1["new"] = R0
      18| R0 = {}
      19| UNK51 [60781716]  -- local test starts here  -- [LOW-CONF UNK51]
      20| return
      21| return
      22| return
end

    -- proto#1 lines 4..8 np=2 va=0 ms=4
    function <function_0>(p0, p1)
           0| R0 = R3["tail"]  -- local v starts here
           1| UNK46 [c0600305]  -- local tail starts here  -- [LOW-CONF UNK46]
           2| UNK27 [60400313]  -- [LOW-CONF UNK27]
           3| UNK7 [e7008000]  -- [LOW-CONF UNK7]
           4| SETTABLE R0, K0, V3 [60040605]  -- [LOW-CONF SETTABLE]
           5| return
    end

    -- proto#2 lines 9..11 np=1 va=0 ms=3
    function <function_1>(p0)
           0| R0 = R1["head"]  -- local self starts here
           1| R0 = R3["tail"]
           2| UNK37 [a280020c]  -- [LOW-CONF UNK37]
           3| jmp-ish [f0000004]  -- [LOW-CONF JMP]
           4| R1 = "head"
           5| R0 = "head"
           6| return
           7| return
    end

    -- proto#3 lines 13..15 np=1 va=0 ms=3
    function <function_2>(p0)
           0| UNK58 [40200107]  -- local self starts here  -- [LOW-CONF UNK58]
           1| UNK59 [60600207]  -- [LOW-CONF UNK59]
           2| UNK49 [2000050e]  -- [LOW-CONF UNK49]
           3| return
           4| return
    end

    -- proto#4 lines 17..27 np=1 va=0 ms=4
    function <function_3>(p0)
           0| UNK53 [a0200106]  -- local self starts here  -- [LOW-CONF UNK53]
           1| UNK13 [a0000511]  -- [LOW-CONF UNK13]
           2| if not R0 then -- TEST-ish  -- [LOW-CONF TEST]
           3| jmp-ish [f000000c]  -- [LOW-CONF JMP]
           4| UNK31 [e0199003]  -- [LOW-CONF UNK31]
           5| return
           6| UNK58 [40200307]  -- [LOW-CONF UNK58]
           7| UNK59 [60600407]  -- [LOW-CONF UNK59]
           8| UNK49 [2000050e]  -- [LOW-CONF UNK49]
           9| R0 = R3["data"]  -- local v starts here
          10| UNK46 [c0600505]  -- [LOW-CONF UNK46]
          11| UNK27 [6060061b]  -- [LOW-CONF UNK27]
          12| R0 = R3["head"]
          13| UNK7 [e4008080]  -- [LOW-CONF UNK7]
          14| R0["head"] = "head"
          15| R0 = R3["head"]
          16| R0 = R3["tail"]
          17| UNK57 [20240617]  -- [LOW-CONF UNK57]
          18| R0 = call R0()
          19| R1["head"] = 1
          20| R1["tail"] = 1
          21| return
          22| return
    end

    -- proto#5 lines 29..31 np=1 va=0 ms=3
    function <function_4>(p0)
           0| R0 = R1["tail"]  -- local self starts here
           1| R0 = R3["head"]
           2| R0 = call R0()
           3| return
           4| return
    end

    -- proto#6 lines 33..43 np=1 va=0 ms=3
    function <function_5>(p0)
           0| R1 = 0  -- local self starts here
           1| R0 = {}  -- local i starts here
           2| return
           3| return
    end

        -- proto#601 lines 35..42 np=0 va=0 ms=3 upvals=self,i
        function <function_0>()
               0| R1 = _ENV["head"]
               1| R6["head"] = R0  -- [LOW-CONF SETTABLE]
               2| UNK7 [e0802000]  -- [LOW-CONF UNK7]
               3| R1 = _ENV["tail"]  -- local pos starts here
               4| UNK37 [a1800004]  -- [LOW-CONF UNK37]
               5| jmp-ish [f000000c]  -- [LOW-CONF JMP]
               6| UNK31 [e010a00b]  -- [LOW-CONF UNK31]
               7| return
               8| R0["head"] = R0  -- [LOW-CONF SETTABLE]
               9| UNK7 [e3004000]  -- [LOW-CONF UNK7]
              10| UNK29 [a11e200b]  -- [LOW-CONF UNK29]
              11| R5["head"] = R0  -- [LOW-CONF SETTABLE]
              12| R3 = _ENV["data"]
              13| R2 = R2["head"]
              14| return
              15| return
        end

    -- proto#7 lines 45..49 np=1 va=0 ms=2
    function <function_6>(p0)
           0| R1["head"] = 1  -- local self starts here
           1| R1["tail"] = 1
           2| R0 = {}  -- [LOW-CONF NEWTABLE]
           3| UNK63 [e004021f]  -- [LOW-CONF UNK63]
           4| return
    end

    -- proto#8 lines 51..58 np=0 va=0 ms=5 upvals=_ENV,queue_mt
    function <function_7>()
           0| R0 = {}  -- [LOW-CONF NEWTABLE]
           1| R1 = {}  -- [LOW-CONF NEWTABLE]
           2| R0["data"] = "head"
           3| R1["head"] = 1
           4| UNK55 [e024041e]  -- [LOW-CONF UNK55]
           5| R0 = R1["setmetatable"]  -- local I starts here
           6| UNK44 [80406405]  -- [LOW-CONF UNK44]
           7| R2 = {}
           8| R6["data"] = R1  -- [LOW-CONF SETTABLE]
           9| SETTABLE R2, K37, V4 [6044092d]  -- [LOW-CONF SETTABLE]
          10| UNK41 [20403005]  -- [LOW-CONF UNK41]
          11| return
          12| return
    end

    -- proto#9 lines 60..74 np=0 va=0 ms=9 upvals=queue,_ENV
    function <function_8>()
           0| R0 = 100000
           1| R1 = queue  -- local c starts here
           2| R1 = call R1()
           3| R10 = 1  -- local q starts here
           4| UNK44 [80403705]  -- [LOW-CONF UNK44]
           5| R8 = 1
           6| R0 = {}  -- local (for step) starts here  -- [LOW-CONF NEWTABLE]
           7| UNK54 [c0e0060e]  -- local i starts here  -- [LOW-CONF UNK54]
           8| GETTABUP R0, U5, K13 [81085a2c]  -- [LOW-CONF GETTABUP]
           9| R0 = call R0(R1, R2)
          10| forloop/jmp [804fffdb]  -- [LOW-CONF FORLOOP]
          11| R3 = _ENV["assert"]
          12| R1 = R3["tail"]
          13| R1 = R5["head"]
          14| R1 = call R1(R2, R3)
          15| UNK57 [2024011f]  -- [LOW-CONF UNK57]
          16| R0 = call R0()
          17| R1 = 100000
          18| R0 = 100000
          19| R0 = call R0(R1)
          20| R30 = 0
          21| UNK53 [a060110e]  -- local n starts here  -- [LOW-CONF UNK53]
          22| UNK13 [a0400511]  -- [LOW-CONF UNK13]
          23| if not R2 then -- TEST-ish  -- [LOW-CONF TEST]
          24| jmp-ish [f000004c]  -- [LOW-CONF JMP]
          25| UNK7 [e5008000]  -- [LOW-CONF UNK7]
          26| UNK48 [0060090e]  -- [LOW-CONF UNK48]
          27| UNK17 [20a0120a]  -- [LOW-CONF UNK17]
          28| R1 = call R1(R2)
          29| UNK57 [20240527]  -- [LOW-CONF UNK57]
          30| R0 = call R0()
          31| R1 = 100000
          32| R0 = 100000
          33| R0 = call R0(R1)
          34| jmp-ish [ec03ff8c]  -- [LOW-CONF JMP]
          35| R3 = _ENV["assert"]
          36| R1 = R5["tail"]
          37| R1 = R5["head"]
          38| R1 = call R1(R2, R3, R4)
          39| UNK57 [20040f27]  -- [LOW-CONF UNK57]
          40| R0 = call R0()
          41| R1 = 100000
          42| R0 = 100000
          43| R0 = call R0(R1)
          44| R3 = _ENV["assert"]
          45| UNK60 [80a0140f]  -- [LOW-CONF UNK60]
          46| UNK59 [60a0170f]  -- [LOW-CONF UNK59]
          47| UNK49 [20800416]  -- [LOW-CONF UNK49]
          48| SETTABLE R4, K28, R2 [a08448e2]  -- [LOW-CONF SETTABLE]
          49| R0 = call R0(R1)
          50| return
    end
