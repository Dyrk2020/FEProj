// ===== case852_SkillUseObj_sub19f3864_lv2_19f4850 @ 019f4850 (DecompileAt3: cleared stale instructions at entry) =====
019f4850  stp x22,x21,[sp, #-0x30]!
019f4854  stp x20,x19,[sp, #0x10]
019f4858  stp x29,x30,[sp, #0x20]
019f485c  add x29,sp,#0x20
019f4860  mov x19,x0
019f4864  ldr w8,[x19]
019f4868  mov w20,w1
019f486c  cmp w8,w20
019f4870  b.eq 0x019f4934
019f4874  adrp x21,0x7319000
019f4878  ldr x21,[x21, #0x548]
019f487c  ldr x8,[x21]
019f4880  cbz x8,0x019f48d0
019f4884  mov x0,xzr
019f4888  bl 0x01b4868c
019f488c  tst w0,#0xff
019f4890  b.eq 0x019f4930
019f4894  ldr w8,[x19]
019f4898  cmp w8,w20
019f489c  b.eq 0x019f4930
019f48a0  ldur w8,[x19, #-0x7c]
019f48a4  cmp w8,#0x1
019f48a8  b.lt 0x019f4930
019f48ac  bl 0x01b4635c
019f48b0  ldur w8,[x19, #-0x7c]
019f48b4  ldr x0,[x0, #0x38]
019f48b8  mov w2,#0x476
019f48bc  mov w1,w20
019f48c0  add w8,w8,#0x27
019f48c4  str w8,[x0, #0x10]
019f48c8  bl 0x01b490fc
019f48cc  b 0x019f4930
019f48d0  str x30,[x21]
019f48d4  adrp x22,0x7317000
019f48d8  ldr x22,[x22, #0xd28]
019f48dc  mov x0,xzr
019f48e0  strb wzr,[x22]
019f48e4  bl 0x01b4868c
019f48e8  tst w0,#0xff
019f48ec  b.eq 0x019f4928
019f48f0  ldr w8,[x19]
019f48f4  cmp w8,w20
019f48f8  b.eq 0x019f4928
019f48fc  ldur w8,[x19, #-0x7c]
019f4900  cmp w8,#0x1
019f4904  b.lt 0x019f4928
019f4908  bl 0x01b4635c
019f490c  ldur w8,[x19, #-0x7c]
019f4910  ldr x0,[x0, #0x38]
019f4914  mov w2,#0x476
019f4918  mov w1,w20
019f491c  add w8,w8,#0x27
019f4920  str w8,[x0, #0x10]
019f4924  bl 0x01b490fc
019f4928  strb wzr,[x22]
019f492c  str xzr,[x21]
019f4930  str w20,[x19]
019f4934  mov x0,x19
019f4938  ldp x29,x30,[sp, #0x20]
019f493c  ldp x20,x19,[sp, #0x10]
019f4940  ldp x22,x21,[sp], #0x30
019f4944  ret
019f4948  stp x22,x21,[sp, #-0x30]!
019f494c  stp x20,x19,[sp, #0x10]
019f4950  stp x29,x30,[sp, #0x20]
019f4954  add x29,sp,#0x20
019f4958  mov x19,x0
019f495c  ldr w8,[x19]
019f4960  mov w20,w1
019f4964  cmp w8,w20
019f4968  b.eq 0x019f4a2c
019f496c  adrp x21,0x7319000
019f4970  ldr x21,[x21, #0x548]
019f4974  ldr x8,[x21]
019f4978  cbz x8,0x019f49c8
019f497c  mov x0,xzr
019f4980  bl 0x01b4868c
019f4984  tst w0,#0xff
019f4988  b.eq 0x019f4a28
019f498c  ldr w8,[x19]
019f4990  cmp w8,w20
019f4994  b.eq 0x019f4a28
019f4998  ldur w8,[x19, #-0x80]
019f499c  cmp w8,#0x1
019f49a0  b.lt 0x019f4a28
019f49a4  bl 0x01b4635c
019f49a8  ldur w8,[x19, #-0x80]
019f49ac  ldr x0,[x0, #0x38]
019f49b0  mov w2,#0x478
019f49b4  mov w1,w20
019f49b8  add w8,w8,#0x2b
019f49bc  str w8,[x0, #0x10]
019f49c0  bl 0x01b490fc
019f49c4  b 0x019f4a28
019f49c8  str x30,[x21]
019f49cc  adrp x22,0x7317000
019f49d0  ldr x22,[x22, #0xd28]
019f49d4  mov x0,xzr
019f49d8  strb wzr,[x22]
019f49dc  bl 0x01b4868c
019f49e0  tst w0,#0xff
019f49e4  b.eq 0x019f4a20
019f49e8  ldr w8,[x19]
019f49ec  cmp w8,w20
019f49f0  b.eq 0x019f4a20
019f49f4  ldur w8,[x19, #-0x80]
019f49f8  cmp w8,#0x1
019f49fc  b.lt 0x019f4a20
019f4a00  bl 0x01b4635c
019f4a04  ldur w8,[x19, #-0x80]
019f4a08  ldr x0,[x0, #0x38]
019f4a0c  mov w2,#0x478
019f4a10  mov w1,w20
019f4a14  add w8,w8,#0x2b
019f4a18  str w8,[x0, #0x10]
019f4a1c  bl 0x01b490fc
019f4a20  strb wzr,[x22]
019f4a24  str xzr,[x21]
019f4a28  str w20,[x19]
019f4a2c  mov x0,x19
019f4a30  ldp x29,x30,[sp, #0x20]
019f4a34  ldp x20,x19,[sp, #0x10]
019f4a38  ldp x22,x21,[sp], #0x30
019f4a3c  ret
