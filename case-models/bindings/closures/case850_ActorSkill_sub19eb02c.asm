// ===== case850_ActorSkill_sub19eb02c @ 019eb02c (DecompileAt3: cleared stale instructions at entry) =====
019eb02c  stp x20,x19,[sp, #-0x20]!
019eb030  stp x29,x30,[sp, #0x10]
019eb034  add x29,sp,#0x10
019eb038  adrp x19,0x7319000
019eb03c  ldr x19,[x19, #0x548]
019eb040  add x0,x0,#0xc8
019eb044  ldr x8,[x19]
019eb048  cbz x8,0x019eb060
019eb04c  mov w2,wzr
019eb050  bl 0x019ee608
019eb054  ldp x29,x30,[sp, #0x10]
019eb058  ldp x20,x19,[sp], #0x20
019eb05c  ret
019eb060  str x30,[x19]
019eb064  adrp x20,0x7317000
019eb068  ldr x20,[x20, #0xd28]
019eb06c  mov w2,wzr
019eb070  strb wzr,[x20]
019eb074  bl 0x019ee608
019eb078  strb wzr,[x20]
019eb07c  str xzr,[x19]
019eb080  ldp x29,x30,[sp, #0x10]
019eb084  ldp x20,x19,[sp], #0x20
019eb088  ret
