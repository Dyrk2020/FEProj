-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/common/queue.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/common/queue.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R0 = {}
       1| forprep [80000100]  -- [LOW-CONF FORPREP]  -- local queue starts here
       2| R0 = <function #0>  -- local queue_mt starts here
       3| BXOR [00040502]  -- [LOW-CONF BXOR]
       4| R0 = <function #1>
       5| BXOR [0004050a]  -- [LOW-CONF BXOR]
       6| R0 = <function #2>
       7| BXOR [00040512]  -- [LOW-CONF BXOR]
       8| R0 = <function #3>
       9| BXOR [0004051a]  -- [LOW-CONF BXOR]
      10| R0 = <function #4>
      11| BXOR [00040522]  -- [LOW-CONF BXOR]
      12| R0 = <function #5>
      13| BXOR [0004052a]  -- [LOW-CONF BXOR]
      14| R0 = <function #6>
      15| BXOR [00040532]  -- [LOW-CONF BXOR]
      16| R0 = <function #7>
      17| BXOR [0004043a]  -- [LOW-CONF BXOR]
      18| R0 = <function #0>
      19| MOVE R11, R3 [60781716]  -- [LOW-CONF MOVE]  -- local test starts here
      20| return
      21| return
      22| return
end

    function <function_0>(...)
           0| R0 = R3['push']  -- local self starts here  -- local v starts here
           1| R0 = R3['isEmpty']  -- local tail starts here
           2| setlist [60400313]  -- [LOW-CONF SETLIST]
           3| ADD [e7008000]  -- [LOW-CONF ADD]
           4| R0['push'] = R3
           5| return
    end

    function <function_1>(...)
           0| R0 = R1['push']  -- local self starts here
           1| R0 = R3['isEmpty']
           2| le-ish [a280020c]  -- [LOW-CONF LE]
           3| goto L4  -- JMP
           4| R1 = 'push'
           5| R0 = 'push'
           6| return
           7| return
    end

    function <function_2>(...)
           0| R0 = R1['push']  -- local self starts here
           1| nop
           2| nop
           3| return
           4| return
    end

    function <function_3>(...)
           0| R2 = R0; R1 = R0['push']  -- local self starts here
           1| IDIV [a0000511]  -- [LOW-CONF IDIV]
           2| if not R0 then
           3| goto L5  -- JMP
           4| R0..R0 = nil
           5| return
           6| R0 = R1['isEmpty']
           7| nop
           8| nop
           9| R0 = R3['isEmpty']  -- local v starts here
          10| R0 = R3['peek']
          11| setlist [6060061b]  -- [LOW-CONF SETLIST]
          12| R0 = R3['peek']
          13| ADD [e4008080]  -- [LOW-CONF ADD]
          14| R0['peek'] = 'peek'
          15| R0 = R3['peek']
          16| R0 = R3['pairs']
          17| if R2 == 'pop' then -- EQ
          18| R0 = call R0()
          19| R1['peek'] = 'size'
          20| R1['pairs'] = 'size'
          21| return
          22| return
    end

    function <function_4>(...)
           0| R0 = R1['push']  -- local self starts here
           1| R0 = R3['isEmpty']
           2| R0 = call R0()
           3| return
           4| return
    end

    function <function_5>(...)
           0| R1 = 'push'  -- local self starts here
           1| R0 = <function #0>  -- local i starts here
           2| return
           3| return
    end

        function <function_0>(...)
               0| R1 = _ENV['push']
               1| R6['push'] = 'push'
               2| ADD [e0802000]  -- [LOW-CONF ADD]
               3| R1 = _ENV['isEmpty']  -- local pos starts here
               4| le-ish [a1800004]  -- [LOW-CONF LE]
               5| goto L7  -- JMP
               6| R0..R1 = nil
               7| return
               8| R0['push'] = 'push'
               9| ADD [e3004000]  -- [LOW-CONF ADD]
              10| U1 = R0
              11| R5['push'] = 'push'
              12| R3 = _ENV['pop']
              13| R2 = R2[R0]
              14| return
              15| return
        end

    function <function_6>(...)
           0| R1['push'] = 'isEmpty'  -- local self starts here
           1| R1['peek'] = 'isEmpty'
           2| R0 = {}
           3| nop
           4| return
    end

    function <function_7>(...)
           0| R0 = {}
           1| forprep [80000100]  -- [LOW-CONF FORPREP]
           2| R0['push'] = 'isEmpty'
           3| R1['isEmpty'] = 'peek'
           4| R3 = R1['peek']
           5| R0 = R1['size']  -- local I starts here
           6| MOVE R18, R2 [80406405]  -- [LOW-CONF MOVE]
           7| R2 = {}
           8| R6['push'] = 'peek'
           9| SETTABLE R2, K37, V4 [6044092d]  -- [LOW-CONF SETTABLE]
          10| return R2(...)
          11| return
          12| return
    end

    function <function_8>(...)
           0| R0 = 'push'
           1| if R0 == 'isEmpty' then -- EQ  -- local c starts here
           2| R1 = call R1()
           3| R2 = 'peek'  -- local q starts here
           4| MOVE R27, R2 [80403705]  -- [LOW-CONF MOVE]
           5| R0 = 'peek'
           6| forprep [80a00020]  -- [LOW-CONF FORPREP]  -- local (for index) starts here  -- local (for limit) starts here  -- local (for step) starts here
           7| R8 = R1; R7 = R1['pop']  -- local i starts here
           8| GETTABUP R0, U5, K13 [81085a2c]  -- [LOW-CONF GETTABUP]
           9| R0 = call R0(R1, R2)
          10| forloop [804fffdb]  -- [LOW-CONF FORLOOP]
          11| R3 = _ENV['size']
          12| R1 = R3['pairs']
          13| R1 = R5['clear']
          14| R1 = call R1(R2, R3)
          15| if R3 == 'push' then -- EQ
          16| R0 = call R0()
          17| R1 = 'push'
          18| R0 = 'push'
          19| R0 = call R0(R1)
          20| R2 = 'new'
          21| R4 = R1; R3 = R1[K8]  -- local n starts here
          22| IDIV [a0400511]  -- [LOW-CONF IDIV]
          23| if not R2 then
          24| goto L34  -- JMP
          25| ADD [e5008000]  -- [LOW-CONF ADD]
          26| R3 = _ENV['size']
          27| SHL [20a0120a]  -- [LOW-CONF SHL]
          28| R1 = call R1(R2)
          29| if R4 == 'peek' then -- EQ
          30| R0 = call R0()
          31| R1 = 'push'
          32| R0 = 'push'
          33| R0 = call R0(R1)
          34| goto L52  -- JMP
          35| R3 = _ENV['size']
          36| R1 = R5['pairs']
          37| R1 = R5['clear']
          38| R1 = call R1(R2, R3, R4)
          39| if R4 == 'new' then -- EQ
          40| R0 = call R0()
          41| R1 = 'push'
          42| R0 = 'push'
          43| R0 = call R0(R1)
          44| R3 = _ENV['size']
          45| R5 = _ENV[K10]
          46| nop
          47| nop
          48| R4 = not R28
          49| R0 = call R0(R1)
          50| return
    end

