// ===== case823_ActorBuff_sub19cce3c @ 019cce3c (DecompileAt3: cleared stale instructions at entry) =====
019cce3c  stp x20,x19,[sp, #-0x20]!
019cce40  stp x29,x30,[sp, #0x10]
019cce44  add x29,sp,#0x10
019cce48  adrp x19,0x7319000
019cce4c  ldr x19,[x19, #0x548]
019cce50  add x0,x0,#0x218
019cce54  ldr x8,[x19]
019cce58  cbz x8,0x019cce70
019cce5c  mov w2,wzr
019cce60  bl 0x019cf758
019cce64  ldp x29,x30,[sp, #0x10]
019cce68  ldp x20,x19,[sp], #0x20
019cce6c  ret
019cce70  str x30,[x19]
019cce74  adrp x20,0x7317000
019cce78  ldr x20,[x20, #0xd28]
019cce7c  mov w2,wzr
019cce80  strb wzr,[x20]
019cce84  bl 0x019cf758
019cce88  strb wzr,[x20]
019cce8c  str xzr,[x19]
019cce90  ldp x29,x30,[sp, #0x10]
019cce94  ldp x20,x19,[sp], #0x20
019cce98  ret
