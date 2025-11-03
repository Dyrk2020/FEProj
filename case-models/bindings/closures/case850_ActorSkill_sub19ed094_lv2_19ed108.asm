// ===== case850_ActorSkill_sub19ed094_lv2_19ed108 @ 019ed108 (DecompileAt3: cleared stale instructions at entry) =====
019ed108  stp x20,x19,[sp, #-0x20]!
019ed10c  stp x29,x30,[sp, #0x10]
019ed110  add x29,sp,#0x10
019ed114  ldp x8,x9,[x2]
019ed118  mov x19,x0
019ed11c  add x0,x1,x9, ASR #0x1
019ed120  tbz w9,#0x0,0x019ed12c
019ed124  ldr x9,[x0]
019ed128  ldr x8,[x9, x8, LSL #0x0]
019ed12c  blr x8
019ed130  mov x8,x0
019ed134  cbz x8,0x019ed150
019ed138  adrp x2,0x736d000
019ed13c  add x2,x2,#0xe42
019ed140  mov x0,x19
019ed144  mov x1,x8
019ed148  bl 0x0174cd64
019ed14c  b 0x019ed158
019ed150  mov x0,x19
019ed154  bl 0x01252b00
019ed158  mov w19,#0x1
019ed15c  ldp x29,x30,[sp, #0x10]
019ed160  mov w0,w19
019ed164  ldp x20,x19,[sp], #0x20
019ed168  ret
