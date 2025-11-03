// ===== case26_LuaFrameDataMgr_sub175c950 @ 0175c950 (DecompileAt3: cleared stale instructions at entry) =====
0175c950  stp x20,x19,[sp, #-0x20]!
0175c954  stp x29,x30,[sp, #0x10]
0175c958  add x29,sp,#0x10
0175c95c  mov w1,#0x1
0175c960  mov x19,x0
0175c964  bl 0x0124ff50
0175c968  cbz w0,0x0175c994
0175c96c  adrp x2,0x736d000
0175c970  adrp x3,0x736d000
0175c974  add x2,x2,#0x250
0175c978  add x3,x3,#0x24f
0175c97c  mov w1,#0x1
0175c980  mov w4,#0x1
0175c984  mov x0,x19
0175c988  bl 0x0174b938
0175c98c  ldr x20,[x0, #0x8]
0175c990  b 0x0175c998
0175c994  mov x20,xzr
0175c998  mov w1,#0xb9d7
0175c99c  movk w1,#0xfff0, LSL #16
0175c9a0  mov x0,x19
0175c9a4  bl 0x0124e990
0175c9a8  mov x2,x0
0175c9ac  mov x0,x19
0175c9b0  mov x1,x20
0175c9b4  bl 0x0175c9c4
0175c9b8  ldp x29,x30,[sp, #0x10]
0175c9bc  ldp x20,x19,[sp], #0x20
0175c9c0  ret
