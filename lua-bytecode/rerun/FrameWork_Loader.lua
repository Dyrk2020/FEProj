-- Decompiled from <research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/FrameWork/Loader.res
-- source: @/Users/lgame_builder_smc179/devopsworkspace/HotFix_Android_RoW_ASTC_Release_7_2_M179/UnityProjRes/Unity_proj/LGameCI/ParallelBuild/../../Assets/StreamingAssets/Res/FETest/FrameWork/Loader.res
-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f
-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)

function <main>(...)
       0| R1 = _ENV['Loader']
       1| if not R0 then
       2| goto L3  -- JMP
       3| R0 = {}
       4| R4 = <function #0>  -- local loader starts here
       5| R0['reloadrequire'] = 'reloadrequire'
       6| R4 = <function #1>
       7| R0['loadrequire'] = 'reloadrequire'
       8| R4 = <function #2>
       9| R0['unloadrequire'] = 'reloadrequire'
      10| R4 = <function #3>
      11| R0['unloadall'] = 'reloadrequire'
      12| R4 = <function #4>
      13| R0['GC'] = 'reloadrequire'
      14| R4 = <function #5>
      15| R0['savetoglobal'] = 'reloadrequire'
      16| R4 = <function #6>
      17| R0 = <function #7>  -- local hookFunctionCalls starts here
      18| _ENV['hookAllFunctions'] = R1
      19| R0 = <function #0>
      20| SETTABUP K9, R1 [40001094]  -- [LOW-CONF SETTABUP]
      21| return
      22| return
end

    function <function_0>(...)
           0| R1 = _ENV['Loader']  -- local name starts here
           1| if R1 == 'reloadrequire' then -- EQ
           2| R0 = _ENV[R0]
           3| R1 = _ENV['loadrequire']
           4| R3 = _ENV['unloadrequire']
           5| nop
           6| nop
           7| goto L17  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
           8| R7 = _ENV['GC']  -- local k starts here  -- local v starts here
           9| R6 = R7['savetoglobal']
          10| MOVE R16, R7 [60e82126]  -- [LOW-CONF MOVE]
          11| GETTABUP R0, U0, K9 [81081204]  -- [LOW-CONF GETTABUP]
          12| R1 = call R1(R2, R3)
          13| if not R6 then
          14| goto L17  -- JMP
          15| R7 = _ENV['unloadrequire']
          16| R6 = R7['unloadall']
          17| BXOR [00e00e22]  -- [LOW-CONF BXOR]
          18| tforcall [c1011684]  -- [LOW-CONF TFORCALL]
          19| testset [0fe607fd]  -- [LOW-CONF TESTSET]
          20| R1 = _ENV['unhookAllFunctions']
          21| R3 = {}
          22| return R2(...)
          23| return
          24| return
    end

    function <function_1>(...)
           0| R1 = _ENV['Loader']  -- local name starts here
           1| R2 = {}
           2| return R2(...)
           3| return
           4| return
    end

    function <function_2>(...)
           0| R1 = _ENV['Loader']  -- local name starts here
           1| R3 = _ENV['reloadrequire']
           2| nop
           3| nop
           4| goto L14  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
           5| R7 = _ENV['unloadrequire']  -- local k starts here  -- local v starts here
           6| R6 = R7['unloadall']
           7| MOVE R18, R7 [60f02526]  -- [LOW-CONF MOVE]
           8| GETTABUP R1, U0, K15 [81381e04]  -- [LOW-CONF GETTABUP]
           9| R1 = call R1(R2, R3)
          10| if not R6 then
          11| goto L14  -- JMP
          12| R7 = _ENV['reloadrequire']
          13| R6 = R7['loadrequire']
          14| BXOR [00e00a22]  -- [LOW-CONF BXOR]
          15| tforcall [c1015604]  -- [LOW-CONF TFORCALL]
          16| testset [0fe607fd]  -- [LOW-CONF TESTSET]
          17| return
    end

    function <function_3>(...)
           0| R1 = _ENV['Loader']
           1| R1 = _ENV['reloadrequire']
           2| nop
           3| nop
           4| goto L7  -- JMP  -- local (for control) starts here  -- local (for generator) starts here  -- local (for state) starts here
           5| R5 = _ENV['reloadrequire']  -- local k starts here  -- local v starts here
           6| R5 = R5['loadrequire']
           7| BXOR [00a0071a]  -- [LOW-CONF BXOR]
           8| tforcall [c0016e84]  -- [LOW-CONF TFORCALL]
           9| testset [0bf407fd]  -- [LOW-CONF TESTSET]
          10| return
    end

    function <function_4>(...)
           0| R1 = _ENV['Loader']
           1| R2 = call R2()
           2| R0 = call R0(R1)
           3| return
    end

    function <function_5>(...)
           0| R3 = _ENV['Loader']  -- local name starts here  -- local value starts here
           1| R2['Loader'] = R1
           2| return
    end

    function <function_6>(...)
           0| R1 = _ENV['Loader']  -- local event starts here
           1| R1 = R1['reloadrequire']
           2| R2 = 'loadrequire'
           3| R3 = 'unloadrequire'
           4| BOR [e0000519]  -- [LOW-CONF BOR]
           5| if R1 == 'unloadall' then -- EQ  -- local info starts here
           6| R0 = _ENV[R0]
           7| R1 = R3['GC']
           8| if R2 == 'unloadall' then -- EQ
           9| R0 = _ENV[R0]
          10| R1 = R3['savetoglobal']
          11| if R2 == 'hookAllFunctions' then -- EQ
          12| R0 = _ENV[R0]
          13| R3 = _ENV['unhookAllFunctions']
          14| R2 = R3[K9]
          15| R3 = K10
          16| R1 = R5['savetoglobal']
          17| R1 = K11
          18| R1 = R7['GC']
          19| R3 = K12
          20| MOVE R13, R1 [81201a05]  -- [LOW-CONF MOVE]
          21| R1 = R1[K14]
          22| R1 = call R1(R2)
          23| R1 = K15
          24| MOVE R21, R3 [81786a05]  -- [LOW-CONF MOVE]
          25| R1 = R3..R3
          26| R0 = call R0(R1)
          27| return
    end

    function <function_7>(...)
           0| R1 = _ENV['Loader']
           1| R0 = R1['reloadrequire']
           2| R0['Loader'] = 'Loader'
           3| R2 = 'loadrequire'
           4| BOR [e0000219]  -- [LOW-CONF BOR]
           5| return
    end

    function <function_8>(...)
           0| R1 = _ENV['Loader']
           1| nop
           2| nop
           3| return
    end

