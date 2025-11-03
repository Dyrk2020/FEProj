// ===== case850_ActorSkill_sub19eb1cc @ 019eb1cc (DecompileAt3: cleared stale instructions at entry) =====
019eb1cc  stp x20,x19,[sp, #-0x20]!
019eb1d0  stp x29,x30,[sp, #0x10]
019eb1d4  add x29,sp,#0x10
019eb1d8  adrp x19,0x7319000
019eb1dc  ldr x19,[x19, #0x548]
019eb1e0  add x0,x0,#0xe8
019eb1e4  ldr x8,[x19]
019eb1e8  cbz x8,0x019eb200
019eb1ec  mov w2,wzr
019eb1f0  bl 0x019eeb38
019eb1f4  ldp x29,x30,[sp, #0x10]
019eb1f8  ldp x20,x19,[sp], #0x20
019eb1fc  ret
019eb200  str x30,[x19]
019eb204  adrp x20,0x7317000
019eb208  ldr x20,[x20, #0xd28]
019eb20c  mov w2,wzr
019eb210  strb wzr,[x20]
019eb214  bl 0x019eeb38
019eb218  strb wzr,[x20]
019eb21c  str xzr,[x19]
019eb220  ldp x29,x30,[sp, #0x10]
019eb224  ldp x20,x19,[sp], #0x20
019eb228  ret
