// ===== case437-BulletInitProcessor @ 016e7da0 =====
// existing function case437-BulletInitProcessor
016e7da0  sub sp,sp,#0x40
016e7da4  stp x20,x19,[sp, #0x20]
016e7da8  stp x29,x30,[sp, #0x30]
016e7dac  add x29,sp,#0x30
016e7db0  adrp x1,0x174a000
016e7db4  add x1,x1,#0x87c
016e7db8  mov x19,x0
016e7dbc  bl 0x0124ba40
016e7dc0  adrp x1,0x575d000
016e7dc4  add x1,x1,#0xa06
016e7dc8  mov x0,x19
016e7dcc  str x19,[sp]
016e7dd0  bl 0x01251aa0
016e7dd4  mov w8,#0x1
016e7dd8  str w8,[sp, #0x8]
016e7ddc  mov x0,sp
016e7de0  bl 0x0174aa04
016e7de4  adrp x1,0x5766000
016e7de8  adrp x3,0x736d000
016e7dec  add x1,x1,#0x87c
016e7df0  add x3,x3,#0x101
016e7df4  add x0,sp,#0x10
016e7df8  mov x2,sp
016e7dfc  bl 0x01865b98
016e7e00  ldr x0,[sp, #0x10]
016e7e04  mov w1,#0x10
016e7e08  bl 0x0124cba0
016e7e0c  adrp x8,0x1865000
016e7e10  dup v0.2D,xzr
016e7e14  add x8,x8,#0xb90
016e7e18  mov v0.D[0x0],x8
016e7e1c  str q0,[x0]
016e7e20  ldr x0,[sp, #0x10]
016e7e24  adrp x1,0x1865000
016e7e28  add x1,x1,#0xf5c
016e7e2c  mov w2,#0x1
016e7e30  bl 0x0124ec90
016e7e34  ldr x0,[sp, #0x10]
016e7e38  mov w1,#0xffffffff
016e7e3c  bl 0x0124c0c0
016e7e40  ldr x19,[sp, #0x10]
016e7e44  orr w1,wzr,#0xfffffffb
016e7e48  mov w2,#0x6e7
016e7e4c  mov x0,x19
016e7e50  bl 0x0124a650
016e7e54  orr w1,wzr,#0xfffffffe
016e7e58  mov x0,x19
016e7e5c  bl 0x0124c0c0
016e7e60  orr w1,wzr,#0xfffffffe
016e7e64  mov x0,x19
016e7e68  bl 0x0124e920
016e7e6c  mov w20,w0
016e7e70  adrp x1,0x5766000
016e7e74  add x1,x1,#0x890
016e7e78  mov x0,x19
016e7e7c  bl 0x0124f120
016e7e80  orr w1,wzr,#0xfffffffe
016e7e84  mov w2,#0x1
016e7e88  mov x0,x19
016e7e8c  bl 0x0124cfc0
016e7e90  mov x0,x19
016e7e94  mov w1,w20
016e7e98  bl 0x0124e060
016e7e9c  orr w1,wzr,#0xfffffffd
016e7ea0  mov x0,x19
016e7ea4  bl 0x0124c4d0
016e7ea8  ldr x19,[sp, #0x10]
016e7eac  orr w1,wzr,#0xfffffffd
016e7eb0  mov w2,#0x6e7
016e7eb4  mov x0,x19
016e7eb8  bl 0x0124a650
016e7ebc  orr w1,wzr,#0xfffffffe
016e7ec0  mov x0,x19
016e7ec4  bl 0x0124c0c0
016e7ec8  orr w1,wzr,#0xfffffffe
016e7ecc  mov x0,x19
016e7ed0  bl 0x0124e920
016e7ed4  mov w20,w0
016e7ed8  adrp x1,0x5766000
016e7edc  add x1,x1,#0x890
016e7ee0  mov x0,x19
016e7ee4  bl 0x0124f120
016e7ee8  orr w1,wzr,#0xfffffffe
016e7eec  mov w2,#0x1
016e7ef0  mov x0,x19
016e7ef4  bl 0x0124cfc0
016e7ef8  mov x0,x19
016e7efc  mov w1,w20
016e7f00  bl 0x0124e060
016e7f04  orr w1,wzr,#0xfffffffd
016e7f08  mov x0,x19
016e7f0c  bl 0x0124c4d0
016e7f10  ldr w8,[sp, #0x18]
016e7f14  ldr x0,[sp, #0x10]
016e7f18  sub w8,w8,#0x3
016e7f1c  str w8,[sp, #0x18]
016e7f20  orr w1,wzr,#0xfffffffc
016e7f24  bl 0x0124c4d0
016e7f28  ldr w8,[sp, #0x18]
016e7f2c  ldr x0,[sp, #0x10]
016e7f30  str wzr,[sp, #0x18]
016e7f34  cmp w8,#0x1
016e7f38  b.lt 0x016e7f5c
016e7f3c  mvn w1,w8
016e7f40  bl 0x0124c4d0
016e7f44  ldr w8,[sp, #0x18]
016e7f48  cmp w8,#0x1
016e7f4c  b.lt 0x016e7f5c
016e7f50  ldr x0,[sp, #0x10]
016e7f54  mvn w1,w8
016e7f58  bl 0x0124c4d0
016e7f5c  ldr w8,[sp, #0x8]
016e7f60  cmp w8,#0x1
016e7f64  b.lt 0x016e7f74
016e7f68  ldr x0,[sp]
016e7f6c  mvn w1,w8
016e7f70  bl 0x0124c4d0
016e7f74  ldp x29,x30,[sp, #0x30]
016e7f78  ldp x20,x19,[sp, #0x20]
016e7f7c  add sp,sp,#0x40
016e7f80  ret
