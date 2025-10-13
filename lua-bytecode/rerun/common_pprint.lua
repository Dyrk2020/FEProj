-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/pprint.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/pprint.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['type']
       1| R1 = _ENV['tostring']  -- local type starts here
       2| R3 = _ENV['table']  -- local tostring starts here
       3| R2 = R3['insert']
       4| R3 = _ENV['table']  -- local tinsert starts here
       5| R3 = R3['sort']
       6| R5 = _ENV['table']  -- local tsort starts here
       7| R4 = R5['unpack']
       8| if R0 == 'tostring' then -- EQ
       9| goto L11  -- JMP
      10| R5 = _ENV['_G']
      11| R4 = R5['unpack']
      12| R5 = _ENV['table']  -- local tunpack starts here
      13| R5 = R5['concat']
      14| R7 = _ENV['string']  -- local tconcat starts here
      15| R6 = R7['rep']
      16| R7 = _ENV['string']  -- local srep starts here
      17| R7 = R7['format']
      18| R1 = _ENV['pairs']  -- local sformat starts here
      19| R1 = _ENV['math']  -- local pairs starts here
      20| R9 = R1['floor']
      21| R3 = _ENV['require']  -- local mfloor starts here
      22| forloop [80007e13]  -- [LOW-CONF FORLOOP]
      23| R1 = call R1(R2)
      24| R4 = <function #0>  -- local queue_t starts here
      25| R0 = <function #1>  -- local sortpairs starts here
      26| R4 = <function #2>  -- local _pprint starts here
      27| R0 = <function #3>  -- local walktable starts here
      28| return  -- local pprint starts here
      29| return
