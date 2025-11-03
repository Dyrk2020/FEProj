// ===== case850_ActorSkill_sub19f0c68 @ 019f0c68 (DecompileAt3: cleared stale instructions at entry) =====
019f0c68  stp x20,x19,[sp, #-0x20]!
019f0c6c  stp x29,x30,[sp, #0x10]
019f0c70  add x29,sp,#0x10
019f0c74  mov w1,#0x1
019f0c78  mov x19,x0
019f0c7c  bl 0x0124ff50
019f0c80  cbz w0,0x019f0cac
019f0c84  adrp x2,0x736d000
019f0c88  adrp x3,0x736d000
019f0c8c  add x2,x2,#0x208
019f0c90  add x3,x3,#0x207
019f0c94  mov w1,#0x1
019f0c98  mov w4,#0x1
019f0c9c  mov x0,x19
019f0ca0  bl 0x0174b938
019f0ca4  ldr x20,[x0, #0x8]
019f0ca8  b 0x019f0cb0
019f0cac  mov x20,xzr
019f0cb0  mov w1,#0xb9d7
019f0cb4  movk w1,#0xfff0, LSL #16
019f0cb8  mov x0,x19
019f0cbc  bl 0x0124e990
019f0cc0  mov x2,x0
019f0cc4  mov x0,x19
019f0cc8  mov x1,x20
019f0ccc  bl 0x019f0cdc
019f0cd0  ldp x29,x30,[sp, #0x10]
019f0cd4  ldp x20,x19,[sp], #0x20
019f0cd8  ret
