// ===== case823_ActorBuff_sub19ccb4c @ 019ccb4c (DecompileAt3: cleared stale instructions at entry) =====
019ccb4c  stp x20,x19,[sp, #-0x20]!
019ccb50  stp x29,x30,[sp, #0x10]
019ccb54  add x29,sp,#0x10
019ccb58  adrp x19,0x7319000
019ccb5c  ldr x19,[x19, #0x548]
019ccb60  add x0,x0,#0x80
019ccb64  ldr x8,[x19]
019ccb68  cbz x8,0x019ccb80
019ccb6c  mov w2,wzr
019ccb70  bl 0x019ce988
019ccb74  ldp x29,x30,[sp, #0x10]
019ccb78  ldp x20,x19,[sp], #0x20
019ccb7c  ret
019ccb80  str x30,[x19]
019ccb84  adrp x20,0x7317000
019ccb88  ldr x20,[x20, #0xd28]
019ccb8c  mov w2,wzr
019ccb90  strb wzr,[x20]
019ccb94  bl 0x019ce988
019ccb98  strb wzr,[x20]
019ccb9c  str xzr,[x19]
019ccba0  ldp x29,x30,[sp, #0x10]
019ccba4  ldp x20,x19,[sp], #0x20
019ccba8  ret
