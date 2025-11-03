// ===== case850_ActorSkill_sub19f0eb0_lv2_19f0f24 @ 019f0f24 (DecompileAt3: cleared stale instructions at entry) =====
019f0f24  stp x20,x19,[sp, #-0x20]!
019f0f28  stp x29,x30,[sp, #0x10]
019f0f2c  add x29,sp,#0x10
019f0f30  ldp x8,x9,[x2]
019f0f34  mov x19,x0
019f0f38  add x0,x1,x9, ASR #0x1
019f0f3c  tbz w9,#0x0,0x019f0f48
019f0f40  ldr x9,[x0]
019f0f44  ldr x8,[x9, x8, LSL #0x0]
019f0f48  blr x8
019f0f4c  mov x8,x0
019f0f50  cbz x8,0x019f0f6c
019f0f54  adrp x2,0x736d000
019f0f58  add x2,x2,#0xe07
019f0f5c  mov x0,x19
019f0f60  mov x1,x8
019f0f64  bl 0x0174cd64
019f0f68  b 0x019f0f74
019f0f6c  mov x0,x19
019f0f70  bl 0x01252b00
019f0f74  mov w19,#0x1
019f0f78  ldp x29,x30,[sp, #0x10]
019f0f7c  mov w0,w19
019f0f80  ldp x20,x19,[sp], #0x20
019f0f84  ret
