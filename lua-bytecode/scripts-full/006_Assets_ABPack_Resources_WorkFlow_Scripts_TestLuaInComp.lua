-- Decompiled from 006_Assets_ABPack_Resources_WorkFlow_Scripts_TestLuaInComp
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/TestLuaInComp.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 11 code words, 6 consts
function <main>(...)
       0| [04152000] TAILCALL   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02100080] CONCAT   (main, u16-swap op)
       3| [00272004] EQ   (main, u16-swap op)
       4| [02180080] CONCAT   (main, u16-swap op)
       5| [00472004] EQ   (main, u16-swap op)
       6| [02200080] CONCAT   (main, u16-swap op)
       7| [00672004] EQ   (main, u16-swap op)
       8| [02280080] CONCAT   (main, u16-swap op)
       9| [30022004] SHL   (main, u16-swap op)
      10| [9002ec03] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_CLASS'
--   const[1] 'TestLuaInComp'
--   const[2] 'Awake'
--   const[3] 'Update'
--   const[4] 'Start'
--   const[5] 'Reset'
-- function keys (registration order): ['Awake', 'Update', 'Start', 'Reset']

-- tail: 266 bytes
-- nested hdr5: 01 79 00 20 00  (ld=1 ll=121 np=0 ms=32 va=0)
-- field4: 04 80 00 11  u32@+9: 32259 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = Awake: +0x0015..0x0025 (4 words)

function <nested_0:Awake>(...)
       0| GETTABUP R1, U0, K0 [e0200105]   [e0200105]
       1| R3 = call R3()   [20000c01]
       2| R0 = call R0(R1)   [40000315]
       3| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x002a [marker] b'print'
--   +0x0030 [tag04] b'PPLog TestLuaInComp Awake Run '
--   +0x005d [marker] b'self'
--   +0x00fd [marker] b'2}'
--   +0x0101 [marker] b'_ENV'