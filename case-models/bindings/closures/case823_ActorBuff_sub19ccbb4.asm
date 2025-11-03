// ===== case823_ActorBuff_sub19ccbb4 @ 019ccbb4 (DecompileAt3: cleared stale instructions at entry) =====
019ccbb4  stp x20,x19,[sp, #-0x20]!
019ccbb8  stp x29,x30,[sp, #0x10]
019ccbbc  add x29,sp,#0x10
019ccbc0  adrp x19,0x7319000
019ccbc4  ldr x19,[x19, #0x548]
019ccbc8  add x0,x0,#0x88
019ccbcc  ldr x8,[x19]
019ccbd0  cbz x8,0x019ccbe8
019ccbd4  mov w2,wzr
019ccbd8  bl 0x019ceaf0
019ccbdc  ldp x29,x30,[sp, #0x10]
019ccbe0  ldp x20,x19,[sp], #0x20
019ccbe4  ret
019ccbe8  str x30,[x19]
019ccbec  adrp x20,0x7317000
019ccbf0  ldr x20,[x20, #0xd28]
019ccbf4  mov w2,wzr
019ccbf8  strb wzr,[x20]
019ccbfc  bl 0x019ceaf0
019ccc00  strb wzr,[x20]
019ccc04  str xzr,[x19]
019ccc08  ldp x29,x30,[sp, #0x10]
019ccc0c  ldp x20,x19,[sp], #0x20
019ccc10  ret
