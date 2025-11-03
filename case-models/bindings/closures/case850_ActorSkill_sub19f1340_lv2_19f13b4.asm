// ===== case850_ActorSkill_sub19f1340_lv2_19f13b4 @ 019f13b4 (DecompileAt3: cleared stale instructions at entry) =====
019f13b4  stp x20,x19,[sp, #-0x20]!
019f13b8  stp x29,x30,[sp, #0x10]
019f13bc  add x29,sp,#0x10
019f13c0  ldp x8,x9,[x2]
019f13c4  mov x19,x0
019f13c8  add x0,x1,x9, ASR #0x1
019f13cc  tbz w9,#0x0,0x019f13d8
019f13d0  ldr x9,[x0]
019f13d4  ldr x8,[x9, x8, LSL #0x0]
019f13d8  blr x8
019f13dc  mov x8,x0
019f13e0  cbz x8,0x019f13fc
019f13e4  adrp x2,0x736d000
019f13e8  add x2,x2,#0xdb4
019f13ec  mov x0,x19
019f13f0  mov x1,x8
019f13f4  bl 0x0174cd64
019f13f8  b 0x019f1404
019f13fc  mov x0,x19
019f1400  bl 0x01252b00
019f1404  mov w19,#0x1
019f1408  ldp x29,x30,[sp, #0x10]
019f140c  mov w0,w19
019f1410  ldp x20,x19,[sp], #0x20
019f1414  ret
