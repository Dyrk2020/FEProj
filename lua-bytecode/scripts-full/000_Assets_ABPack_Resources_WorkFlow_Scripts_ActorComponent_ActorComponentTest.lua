-- Decompiled from 000_Assets_ABPack_Resources_WorkFlow_Scripts_ActorComponent_ActorComponentTest
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/ActorComponent/ActorComponentTest.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 11 code words, 6 consts
function <main>(...)
       0| [04150000] TESTSET   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02100080] CONCAT   (main, u16-swap op)
       3| [00270004] CLOSURE   (main, u16-swap op)
       4| [02180080] CONCAT   (main, u16-swap op)
       5| [00470004] CLOSURE   (main, u16-swap op)
       6| [02200080] CONCAT   (main, u16-swap op)
       7| [00670004] CLOSURE   (main, u16-swap op)
       8| [02280080] CONCAT   (main, u16-swap op)
       9| [30020004] BXOR   (main, u16-swap op)
      10| [9002ec03] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_COMPONENT'
--   const[1] 'ActorComponentTest'
--   const[2] 'Awake'
--   const[3] 'Start'
--   const[4] 'Update'
--   const[5] 'Reset'
-- function keys (registration order): ['Awake', 'Start', 'Update', 'Reset']

-- tail: 279 bytes
-- nested hdr5: 01 82 00 20 00  (ld=1 ll=130 np=0 ms=32 va=0)
-- field4: 04 89 00 51  u32@+9: 7 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = Awake: +0x0016..0x0026 (4 words)

function <nested_0:Awake>(...)
       0| GETTABUP R1, U0, K0 [e0200105]   [e0200105]
       1| R3 = call R3()   [00000c01]
       2| R0 = call R0(R1)   [40000315]
       3| return   [f2028002]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x002b [marker] b'print'
--   +0x0031 [tag04] b'PPLog ActorComponentTest OnEnter() '
--   +0x0066 [marker] b'self'
--   +0x010e [marker] b'_ENV'