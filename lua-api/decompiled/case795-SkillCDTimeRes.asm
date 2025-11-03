// ===== case795-SkillCDTimeRes @ 01732d84 =====
// existing function case795-SkillCDTimeRes
01732d84  sub sp,sp,#0x50
01732d88  str x21,[sp, #0x20]
01732d8c  stp x20,x19,[sp, #0x30]
01732d90  stp x29,x30,[sp, #0x40]
01732d94  add x29,sp,#0x40
01732d98  adrp x1,0x174a000
01732d9c  add x1,x1,#0x87c
01732da0  mov x19,x0
01732da4  bl 0x0124ba40
01732da8  adrp x1,0x575d000
01732dac  add x1,x1,#0xa06
01732db0  mov x0,x19
01732db4  str x19,[sp]
01732db8  bl 0x01251aa0
01732dbc  mov w8,#0x1
01732dc0  str w8,[sp, #0x8]
01732dc4  mov x0,sp
01732dc8  bl 0x0174aa04
01732dcc  adrp x1,0x5771000
01732dd0  adrp x3,0x736d000
01732dd4  add x1,x1,#0xf57
01732dd8  add x3,x3,#0x101
01732ddc  add x0,sp,#0x10
01732de0  mov x2,sp
01732de4  bl 0x019b4408
01732de8  adrp x1,0x5944000
01732dec  adrp x2,0x19b4000
01732df0  adrp x4,0x19b4000
01732df4  add x1,x1,#0xaba
01732df8  add x2,x2,#0x0
01732dfc  add x4,x4,#0x8
01732e00  add x0,sp,#0x10
01732e04  mov x3,xzr
01732e08  mov x5,xzr
01732e0c  bl 0x019b3e18
01732e10  adrp x1,0x595c000
01732e14  adrp x2,0x19b4000
01732e18  adrp x4,0x19b4000
01732e1c  add x1,x1,#0x9c4
01732e20  add x2,x2,#0x1f8
01732e24  add x4,x4,#0x200
01732e28  mov x3,xzr
01732e2c  mov x5,xzr
01732e30  bl 0x019b4010
01732e34  mov x19,x0
01732e38  ldr x0,[x19]
01732e3c  mov w1,#0x10
01732e40  bl 0x0124cba0
01732e44  adrp x8,0x19b4000
01732e48  dup v0.2D,xzr
01732e4c  add x8,x8,#0x208
01732e50  mov v0.D[0x0],x8
01732e54  str q0,[x0]
01732e58  ldr x0,[x19]
01732e5c  adrp x1,0x19b4000
01732e60  add x1,x1,#0xc38
01732e64  mov w2,#0x1
01732e68  bl 0x0124ec90
01732e6c  ldr x0,[x19]
01732e70  mov w1,#0xffffffff
01732e74  bl 0x0124c0c0
01732e78  ldr x20,[x19]
01732e7c  orr w1,wzr,#0xfffffffb
01732e80  mov w2,#0x6e7
01732e84  mov x0,x20
01732e88  bl 0x0124a650
01732e8c  orr w1,wzr,#0xfffffffe
01732e90  mov x0,x20
01732e94  bl 0x0124c0c0
01732e98  orr w1,wzr,#0xfffffffe
01732e9c  mov x0,x20
01732ea0  bl 0x0124e920
01732ea4  mov w21,w0
01732ea8  adrp x1,0x5771000
01732eac  add x1,x1,#0xf66
01732eb0  mov x0,x20
01732eb4  bl 0x0124f120
01732eb8  orr w1,wzr,#0xfffffffe
01732ebc  mov w2,#0x1
01732ec0  mov x0,x20
01732ec4  bl 0x0124cfc0
01732ec8  mov x0,x20
01732ecc  mov w1,w21
01732ed0  bl 0x0124e060
01732ed4  orr w1,wzr,#0xfffffffd
01732ed8  mov x0,x20
01732edc  bl 0x0124c4d0
01732ee0  ldr x20,[x19]
01732ee4  orr w1,wzr,#0xfffffffd
01732ee8  mov w2,#0x6e7
01732eec  mov x0,x20
01732ef0  bl 0x0124a650
01732ef4  orr w1,wzr,#0xfffffffe
01732ef8  mov x0,x20
01732efc  bl 0x0124c0c0
01732f00  orr w1,wzr,#0xfffffffe
01732f04  mov x0,x20
01732f08  bl 0x0124e920
01732f0c  mov w21,w0
01732f10  adrp x1,0x5771000
01732f14  add x1,x1,#0xf66
01732f18  mov x0,x20
01732f1c  bl 0x0124f120
01732f20  orr w1,wzr,#0xfffffffe
01732f24  mov w2,#0x1
01732f28  mov x0,x20
01732f2c  bl 0x0124cfc0
01732f30  mov x0,x20
01732f34  mov w1,w21
01732f38  bl 0x0124e060
01732f3c  orr w1,wzr,#0xfffffffd
01732f40  mov x0,x20
01732f44  bl 0x0124c4d0
01732f48  adrp x1,0x5771000
01732f4c  adrp x2,0x19b4000
01732f50  adrp x4,0x19b4000
01732f54  add x1,x1,#0xf6e
01732f58  add x2,x2,#0x3f8
01732f5c  add x4,x4,#0x400
01732f60  mov x0,x19
01732f64  mov x3,xzr
01732f68  mov x5,xzr
01732f6c  bl 0x019b4210
01732f70  mov x19,x0
01732f74  ldr w8,[x19, #0x8]
01732f78  ldr x0,[x19]
01732f7c  sub w8,w8,#0x3
01732f80  str w8,[x19, #0x8]
01732f84  orr w1,wzr,#0xfffffffc
01732f88  bl 0x0124c4d0
01732f8c  ldr w8,[x19, #0x8]
01732f90  ldr x0,[x19]
01732f94  str wzr,[x19, #0x8]
01732f98  cmp w8,#0x1
01732f9c  b.lt 0x01732fa8
01732fa0  mvn w1,w8
01732fa4  bl 0x0124c4d0
01732fa8  ldr w8,[sp, #0x18]
01732fac  cmp w8,#0x1
01732fb0  b.lt 0x01732fc0
01732fb4  ldr x0,[sp, #0x10]
01732fb8  mvn w1,w8
01732fbc  bl 0x0124c4d0
01732fc0  ldr w8,[sp, #0x8]
01732fc4  cmp w8,#0x1
01732fc8  b.lt 0x01732fd8
01732fcc  ldr x0,[sp]
01732fd0  mvn w1,w8
01732fd4  bl 0x0124c4d0
01732fd8  ldp x29,x30,[sp, #0x40]
01732fdc  ldp x20,x19,[sp, #0x30]
01732fe0  ldr x21,[sp, #0x20]
01732fe4  add sp,sp,#0x50
01732fe8  ret
