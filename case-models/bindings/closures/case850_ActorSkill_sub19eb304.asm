// ===== case850_ActorSkill_sub19eb304 @ 019eb304 (DecompileAt3: cleared stale instructions at entry) =====
019eb304  stp x20,x19,[sp, #-0x20]!
019eb308  stp x29,x30,[sp, #0x10]
019eb30c  add x29,sp,#0x10
019eb310  adrp x19,0x7319000
019eb314  ldr x19,[x19, #0x548]
019eb318  add x0,x0,#0x100
019eb31c  ldr x8,[x19]
019eb320  cbz x8,0x019eb338
019eb324  mov w2,wzr
019eb328  bl 0x019eee90
019eb32c  ldp x29,x30,[sp, #0x10]
019eb330  ldp x20,x19,[sp], #0x20
019eb334  ret
019eb338  str x30,[x19]
019eb33c  adrp x20,0x7317000
019eb340  ldr x20,[x20, #0xd28]
019eb344  mov w2,wzr
019eb348  strb wzr,[x20]
019eb34c  bl 0x019eee90
019eb350  strb wzr,[x20]
019eb354  str xzr,[x19]
019eb358  ldp x29,x30,[sp, #0x10]
019eb35c  ldp x20,x19,[sp], #0x20
019eb360  ret
