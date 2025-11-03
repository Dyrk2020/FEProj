// ===== case823_ActorBuff_sub19cf04c_lv2_19cf0c0 @ 019cf0c0 (DecompileAt3: cleared stale instructions at entry) =====
019cf0c0  stp x20,x19,[sp, #-0x20]!
019cf0c4  stp x29,x30,[sp, #0x10]
019cf0c8  add x29,sp,#0x10
019cf0cc  ldp x8,x9,[x2]
019cf0d0  mov x19,x0
019cf0d4  add x0,x1,x9, ASR #0x1
019cf0d8  tbz w9,#0x0,0x019cf0e4
019cf0dc  ldr x9,[x0]
019cf0e0  ldr x8,[x9, x8, LSL #0x0]
019cf0e4  blr x8
019cf0e8  mov x8,x0
019cf0ec  cbz x8,0x019cf108
019cf0f0  adrp x2,0x736d000
019cf0f4  add x2,x2,#0xb4d
019cf0f8  mov x0,x19
019cf0fc  mov x1,x8
019cf100  bl 0x0174cd64
019cf104  b 0x019cf110
019cf108  mov x0,x19
019cf10c  bl 0x01252b00
019cf110  mov w19,#0x1
019cf114  ldp x29,x30,[sp, #0x10]
019cf118  mov w0,w19
019cf11c  ldp x20,x19,[sp], #0x20
019cf120  ret
