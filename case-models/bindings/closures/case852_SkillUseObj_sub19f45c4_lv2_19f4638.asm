// ===== case852_SkillUseObj_sub19f45c4_lv2_19f4638 @ 019f4638 (DecompileAt3: cleared stale instructions at entry) =====
019f4638  stp x20,x19,[sp, #-0x20]!
019f463c  stp x29,x30,[sp, #0x10]
019f4640  add x29,sp,#0x10
019f4644  ldp x8,x9,[x2]
019f4648  mov x19,x0
019f464c  add x0,x1,x9, ASR #0x1
019f4650  tbz w9,#0x0,0x019f465c
019f4654  ldr x9,[x0]
019f4658  ldr x8,[x9, x8, LSL #0x0]
019f465c  blr x8
019f4660  mov x8,x0
019f4664  cbz x8,0x019f4680
019f4668  adrp x2,0x736d000
019f466c  add x2,x2,#0x22d
019f4670  mov x0,x19
019f4674  mov x1,x8
019f4678  bl 0x0174cd64
019f467c  b 0x019f4688
019f4680  mov x0,x19
019f4684  bl 0x01252b00
019f4688  mov w19,#0x1
019f468c  ldp x29,x30,[sp, #0x10]
019f4690  mov w0,w19
019f4694  ldp x20,x19,[sp], #0x20
019f4698  ret
