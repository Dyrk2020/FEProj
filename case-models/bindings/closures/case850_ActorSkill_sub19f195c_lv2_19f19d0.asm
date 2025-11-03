// ===== case850_ActorSkill_sub19f195c_lv2_19f19d0 @ 019f19d0 (DecompileAt3: cleared stale instructions at entry) =====
019f19d0  stp x20,x19,[sp, #-0x20]!
019f19d4  stp x29,x30,[sp, #0x10]
019f19d8  add x29,sp,#0x10
019f19dc  ldp x8,x9,[x2]
019f19e0  mov x19,x0
019f19e4  add x0,x1,x9, ASR #0x1
019f19e8  tbz w9,#0x0,0x019f19f4
019f19ec  ldr x9,[x0]
019f19f0  ldr x8,[x9, x8, LSL #0x0]
019f19f4  blr x8
019f19f8  mov x8,x0
019f19fc  cbz x8,0x019f1a18
019f1a00  adrp x2,0x736d000
019f1a04  add x2,x2,#0x7ae
019f1a08  mov x0,x19
019f1a0c  mov x1,x8
019f1a10  bl 0x0174cd64
019f1a14  b 0x019f1a20
019f1a18  mov x0,x19
019f1a1c  bl 0x01252b00
019f1a20  mov w19,#0x1
019f1a24  ldp x29,x30,[sp, #0x10]
019f1a28  mov w0,w19
019f1a2c  ldp x20,x19,[sp], #0x20
019f1a30  ret
