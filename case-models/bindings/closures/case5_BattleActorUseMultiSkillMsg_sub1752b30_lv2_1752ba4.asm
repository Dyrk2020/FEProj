// ===== case5_BattleActorUseMultiSkillMsg_sub1752b30_lv2_1752ba4 @ 01752ba4 (DecompileAt3: cleared stale instructions at entry) =====
01752ba4  stp x20,x19,[sp, #-0x20]!
01752ba8  stp x29,x30,[sp, #0x10]
01752bac  add x29,sp,#0x10
01752bb0  ldp x8,x9,[x2]
01752bb4  mov x19,x0
01752bb8  add x0,x1,x9, ASR #0x1
01752bbc  tbz w9,#0x0,0x01752bc8
01752bc0  ldr x9,[x0]
01752bc4  ldr x8,[x9, x8, LSL #0x0]
01752bc8  blr x8
01752bcc  mov x8,x0
01752bd0  cbz x8,0x01752bec
01752bd4  adrp x2,0x736d000
01752bd8  add x2,x2,#0x207
01752bdc  mov x0,x19
01752be0  mov x1,x8
01752be4  bl 0x0174cd64
01752be8  b 0x01752bf4
01752bec  mov x0,x19
01752bf0  bl 0x01252b00
01752bf4  mov w19,#0x1
01752bf8  ldp x29,x30,[sp, #0x10]
01752bfc  mov w0,w19
01752c00  ldp x20,x19,[sp], #0x20
01752c04  ret
