// ===== case850_ActorSkill_sub19ebab8_lv2_19f1edc @ 019f1edc (DecompileAt3: cleared stale instructions at entry) =====
019f1edc  str x23,[sp, #-0x40]!
019f1ee0  stp x22,x21,[sp, #0x10]
019f1ee4  stp x20,x19,[sp, #0x20]
019f1ee8  stp x29,x30,[sp, #0x30]
019f1eec  add x29,sp,#0x30
019f1ef0  mov x19,x0
019f1ef4  ldrb w8,[x19]
019f1ef8  mov w20,w1
019f1efc  cmp w8,w20, UXTB 
019f1f00  b.eq 0x019f1fcc
019f1f04  adrp x21,0x7319000
019f1f08  ldr x21,[x21, #0x548]
019f1f0c  ldr x8,[x21]
019f1f10  cbz x8,0x019f1f64
019f1f14  mov x0,xzr
019f1f18  bl 0x01b4868c
019f1f1c  tst w0,#0xff
019f1f20  b.eq 0x019f1fc8
019f1f24  ldrb w8,[x19]
019f1f28  cmp w8,w20, UXTB 
019f1f2c  b.eq 0x019f1fc8
019f1f30  sub x21,x19,#0x6d7
019f1f34  ldr w8,[x21]
019f1f38  cmp w8,#0x1
019f1f3c  b.lt 0x019f1fc8
019f1f40  bl 0x01b4635c
019f1f44  ldr w8,[x21]
019f1f48  ldr x0,[x0, #0x38]
019f1f4c  mov w2,#0x895
019f1f50  mov w1,w20
019f1f54  add w8,w8,#0x165
019f1f58  str w8,[x0, #0x10]
019f1f5c  bl 0x01b4907c
019f1f60  b 0x019f1fc8
019f1f64  str x30,[x21]
019f1f68  adrp x22,0x7317000
019f1f6c  ldr x22,[x22, #0xd28]
019f1f70  mov x0,xzr
019f1f74  strb wzr,[x22]
019f1f78  bl 0x01b4868c
019f1f7c  tst w0,#0xff
019f1f80  b.eq 0x019f1fc0
019f1f84  ldrb w8,[x19]
019f1f88  cmp w8,w20, UXTB 
019f1f8c  b.eq 0x019f1fc0
019f1f90  sub x23,x19,#0x6d7
019f1f94  ldr w8,[x23]
019f1f98  cmp w8,#0x1
019f1f9c  b.lt 0x019f1fc0
019f1fa0  bl 0x01b4635c
019f1fa4  ldr w8,[x23]
019f1fa8  ldr x0,[x0, #0x38]
019f1fac  mov w2,#0x895
019f1fb0  mov w1,w20
019f1fb4  add w8,w8,#0x165
019f1fb8  str w8,[x0, #0x10]
019f1fbc  bl 0x01b4907c
019f1fc0  strb wzr,[x22]
019f1fc4  str xzr,[x21]
019f1fc8  strb w20,[x19]
019f1fcc  mov x0,x19
019f1fd0  ldp x29,x30,[sp, #0x30]
019f1fd4  ldp x20,x19,[sp, #0x20]
019f1fd8  ldp x22,x21,[sp, #0x10]
019f1fdc  ldr x23,[sp], #0x40
019f1fe0  ret
