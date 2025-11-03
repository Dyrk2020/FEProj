// ===== case850_ActorSkill_sub19f0c68_lv2_19f0cdc @ 019f0cdc (DecompileAt3: cleared stale instructions at entry) =====
019f0cdc  stp x20,x19,[sp, #-0x20]!
019f0ce0  stp x29,x30,[sp, #0x10]
019f0ce4  add x29,sp,#0x10
019f0ce8  ldp x8,x9,[x2]
019f0cec  mov x19,x0
019f0cf0  add x0,x1,x9, ASR #0x1
019f0cf4  tbz w9,#0x0,0x019f0d00
019f0cf8  ldr x9,[x0]
019f0cfc  ldr x8,[x9, x8, LSL #0x0]
019f0d00  blr x8
019f0d04  mov x8,x0
019f0d08  cbz x8,0x019f0d24
019f0d0c  adrp x2,0x736d000
019f0d10  add x2,x2,#0xe3e
019f0d14  mov x0,x19
019f0d18  mov x1,x8
019f0d1c  bl 0x0174cd64
019f0d20  b 0x019f0d2c
019f0d24  mov x0,x19
019f0d28  bl 0x01252b00
019f0d2c  mov w19,#0x1
019f0d30  ldp x29,x30,[sp, #0x10]
019f0d34  mov w0,w19
019f0d38  ldp x20,x19,[sp], #0x20
019f0d3c  ret
