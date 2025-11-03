// ===== case272-MonsterWaveGrowthCoefficentData @ 016b9e8c =====
// existing function case272-MonsterWaveGrowthCoefficentData
016b9e8c  sub sp,sp,#0x50
016b9e90  str x21,[sp, #0x20]
016b9e94  stp x20,x19,[sp, #0x30]
016b9e98  stp x29,x30,[sp, #0x40]
016b9e9c  add x29,sp,#0x40
016b9ea0  adrp x1,0x174a000
016b9ea4  add x1,x1,#0x87c
016b9ea8  mov x19,x0
016b9eac  bl 0x0124ba40
016b9eb0  adrp x1,0x575d000
016b9eb4  add x1,x1,#0xa06
016b9eb8  mov x0,x19
016b9ebc  str x19,[sp]
016b9ec0  bl 0x01251aa0
016b9ec4  mov w8,#0x1
016b9ec8  str w8,[sp, #0x8]
016b9ecc  mov x0,sp
016b9ed0  bl 0x0174aa04
016b9ed4  adrp x1,0x5761000
016b9ed8  adrp x3,0x736d000
016b9edc  add x1,x1,#0x875
016b9ee0  add x3,x3,#0x101
016b9ee4  add x0,sp,#0x10
016b9ee8  mov x2,sp
016b9eec  bl 0x017e42b0
016b9ef0  adrp x1,0x5761000
016b9ef4  adrp x2,0x17e4000
016b9ef8  adrp x4,0x17e4000
016b9efc  add x1,x1,#0x895
016b9f00  add x2,x2,#0x298
016b9f04  add x4,x4,#0x2a0
016b9f08  add x0,sp,#0x10
016b9f0c  mov x3,xzr
016b9f10  mov x5,xzr
016b9f14  bl 0x017e40b0
016b9f18  mov x19,x0
016b9f1c  ldr x0,[x19]
016b9f20  mov w1,#0x10
016b9f24  bl 0x0124cba0
016b9f28  adrp x8,0x17e4000
016b9f2c  dup v0.2D,xzr
016b9f30  add x8,x8,#0x2a8
016b9f34  mov v0.D[0x0],x8
016b9f38  str q0,[x0]
016b9f3c  ldr x0,[x19]
016b9f40  adrp x1,0x17e4000
016b9f44  add x1,x1,#0x894
016b9f48  mov w2,#0x1
016b9f4c  bl 0x0124ec90
016b9f50  ldr x0,[x19]
016b9f54  mov w1,#0xffffffff
016b9f58  bl 0x0124c0c0
016b9f5c  ldr x20,[x19]
016b9f60  orr w1,wzr,#0xfffffffb
016b9f64  mov w2,#0x6e7
016b9f68  mov x0,x20
016b9f6c  bl 0x0124a650
016b9f70  orr w1,wzr,#0xfffffffe
016b9f74  mov x0,x20
016b9f78  bl 0x0124c0c0
016b9f7c  orr w1,wzr,#0xfffffffe
016b9f80  mov x0,x20
016b9f84  bl 0x0124e920
016b9f88  mov w21,w0
016b9f8c  adrp x1,0x5761000
016b9f90  add x1,x1,#0x8a5
016b9f94  mov x0,x20
016b9f98  bl 0x0124f120
016b9f9c  orr w1,wzr,#0xfffffffe
016b9fa0  mov w2,#0x1
016b9fa4  mov x0,x20
016b9fa8  bl 0x0124cfc0
016b9fac  mov x0,x20
016b9fb0  mov w1,w21
016b9fb4  bl 0x0124e060
016b9fb8  orr w1,wzr,#0xfffffffd
016b9fbc  mov x0,x20
016b9fc0  bl 0x0124c4d0
016b9fc4  ldr x20,[x19]
016b9fc8  orr w1,wzr,#0xfffffffd
016b9fcc  mov w2,#0x6e7
016b9fd0  mov x0,x20
016b9fd4  bl 0x0124a650
016b9fd8  orr w1,wzr,#0xfffffffe
016b9fdc  mov x0,x20
016b9fe0  bl 0x0124c0c0
016b9fe4  orr w1,wzr,#0xfffffffe
016b9fe8  mov x0,x20
016b9fec  bl 0x0124e920
016b9ff0  mov w21,w0
016b9ff4  adrp x1,0x5761000
016b9ff8  add x1,x1,#0x8a5
016b9ffc  mov x0,x20
016ba000  bl 0x0124f120
016ba004  orr w1,wzr,#0xfffffffe
016ba008  mov w2,#0x1
016ba00c  mov x0,x20
016ba010  bl 0x0124cfc0
016ba014  mov x0,x20
016ba018  mov w1,w21
016ba01c  bl 0x0124e060
016ba020  orr w1,wzr,#0xfffffffd
016ba024  mov x0,x20
016ba028  bl 0x0124c4d0
016ba02c  ldr w8,[x19, #0x8]
016ba030  ldr x0,[x19]
016ba034  sub w8,w8,#0x3
016ba038  str w8,[x19, #0x8]
016ba03c  orr w1,wzr,#0xfffffffc
016ba040  bl 0x0124c4d0
016ba044  ldr w8,[x19, #0x8]
016ba048  ldr x0,[x19]
016ba04c  str wzr,[x19, #0x8]
016ba050  cmp w8,#0x1
016ba054  b.lt 0x016ba060
016ba058  mvn w1,w8
016ba05c  bl 0x0124c4d0
016ba060  ldr w8,[sp, #0x18]
016ba064  cmp w8,#0x1
016ba068  b.lt 0x016ba078
016ba06c  ldr x0,[sp, #0x10]
016ba070  mvn w1,w8
016ba074  bl 0x0124c4d0
016ba078  ldr w8,[sp, #0x8]
016ba07c  cmp w8,#0x1
016ba080  b.lt 0x016ba090
016ba084  ldr x0,[sp]
016ba088  mvn w1,w8
016ba08c  bl 0x0124c4d0
016ba090  ldp x29,x30,[sp, #0x40]
016ba094  ldp x20,x19,[sp, #0x30]
016ba098  ldr x21,[sp, #0x20]
016ba09c  add sp,sp,#0x50
016ba0a0  ret
