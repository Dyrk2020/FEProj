// ===== case26_LuaFrameDataMgr_sub175ca74 @ 0175ca74 (DecompileAt3: cleared stale instructions at entry) =====
0175ca74  stp x20,x19,[sp, #-0x20]!
0175ca78  stp x29,x30,[sp, #0x10]
0175ca7c  add x29,sp,#0x10
0175ca80  mov w1,#0x1
0175ca84  mov x19,x0
0175ca88  bl 0x0124ff50
0175ca8c  cbz w0,0x0175cab8
0175ca90  adrp x2,0x736d000
0175ca94  adrp x3,0x736d000
0175ca98  add x2,x2,#0x250
0175ca9c  add x3,x3,#0x24f
0175caa0  mov w1,#0x1
0175caa4  mov w4,#0x1
0175caa8  mov x0,x19
0175caac  bl 0x0174b938
0175cab0  ldr x20,[x0, #0x8]
0175cab4  b 0x0175cabc
0175cab8  mov x20,xzr
0175cabc  mov w1,#0xb9d7
0175cac0  movk w1,#0xfff0, LSL #16
0175cac4  mov x0,x19
0175cac8  bl 0x0124e990
0175cacc  mov x2,x0
0175cad0  mov x0,x19
0175cad4  mov x1,x20
0175cad8  bl 0x0175cae8
0175cadc  ldp x29,x30,[sp, #0x10]
0175cae0  ldp x20,x19,[sp], #0x20
0175cae4  ret
