// ===== case852_SkillUseObj_sub19f3888_lv2_19f4948 @ 019f4948 (DecompileAt3: cleared stale instructions at entry) =====
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
