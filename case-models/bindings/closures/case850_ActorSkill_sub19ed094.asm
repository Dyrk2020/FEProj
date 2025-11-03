// ===== case850_ActorSkill_sub19ed094 @ 019ed094 (DecompileAt3: cleared stale instructions at entry) =====
019ed094  stp x20,x19,[sp, #-0x20]!
019ed098  stp x29,x30,[sp, #0x10]
019ed09c  add x29,sp,#0x10
019ed0a0  mov w1,#0x1
019ed0a4  mov x19,x0
019ed0a8  bl 0x0124ff50
019ed0ac  cbz w0,0x019ed0d8
019ed0b0  adrp x2,0x736d000
019ed0b4  adrp x3,0x736d000
019ed0b8  add x2,x2,#0x208
019ed0bc  add x3,x3,#0x207
019ed0c0  mov w1,#0x1
019ed0c4  mov w4,#0x1
019ed0c8  mov x0,x19
019ed0cc  bl 0x0174b938
019ed0d0  ldr x20,[x0, #0x8]
019ed0d4  b 0x019ed0dc
019ed0d8  mov x20,xzr
019ed0dc  mov w1,#0xb9d7
019ed0e0  movk w1,#0xfff0, LSL #16
019ed0e4  mov x0,x19
019ed0e8  bl 0x0124e990
019ed0ec  mov x2,x0
019ed0f0  mov x0,x19
019ed0f4  mov x1,x20
019ed0f8  bl 0x019ed108
019ed0fc  ldp x29,x30,[sp, #0x10]
019ed100  ldp x20,x19,[sp], #0x20
019ed104  ret
