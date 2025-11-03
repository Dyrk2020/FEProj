// ===== case140-SkillBuffReplaceEntry @ 016a3efc =====
// existing function case140-SkillBuffReplaceEntry
016a3efc  sub sp,sp,#0x40
016a3f00  stp x20,x19,[sp, #0x20]
016a3f04  stp x29,x30,[sp, #0x30]
016a3f08  add x29,sp,#0x30
016a3f0c  adrp x1,0x174a000
016a3f10  add x1,x1,#0x87c
016a3f14  mov x19,x0
016a3f18  bl 0x0124ba40
016a3f1c  adrp x1,0x575d000
016a3f20  add x1,x1,#0xa06
016a3f24  mov x0,x19
016a3f28  str x19,[sp]
016a3f2c  bl 0x01251aa0
016a3f30  mov w8,#0x1
016a3f34  str w8,[sp, #0x8]
016a3f38  mov x0,sp
016a3f3c  bl 0x0174aa04
016a3f40  adrp x1,0x575f000
016a3f44  adrp x3,0x736d000
016a3f48  add x1,x1,#0xece
016a3f4c  add x3,x3,#0x101
016a3f50  add x0,sp,#0x10
016a3f54  mov x2,sp
016a3f58  bl 0x0179aeb8
016a3f5c  ldr x0,[sp, #0x10]
016a3f60  mov w1,#0x10
016a3f64  bl 0x0124cba0
016a3f68  adrp x8,0x179a000
016a3f6c  dup v0.2D,xzr
016a3f70  add x8,x8,#0xeb0
016a3f74  mov v0.D[0x0],x8
016a3f78  str q0,[x0]
016a3f7c  ldr x0,[sp, #0x10]
016a3f80  adrp x1,0x179b000
016a3f84  add x1,x1,#0x27c
016a3f88  mov w2,#0x1
016a3f8c  bl 0x0124ec90
016a3f90  ldr x0,[sp, #0x10]
016a3f94  mov w1,#0xffffffff
016a3f98  bl 0x0124c0c0
016a3f9c  ldr x19,[sp, #0x10]
016a3fa0  orr w1,wzr,#0xfffffffb
016a3fa4  mov w2,#0x6e7
016a3fa8  mov x0,x19
016a3fac  bl 0x0124a650
016a3fb0  orr w1,wzr,#0xfffffffe
016a3fb4  mov x0,x19
016a3fb8  bl 0x0124c0c0
016a3fbc  orr w1,wzr,#0xfffffffe
016a3fc0  mov x0,x19
016a3fc4  bl 0x0124e920
016a3fc8  mov w20,w0
016a3fcc  adrp x1,0x575f000
016a3fd0  add x1,x1,#0xee4
016a3fd4  mov x0,x19
016a3fd8  bl 0x0124f120
016a3fdc  orr w1,wzr,#0xfffffffe
016a3fe0  mov w2,#0x1
016a3fe4  mov x0,x19
016a3fe8  bl 0x0124cfc0
016a3fec  mov x0,x19
016a3ff0  mov w1,w20
016a3ff4  bl 0x0124e060
016a3ff8  orr w1,wzr,#0xfffffffd
016a3ffc  mov x0,x19
016a4000  bl 0x0124c4d0
016a4004  ldr x19,[sp, #0x10]
016a4008  orr w1,wzr,#0xfffffffd
016a400c  mov w2,#0x6e7
016a4010  mov x0,x19
016a4014  bl 0x0124a650
016a4018  orr w1,wzr,#0xfffffffe
016a401c  mov x0,x19
016a4020  bl 0x0124c0c0
016a4024  orr w1,wzr,#0xfffffffe
016a4028  mov x0,x19
016a402c  bl 0x0124e920
016a4030  mov w20,w0
016a4034  adrp x1,0x575f000
016a4038  add x1,x1,#0xee4
016a403c  mov x0,x19
016a4040  bl 0x0124f120
016a4044  orr w1,wzr,#0xfffffffe
016a4048  mov w2,#0x1
016a404c  mov x0,x19
016a4050  bl 0x0124cfc0
016a4054  mov x0,x19
016a4058  mov w1,w20
016a405c  bl 0x0124e060
016a4060  orr w1,wzr,#0xfffffffd
016a4064  mov x0,x19
016a4068  bl 0x0124c4d0
016a406c  ldr w8,[sp, #0x18]
016a4070  ldr x0,[sp, #0x10]
016a4074  sub w8,w8,#0x3
016a4078  str w8,[sp, #0x18]
016a407c  orr w1,wzr,#0xfffffffc
016a4080  bl 0x0124c4d0
016a4084  ldr w8,[sp, #0x18]
016a4088  ldr x0,[sp, #0x10]
016a408c  str wzr,[sp, #0x18]
016a4090  cmp w8,#0x1
016a4094  b.lt 0x016a40b8
016a4098  mvn w1,w8
016a409c  bl 0x0124c4d0
016a40a0  ldr w8,[sp, #0x18]
016a40a4  cmp w8,#0x1
016a40a8  b.lt 0x016a40b8
016a40ac  ldr x0,[sp, #0x10]
016a40b0  mvn w1,w8
016a40b4  bl 0x0124c4d0
016a40b8  ldr w8,[sp, #0x8]
016a40bc  cmp w8,#0x1
016a40c0  b.lt 0x016a40d0
016a40c4  ldr x0,[sp]
016a40c8  mvn w1,w8
016a40cc  bl 0x0124c4d0
016a40d0  ldp x29,x30,[sp, #0x30]
016a40d4  ldp x20,x19,[sp, #0x20]
016a40d8  add sp,sp,#0x40
016a40dc  ret
