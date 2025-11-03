// ===== case850_ActorSkill_sub19f10f8_lv2_19f116c @ 019f116c (DecompileAt3: cleared stale instructions at entry) =====
019f116c  stp x20,x19,[sp, #-0x20]!
019f1170  stp x29,x30,[sp, #0x10]
019f1174  add x29,sp,#0x10
019f1178  ldp x8,x9,[x2]
019f117c  mov x19,x0
019f1180  add x0,x1,x9, ASR #0x1
019f1184  tbz w9,#0x0,0x019f1190
019f1188  ldr x9,[x0]
019f118c  ldr x8,[x9, x8, LSL #0x0]
019f1190  blr x8
019f1194  mov x8,x0
019f1198  cbz x8,0x019f11b4
019f119c  adrp x2,0x736d000
019f11a0  add x2,x2,#0xb4d
019f11a4  mov x0,x19
019f11a8  mov x1,x8
019f11ac  bl 0x0174cd64
019f11b0  b 0x019f11bc
019f11b4  mov x0,x19
019f11b8  bl 0x01252b00
019f11bc  mov w19,#0x1
019f11c0  ldp x29,x30,[sp, #0x10]
019f11c4  mov w0,w19
019f11c8  ldp x20,x19,[sp], #0x20
019f11cc  ret
