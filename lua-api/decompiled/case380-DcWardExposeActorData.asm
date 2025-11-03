// ===== case380-DcWardExposeActorData @ 016d7d74 =====
// existing function case380-DcWardExposeActorData
016d7d74  sub sp,sp,#0x40
016d7d78  stp x20,x19,[sp, #0x20]
016d7d7c  stp x29,x30,[sp, #0x30]
016d7d80  add x29,sp,#0x30
016d7d84  adrp x1,0x174a000
016d7d88  add x1,x1,#0x87c
016d7d8c  mov x19,x0
016d7d90  bl 0x0124ba40
016d7d94  adrp x1,0x575d000
016d7d98  add x1,x1,#0xa06
016d7d9c  mov x0,x19
016d7da0  str x19,[sp]
016d7da4  bl 0x01251aa0
016d7da8  mov w8,#0x1
016d7dac  str w8,[sp, #0x8]
016d7db0  mov x0,sp
016d7db4  bl 0x0174aa04
016d7db8  adrp x1,0x5764000
016d7dbc  adrp x3,0x736d000
016d7dc0  add x1,x1,#0xe30
016d7dc4  add x3,x3,#0x101
016d7dc8  add x0,sp,#0x10
016d7dcc  mov x2,sp
016d7dd0  bl 0x01835a48
016d7dd4  ldr x0,[sp, #0x10]
016d7dd8  mov w1,#0x10
016d7ddc  bl 0x0124cba0
016d7de0  adrp x8,0x1835000
016d7de4  dup v0.2D,xzr
016d7de8  add x8,x8,#0x640
016d7dec  mov v0.D[0x0],x8
016d7df0  str q0,[x0]
016d7df4  ldr x0,[sp, #0x10]
016d7df8  adrp x1,0x1835000
016d7dfc  add x1,x1,#0xe0c
016d7e00  mov w2,#0x1
016d7e04  bl 0x0124ec90
016d7e08  ldr x0,[sp, #0x10]
016d7e0c  mov w1,#0xffffffff
016d7e10  bl 0x0124c0c0
016d7e14  ldr x19,[sp, #0x10]
016d7e18  orr w1,wzr,#0xfffffffb
016d7e1c  mov w2,#0x6e7
016d7e20  mov x0,x19
016d7e24  bl 0x0124a650
016d7e28  orr w1,wzr,#0xfffffffe
016d7e2c  mov x0,x19
016d7e30  bl 0x0124c0c0
016d7e34  orr w1,wzr,#0xfffffffe
016d7e38  mov x0,x19
016d7e3c  bl 0x0124e920
016d7e40  mov w20,w0
016d7e44  adrp x1,0x5762000
016d7e48  add x1,x1,#0x1cd
016d7e4c  mov x0,x19
016d7e50  bl 0x0124f120
016d7e54  orr w1,wzr,#0xfffffffe
016d7e58  mov w2,#0x1
016d7e5c  mov x0,x19
016d7e60  bl 0x0124cfc0
016d7e64  mov x0,x19
016d7e68  mov w1,w20
016d7e6c  bl 0x0124e060
016d7e70  orr w1,wzr,#0xfffffffd
016d7e74  mov x0,x19
016d7e78  bl 0x0124c4d0
016d7e7c  ldr x19,[sp, #0x10]
016d7e80  orr w1,wzr,#0xfffffffd
016d7e84  mov w2,#0x6e7
016d7e88  mov x0,x19
016d7e8c  bl 0x0124a650
016d7e90  orr w1,wzr,#0xfffffffe
016d7e94  mov x0,x19
016d7e98  bl 0x0124c0c0
016d7e9c  orr w1,wzr,#0xfffffffe
016d7ea0  mov x0,x19
016d7ea4  bl 0x0124e920
016d7ea8  mov w20,w0
016d7eac  adrp x1,0x5762000
016d7eb0  add x1,x1,#0x1cd
016d7eb4  mov x0,x19
016d7eb8  bl 0x0124f120
016d7ebc  orr w1,wzr,#0xfffffffe
016d7ec0  mov w2,#0x1
016d7ec4  mov x0,x19
016d7ec8  bl 0x0124cfc0
016d7ecc  mov x0,x19
016d7ed0  mov w1,w20
016d7ed4  bl 0x0124e060
016d7ed8  orr w1,wzr,#0xfffffffd
016d7edc  mov x0,x19
016d7ee0  bl 0x0124c4d0
016d7ee4  adrp x1,0x575d000
016d7ee8  adrp x2,0x1835000
016d7eec  adrp x4,0x1835000
016d7ef0  add x1,x1,#0xadd
016d7ef4  add x2,x2,#0x830
016d7ef8  add x4,x4,#0x838
016d7efc  add x0,sp,#0x10
016d7f00  mov x3,xzr
016d7f04  mov x5,xzr
016d7f08  bl 0x01835648
016d7f0c  adrp x1,0x5764000
016d7f10  adrp x2,0x1835000
016d7f14  adrp x4,0x1835000
016d7f18  add x1,x1,#0xe46
016d7f1c  add x2,x2,#0x840
016d7f20  add x4,x4,#0x848
016d7f24  mov x3,xzr
016d7f28  mov x5,xzr
016d7f2c  bl 0x01835648
016d7f30  adrp x1,0x5764000
016d7f34  adrp x2,0x1835000
016d7f38  adrp x4,0x1835000
016d7f3c  add x1,x1,#0xe4f
016d7f40  add x2,x2,#0xa38
016d7f44  add x4,x4,#0xa40
016d7f48  mov x3,xzr
016d7f4c  mov x5,xzr
016d7f50  bl 0x01835850
016d7f54  mov x19,x0
016d7f58  ldr w8,[x19, #0x8]
016d7f5c  ldr x0,[x19]
016d7f60  sub w8,w8,#0x3
016d7f64  str w8,[x19, #0x8]
016d7f68  orr w1,wzr,#0xfffffffc
016d7f6c  bl 0x0124c4d0
016d7f70  ldr w8,[x19, #0x8]
016d7f74  ldr x0,[x19]
016d7f78  str wzr,[x19, #0x8]
016d7f7c  cmp w8,#0x1
016d7f80  b.lt 0x016d7f8c
016d7f84  mvn w1,w8
016d7f88  bl 0x0124c4d0
016d7f8c  ldr w8,[sp, #0x18]
016d7f90  cmp w8,#0x1
016d7f94  b.lt 0x016d7fa4
016d7f98  ldr x0,[sp, #0x10]
016d7f9c  mvn w1,w8
016d7fa0  bl 0x0124c4d0
016d7fa4  ldr w8,[sp, #0x8]
016d7fa8  cmp w8,#0x1
016d7fac  b.lt 0x016d7fbc
016d7fb0  ldr x0,[sp]
016d7fb4  mvn w1,w8
016d7fb8  bl 0x0124c4d0
016d7fbc  ldp x29,x30,[sp, #0x30]
016d7fc0  ldp x20,x19,[sp, #0x20]
016d7fc4  add sp,sp,#0x40
016d7fc8  ret
