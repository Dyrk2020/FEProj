// ===== case805_SkillResObject_sub19bc784 @ 019bc784 (DecompileAt3: cleared stale instructions at entry) =====
019bc784  stp x20,x19,[sp, #-0x20]!
019bc788  stp x29,x30,[sp, #0x10]
019bc78c  add x29,sp,#0x10
019bc790  mov w1,#0x1
019bc794  mov x19,x0
019bc798  bl 0x0124ff50
019bc79c  cbz w0,0x019bc7c8
019bc7a0  adrp x2,0x736d000
019bc7a4  adrp x3,0x736d000
019bc7a8  add x2,x2,#0x2c2
019bc7ac  add x3,x3,#0x2c1
019bc7b0  mov w1,#0x1
019bc7b4  mov w4,#0x1
019bc7b8  mov x0,x19
019bc7bc  bl 0x0174b938
019bc7c0  ldr x20,[x0, #0x8]
019bc7c4  b 0x019bc7cc
019bc7c8  mov x20,xzr
019bc7cc  mov w1,#0xb9d7
019bc7d0  movk w1,#0xfff0, LSL #16
019bc7d4  mov x0,x19
019bc7d8  bl 0x0124e990
019bc7dc  mov x2,x0
019bc7e0  mov x0,x19
019bc7e4  mov x1,x20
019bc7e8  bl 0x019bc7f8
019bc7ec  ldp x29,x30,[sp, #0x10]
019bc7f0  ldp x20,x19,[sp], #0x20
019bc7f4  ret
