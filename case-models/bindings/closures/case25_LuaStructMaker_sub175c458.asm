// ===== case25_LuaStructMaker_sub175c458 @ 0175c458 (DecompileAt3: cleared stale instructions at entry) =====
0175c458  stp x20,x19,[sp, #-0x20]!
0175c45c  stp x29,x30,[sp, #0x10]
0175c460  add x29,sp,#0x10
0175c464  mov w1,#0x1
0175c468  mov x19,x0
0175c46c  bl 0x0124ff50
0175c470  cbz w0,0x0175c49c
0175c474  adrp x2,0x736d000
0175c478  adrp x3,0x736d000
0175c47c  add x2,x2,#0x24c
0175c480  add x3,x3,#0x24b
0175c484  mov w1,#0x1
0175c488  mov w4,#0x1
0175c48c  mov x0,x19
0175c490  bl 0x0174b938
0175c494  ldr x20,[x0, #0x8]
0175c498  b 0x0175c4a0
0175c49c  mov x20,xzr
0175c4a0  mov w1,#0xb9d7
0175c4a4  movk w1,#0xfff0, LSL #16
0175c4a8  mov x0,x19
0175c4ac  bl 0x0124e990
0175c4b0  mov x2,x0
0175c4b4  mov x0,x19
0175c4b8  mov x1,x20
0175c4bc  bl 0x0175c4cc
0175c4c0  ldp x29,x30,[sp, #0x10]
0175c4c4  ldp x20,x19,[sp], #0x20
0175c4c8  ret
