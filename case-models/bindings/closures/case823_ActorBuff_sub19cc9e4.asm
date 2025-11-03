// ===== case823_ActorBuff_sub19cc9e4 @ 019cc9e4 (DecompileAt3: cleared stale instructions at entry) =====
019cc9e4  stp x20,x19,[sp, #-0x20]!
019cc9e8  stp x29,x30,[sp, #0x10]
019cc9ec  add x29,sp,#0x10
019cc9f0  adrp x19,0x7319000
019cc9f4  ldr x19,[x19, #0x548]
019cc9f8  add x0,x0,#0x48
019cc9fc  ldr x8,[x19]
019cca00  cbz x8,0x019cca18
019cca04  mov w2,wzr
019cca08  bl 0x019ce630
019cca0c  ldp x29,x30,[sp, #0x10]
019cca10  ldp x20,x19,[sp], #0x20
019cca14  ret
019cca18  str x30,[x19]
019cca1c  adrp x20,0x7317000
019cca20  ldr x20,[x20, #0xd28]
019cca24  mov w2,wzr
019cca28  strb wzr,[x20]
019cca2c  bl 0x019ce630
019cca30  strb wzr,[x20]
019cca34  str xzr,[x19]
019cca38  ldp x29,x30,[sp, #0x10]
019cca3c  ldp x20,x19,[sp], #0x20
019cca40  ret
