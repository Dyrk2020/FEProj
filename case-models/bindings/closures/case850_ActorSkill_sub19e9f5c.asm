// ===== case850_ActorSkill_sub19e9f5c @ 019e9f5c (DecompileAt3: cleared stale instructions at entry) =====
019e9f5c  stp x20,x19,[sp, #-0x20]!
019e9f60  stp x29,x30,[sp, #0x10]
019e9f64  add x29,sp,#0x10
019e9f68  adrp x19,0x7319000
019e9f6c  ldr x19,[x19, #0x548]
019e9f70  add x0,x0,#0xb8
019e9f74  ldr x8,[x19]
019e9f78  cbz x8,0x019e9f90
019e9f7c  mov w2,wzr
019e9f80  bl 0x019ee338
019e9f84  ldp x29,x30,[sp, #0x10]
019e9f88  ldp x20,x19,[sp], #0x20
019e9f8c  ret
019e9f90  str x30,[x19]
019e9f94  adrp x20,0x7317000
019e9f98  ldr x20,[x20, #0xd28]
019e9f9c  mov w2,wzr
019e9fa0  strb wzr,[x20]
019e9fa4  bl 0x019ee338
019e9fa8  strb wzr,[x20]
019e9fac  str xzr,[x19]
019e9fb0  ldp x29,x30,[sp, #0x10]
019e9fb4  ldp x20,x19,[sp], #0x20
019e9fb8  ret
