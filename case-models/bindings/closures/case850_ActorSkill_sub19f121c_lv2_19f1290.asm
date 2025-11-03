// ===== case850_ActorSkill_sub19f121c_lv2_19f1290 @ 019f1290 (DecompileAt3: cleared stale instructions at entry) =====
019f1290  stp x20,x19,[sp, #-0x20]!
019f1294  stp x29,x30,[sp, #0x10]
019f1298  add x29,sp,#0x10
019f129c  ldp x8,x9,[x2]
019f12a0  mov x19,x0
019f12a4  add x0,x1,x9, ASR #0x1
019f12a8  tbz w9,#0x0,0x019f12b4
019f12ac  ldr x9,[x0]
019f12b0  ldr x8,[x9, x8, LSL #0x0]
019f12b4  blr x8
019f12b8  mov x8,x0
019f12bc  cbz x8,0x019f12d8
019f12c0  adrp x2,0x736d000
019f12c4  add x2,x2,#0x22d
019f12c8  mov x0,x19
019f12cc  mov x1,x8
019f12d0  bl 0x0174cd64
019f12d4  b 0x019f12e0
019f12d8  mov x0,x19
019f12dc  bl 0x01252b00
019f12e0  mov w19,#0x1
019f12e4  ldp x29,x30,[sp, #0x10]
019f12e8  mov w0,w19
019f12ec  ldp x20,x19,[sp], #0x20
019f12f0  ret
