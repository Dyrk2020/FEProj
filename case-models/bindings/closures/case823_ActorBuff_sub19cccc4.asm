// ===== case823_ActorBuff_sub19cccc4 @ 019cccc4 (DecompileAt3: cleared stale instructions at entry) =====
019cccc4  stp x20,x19,[sp, #-0x20]!
019cccc8  stp x29,x30,[sp, #0x10]
019ccccc  add x29,sp,#0x10
019cccd0  adrp x19,0x7319000
019cccd4  ldr x19,[x19, #0x548]
019cccd8  add x0,x0,#0xb8
019cccdc  ldr x8,[x19]
019ccce0  cbz x8,0x019cccf8
019ccce4  mov w2,wzr
019ccce8  bl 0x019cedc0
019cccec  ldp x29,x30,[sp, #0x10]
019cccf0  ldp x20,x19,[sp], #0x20
019cccf4  ret
019cccf8  str x30,[x19]
019cccfc  adrp x20,0x7317000
019ccd00  ldr x20,[x20, #0xd28]
019ccd04  mov w2,wzr
019ccd08  strb wzr,[x20]
019ccd0c  bl 0x019cedc0
019ccd10  strb wzr,[x20]
019ccd14  str xzr,[x19]
019ccd18  ldp x29,x30,[sp, #0x10]
019ccd1c  ldp x20,x19,[sp], #0x20
019ccd20  ret
