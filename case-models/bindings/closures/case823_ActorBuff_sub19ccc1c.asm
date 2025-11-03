// ===== case823_ActorBuff_sub19ccc1c @ 019ccc1c (DecompileAt3: cleared stale instructions at entry) =====
019ccc1c  stp x20,x19,[sp, #-0x20]!
019ccc20  stp x29,x30,[sp, #0x10]
019ccc24  add x29,sp,#0x10
019ccc28  adrp x19,0x7319000
019ccc2c  ldr x19,[x19, #0x548]
019ccc30  add x0,x0,#0x90
019ccc34  ldr x8,[x19]
019ccc38  cbz x8,0x019ccc50
019ccc3c  mov w2,wzr
019ccc40  bl 0x019cec58
019ccc44  ldp x29,x30,[sp, #0x10]
019ccc48  ldp x20,x19,[sp], #0x20
019ccc4c  ret
019ccc50  str x30,[x19]
019ccc54  adrp x20,0x7317000
019ccc58  ldr x20,[x20, #0xd28]
019ccc5c  mov w2,wzr
019ccc60  strb wzr,[x20]
019ccc64  bl 0x019cec58
019ccc68  strb wzr,[x20]
019ccc6c  str xzr,[x19]
019ccc70  ldp x29,x30,[sp, #0x10]
019ccc74  ldp x20,x19,[sp], #0x20
019ccc78  ret
