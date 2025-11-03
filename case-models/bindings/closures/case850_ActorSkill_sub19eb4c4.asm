// ===== case850_ActorSkill_sub19eb4c4 @ 019eb4c4 (DecompileAt3: cleared stale instructions at entry) =====
019eb4c4  stp x20,x19,[sp, #-0x20]!
019eb4c8  stp x29,x30,[sp, #0x10]
019eb4cc  add x29,sp,#0x10
019eb4d0  adrp x19,0x7319000
019eb4d4  ldr x19,[x19, #0x548]
019eb4d8  add x0,x0,#0x130
019eb4dc  ldr x8,[x19]
019eb4e0  cbz x8,0x019eb4f8
019eb4e4  mov w2,wzr
019eb4e8  bl 0x019ef458
019eb4ec  ldp x29,x30,[sp, #0x10]
019eb4f0  ldp x20,x19,[sp], #0x20
019eb4f4  ret
019eb4f8  str x30,[x19]
019eb4fc  adrp x20,0x7317000
019eb500  ldr x20,[x20, #0xd28]
019eb504  mov w2,wzr
019eb508  strb wzr,[x20]
019eb50c  bl 0x019ef458
019eb510  strb wzr,[x20]
019eb514  str xzr,[x19]
019eb518  ldp x29,x30,[sp, #0x10]
019eb51c  ldp x20,x19,[sp], #0x20
019eb520  ret
