// ===== case850_ActorSkill_sub19e9ad4_lv2_19ed9b8 @ 019ed9b8 (DecompileAt3: cleared stale instructions at entry) =====
019ed9b8  stp x22,x21,[sp, #-0x30]!
019ed9bc  stp x20,x19,[sp, #0x10]
019ed9c0  stp x29,x30,[sp, #0x20]
019ed9c4  add x29,sp,#0x20
019ed9c8  mov x19,x0
019ed9cc  ldr w8,[x19]
019ed9d0  mov w20,w1
019ed9d4  cmp w8,w20
019ed9d8  b.eq 0x019eda9c
019ed9dc  adrp x21,0x7319000
019ed9e0  ldr x21,[x21, #0x548]
019ed9e4  ldr x8,[x21]
019ed9e8  cbz x8,0x019eda38
019ed9ec  mov x0,xzr
019ed9f0  bl 0x01b4868c
019ed9f4  tst w0,#0xff
019ed9f8  b.eq 0x019eda98
019ed9fc  ldr w8,[x19]
019eda00  cmp w8,w20
019eda04  b.eq 0x019eda98
019eda08  ldur w8,[x19, #-0x6c]
019eda0c  cmp w8,#0x1
019eda10  b.lt 0x019eda98
019eda14  bl 0x01b4635c
019eda18  ldur w8,[x19, #-0x6c]
019eda1c  ldr x0,[x0, #0x38]
019eda20  mov w2,#0x809
019eda24  mov w1,w20
019eda28  add w8,w8,#0x28
019eda2c  str w8,[x0, #0x10]
019eda30  bl 0x01b48ffc
019eda34  b 0x019eda98
019eda38  str x30,[x21]
019eda3c  adrp x22,0x7317000
019eda40  ldr x22,[x22, #0xd28]
019eda44  mov x0,xzr
019eda48  strb wzr,[x22]
019eda4c  bl 0x01b4868c
019eda50  tst w0,#0xff
019eda54  b.eq 0x019eda90
019eda58  ldr w8,[x19]
019eda5c  cmp w8,w20
019eda60  b.eq 0x019eda90
019eda64  ldur w8,[x19, #-0x6c]
019eda68  cmp w8,#0x1
019eda6c  b.lt 0x019eda90
019eda70  bl 0x01b4635c
019eda74  ldur w8,[x19, #-0x6c]
019eda78  ldr x0,[x0, #0x38]
019eda7c  mov w2,#0x809
019eda80  mov w1,w20
019eda84  add w8,w8,#0x28
019eda88  str w8,[x0, #0x10]
019eda8c  bl 0x01b48ffc
019eda90  strb wzr,[x22]
019eda94  str xzr,[x21]
019eda98  str w20,[x19]
019eda9c  mov x0,x19
019edaa0  ldp x29,x30,[sp, #0x20]
019edaa4  ldp x20,x19,[sp, #0x10]
019edaa8  ldp x22,x21,[sp], #0x30
019edaac  ret