end

    function <function_0>(...)
           0| R0 = {}  -- local t starts here
           1| R2['type'] = 'type'  -- local sorted starts here
           2| R9 = R2
           3| POW [60400811]  -- [LOW-CONF POW]
           4| goto L11  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
           5| R6['type'] = R2  -- local k starts here  -- local v starts here
           6| MOVE R18, R1 [8130640d]  -- [LOW-CONF MOVE]
           7| R0 = {}
           8| R6 = R2
           9| GETTABUP R3, U6, K18 [81606534]  -- [LOW-CONF GETTABUP]
          10| setlist [6008044b]  -- [LOW-CONF SETLIST]
          11| R0 = call R0(R1, R2)
          12| tforcall [c2011604]  -- [LOW-CONF TFORCALL]
          13| testset [13ec07fd]  -- [LOW-CONF TESTSET]
          14| R5['type'] = 'type'
          15| R8 = R2
          16| R0 = <function #0>
          17| R0 = call R0(R1, R2)
          18| R2 = 'type'
          19| R4 = <function #1>  -- local i starts here
          20| return
          21| return
    end

        function <function_0>(...)
               0| R4['type'] = 'type'  -- local a starts here  -- local b starts here
               1| R0 = R3['type']
               2| R1 = call R1(R2)
               3| R6['type'] = 'type'
               4| R1 = R5['type']
               5| R1 = call R1(R2)
               6| R0 = _ENV[R1]
               7| goto L8  -- JMP
               8| R1 = 'type'
               9| R0 = 'type'
              10| return
              11| return
        end

        function <function_1>(...)
               0| R6['type'] = 'type'
               1| ADD [e0000000]  -- [LOW-CONF ADD]
               2| U2 = R0
               3| R1['type'] = 'type'
               4| R0 = _ENV[R0]
               5| if not R0 then  -- local v starts here
               6| goto L10  -- JMP
               7| R5['type'] = 'type'
               8| MOVE R21, R3 [80786a05]  -- [LOW-CONF MOVE]
               9| return R2(...)
              10| return
              11| return
        end

    function <function_1>(...)
           0| R1['type'] = 'table'  -- local ident starts here  -- local identCh starts here  -- local nameTable starts here  -- local result starts here  -- local value starts here  -- local visited starts here
           1| MOVE R21, R6 [60d82b06]  -- [LOW-CONF MOVE]
           2| POW [60c00411]  -- [LOW-CONF POW]
           3| if R6 == 'type' then -- EQ  -- local tt starts here
           4| U7 = R0
           5| R1['type'] = 'table'
           6| R4 = R1
           7| R0['type'] = 'sort'
           8| R2 = 'tostring'
           9| R13 = R2
          10| POW [61000119]  -- [LOW-CONF POW]
          11| R0 = call R0()
          12| goto L36  -- JMP
          13| if R6 == 'table' then -- EQ
          14| U15 = R0
          15| R2 = R6[R0]
          16| if R0 == 'type' then -- EQ
          17| goto L28  -- JMP
          18| R3['type'] = 'table'
          19| R2 = R1
          20| R4['type'] = 'sort'
          21| R2 = 'insert'
          22| R1 = R2[R0]
          23| if R0 == 'tostring' then -- EQ
          24| goto L25  -- JMP
          25| R3 = 'sort'
          26| R0 = call R0(R1, R2)
          27| R0 = call R0()
          28| goto L36  -- JMP
          29| R3['type'] = 'unpack'
          30| R6['type'] = 'table'
          31| R11 = R1
          32| R6['type'] = 'sort'
          33| R2 = '_G'
          34| R1['type'] = 'sort'
          35| R5 = _ENV['concat']
          36| R0 = call R0(R1)
          37| R0 = call R0()
          38| R0 = call R0()
          39| R6['tostring'] = 'table'
          40| R13 = R1
          41| POW [60c00911]  -- [LOW-CONF POW]
          42| goto L48  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
          43| R4['type'] = '_G'  -- local k starts here  -- local v starts here
          44| MOVE R22, R4 [61806d56]  -- [LOW-CONF MOVE]
          45| POW [61800411]  -- [LOW-CONF POW]
          46| if R12 == 'type' then -- EQ
          47| U4 = R0
          48| R5['type'] = '_G'
          49| R1 = 'tostring'
          50| R7 = R6
          51| POW [61800419]  -- [LOW-CONF POW]
          52| R0 = R3
          53| R4['type'] = '_G'
          54| MOVE R29, R4 [81983b2d]  -- [LOW-CONF MOVE]
          55| R2['tostring'] = '_G'
          56| MOVE R31, R7 [81f07f25]  -- [LOW-CONF MOVE]
          57| ADD [e000c108]  -- [LOW-CONF ADD]
          58| R0 = call R0(R1, R2)
          59| R0 = call R0()
          60| R0['type'] = '_G'
          61| MOVE R30, R5 [81b83d2d]  -- [LOW-CONF MOVE]
          62| R4['type'] = '_G'
          63| R3 = 'rep'
          64| R2['type'] = 'string'
          65| R8 = R1
          66| POW [62000011]  -- [LOW-CONF POW]
          67| R0 = call R0()
          68| R0 = call R0()
          69| R7['tostring'] = '_G'
          70| R11 = R5
          71| GETTABUP R6, U1, K21 [81d82a0c]  -- [LOW-CONF GETTABUP]
          72| MOVE R20, R7 [81f02915]  -- [LOW-CONF MOVE]
          73| ADD [e000c108]  -- [LOW-CONF ADD]
          74| MOVE R28, R1 [62307926]  -- [LOW-CONF MOVE]
          75| R3 = _ENV['format']
          76| R0 = call R0(R1, R2, R3, R4, R5, R6)
          77| R7['type'] = '_G'
          78| R5 = R5
          79| R2 = 'format'
          80| R1 = 'type'
          81| tforcall [c7013a84]  -- [LOW-CONF TFORCALL]
          82| testset [07ae17fd]  -- [LOW-CONF TESTSET]
          83| R1['type'] = 'table'
          84| MOVE R27, R0 [8100762d]  -- [LOW-CONF MOVE]
          85| R5['tostring'] = 'sort'
          86| R9 = R3
          87| GETTABUP R3, U3, K28 [8170791c]  -- [LOW-CONF GETTABUP]
          88| R0 = call R0(R1, R2)
          89| R0 = call R0()
          90| R7['type'] = 'table'
          91| MOVE R21, R0 [81106a2d]  -- [LOW-CONF MOVE]
          92| R1 = 'pairs'
          93| R1 = 'type'
          94| goto L100  -- JMP
          95| R5['type'] = 'table'
          96| MOVE R20, R1 [8128282d]  -- [LOW-CONF MOVE]
          97| R3['type'] = 'sort'
          98| R8 = R3
          99| POW [61000111]  -- [LOW-CONF POW]
         100| R0 = call R0()
         101| return
    end

    function <function_2>(...)
           0| R0 = {}  -- local value starts here
           1| R3 = _ENV['type']  -- local visited starts here
           2| R1 = call R1()
           3| R3 = type  -- local que starts here
           4| R4 = {}
           5| nop
           6| nop
           7| SETTABLE R5, K37, V6 [60a40d2d]  -- [LOW-CONF SETTABLE]
           8| R0 = call R0(R1, R2)
           9| R4 = R2; R3 = R2['concat']
          10| SETTABLE R2, K34, V2 [20400510]  -- [LOW-CONF SETTABLE]
          11| if not R2 then
          12| goto L44  -- JMP
          13| R4 = R2; R3 = R2['string']
          14| SETTABLE R2, K34, V2 [20400510]  -- [LOW-CONF SETTABLE]
          15| R3 = R5['table']  -- local v starts here
          16| R1 = R4[R4]
          17| if R0 == 'tostring' then -- EQ
          18| goto L44  -- JMP
          19| R3 = R5['table']
          20| BOR [e0000721]  -- [LOW-CONF BOR]
          21| R5['type'] = 'table'
          22| R3 = R5['table']
          23| R2 = call R2(R3)
          24| goto L41  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
          25| R4['type'] = 'sort'  -- local k starts here  -- local subt starts here
          26| MOVE R19, R2 [61482646]  -- [LOW-CONF MOVE]
          27| POW [61000511]  -- [LOW-CONF POW]
          28| if R9 == 'rep' then -- EQ
          29| U11 = R0
          30| R1 = R0[R8]
          31| if R30 == 'tostring' then -- EQ
          32| goto L41  -- JMP
          33| R1 = type
          34| R2 = {}
          35| nop
          36| nop
          37| R0['type'] = '_G'
          38| MOVE R25, R4 [6188333e]  -- [LOW-CONF MOVE]
          39| POW [61800411]  -- [LOW-CONF POW]
          40| SETTABLE R2, K37, V12 [6144192d]  -- [LOW-CONF SETTABLE]
          41| R0 = call R0(R1, R2)
          42| tforcall [c4017644]  -- [LOW-CONF TFORCALL]
          43| testset [1bd807fd]  -- [LOW-CONF TESTSET]
          44| goto L72  -- JMP
          45| R0['tostring'] = 'type'
          46| R14 = R4
          47| POW [60400911]  -- [LOW-CONF POW]
          48| goto L78  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
          49| MOVE R26, R0 [8108343d]  -- [LOW-CONF MOVE]  -- local k starts here  -- local v starts here
          50| R0 = {}  -- local cur starts here
          51| if not R0 then  -- local path starts here
          52| goto L58  -- JMP
          53| R0['tostring'] = 'sort'
          54| R10 = R2
          55| R8 = R5['unpack']
          56| R0 = call R0(R1, R2)
          57| R8 = R1['insert']
          58| goto L82  -- JMP
          59| R7 = #R26
          60| R2['tostring'] = 'sort'  -- local n starts here
          61| R0 = call R0(R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19)
          62| R1 = call R1(R2)
          63| R15 = R4  -- local half starts here
          64| R1 = 'pairs'  -- local j starts here
          65| R5 = R6
          66| R3 = 'pairs'
          67| forprep [83600040]  -- [LOW-CONF FORPREP]  -- local (for index) starts here  -- local (for limit) starts here  -- local (for step) starts here
          68| R9 = R0[R12]  -- local i starts here
          69| R9 = R2[R16]
          70| BOR [e1002561]  -- [LOW-CONF BOR]
          71| SETTABLE R0, K48, V17 [61002385]  -- [LOW-CONF SETTABLE]
          72| R0 = call R0(R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11)
          73| forloop [81afffcb]  -- [LOW-CONF FORLOOP]
          74| R3['tostring'] = '_G'
          75| MOVE R22, R7 [81f82c4d]  -- [LOW-CONF MOVE]
          76| R3 = 'math'
          77| R2 = 'type'
          78| SETTABLE R0, K38, V13 [60001b35]  -- [LOW-CONF SETTABLE]
          79| tforcall [c3015804]  -- [LOW-CONF TFORCALL]
          80| testset [17be07fd]  -- [LOW-CONF TESTSET]
          81| return
          82| return
    end

    function <function_3>(...)
           0| if not R0 then  -- local ident starts here  -- local value starts here
           1| goto L2  -- JMP
           2| R1 = 'type'
           3| R2 = {}
           4| R3['type'] = 'type'  -- local nametable starts here
           5| MOVE R22, R4 [60806c06]  -- [LOW-CONF MOVE]
           6| POW [60400511]  -- [LOW-CONF POW]
           7| if R3 == 'tostring' then -- EQ
           8| U3 = R0
           9| R1['type'] = 'type'
          10| R2 = R5
          11| POW [60400511]  -- [LOW-CONF POW]
          12| MOVE R27, R3 [8060761d]  -- [LOW-CONF MOVE]
          13| R2 = {}
          14| R1['type'] = 'table'  -- local result starts here
          15| MOVE R12, R4 [60881906]  -- [LOW-CONF MOVE]
          16| GETTABUP R7, U2, K10 [80e05414]  -- [LOW-CONF GETTABUP]
          17| R6 = {}
          18| R0 = 'table'
          19| R4 = R0
          20| GETTABUP R2, U3, K11 [8148561c]  -- [LOW-CONF GETTABUP]
          21| R0 = call R0(R1, R2, R3, R4, R5, R6)
          22| R1['type'] = 'table'
          23| MOVE R30, R5 [80a03d1d]  -- [LOW-CONF MOVE]
          24| return R0(...)
          25| return
          26| return
    end

