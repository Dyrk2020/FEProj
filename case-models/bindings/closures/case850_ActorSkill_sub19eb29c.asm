// ===== case850_ActorSkill_sub19eb29c @ 019eb29c (DecompileAt3: cleared stale instructions at entry) =====
019eb29c  stp x20,x19,[sp, #-0x20]!
019eb2a0  stp x29,x30,[sp, #0x10]
019eb2a4  add x29,sp,#0x10
019eb2a8  adrp x19,0x7319000
019eb2ac  ldr x19,[x19, #0x548]
019eb2b0  add x0,x0,#0xf8
019eb2b4  ldr x8,[x19]
019eb2b8  cbz x8,0x019eb2d0
019eb2bc  mov w2,wzr
019eb2c0  bl 0x019eed28
019eb2c4  ldp x29,x30,[sp, #0x10]
019eb2c8  ldp x20,x19,[sp], #0x20
019eb2cc  ret
019eb2d0  str x30,[x19]
019eb2d4  adrp x20,0x7317000
019eb2d8  ldr x20,[x20, #0xd28]
019eb2dc  mov w2,wzr
019eb2e0  strb wzr,[x20]
019eb2e4  bl 0x019eed28
019eb2e8  strb wzr,[x20]
019eb2ec  str xzr,[x19]
019eb2f0  ldp x29,x30,[sp, #0x10]
019eb2f4  ldp x20,x19,[sp], #0x20
019eb2f8  ret
