// ===== case823_ActorBuff_sub19ccab4 @ 019ccab4 (DecompileAt3: cleared stale instructions at entry) =====
019ccab4  stp x20,x19,[sp, #-0x20]!
019ccab8  stp x29,x30,[sp, #0x10]
019ccabc  add x29,sp,#0x10
019ccac0  adrp x19,0x7319000
019ccac4  ldr x19,[x19, #0x548]
019ccac8  add x0,x0,#0x60
019ccacc  ldr x8,[x19]
019ccad0  cbz x8,0x019ccae8
019ccad4  mov w2,wzr
019ccad8  bl 0x019ce890
019ccadc  ldp x29,x30,[sp, #0x10]
019ccae0  ldp x20,x19,[sp], #0x20
019ccae4  ret
019ccae8  str x30,[x19]
019ccaec  adrp x20,0x7317000
019ccaf0  ldr x20,[x20, #0xd28]
019ccaf4  mov w2,wzr
019ccaf8  strb wzr,[x20]
019ccafc  bl 0x019ce890
019ccb00  strb wzr,[x20]
019ccb04  str xzr,[x19]
019ccb08  ldp x29,x30,[sp, #0x10]
019ccb0c  ldp x20,x19,[sp], #0x20
019ccb10  ret
