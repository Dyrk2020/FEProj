// ===== case850_ActorSkill_sub19eb234 @ 019eb234 (DecompileAt3: cleared stale instructions at entry) =====
019eb234  stp x20,x19,[sp, #-0x20]!
019eb238  stp x29,x30,[sp, #0x10]
019eb23c  add x29,sp,#0x10
019eb240  adrp x19,0x7319000
019eb244  ldr x19,[x19, #0x548]
019eb248  add x0,x0,#0xf0
019eb24c  ldr x8,[x19]
019eb250  cbz x8,0x019eb268
019eb254  mov w2,wzr
019eb258  bl 0x019eec30
019eb25c  ldp x29,x30,[sp, #0x10]
019eb260  ldp x20,x19,[sp], #0x20
019eb264  ret
019eb268  str x30,[x19]
019eb26c  adrp x20,0x7317000
019eb270  ldr x20,[x20, #0xd28]
019eb274  mov w2,wzr
019eb278  strb wzr,[x20]
019eb27c  bl 0x019eec30
019eb280  strb wzr,[x20]
019eb284  str xzr,[x19]
019eb288  ldp x29,x30,[sp, #0x10]
019eb28c  ldp x20,x19,[sp], #0x20
019eb290  ret
