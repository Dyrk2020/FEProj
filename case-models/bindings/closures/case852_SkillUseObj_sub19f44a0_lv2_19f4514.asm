// ===== case852_SkillUseObj_sub19f44a0_lv2_19f4514 @ 019f4514 (DecompileAt3: cleared stale instructions at entry) =====
019f4514  stp x20,x19,[sp, #-0x20]!
019f4518  stp x29,x30,[sp, #0x10]
019f451c  add x29,sp,#0x10
019f4520  ldp x8,x9,[x2]
019f4524  mov x19,x0
019f4528  add x0,x1,x9, ASR #0x1
019f452c  tbz w9,#0x0,0x019f4538
019f4530  ldr x9,[x0]
019f4534  ldr x8,[x9, x8, LSL #0x0]
019f4538  blr x8
019f453c  mov x8,x0
019f4540  cbz x8,0x019f455c
019f4544  adrp x2,0x736d000
019f4548  add x2,x2,#0xd46
019f454c  mov x0,x19
019f4550  mov x1,x8
019f4554  bl 0x0174cd64
019f4558  b 0x019f4564
019f455c  mov x0,x19
019f4560  bl 0x01252b00
019f4564  mov w19,#0x1
019f4568  ldp x29,x30,[sp, #0x10]
019f456c  mov w0,w19
019f4570  ldp x20,x19,[sp], #0x20
019f4574  ret
