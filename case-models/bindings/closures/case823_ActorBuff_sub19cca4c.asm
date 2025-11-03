// ===== case823_ActorBuff_sub19cca4c @ 019cca4c (DecompileAt3: cleared stale instructions at entry) =====
019cca4c  stp x20,x19,[sp, #-0x20]!
019cca50  stp x29,x30,[sp, #0x10]
019cca54  add x29,sp,#0x10
019cca58  adrp x19,0x7319000
019cca5c  ldr x19,[x19, #0x548]
019cca60  add x0,x0,#0x58
019cca64  ldr x8,[x19]
019cca68  cbz x8,0x019cca80
019cca6c  mov w2,wzr
019cca70  bl 0x019ce728
019cca74  ldp x29,x30,[sp, #0x10]
019cca78  ldp x20,x19,[sp], #0x20
019cca7c  ret
019cca80  str x30,[x19]
019cca84  adrp x20,0x7317000
019cca88  ldr x20,[x20, #0xd28]
019cca8c  mov w2,wzr
019cca90  strb wzr,[x20]
019cca94  bl 0x019ce728
019cca98  strb wzr,[x20]
019cca9c  str xzr,[x19]
019ccaa0  ldp x29,x30,[sp, #0x10]
019ccaa4  ldp x20,x19,[sp], #0x20
019ccaa8  ret
