// ===== case850_ActorSkill_sub19eb094 @ 019eb094 (DecompileAt3: cleared stale instructions at entry) =====
019eb094  stp x20,x19,[sp, #-0x20]!
019eb098  stp x29,x30,[sp, #0x10]
019eb09c  add x29,sp,#0x10
019eb0a0  adrp x19,0x7319000
019eb0a4  ldr x19,[x19, #0x548]
019eb0a8  add x0,x0,#0xd0
019eb0ac  ldr x8,[x19]
019eb0b0  cbz x8,0x019eb0c8
019eb0b4  mov w2,wzr
019eb0b8  bl 0x019ee770
019eb0bc  ldp x29,x30,[sp, #0x10]
019eb0c0  ldp x20,x19,[sp], #0x20
019eb0c4  ret
019eb0c8  str x30,[x19]
019eb0cc  adrp x20,0x7317000
019eb0d0  ldr x20,[x20, #0xd28]
019eb0d4  mov w2,wzr
019eb0d8  strb wzr,[x20]
019eb0dc  bl 0x019ee770
019eb0e0  strb wzr,[x20]
019eb0e4  str xzr,[x19]
019eb0e8  ldp x29,x30,[sp, #0x10]
019eb0ec  ldp x20,x19,[sp], #0x20
019eb0f0  ret
