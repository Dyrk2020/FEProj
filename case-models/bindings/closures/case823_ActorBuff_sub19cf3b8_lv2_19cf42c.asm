// ===== case823_ActorBuff_sub19cf3b8_lv2_19cf42c @ 019cf42c (DecompileAt3: cleared stale instructions at entry) =====
019cf42c  stp x20,x19,[sp, #-0x20]!
019cf430  stp x29,x30,[sp, #0x10]
019cf434  add x29,sp,#0x10
019cf438  ldp x8,x9,[x2]
019cf43c  mov x19,x0
019cf440  add x0,x1,x9, ASR #0x1
019cf444  tbz w9,#0x0,0x019cf450
019cf448  ldr x9,[x0]
019cf44c  ldr x8,[x9, x8, LSL #0x0]
019cf450  blr x8
019cf454  mov x8,x0
019cf458  cbz x8,0x019cf474
019cf45c  adrp x2,0x736d000
019cf460  add x2,x2,#0x213
019cf464  mov x0,x19
019cf468  mov x1,x8
019cf46c  bl 0x0174cd64
019cf470  b 0x019cf47c
019cf474  mov x0,x19
019cf478  bl 0x01252b00
019cf47c  mov w19,#0x1
019cf480  ldp x29,x30,[sp, #0x10]
019cf484  mov w0,w19
019cf488  ldp x20,x19,[sp], #0x20
019cf48c  ret
