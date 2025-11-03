// ===== case850_ActorSkill_sub19eb0fc @ 019eb0fc (DecompileAt3: cleared stale instructions at entry) =====
019eb0fc  stp x20,x19,[sp, #-0x20]!
019eb100  stp x29,x30,[sp, #0x10]
019eb104  add x29,sp,#0x10
019eb108  adrp x19,0x7319000
019eb10c  ldr x19,[x19, #0x548]
019eb110  add x0,x0,#0xd8
019eb114  ldr x8,[x19]
019eb118  cbz x8,0x019eb130
019eb11c  mov w2,wzr
019eb120  bl 0x019ee868
019eb124  ldp x29,x30,[sp, #0x10]
019eb128  ldp x20,x19,[sp], #0x20
019eb12c  ret
019eb130  str x30,[x19]
019eb134  adrp x20,0x7317000
019eb138  ldr x20,[x20, #0xd28]
019eb13c  mov w2,wzr
019eb140  strb wzr,[x20]
019eb144  bl 0x019ee868
019eb148  strb wzr,[x20]
019eb14c  str xzr,[x19]
019eb150  ldp x29,x30,[sp, #0x10]
019eb154  ldp x20,x19,[sp], #0x20
019eb158  ret
