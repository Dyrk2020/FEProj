// ===== case850_ActorSkill_sub19eb36c @ 019eb36c (DecompileAt3: cleared stale instructions at entry) =====
019eb36c  stp x20,x19,[sp, #-0x20]!
019eb370  stp x29,x30,[sp, #0x10]
019eb374  add x29,sp,#0x10
019eb378  adrp x19,0x7319000
019eb37c  ldr x19,[x19, #0x548]
019eb380  add x0,x0,#0x108
019eb384  ldr x8,[x19]
019eb388  cbz x8,0x019eb3a0
019eb38c  mov w2,wzr
019eb390  bl 0x019eeff8
019eb394  ldp x29,x30,[sp, #0x10]
019eb398  ldp x20,x19,[sp], #0x20
019eb39c  ret
019eb3a0  str x30,[x19]
019eb3a4  adrp x20,0x7317000
019eb3a8  ldr x20,[x20, #0xd28]
019eb3ac  mov w2,wzr
019eb3b0  strb wzr,[x20]
019eb3b4  bl 0x019eeff8
019eb3b8  strb wzr,[x20]
019eb3bc  str xzr,[x19]
019eb3c0  ldp x29,x30,[sp, #0x10]
019eb3c4  ldp x20,x19,[sp], #0x20
019eb3c8  ret
