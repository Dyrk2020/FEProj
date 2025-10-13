-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/pprint.res (4373 bytes)
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/pprint.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f

-- proto#0 lines 0..0 np=0 va=1 ms=15 upvals=_ENV
function <main>(...)
       0| R1 = _ENV["type"]
       1| R1 = _ENV["tostring"]  -- local type starts here
       2| R3 = _ENV["table"]  -- local tostring starts here
       3| R2 = R3["insert"]
       4| R3 = _ENV["table"]  -- local tinsert starts here
       5| R3 = R3["sort"]
       6| R5 = _ENV["table"]  -- local tsort starts here
       7| UNK46 [c0a00a25]  -- [LOW-CONF UNK46]
       8| R4 = _ENV
       9| jmp-ish [f000000c]  -- [LOW-CONF JMP]
      10| R5 = _ENV["_G"]
      11| R4 = R5["unpack"]
      12| R5 = _ENV["table"]  -- local tunpack starts here
      13| R5 = R5["concat"]
      14| R7 = _ENV["string"]  -- local tconcat starts here
      15| R6 = R7["rep"]
      16| R7 = _ENV["string"]  -- local srep starts here
      17| R7 = R7["format"]
      18| R1 = _ENV["pairs"]  -- local sformat starts here
      19| R1 = _ENV["math"]  -- local pairs starts here
      20| R9 = R1["floor"]
      21| R3 = _ENV["require"]  -- local mfloor starts here
      22| forloop/jmp [80007e13]  -- [LOW-CONF FORLOOP]
      23| R1 = call R1(R2)
      24| R4 = {}  -- local queue_t starts here
      25| R0 = {}  -- local sortpairs starts here
      26| R4 = {}  -- local _pprint starts here
      27| R0 = {}  -- local walktable starts here
      28| return  -- local pprint starts here
      29| return
