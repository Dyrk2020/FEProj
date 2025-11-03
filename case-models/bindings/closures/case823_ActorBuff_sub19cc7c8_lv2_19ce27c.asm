// ===== case823_ActorBuff_sub19cc7c8_lv2_19ce27c @ 019ce27c (DecompileAt3: cleared stale instructions at entry) =====
019ce27c  sub sp,sp,#0x40
019ce280  stp x22,x21,[sp, #0x10]
019ce284  stp x20,x19,[sp, #0x20]
019ce288  stp x29,x30,[sp, #0x30]
019ce28c  add x29,sp,#0x30
019ce290  mov x19,x0
019ce294  ldr w8,[x19]
019ce298  mov w20,w1
019ce29c  cmp w8,w20
019ce2a0  b.eq 0x019ce3cc
019ce2a4  adrp x21,0x7319000
019ce2a8  ldr x21,[x21, #0x548]
019ce2ac  ldr x8,[x21]
019ce2b0  cbz x8,0x019ce300
019ce2b4  mov x0,xzr
019ce2b8  bl 0x01b4868c
019ce2bc  tst w0,#0xff
019ce2c0  b.eq 0x019ce360
019ce2c4  ldr w8,[x19]
019ce2c8  cmp w8,w20
019ce2cc  b.eq 0x019ce360
019ce2d0  ldur w8,[x19, #-0x30]
019ce2d4  cmp w8,#0x1
019ce2d8  b.lt 0x019ce360
019ce2dc  bl 0x01b4635c
019ce2e0  ldur w8,[x19, #-0x30]
019ce2e4  ldr x0,[x0, #0x38]
019ce2e8  mov w2,#0x2494
019ce2ec  mov w1,w20
019ce2f0  add w8,w8,#0x20
019ce2f4  str w8,[x0, #0x10]
019ce2f8  bl 0x01b490fc
019ce2fc  b 0x019ce360
019ce300  str x30,[x21]
019ce304  adrp x22,0x7317000
019ce308  ldr x22,[x22, #0xd28]
019ce30c  mov x0,xzr
019ce310  strb wzr,[x22]
019ce314  bl 0x01b4868c
019ce318  tst w0,#0xff
019ce31c  b.eq 0x019ce358
019ce320  ldr w8,[x19]
019ce324  cmp w8,w20
019ce328  b.eq 0x019ce358
019ce32c  ldur w8,[x19, #-0x30]
019ce330  cmp w8,#0x1
019ce334  b.lt 0x019ce358
019ce338  bl 0x01b4635c
019ce33c  ldur w8,[x19, #-0x30]
019ce340  ldr x0,[x0, #0x38]
019ce344  mov w2,#0x2494
019ce348  mov w1,w20
019ce34c  add w8,w8,#0x20
019ce350  str w8,[x0, #0x10]
019ce354  bl 0x01b490fc
019ce358  strb wzr,[x22]
019ce35c  str xzr,[x21]
019ce360  ldur w9,[x19, #-0x34]
019ce364  str w20,[x19]
019ce368  mov w8,w9
019ce36c  tbz w9,#0x1f,0x019ce37c
019ce370  sub x8,x19,#0x3c
019ce374  sub x8,x8,w9, SXTH 
019ce378  ldr w8,[x8]
019ce37c  ubfx w10,w9,#0x10,#0xf
019ce380  cmp w9,#0x0
019ce384  csel w1,wzr,w10,ge
019ce388  str w20,[sp, #0xc]
019ce38c  tbnz w8,#0x1f,0x019ce3a8
019ce390  cbz w8,0x019ce3cc
019ce394  mov w2,#0x8
019ce398  add x3,sp,#0xc
019ce39c  mov w0,w8
019ce3a0  bl 0x01b1d8c0
019ce3a4  b 0x019ce3cc
019ce3a8  mov x3,#0x6472
019ce3ac  adrp x2,0x574b000
019ce3b0  movk x3,#0x7474, LSL #16
019ce3b4  add x2,x2,#0x398
019ce3b8  mov w1,#0x1
019ce3bc  movk x3,#0x100, LSL #48
019ce3c0  mov w0,wzr
019ce3c4  mov w4,w8
019ce3c8  bl 0x01b83618
019ce3cc  mov x0,x19
019ce3d0  ldp x29,x30,[sp, #0x30]
019ce3d4  ldp x20,x19,[sp, #0x20]
019ce3d8  ldp x22,x21,[sp, #0x10]
019ce3dc  add sp,sp,#0x40
019ce3e0  ret
