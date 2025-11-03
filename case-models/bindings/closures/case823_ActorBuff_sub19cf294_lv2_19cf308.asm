// ===== case823_ActorBuff_sub19cf294_lv2_19cf308 @ 019cf308 (DecompileAt3: cleared stale instructions at entry) =====
019cf308  stp x20,x19,[sp, #-0x20]!
019cf30c  stp x29,x30,[sp, #0x10]
019cf310  add x29,sp,#0x10
019cf314  ldp x8,x9,[x2]
019cf318  mov x19,x0
019cf31c  add x0,x1,x9, ASR #0x1
019cf320  tbz w9,#0x0,0x019cf32c
019cf324  ldr x9,[x0]
019cf328  ldr x8,[x9, x8, LSL #0x0]
019cf32c  blr x8
019cf330  mov x8,x0
019cf334  cbz x8,0x019cf350
019cf338  adrp x2,0x736d000
019cf33c  add x2,x2,#0xdef
019cf340  mov x0,x19
019cf344  mov x1,x8
019cf348  bl 0x0174cd64
019cf34c  b 0x019cf358
019cf350  mov x0,x19
019cf354  bl 0x01252b00
019cf358  mov w19,#0x1
019cf35c  ldp x29,x30,[sp, #0x10]
019cf360  mov w0,w19
019cf364  ldp x20,x19,[sp], #0x20
019cf368  ret
