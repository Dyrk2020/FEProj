// ===== case850_ActorSkill_sub19f0fd4_lv2_19f1048 @ 019f1048 (DecompileAt3: cleared stale instructions at entry) =====
019f1048  stp x20,x19,[sp, #-0x20]!
019f104c  stp x29,x30,[sp, #0x10]
019f1050  add x29,sp,#0x10
019f1054  ldp x8,x9,[x2]
019f1058  mov x19,x0
019f105c  add x0,x1,x9, ASR #0x1
019f1060  tbz w9,#0x0,0x019f106c
019f1064  ldr x9,[x0]
019f1068  ldr x8,[x9, x8, LSL #0x0]
019f106c  blr x8
019f1070  mov x8,x0
019f1074  cbz x8,0x019f1090
019f1078  adrp x2,0x736d000
019f107c  add x2,x2,#0xdfe
019f1080  mov x0,x19
019f1084  mov x1,x8
019f1088  bl 0x0174cd64
019f108c  b 0x019f1098
019f1090  mov x0,x19
019f1094  bl 0x01252b00
019f1098  mov w19,#0x1
019f109c  ldp x29,x30,[sp, #0x10]
019f10a0  mov w0,w19
019f10a4  ldp x20,x19,[sp], #0x20
019f10a8  ret
