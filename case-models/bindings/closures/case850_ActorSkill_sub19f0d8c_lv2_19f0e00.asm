// ===== case850_ActorSkill_sub19f0d8c_lv2_19f0e00 @ 019f0e00 (DecompileAt3: cleared stale instructions at entry) =====
019f0e00  stp x20,x19,[sp, #-0x20]!
019f0e04  stp x29,x30,[sp, #0x10]
019f0e08  add x29,sp,#0x10
019f0e0c  ldp x8,x9,[x2]
019f0e10  mov x19,x0
019f0e14  add x0,x1,x9, ASR #0x1
019f0e18  tbz w9,#0x0,0x019f0e24
019f0e1c  ldr x9,[x0]
019f0e20  ldr x8,[x9, x8, LSL #0x0]
019f0e24  blr x8
019f0e28  mov x8,x0
019f0e2c  cbz x8,0x019f0e48
019f0e30  adrp x2,0x736d000
019f0e34  add x2,x2,#0xe35
019f0e38  mov x0,x19
019f0e3c  mov x1,x8
019f0e40  bl 0x0174cd64
019f0e44  b 0x019f0e50
019f0e48  mov x0,x19
019f0e4c  bl 0x01252b00
019f0e50  mov w19,#0x1
019f0e54  ldp x29,x30,[sp, #0x10]
019f0e58  mov w0,w19
019f0e5c  ldp x20,x19,[sp], #0x20
019f0e60  ret