end

    -- proto#1 lines 14..26 np=1 va=0 ms=12 upvals=pairs,tinsert,tsort,tostring,tunpack
    function <function_0>(p0)
           0| R0 = {}  -- local t starts here
           1| R2[0] = R0  -- local sorted starts here  -- [LOW-CONF SETTABLE]
           2| UNK51 [60481306]  -- [LOW-CONF UNK51]
           3| UNK11 [60400811]  -- [LOW-CONF UNK11]
           4| jmp-ish [f0000034]  -- local (for control) starts here  -- [LOW-CONF JMP]
           5| R6[0] = R1  -- local v starts here  -- [LOW-CONF SETTABLE]
           6| UNK44 [8130640d]  -- [LOW-CONF UNK44]
           7| R0 = {}
           8| UNK51 [61584c2e]  -- [LOW-CONF UNK51]
           9| GETTABUP R3, U6, K18 [81606534]  -- [LOW-CONF GETTABUP]
          10| UNK27 [6008044b]  -- [LOW-CONF UNK27]
          11| R0 = call R0(R1, R2)
          12| UNK38 [c2011604]  -- [LOW-CONF UNK38]
          13| UNK40 [13ec07fd]  -- [LOW-CONF UNK40]
          14| R5[0] = R0  -- [LOW-CONF SETTABLE]
          15| UNK44 [8048510d]  -- [LOW-CONF UNK44]
          16| R0 = {}
          17| R0 = call R0(R1, R2)
          18| R2 = 0
          19| R4 = {}  -- local i starts here
          20| return
          21| return
    end

        -- proto#101 lines 17..17 np=2 va=0 ms=5 upvals=tostring
        function <function_0>(p0, p1)
               0| R4[1] = R0  -- local b starts here  -- [LOW-CONF SETTABLE]
               1| R0 = R3[1]
               2| R1 = call R1(R2)
               3| R6[1] = R0  -- [LOW-CONF SETTABLE]
               4| R1 = R5[1]
               5| R1 = call R1(R2)
               6| GETTABUP R0, U3, K1 [9200421c]  -- [LOW-CONF GETTABUP]
               7| jmp-ish [f0000004]  -- [LOW-CONF JMP]
               8| R1 = 1
               9| R0 = 1
              10| return
              11| return
        end

        -- proto#102 lines 19..25 np=0 va=0 ms=3 upvals=i,sorted,tunpack
        function <function_1>()
               0| R6[1] = R0  -- [LOW-CONF SETTABLE]
               1| UNK7 [e0000000]  -- [LOW-CONF UNK7]
               2| UNK29 [a0080013]  -- [LOW-CONF UNK29]
               3| R1[1] = R0  -- [LOW-CONF SETTABLE]
               4| R0 = _ENV[1]
               5| if not R0 then -- TEST-ish  -- local v starts here  -- [LOW-CONF TEST]
               6| jmp-ish [f000001c]  -- [LOW-CONF JMP]
               7| R5[1] = R0  -- [LOW-CONF SETTABLE]
               8| UNK44 [80786a05]  -- [LOW-CONF UNK44]
               9| UNK41 [20402005]  -- [LOW-CONF UNK41]
              10| return
              11| return
        end

    -- proto#2 lines 28..53 np=6 va=0 ms=19 upvals=type,tinsert,sformat,tostring,_ENV,sortpairs,srep,_pprint
    function <function_1>(p0, p1, p2, p3, p4, p5)
           0| R1["string"] = R1  -- local result starts here  -- [LOW-CONF SETTABLE]
           1| UNK51 [60d82b06]  -- [LOW-CONF UNK51]
           2| UNK11 [60c00411]  -- [LOW-CONF UNK11]
           3| UNK57 [20040037]  -- local tt starts here  -- [LOW-CONF UNK57]
           4| UNK29 [b000003b]  -- [LOW-CONF UNK29]
           5| R1["string"] = R1  -- [LOW-CONF SETTABLE]
           6| UNK44 [8128482d]  -- [LOW-CONF UNK44]
           7| R0["string"] = R2  -- [LOW-CONF SETTABLE]
           8| R6 = "%q"
           9| UNK51 [61485b06]  -- [LOW-CONF UNK51]
          10| UNK11 [61000119]  -- [LOW-CONF UNK11]
          11| R0 = call R0()
          12| jmp-ish [f00002bc]  -- [LOW-CONF JMP]
          13| UNK57 [20040437]  -- [LOW-CONF UNK57]
          14| UNK29 [b000027b]  -- [LOW-CONF UNK29]
          15| UNK46 [c0c00115]  -- [LOW-CONF UNK46]
          16| R6 = type
          17| jmp-ish [f0000054]  -- [LOW-CONF JMP]
          18| R3["string"] = R1  -- [LOW-CONF SETTABLE]
          19| UNK44 [8138042d]  -- [LOW-CONF UNK44]
          20| R4["string"] = R2  -- [LOW-CONF SETTABLE]
          21| R14 = "$(%s)"
          22| UNK46 [c140010d]  -- [LOW-CONF UNK46]
          23| R2 = type
          24| jmp-ish [f0000004]  -- [LOW-CONF JMP]
          25| R19 = "?"
          26| R0 = call R0(R1, R2)
          27| R0 = call R0()
          28| jmp-ish [f000023c]  -- [LOW-CONF JMP]
          29| R3["string"] = true
          30| R6["string"] = R1  -- [LOW-CONF SETTABLE]
          31| UNK44 [8138162d]  -- [LOW-CONF UNK44]
          32| R6["string"] = R2  -- [LOW-CONF SETTABLE]
          33| R26 = "{\n"
          34| R1["string"] = R2  -- [LOW-CONF SETTABLE]
          35| R5 = _ENV["k"]
          36| R0 = call R0(R1)
          37| R0 = call R0()
          38| R0 = call R0()
          39| R6["%q"] = R1  -- [LOW-CONF SETTABLE]
          40| UNK51 [61305a06]  -- [LOW-CONF UNK51]
          41| UNK11 [60c00911]  -- [LOW-CONF UNK11]
          42| jmp-ish [f000012c]  -- local (for control) starts here  -- [LOW-CONF JMP]
          43| R4["string"] = R3  -- local v starts here  -- [LOW-CONF SETTABLE]
          44| UNK51 [61806d56]  -- [LOW-CONF UNK51]
          45| UNK11 [61800411]  -- [LOW-CONF UNK11]
          46| UNK57 [20040067]  -- [LOW-CONF UNK57]
          47| UNK29 [b0000023]  -- [LOW-CONF UNK29]
          48| R5["string"] = R3  -- [LOW-CONF SETTABLE]
          49| R5 = "%q"
          50| UNK51 [61c84e56]  -- [LOW-CONF UNK51]
          51| UNK11 [61800419]  -- [LOW-CONF UNK11]
          52| UNK44 [81684065]  -- [LOW-CONF UNK44]
          53| R4["string"] = R3  -- [LOW-CONF SETTABLE]
          54| UNK44 [81983b2d]  -- [LOW-CONF UNK44]
          55| R2["%q"] = R3  -- [LOW-CONF SETTABLE]
          56| UNK44 [81f07f25]  -- [LOW-CONF UNK44]
          57| UNK7 [e000c108]  -- [LOW-CONF UNK7]
          58| R0 = call R0(R1, R2)
          59| R0 = call R0()
          60| R0["string"] = R3  -- [LOW-CONF SETTABLE]
          61| UNK44 [81b83d2d]  -- [LOW-CONF UNK44]
          62| R4["string"] = R3  -- [LOW-CONF SETTABLE]
          63| R39 = "[%s] = "
          64| R2["string"] = R0  -- [LOW-CONF SETTABLE]
          65| UNK51 [62301156]  -- [LOW-CONF UNK51]
          66| UNK11 [62000011]  -- [LOW-CONF UNK11]
          67| R0 = call R0()
          68| R0 = call R0()
          69| R7["%q"] = R3  -- [LOW-CONF SETTABLE]
          70| UNK51 [61a8175e]  -- [LOW-CONF UNK51]
          71| GETTABUP R6, U1, K21 [81d82a0c]  -- [LOW-CONF GETTABUP]
          72| UNK44 [81f02915]  -- [LOW-CONF UNK44]
          73| UNK7 [e000c108]  -- [LOW-CONF UNK7]
          74| UNK51 [62307926]  -- [LOW-CONF UNK51]
          75| R3 = _ENV[",\n"]
          76| R0 = call R0(R1, R2, R3, R4, R5, R6)
          77| R7["string"] = R3  -- [LOW-CONF SETTABLE]
          78| UNK44 [81a00b2d]  -- [LOW-CONF UNK44]
          79| R2 = ",\n"
          80| R1 = "string"
          81| UNK38 [c7013a84]  -- [LOW-CONF UNK38]
          82| UNK40 [07ae17fd]  -- [LOW-CONF UNK40]
          83| R1["string"] = R1  -- [LOW-CONF SETTABLE]
          84| UNK44 [8100762d]  -- [LOW-CONF UNK44]
          85| R5["%q"] = R2  -- [LOW-CONF SETTABLE]
          86| UNK51 [61785226]  -- [LOW-CONF UNK51]
          87| GETTABUP R3, U3, K28 [8170791c]  -- [LOW-CONF GETTABUP]
          88| R0 = call R0(R1, R2)
          89| R0 = call R0()
          90| R7["string"] = R1  -- [LOW-CONF SETTABLE]
          91| UNK44 [81106a2d]  -- [LOW-CONF UNK44]
          92| R1 = "}"
          93| R1 = "string"
          94| jmp-ish [f000002c]  -- [LOW-CONF JMP]
          95| R5["string"] = R1  -- [LOW-CONF SETTABLE]
          96| UNK44 [8128282d]  -- [LOW-CONF UNK44]
          97| R3["string"] = R2  -- [LOW-CONF SETTABLE]
          98| UNK51 [61605006]  -- [LOW-CONF UNK51]
          99| UNK11 [61000111]  -- [LOW-CONF UNK11]
         100| R0 = call R0()
         101| return
    end

    -- proto#3 lines 55..89 np=1 va=0 ms=19 upvals=queue_t,sortpairs,type,tostring,pairs,tinsert,mfloor,tconcat
    function <function_2>(p0)
           0| R0 = {}  -- local value starts here
           1| R3 = _ENV["new"]  -- local visited starts here
           2| R1 = call R1()
           3| UNK2 [40600310]  -- local que starts here  -- [LOW-CONF UNK2]
           4| UNK61 [a0800707]  -- [LOW-CONF UNK61]
           5| UNK59 [60840117]  -- [LOW-CONF UNK59]
           6| UNK49 [20a4091e]  -- [LOW-CONF UNK49]
           7| SETTABLE R5, K37, V6 [60a40d2d]  -- [LOW-CONF SETTABLE]
           8| R0 = call R0(R1, R2)
           9| UNK53 [a0600f16]  -- [LOW-CONF UNK53]
          10| R2["t"] = R1  -- [LOW-CONF SETTABLE]
          11| if not R2 then -- TEST-ish  -- [LOW-CONF TEST]
          12| jmp-ish [f00000fc]  -- [LOW-CONF JMP]
          13| UNK53 [a0601116]  -- [LOW-CONF UNK53]
          14| R2["t"] = R1  -- [LOW-CONF SETTABLE]
          15| R3 = R5["t"]  -- local v starts here
          16| UNK46 [c080080d]  -- [LOW-CONF UNK46]
          17| R4 = queue_t
          18| jmp-ish [f00000cc]  -- [LOW-CONF JMP]
          19| UNK46 [c0a0041d]  -- [LOW-CONF UNK46]
          20| UNK15 [e0000721]  -- [LOW-CONF UNK15]
          21| R5["new"] = R1  -- [LOW-CONF SETTABLE]
          22| R3 = R5["t"]
          23| R2 = call R2(R3)
          24| jmp-ish [f0000084]  -- local (for control) starts here  -- [LOW-CONF JMP]
          25| R4["new"] = R2  -- local subt starts here  -- [LOW-CONF SETTABLE]
          26| UNK51 [61482646]  -- [LOW-CONF UNK51]
          27| UNK11 [61000511]  -- [LOW-CONF UNK11]
          28| UNK57 [2004124f]  -- [LOW-CONF UNK57]
          29| UNK29 [b000005b]  -- [LOW-CONF UNK29]
          30| UNK46 [c100110d]  -- [LOW-CONF UNK46]
          31| R0 = U30
          32| jmp-ish [f0000044]  -- [LOW-CONF JMP]
          33| UNK2 [41200310]  -- [LOW-CONF UNK2]
          34| UNK61 [a1400707]  -- [LOW-CONF UNK61]
          35| UNK59 [61441117]  -- [LOW-CONF UNK59]
          36| UNK49 [2144071e]  -- [LOW-CONF UNK49]
          37| R0["new"] = R3  -- [LOW-CONF SETTABLE]
          38| UNK51 [6188333e]  -- [LOW-CONF UNK51]
          39| UNK11 [61800411]  -- [LOW-CONF UNK11]
          40| SETTABLE R2, K37, V12 [6144192d]  -- [LOW-CONF SETTABLE]
          41| R0 = call R0(R1, R2)
          42| UNK38 [c4017644]  -- [LOW-CONF UNK38]
          43| UNK40 [1bd807fd]  -- [LOW-CONF UNK40]
          44| jmp-ish [ec03fedc]  -- [LOW-CONF JMP]
          45| R0["push"] = R0  -- [LOW-CONF SETTABLE]
          46| UNK51 [60981c0e]  -- [LOW-CONF UNK51]
          47| UNK11 [60400911]  -- [LOW-CONF UNK11]
          48| jmp-ish [f00000ec]  -- local (for control) starts here  -- [LOW-CONF JMP]
          49| UNK44 [8108343d]  -- local v starts here  -- [LOW-CONF UNK44]
          50| R0 = {}  -- local cur starts here
          51| if not R0 then -- TEST-ish  -- local path starts here  -- [LOW-CONF TEST]
          52| jmp-ish [f000002c]  -- [LOW-CONF JMP]
          53| R0["push"] = R2  -- [LOW-CONF SETTABLE]
          54| UNK44 [8150154d]  -- [LOW-CONF UNK44]
          55| R8 = R5["k"]
          56| R0 = call R0(R1, R2)
          57| R8 = R1["p"]
          58| jmp-ish [ec03ffbc]  -- [LOW-CONF JMP]
          59| SETTABLE R7, K26, R2 [c9e008d2]  -- [LOW-CONF SETTABLE]
          60| R2["push"] = R2  -- local n starts here  -- [LOW-CONF SETTABLE]
          61| R0 = call R0(R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19)
          62| R1 = call R1(R2)
          63| UNK44 [81801e55]  -- local half starts here  -- [LOW-CONF UNK44]
          64| R45 = 1  -- local j starts here
          65| UNK44 [81d00a5d]  -- [LOW-CONF UNK44]
          66| R47 = 1
          67| R0 = {}  -- local (for step) starts here  -- [LOW-CONF NEWTABLE]
          68| R9 = R0["."]  -- local i starts here
          69| UNK46 [c240204d]  -- [LOW-CONF UNK46]
          70| UNK15 [e1002561]  -- [LOW-CONF UNK15]
          71| SETTABLE R0, K48, V17 [61002385]  -- [LOW-CONF SETTABLE]
          72| R0 = call R0(R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11)
          73| forloop/jmp [81afffcb]  -- [LOW-CONF FORLOOP]
          74| R3["push"] = R3  -- [LOW-CONF SETTABLE]
          75| UNK44 [81f82c4d]  -- [LOW-CONF UNK44]
          76| R3 = "."
          77| R2 = "new"
          78| SETTABLE R0, K38, V13 [60001b35]  -- [LOW-CONF SETTABLE]
          79| UNK38 [c3015804]  -- [LOW-CONF UNK38]
          80| UNK40 [17be07fd]  -- [LOW-CONF UNK40]
          81| return
          82| return
    end

    -- proto#4 lines 91..101 np=2 va=0 ms=11 upvals=type,walktable,_pprint,tconcat
    function <function_3>(p0, p1)
           0| if not R0 then -- TEST-ish  -- local ident starts here  -- [LOW-CONF TEST]
           1| jmp-ish [f0000004]  -- [LOW-CONF JMP]
           2| R1 = "	"
           3| R2 = {}
           4| R3["	"] = R0  -- local nametable starts here  -- [LOW-CONF SETTABLE]
           5| UNK51 [60806c06]  -- [LOW-CONF UNK51]
           6| UNK11 [60400511]  -- [LOW-CONF UNK11]
           7| UNK57 [2004021f]  -- [LOW-CONF UNK57]
           8| UNK29 [b000001b]  -- [LOW-CONF UNK29]
           9| R1["	"] = R0  -- [LOW-CONF SETTABLE]
          10| UNK51 [60a04406]  -- [LOW-CONF UNK51]
          11| UNK11 [60400511]  -- [LOW-CONF UNK11]
          12| UNK44 [8060761d]  -- [LOW-CONF UNK44]
          13| R2 = {}
          14| R1["	"] = R1  -- local result starts here  -- [LOW-CONF SETTABLE]
          15| UNK51 [60881906]  -- [LOW-CONF UNK51]
          16| GETTABUP R7, U2, K10 [80e05414]  -- [LOW-CONF GETTABUP]
          17| R6 = {}
          18| R8 = 0
          19| UNK51 [6118090e]  -- [LOW-CONF UNK51]
          20| GETTABUP R2, U3, K11 [8148561c]  -- [LOW-CONF GETTABUP]
          21| R0 = call R0(R1, R2, R3, R4, R5, R6)
          22| R1["	"] = R1  -- [LOW-CONF SETTABLE]
          23| UNK44 [80a03d1d]  -- [LOW-CONF UNK44]
          24| UNK41 [21002005]  -- [LOW-CONF UNK41]
          25| return
          26| return
    end
