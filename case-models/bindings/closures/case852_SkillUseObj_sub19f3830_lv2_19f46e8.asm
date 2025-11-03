// ===== case852_SkillUseObj_sub19f3830_lv2_19f46e8 @ 019f46e8 (DecompileAt3: cleared stale instructions at entry) =====
019f46e8  sub sp,sp,#0x40
019f46ec  stp x22,x21,[sp, #0x10]
019f46f0  stp x20,x19,[sp, #0x20]
019f46f4  stp x29,x30,[sp, #0x30]
019f46f8  add x29,sp,#0x30
019f46fc  mov x19,x0
019f4700  ldr w8,[x19]
019f4704  mov w20,w1
019f4708  cmp w8,w20
019f470c  b.eq 0x019f4838
019f4710  adrp x21,0x7319000
019f4714  ldr x21,[x21, #0x548]
019f4718  ldr x8,[x21]
019f471c  cbz x8,0x019f476c
019f4720  mov x0,xzr
019f4724  bl 0x01b4868c
019f4728  tst w0,#0xff
019f472c  b.eq 0x019f47cc
019f4730  ldr w8,[x19]
019f4734  cmp w8,w20
019f4738  b.eq 0x019f47cc
019f473c  ldur w8,[x19, #-0x74]
019f4740  cmp w8,#0x1
019f4744  b.lt 0x019f47cc
019f4748  bl 0x01b4635c
019f474c  ldur w8,[x19, #-0x74]
019f4750  ldr x0,[x0, #0x38]
019f4754  mov w2,#0x474
019f4758  mov w1,w20
019f475c  add w8,w8,#0x23
019f4760  str w8,[x0, #0x10]
019f4764  bl 0x01b490fc
019f4768  b 0x019f47cc
019f476c  str x30,[x21]
019f4770  adrp x22,0x7317000
019f4774  ldr x22,[x22, #0xd28]
019f4778  mov x0,xzr
019f477c  strb wzr,[x22]
019f4780  bl 0x01b4868c
019f4784  tst w0,#0xff
019f4788  b.eq 0x019f47c4
019f478c  ldr w8,[x19]
019f4790  cmp w8,w20
019f4794  b.eq 0x019f47c4
019f4798  ldur w8,[x19, #-0x74]
019f479c  cmp w8,#0x1
019f47a0  b.lt 0x019f47c4
019f47a4  bl 0x01b4635c
019f47a8  ldur w8,[x19, #-0x74]
019f47ac  ldr x0,[x0, #0x38]
019f47b0  mov w2,#0x474
019f47b4  mov w1,w20
019f47b8  add w8,w8,#0x23
019f47bc  str w8,[x0, #0x10]
019f47c0  bl 0x01b490fc
019f47c4  strb wzr,[x22]
019f47c8  str xzr,[x21]
019f47cc  ldur w9,[x19, #-0x78]
019f47d0  str w20,[x19]
019f47d4  mov w8,w9
019f47d8  tbz w9,#0x1f,0x019f47e8
019f47dc  sub x8,x19,#0x80
019f47e0  sub x8,x8,w9, SXTH 
019f47e4  ldr w8,[x8]
019f47e8  ubfx w10,w9,#0x10,#0xf
019f47ec  cmp w9,#0x0
019f47f0  csel w1,wzr,w10,ge
019f47f4  str w20,[sp, #0xc]
019f47f8  tbnz w8,#0x1f,0x019f4814
019f47fc  cbz w8,0x019f4838
019f4800  orr w2,wzr,#0x3
019f4804  add x3,sp,#0xc
019f4808  mov w0,w8
019f480c  bl 0x01b1d8c0
019f4810  b 0x019f4838
019f4814  mov x3,#0x6472
019f4818  adrp x2,0x574b000
019f481c  movk x3,#0x7474, LSL #16
019f4820  add x2,x2,#0x398
019f4824  mov w1,#0x1
019f4828  movk x3,#0x100, LSL #48
019f482c  mov w0,wzr
019f4830  mov w4,w8
019f4834  bl 0x01b83618
019f4838  mov x0,x19
019f483c  ldp x29,x30,[sp, #0x30]
019f4840  ldp x20,x19,[sp, #0x20]
019f4844  ldp x22,x21,[sp, #0x10]
019f4848  add sp,sp,#0x40
019f484c  ret
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
