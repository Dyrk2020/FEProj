// ===== case823_ActorBuff_sub19cc4b8_lv2_19cd8cc @ 019cd8cc (DecompileAt3: cleared stale instructions at entry) =====
019cd8cc  stp x22,x21,[sp, #-0x30]!
019cd8d0  stp x20,x19,[sp, #0x10]
019cd8d4  stp x29,x30,[sp, #0x20]
019cd8d8  add x29,sp,#0x20
019cd8dc  mov x19,x0
019cd8e0  ldrb w8,[x19]
019cd8e4  mov w20,w1
019cd8e8  cmp w8,w20, UXTB 
019cd8ec  b.eq 0x019cd9b0
019cd8f0  adrp x21,0x7319000
019cd8f4  ldr x21,[x21, #0x548]
019cd8f8  ldr x8,[x21]
019cd8fc  cbz x8,0x019cd94c
019cd900  mov x0,xzr
019cd904  bl 0x01b4868c
019cd908  tst w0,#0xff
019cd90c  b.eq 0x019cd9ac
019cd910  ldrb w8,[x19]
019cd914  cmp w8,w20, UXTB 
019cd918  b.eq 0x019cd9ac
019cd91c  ldur w8,[x19, #-0x8]
019cd920  cmp w8,#0x1
019cd924  b.lt 0x019cd9ac
019cd928  bl 0x01b4635c
019cd92c  ldur w8,[x19, #-0x8]
019cd930  ldr x0,[x0, #0x38]
019cd934  mov w2,#0x2482
019cd938  mov w1,w20
019cd93c  add w8,w8,#0x5
019cd940  str w8,[x0, #0x10]
019cd944  bl 0x01b4907c
019cd948  b 0x019cd9ac
019cd94c  str x30,[x21]
019cd950  adrp x22,0x7317000
019cd954  ldr x22,[x22, #0xd28]
019cd958  mov x0,xzr
019cd95c  strb wzr,[x22]
019cd960  bl 0x01b4868c
019cd964  tst w0,#0xff
019cd968  b.eq 0x019cd9a4
019cd96c  ldrb w8,[x19]
019cd970  cmp w8,w20, UXTB 
019cd974  b.eq 0x019cd9a4
019cd978  ldur w8,[x19, #-0x8]
019cd97c  cmp w8,#0x1
019cd980  b.lt 0x019cd9a4
019cd984  bl 0x01b4635c
019cd988  ldur w8,[x19, #-0x8]
019cd98c  ldr x0,[x0, #0x38]
019cd990  mov w2,#0x2482
019cd994  mov w1,w20
019cd998  add w8,w8,#0x5
019cd99c  str w8,[x0, #0x10]
019cd9a0  bl 0x01b4907c
019cd9a4  strb wzr,[x22]
019cd9a8  str xzr,[x21]
019cd9ac  strb w20,[x19]
019cd9b0  mov x0,x19
019cd9b4  ldp x29,x30,[sp, #0x20]
019cd9b8  ldp x20,x19,[sp, #0x10]
019cd9bc  ldp x22,x21,[sp], #0x30
019cd9c0  ret
