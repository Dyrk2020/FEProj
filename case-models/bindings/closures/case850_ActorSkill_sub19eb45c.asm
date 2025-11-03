// ===== case850_ActorSkill_sub19eb45c @ 019eb45c (DecompileAt3: cleared stale instructions at entry) =====
019eb45c  stp x20,x19,[sp, #-0x20]!
019eb460  stp x29,x30,[sp, #0x10]
019eb464  add x29,sp,#0x10
019eb468  adrp x19,0x7319000
019eb46c  ldr x19,[x19, #0x548]
019eb470  add x0,x0,#0x128
019eb474  ldr x8,[x19]
019eb478  cbz x8,0x019eb490
019eb47c  mov w2,wzr
019eb480  bl 0x019ef2dc
019eb484  ldp x29,x30,[sp, #0x10]
019eb488  ldp x20,x19,[sp], #0x20
019eb48c  ret
019eb490  str x30,[x19]
019eb494  adrp x20,0x7317000
019eb498  ldr x20,[x20, #0xd28]
019eb49c  mov w2,wzr
019eb4a0  strb wzr,[x20]
019eb4a4  bl 0x019ef2dc
019eb4a8  strb wzr,[x20]
019eb4ac  str xzr,[x19]
019eb4b0  ldp x29,x30,[sp, #0x10]
019eb4b4  ldp x20,x19,[sp], #0x20
019eb4b8  ret
