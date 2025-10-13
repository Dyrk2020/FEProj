-- Decompiled from 005_Assets_ABPack_Resources_WorkFlow_Scripts_SetBlockSize
-- source: @Unity_proj/LGameCI/ParallelBuild/../../Assets_TMP/ABPack/Resources/WorkFlow/Scripts/SetBlockSize.res
-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)

-- main proto: 5 code words, 3 consts
function <main>(...)
       0| [04150000] TESTSET   (main, u16-swap op)
       1| [00074000] GETTABLE   (main, u16-swap op)
       2| [02120080] BXOR   (main, u16-swap op)
       3| [88020004] BXOR   (main, u16-swap op)
       4| [9002ec02] RETURN   (main, u16-swap op)
end

-- constants (main):
--   const[0] 'NEW_ACTION'
--   const[1] 'SetBlockSize'
--   const[2] 'OnEnter'
-- function keys (registration order): ['OnEnter']

-- tail: 217 bytes
-- nested hdr5: 01 4d 00 10 00  (ld=1 ll=77 np=0 ms=16 va=0)
-- field4: 06 00 61 00  u32@+9: 8 [LOW-CONF]
-- nested code regions: 1 (plain-ROR29, RETURN-anchored)
--   proto #0 = OnEnter: +0x000e..0x0046 (14 words)

function <nested_0:OnEnter>(...)
       0| R1 = <closure P0> [0420000f]   [0420000f]
       1| goto +1 -- JMP   [f0005d0c]
       2| goto +1 -- JMP   [e020010c]
       3| if not R0 then   [00000c03]
       4| R0 = call R0(R1)   [40000315]
       5| GETTABLE R0, R1, K2 [a0200505]   [a0200505]
       6| if R1 == K3 then -- EQ   [2004060f]
       7| R0 = call R0()   [30000001]
       8| return   [f2028002]
       9| R7 = R2..R0   [02f00010]
      10| R1 = U1   [40200908]
      11| GETTABLE R0, R3, K5 [a0600b05]   [a0600b05]
      12| R0 = call R0(R1, R2)   [4000031d]
      13| return   [e2024802]
end

-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:
--   +0x004a [marker] b'print'
--   +0x0062 [tag04] b'targetActor'
--   +0x0070 [tag04] b'ZoomBlockSize'
--   +0x007f [tag04] b'scale'
--   +0x00a2 [marker] b'self'
--   +0x00d0 [marker] b'_ENV'