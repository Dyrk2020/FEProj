// ===== case852_SkillUseObj_sub19f35f0_lv2_19f4020 @ 019f4020 (DecompileAt3: cleared stale instructions at entry) =====
019f4020  sub sp,sp,#0x40
019f4024  stp x22,x21,[sp, #0x10]
019f4028  stp x20,x19,[sp, #0x20]
019f402c  stp x29,x30,[sp, #0x30]
019f4030  add x29,sp,#0x30
019f4034  mov x19,x0
019f4038  ldr w8,[x19]
019f403c  mov w20,w1
019f4040  cmp w8,w20
019f4044  b.eq 0x019f4170
019f4048  adrp x21,0x7319000
019f404c  ldr x21,[x21, #0x548]
019f4050  ldr x8,[x21]
019f4054  cbz x8,0x019f40a4
019f4058  mov x0,xzr
019f405c  bl 0x01b4868c
019f4060  tst w0,#0xff
019f4064  b.eq 0x019f4104
019f4068  ldr w8,[x19]
019f406c  cmp w8,w20
019f4070  b.eq 0x019f4104
019f4074  ldur w8,[x19, #-0x30]
019f4078  cmp w8,#0x1
019f407c  b.lt 0x019f4104
019f4080  bl 0x01b4635c
019f4084  ldur w8,[x19, #-0x30]
019f4088  ldr x0,[x0, #0x38]
019f408c  mov w2,#0x46c
019f4090  mov w1,w20
019f4094  add w8,w8,#0xe
019f4098  str w8,[x0, #0x10]
019f409c  bl 0x01b490fc
019f40a0  b 0x019f4104
019f40a4  str x30,[x21]
019f40a8  adrp x22,0x7317000
019f40ac  ldr x22,[x22, #0xd28]
019f40b0  mov x0,xzr
019f40b4  strb wzr,[x22]
019f40b8  bl 0x01b4868c
019f40bc  tst w0,#0xff
019f40c0  b.eq 0x019f40fc
019f40c4  ldr w8,[x19]
019f40c8  cmp w8,w20
019f40cc  b.eq 0x019f40fc
019f40d0  ldur w8,[x19, #-0x30]
019f40d4  cmp w8,#0x1
019f40d8  b.lt 0x019f40fc
019f40dc  bl 0x01b4635c
019f40e0  ldur w8,[x19, #-0x30]
019f40e4  ldr x0,[x0, #0x38]
019f40e8  mov w2,#0x46c
019f40ec  mov w1,w20
019f40f0  add w8,w8,#0xe
019f40f4  str w8,[x0, #0x10]
019f40f8  bl 0x01b490fc
019f40fc  strb wzr,[x22]
019f4100  str xzr,[x21]
019f4104  ldur w9,[x19, #-0x34]
019f4108  str w20,[x19]
019f410c  mov w8,w9
019f4110  tbz w9,#0x1f,0x019f4120
019f4114  sub x8,x19,#0x3c
019f4118  sub x8,x8,w9, SXTH 
019f411c  ldr w8,[x8]
019f4120  ubfx w10,w9,#0x10,#0xf
019f4124  cmp w9,#0x0
019f4128  csel w1,wzr,w10,ge
019f412c  str w20,[sp, #0xc]
019f4130  tbnz w8,#0x1f,0x019f414c
019f4134  cbz w8,0x019f4170
019f4138  mov w2,#0x2
019f413c  add x3,sp,#0xc
019f4140  mov w0,w8
019f4144  bl 0x01b1d8c0
019f4148  b 0x019f4170
019f414c  mov x3,#0x6472
019f4150  adrp x2,0x574b000
019f4154  movk x3,#0x7474, LSL #16
019f4158  add x2,x2,#0x398
019f415c  mov w1,#0x1
019f4160  movk x3,#0x100, LSL #48
019f4164  mov w0,wzr
019f4168  mov w4,w8
019f416c  bl 0x01b83618
019f4170  mov x0,x19
019f4174  ldp x29,x30,[sp, #0x30]
019f4178  ldp x20,x19,[sp, #0x20]
019f417c  ldp x22,x21,[sp, #0x10]
019f4180  add sp,sp,#0x40
019f4184  ret
