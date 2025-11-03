// ===== case850_ActorSkill_sub19e9ab0_lv2_19ed850 @ 019ed850 (DecompileAt3: cleared stale instructions at entry) =====
019ed850  sub sp,sp,#0x40
019ed854  stp x22,x21,[sp, #0x10]
019ed858  stp x20,x19,[sp, #0x20]
019ed85c  stp x29,x30,[sp, #0x30]
019ed860  add x29,sp,#0x30
019ed864  mov x19,x0
019ed868  ldr w8,[x19]
019ed86c  mov w20,w1
019ed870  cmp w8,w20
019ed874  b.eq 0x019ed9a0
019ed878  adrp x21,0x7319000
019ed87c  ldr x21,[x21, #0x548]
019ed880  ldr x8,[x21]
019ed884  cbz x8,0x019ed8d4
019ed888  mov x0,xzr
019ed88c  bl 0x01b4868c
019ed890  tst w0,#0xff
019ed894  b.eq 0x019ed934
019ed898  ldr w8,[x19]
019ed89c  cmp w8,w20
019ed8a0  b.eq 0x019ed934
019ed8a4  ldur w8,[x19, #-0x68]
019ed8a8  cmp w8,#0x1
019ed8ac  b.lt 0x019ed934
019ed8b0  bl 0x01b4635c
019ed8b4  ldur w8,[x19, #-0x68]
019ed8b8  ldr x0,[x0, #0x38]
019ed8bc  mov w2,#0x807
019ed8c0  mov w1,w20
019ed8c4  add w8,w8,#0x24
019ed8c8  str w8,[x0, #0x10]
019ed8cc  bl 0x01b490fc
019ed8d0  b 0x019ed934
019ed8d4  str x30,[x21]
019ed8d8  adrp x22,0x7317000
019ed8dc  ldr x22,[x22, #0xd28]
019ed8e0  mov x0,xzr
019ed8e4  strb wzr,[x22]
019ed8e8  bl 0x01b4868c
019ed8ec  tst w0,#0xff
019ed8f0  b.eq 0x019ed92c
019ed8f4  ldr w8,[x19]
019ed8f8  cmp w8,w20
019ed8fc  b.eq 0x019ed92c
019ed900  ldur w8,[x19, #-0x68]
019ed904  cmp w8,#0x1
019ed908  b.lt 0x019ed92c
019ed90c  bl 0x01b4635c
019ed910  ldur w8,[x19, #-0x68]
019ed914  ldr x0,[x0, #0x38]
019ed918  mov w2,#0x807
019ed91c  mov w1,w20
019ed920  add w8,w8,#0x24
019ed924  str w8,[x0, #0x10]
019ed928  bl 0x01b490fc
019ed92c  strb wzr,[x22]
019ed930  str xzr,[x21]
019ed934  ldur w9,[x19, #-0x6c]
019ed938  str w20,[x19]
019ed93c  mov w8,w9
019ed940  tbz w9,#0x1f,0x019ed950
019ed944  sub x8,x19,#0x74
019ed948  sub x8,x8,w9, SXTH 
019ed94c  ldr w8,[x8]
019ed950  ubfx w10,w9,#0x10,#0xf
019ed954  cmp w9,#0x0
019ed958  csel w1,wzr,w10,ge
019ed95c  str w20,[sp, #0xc]
019ed960  tbnz w8,#0x1f,0x019ed97c
019ed964  cbz w8,0x019ed9a0
019ed968  mov w2,#0xd
019ed96c  add x3,sp,#0xc
019ed970  mov w0,w8
019ed974  bl 0x01b1d8c0
019ed978  b 0x019ed9a0
019ed97c  mov x3,#0x6472
019ed980  adrp x2,0x574b000
019ed984  movk x3,#0x7474, LSL #16
019ed988  add x2,x2,#0x398
019ed98c  mov w1,#0x1
019ed990  movk x3,#0x100, LSL #48
019ed994  mov w0,wzr
019ed998  mov w4,w8
019ed99c  bl 0x01b83618
019ed9a0  mov x0,x19
019ed9a4  ldp x29,x30,[sp, #0x30]
019ed9a8  ldp x20,x19,[sp, #0x20]
019ed9ac  ldp x22,x21,[sp, #0x10]
019ed9b0  add sp,sp,#0x40
019ed9b4  ret
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
