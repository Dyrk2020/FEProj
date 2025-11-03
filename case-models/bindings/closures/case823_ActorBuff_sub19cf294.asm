// ===== case823_ActorBuff_sub19cf294 @ 019cf294 (DecompileAt3: cleared stale instructions at entry) =====
019cf294  stp x20,x19,[sp, #-0x20]!
019cf298  stp x29,x30,[sp, #0x10]
019cf29c  add x29,sp,#0x10
019cf2a0  mov w1,#0x1
019cf2a4  mov x19,x0
019cf2a8  bl 0x0124ff50
019cf2ac  cbz w0,0x019cf2d8
019cf2b0  adrp x2,0x736d000
019cf2b4  adrp x3,0x736d000
019cf2b8  add x2,x2,#0x899
019cf2bc  add x3,x3,#0x898
019cf2c0  mov w1,#0x1
019cf2c4  mov w4,#0x1
019cf2c8  mov x0,x19
019cf2cc  bl 0x0174b938
019cf2d0  ldr x20,[x0, #0x8]
019cf2d4  b 0x019cf2dc
019cf2d8  mov x20,xzr
019cf2dc  mov w1,#0xb9d7
019cf2e0  movk w1,#0xfff0, LSL #16
019cf2e4  mov x0,x19
019cf2e8  bl 0x0124e990
019cf2ec  mov x2,x0
019cf2f0  mov x0,x19
019cf2f4  mov x1,x20
019cf2f8  bl 0x019cf308
019cf2fc  ldp x29,x30,[sp, #0x10]
019cf300  ldp x20,x19,[sp], #0x20
019cf304  ret
