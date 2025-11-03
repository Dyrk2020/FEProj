// ===== case850_ActorSkill_sub19eb3e4 @ 019eb3e4 (DecompileAt3: cleared stale instructions at entry) =====
019eb3e4  stp x20,x19,[sp, #-0x20]!
019eb3e8  stp x29,x30,[sp, #0x10]
019eb3ec  add x29,sp,#0x10
019eb3f0  adrp x19,0x7319000
019eb3f4  ldr x19,[x19, #0x548]
019eb3f8  add x0,x0,#0x118
019eb3fc  ldr x8,[x19]
019eb400  cbz x8,0x019eb418
019eb404  mov w2,wzr
019eb408  bl 0x019ef160
019eb40c  ldp x29,x30,[sp, #0x10]
019eb410  ldp x20,x19,[sp], #0x20
019eb414  ret
019eb418  str x30,[x19]
019eb41c  adrp x20,0x7317000
019eb420  ldr x20,[x20, #0xd28]
019eb424  mov w2,wzr
019eb428  strb wzr,[x20]
019eb42c  bl 0x019ef160
019eb430  strb wzr,[x20]
019eb434  str xzr,[x19]
019eb438  ldp x29,x30,[sp, #0x10]
019eb43c  ldp x20,x19,[sp], #0x20
019eb440  ret
