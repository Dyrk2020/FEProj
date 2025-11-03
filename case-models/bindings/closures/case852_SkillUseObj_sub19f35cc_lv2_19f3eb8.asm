// ===== case852_SkillUseObj_sub19f35cc_lv2_19f3eb8 @ 019f3eb8 (DecompileAt3: cleared stale instructions at entry) =====
019f3eb8  sub sp,sp,#0x40
019f3ebc  stp x22,x21,[sp, #0x10]
019f3ec0  stp x20,x19,[sp, #0x20]
019f3ec4  stp x29,x30,[sp, #0x30]
019f3ec8  add x29,sp,#0x30
019f3ecc  mov x19,x0
019f3ed0  ldr w8,[x19]
019f3ed4  mov w20,w1
019f3ed8  cmp w8,w20
019f3edc  b.eq 0x019f4008
019f3ee0  adrp x21,0x7319000
019f3ee4  ldr x21,[x21, #0x548]
019f3ee8  ldr x8,[x21]
019f3eec  cbz x8,0x019f3f3c
019f3ef0  mov x0,xzr
019f3ef4  bl 0x01b4868c
019f3ef8  tst w0,#0xff
019f3efc  b.eq 0x019f3f9c
019f3f00  ldr w8,[x19]
019f3f04  cmp w8,w20
019f3f08  b.eq 0x019f3f9c
019f3f0c  ldur w8,[x19, #-0x2c]
019f3f10  cmp w8,#0x1
019f3f14  b.lt 0x019f3f9c
019f3f18  bl 0x01b4635c
019f3f1c  ldur w8,[x19, #-0x2c]
019f3f20  ldr x0,[x0, #0x38]
019f3f24  mov w2,#0x46a
019f3f28  mov w1,w20
019f3f2c  add w8,w8,#0xa
019f3f30  str w8,[x0, #0x10]
019f3f34  bl 0x01b490fc
019f3f38  b 0x019f3f9c
019f3f3c  str x30,[x21]
019f3f40  adrp x22,0x7317000
019f3f44  ldr x22,[x22, #0xd28]
019f3f48  mov x0,xzr
019f3f4c  strb wzr,[x22]
019f3f50  bl 0x01b4868c
019f3f54  tst w0,#0xff
019f3f58  b.eq 0x019f3f94
019f3f5c  ldr w8,[x19]
019f3f60  cmp w8,w20
019f3f64  b.eq 0x019f3f94
019f3f68  ldur w8,[x19, #-0x2c]
019f3f6c  cmp w8,#0x1
019f3f70  b.lt 0x019f3f94
019f3f74  bl 0x01b4635c
019f3f78  ldur w8,[x19, #-0x2c]
019f3f7c  ldr x0,[x0, #0x38]
019f3f80  mov w2,#0x46a
019f3f84  mov w1,w20
019f3f88  add w8,w8,#0xa
019f3f8c  str w8,[x0, #0x10]
019f3f90  bl 0x01b490fc
019f3f94  strb wzr,[x22]
019f3f98  str xzr,[x21]
019f3f9c  ldur w9,[x19, #-0x30]
019f3fa0  str w20,[x19]
019f3fa4  mov w8,w9
019f3fa8  tbz w9,#0x1f,0x019f3fb8
019f3fac  sub x8,x19,#0x38
019f3fb0  sub x8,x8,w9, SXTH 
019f3fb4  ldr w8,[x8]
019f3fb8  ubfx w10,w9,#0x10,#0xf
019f3fbc  cmp w9,#0x0
019f3fc0  csel w1,wzr,w10,ge
019f3fc4  str w20,[sp, #0xc]
019f3fc8  tbnz w8,#0x1f,0x019f3fe4
019f3fcc  cbz w8,0x019f4008
019f3fd0  mov w2,#0x1
019f3fd4  add x3,sp,#0xc
019f3fd8  mov w0,w8
019f3fdc  bl 0x01b1d8c0
019f3fe0  b 0x019f4008
019f3fe4  mov x3,#0x6472
019f3fe8  adrp x2,0x574b000
019f3fec  movk x3,#0x7474, LSL #16
019f3ff0  add x2,x2,#0x398
019f3ff4  mov w1,#0x1
019f3ff8  movk x3,#0x100, LSL #48
019f3ffc  mov w0,wzr
019f4000  mov w4,w8
019f4004  bl 0x01b83618
019f4008  mov x0,x19
019f400c  ldp x29,x30,[sp, #0x30]
019f4010  ldp x20,x19,[sp, #0x20]
019f4014  ldp x22,x21,[sp, #0x10]
019f4018  add sp,sp,#0x40
019f401c  ret
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
