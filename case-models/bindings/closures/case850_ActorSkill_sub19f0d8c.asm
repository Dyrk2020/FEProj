// ===== case850_ActorSkill_sub19f0d8c @ 019f0d8c (DecompileAt3: cleared stale instructions at entry) =====
019f0d8c  stp x20,x19,[sp, #-0x20]!
019f0d90  stp x29,x30,[sp, #0x10]
019f0d94  add x29,sp,#0x10
019f0d98  mov w1,#0x1
019f0d9c  mov x19,x0
019f0da0  bl 0x0124ff50
019f0da4  cbz w0,0x019f0dd0
019f0da8  adrp x2,0x736d000
019f0dac  adrp x3,0x736d000
019f0db0  add x2,x2,#0x208
019f0db4  add x3,x3,#0x207
019f0db8  mov w1,#0x1
019f0dbc  mov w4,#0x1
019f0dc0  mov x0,x19
019f0dc4  bl 0x0174b938
019f0dc8  ldr x20,[x0, #0x8]
019f0dcc  b 0x019f0dd4
019f0dd0  mov x20,xzr
019f0dd4  mov w1,#0xb9d7
019f0dd8  movk w1,#0xfff0, LSL #16
019f0ddc  mov x0,x19
019f0de0  bl 0x0124e990
019f0de4  mov x2,x0
019f0de8  mov x0,x19
019f0dec  mov x1,x20
019f0df0  bl 0x019f0e00
019f0df4  ldp x29,x30,[sp, #0x10]
019f0df8  ldp x20,x19,[sp], #0x20
019f0dfc  ret
