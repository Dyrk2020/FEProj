// ===== case499-PixiuAwardMgr @ 016f3e60 =====
// existing function case499-PixiuAwardMgr
016f3e60  sub sp,sp,#0x50
016f3e64  str x21,[sp, #0x20]
016f3e68  stp x20,x19,[sp, #0x30]
016f3e6c  stp x29,x30,[sp, #0x40]
016f3e70  add x29,sp,#0x40
016f3e74  adrp x1,0x174a000
016f3e78  add x1,x1,#0x87c
016f3e7c  mov x19,x0
016f3e80  bl 0x0124ba40
016f3e84  adrp x1,0x575d000
016f3e88  add x1,x1,#0xa06
016f3e8c  mov x0,x19
016f3e90  str x19,[sp]
016f3e94  bl 0x01251aa0
016f3e98  mov w8,#0x1
016f3e9c  str w8,[sp, #0x8]
016f3ea0  mov x0,sp
016f3ea4  bl 0x0174aa04
016f3ea8  adrp x1,0x5768000
016f3eac  adrp x3,0x736d000
016f3eb0  add x1,x1,#0x30
016f3eb4  add x3,x3,#0x101
016f3eb8  add x0,sp,#0x10
016f3ebc  mov x2,sp
016f3ec0  bl 0x01890c5c
016f3ec4  ldr x0,[sp, #0x10]
016f3ec8  mov w1,#0x10
016f3ecc  bl 0x0124cba0
016f3ed0  adrp x8,0x1890000
016f3ed4  dup v0.2D,xzr
016f3ed8  add x8,x8,#0x6b4
016f3edc  mov v0.D[0x0],x8
016f3ee0  str q0,[x0]
016f3ee4  ldr x0,[sp, #0x10]
016f3ee8  adrp x1,0x1891000
016f3eec  add x1,x1,#0x20
016f3ef0  mov w2,#0x1
016f3ef4  bl 0x0124ec90
016f3ef8  ldr x0,[sp, #0x10]
016f3efc  mov w1,#0xffffffff
016f3f00  bl 0x0124c0c0
016f3f04  ldr x19,[sp, #0x10]
016f3f08  orr w1,wzr,#0xfffffffb
016f3f0c  mov w2,#0x6e7
016f3f10  mov x0,x19
016f3f14  bl 0x0124a650
016f3f18  orr w1,wzr,#0xfffffffe
016f3f1c  mov x0,x19
016f3f20  bl 0x0124c0c0
016f3f24  orr w1,wzr,#0xfffffffe
016f3f28  mov x0,x19
016f3f2c  bl 0x0124e920
016f3f30  mov w20,w0
016f3f34  adrp x1,0x5768000
016f3f38  add x1,x1,#0x3e
016f3f3c  mov x0,x19
016f3f40  bl 0x0124f120
016f3f44  orr w1,wzr,#0xfffffffe
016f3f48  mov w2,#0x1
016f3f4c  mov x0,x19
016f3f50  bl 0x0124cfc0
016f3f54  mov x0,x19
016f3f58  mov w1,w20
016f3f5c  bl 0x0124e060
016f3f60  orr w1,wzr,#0xfffffffd
016f3f64  mov x0,x19
016f3f68  bl 0x0124c4d0
016f3f6c  ldr x19,[sp, #0x10]
016f3f70  orr w1,wzr,#0xfffffffd
016f3f74  mov w2,#0x6e7
016f3f78  mov x0,x19
016f3f7c  bl 0x0124a650
016f3f80  orr w1,wzr,#0xfffffffe
016f3f84  mov x0,x19
016f3f88  bl 0x0124c0c0
016f3f8c  orr w1,wzr,#0xfffffffe
016f3f90  mov x0,x19
016f3f94  bl 0x0124e920
016f3f98  mov w20,w0
016f3f9c  adrp x1,0x5768000
016f3fa0  add x1,x1,#0x3e
016f3fa4  mov x0,x19
016f3fa8  bl 0x0124f120
016f3fac  orr w1,wzr,#0xfffffffe
016f3fb0  mov w2,#0x1
016f3fb4  mov x0,x19
016f3fb8  bl 0x0124cfc0
016f3fbc  mov x0,x19
016f3fc0  mov w1,w20
016f3fc4  bl 0x0124e060
016f3fc8  orr w1,wzr,#0xfffffffd
016f3fcc  mov x0,x19
016f3fd0  bl 0x0124c4d0
016f3fd4  adrp x1,0x5768000
016f3fd8  adrp x2,0x1890000
016f3fdc  adrp x4,0x1890000
016f3fe0  add x1,x1,#0x4e
016f3fe4  add x2,x2,#0x8a4
016f3fe8  add x4,x4,#0x8ac
016f3fec  add x0,sp,#0x10
016f3ff0  mov x3,xzr
016f3ff4  mov x5,xzr
016f3ff8  bl 0x018906bc
016f3ffc  adrp x1,0x5768000
016f4000  adrp x2,0x1890000
016f4004  adrp x4,0x1890000
016f4008  add x1,x1,#0x5b
016f400c  add x2,x2,#0x93c
016f4010  add x4,x4,#0x944
016f4014  mov x3,xzr
016f4018  mov x5,xzr
016f401c  bl 0x018906bc
016f4020  adrp x1,0x5768000
016f4024  adrp x2,0x1890000
016f4028  adrp x4,0x1890000
016f402c  add x1,x1,#0x61
016f4030  add x2,x2,#0xbbc
016f4034  add x4,x4,#0xbc4
016f4038  mov x3,xzr
016f403c  mov x5,xzr
016f4040  bl 0x018909d4
016f4044  mov x19,x0
016f4048  ldr x0,[x19]
016f404c  mov w1,#0x10
016f4050  bl 0x0124cba0
016f4054  adrp x8,0x1890000
016f4058  dup v0.2D,xzr
016f405c  add x8,x8,#0xc54
016f4060  mov v0.D[0x0],x8
016f4064  str q0,[x0]
016f4068  ldr x0,[x19]
016f406c  adrp x1,0x1891000
016f4070  add x1,x1,#0x584
016f4074  mov w2,#0x1
016f4078  bl 0x0124ec90
016f407c  ldr x0,[x19]
016f4080  mov w1,#0xffffffff
016f4084  bl 0x0124c0c0
016f4088  ldr x20,[x19]
016f408c  orr w1,wzr,#0xfffffffb
016f4090  mov w2,#0x6e7
016f4094  mov x0,x20
016f4098  bl 0x0124a650
016f409c  orr w1,wzr,#0xfffffffe
016f40a0  mov x0,x20
016f40a4  bl 0x0124c0c0
016f40a8  orr w1,wzr,#0xfffffffe
016f40ac  mov x0,x20
016f40b0  bl 0x0124e920
016f40b4  mov w21,w0
016f40b8  adrp x1,0x5768000
016f40bc  add x1,x1,#0x6b
016f40c0  mov x0,x20
016f40c4  bl 0x0124f120
016f40c8  orr w1,wzr,#0xfffffffe
016f40cc  mov w2,#0x1
016f40d0  mov x0,x20
016f40d4  bl 0x0124cfc0
016f40d8  mov x0,x20
016f40dc  mov w1,w21
016f40e0  bl 0x0124e060
016f40e4  orr w1,wzr,#0xfffffffd
016f40e8  mov x0,x20
016f40ec  bl 0x0124c4d0
016f40f0  ldr x20,[x19]
016f40f4  orr w1,wzr,#0xfffffffd
016f40f8  mov w2,#0x6e7
016f40fc  mov x0,x20
016f4100  bl 0x0124a650
016f4104  orr w1,wzr,#0xfffffffe
016f4108  mov x0,x20
016f410c  bl 0x0124c0c0
016f4110  orr w1,wzr,#0xfffffffe
016f4114  mov x0,x20
016f4118  bl 0x0124e920
016f411c  mov w21,w0
016f4120  adrp x1,0x5768000
016f4124  add x1,x1,#0x6b
016f4128  mov x0,x20
016f412c  bl 0x0124f120
016f4130  orr w1,wzr,#0xfffffffe
016f4134  mov w2,#0x1
016f4138  mov x0,x20
016f413c  bl 0x0124cfc0
016f4140  mov x0,x20
016f4144  mov w1,w21
016f4148  bl 0x0124e060
016f414c  orr w1,wzr,#0xfffffffd
016f4150  mov x0,x20
016f4154  bl 0x0124c4d0
016f4158  ldr w8,[x19, #0x8]
016f415c  ldr x0,[x19]
016f4160  sub w8,w8,#0x3
016f4164  str w8,[x19, #0x8]
016f4168  orr w1,wzr,#0xfffffffc
016f416c  bl 0x0124c4d0
016f4170  ldr w8,[x19, #0x8]
016f4174  ldr x0,[x19]
016f4178  str wzr,[x19, #0x8]
016f417c  cmp w8,#0x1
016f4180  b.lt 0x016f418c
016f4184  mvn w1,w8
016f4188  bl 0x0124c4d0
016f418c  ldr w8,[sp, #0x18]
016f4190  cmp w8,#0x1
016f4194  b.lt 0x016f41a4
016f4198  ldr x0,[sp, #0x10]
016f419c  mvn w1,w8
016f41a0  bl 0x0124c4d0
016f41a4  ldr w8,[sp, #0x8]
016f41a8  cmp w8,#0x1
016f41ac  b.lt 0x016f41bc
016f41b0  ldr x0,[sp]
016f41b4  mvn w1,w8
016f41b8  bl 0x0124c4d0
016f41bc  ldp x29,x30,[sp, #0x40]
016f41c0  ldp x20,x19,[sp, #0x30]
016f41c4  ldr x21,[sp, #0x20]
016f41c8  add sp,sp,#0x50
016f41cc  ret
