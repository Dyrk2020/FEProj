// ===== case850_ActorSkill_sub19eb164 @ 019eb164 (DecompileAt3: cleared stale instructions at entry) =====
019eb164  stp x20,x19,[sp, #-0x20]!
019eb168  stp x29,x30,[sp, #0x10]
019eb16c  add x29,sp,#0x10
019eb170  adrp x19,0x7319000
019eb174  ldr x19,[x19, #0x548]
019eb178  add x0,x0,#0xe0
019eb17c  ldr x8,[x19]
019eb180  cbz x8,0x019eb198
019eb184  mov w2,wzr
019eb188  bl 0x019ee9d0
019eb18c  ldp x29,x30,[sp, #0x10]
019eb190  ldp x20,x19,[sp], #0x20
019eb194  ret
019eb198  str x30,[x19]
019eb19c  adrp x20,0x7317000
019eb1a0  ldr x20,[x20, #0xd28]
019eb1a4  mov w2,wzr
019eb1a8  strb wzr,[x20]
019eb1ac  bl 0x019ee9d0
019eb1b0  strb wzr,[x20]
019eb1b4  str xzr,[x19]
019eb1b8  ldp x29,x30,[sp, #0x10]
019eb1bc  ldp x20,x19,[sp], #0x20
019eb1c0  ret
