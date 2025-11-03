// ===== case610-MapAnchorComponent @ 01709e04 =====
// existing function case610-MapAnchorComponent
01709e04  sub sp,sp,#0x40
01709e08  stp x20,x19,[sp, #0x20]
01709e0c  stp x29,x30,[sp, #0x30]
01709e10  add x29,sp,#0x30
01709e14  adrp x1,0x174a000
01709e18  add x1,x1,#0x87c
01709e1c  mov x19,x0
01709e20  bl 0x0124ba40
01709e24  adrp x1,0x575d000
01709e28  add x1,x1,#0xa06
01709e2c  mov x0,x19
01709e30  str x19,[sp]
01709e34  bl 0x01251aa0
01709e38  mov w8,#0x1
01709e3c  str w8,[sp, #0x8]
01709e40  mov x0,sp
01709e44  bl 0x0174aa04
01709e48  adrp x1,0x576a000
01709e4c  adrp x3,0x736d000
01709e50  add x1,x1,#0x509
01709e54  add x3,x3,#0x101
01709e58  add x0,sp,#0x10
01709e5c  mov x2,sp
01709e60  bl 0x018fa130
01709e64  ldr x0,[sp, #0x10]
01709e68  mov w1,#0x10
01709e6c  bl 0x0124cba0
01709e70  adrp x8,0x18fa000
01709e74  dup v0.2D,xzr
01709e78  add x8,x8,#0x128
01709e7c  mov v0.D[0x0],x8
01709e80  str q0,[x0]
01709e84  ldr x0,[sp, #0x10]
01709e88  adrp x1,0x18fa000
01709e8c  add x1,x1,#0x4f4
01709e90  mov w2,#0x1
01709e94  bl 0x0124ec90
01709e98  ldr x0,[sp, #0x10]
01709e9c  mov w1,#0xffffffff
01709ea0  bl 0x0124c0c0
01709ea4  ldr x19,[sp, #0x10]
01709ea8  orr w1,wzr,#0xfffffffb
01709eac  mov w2,#0x6e7
01709eb0  mov x0,x19
01709eb4  bl 0x0124a650
01709eb8  orr w1,wzr,#0xfffffffe
01709ebc  mov x0,x19
01709ec0  bl 0x0124c0c0
01709ec4  orr w1,wzr,#0xfffffffe
01709ec8  mov x0,x19
01709ecc  bl 0x0124e920
01709ed0  mov w20,w0
01709ed4  adrp x1,0x576a000
01709ed8  add x1,x1,#0x51c
01709edc  mov x0,x19
01709ee0  bl 0x0124f120
01709ee4  orr w1,wzr,#0xfffffffe
01709ee8  mov w2,#0x1
01709eec  mov x0,x19
01709ef0  bl 0x0124cfc0
01709ef4  mov x0,x19
01709ef8  mov w1,w20
01709efc  bl 0x0124e060
01709f00  orr w1,wzr,#0xfffffffd
01709f04  mov x0,x19
01709f08  bl 0x0124c4d0
01709f0c  ldr x19,[sp, #0x10]
01709f10  orr w1,wzr,#0xfffffffd
01709f14  mov w2,#0x6e7
01709f18  mov x0,x19
01709f1c  bl 0x0124a650
01709f20  orr w1,wzr,#0xfffffffe
01709f24  mov x0,x19
01709f28  bl 0x0124c0c0
01709f2c  orr w1,wzr,#0xfffffffe
01709f30  mov x0,x19
01709f34  bl 0x0124e920
01709f38  mov w20,w0
01709f3c  adrp x1,0x576a000
01709f40  add x1,x1,#0x51c
01709f44  mov x0,x19
01709f48  bl 0x0124f120
01709f4c  orr w1,wzr,#0xfffffffe
01709f50  mov w2,#0x1
01709f54  mov x0,x19
01709f58  bl 0x0124cfc0
01709f5c  mov x0,x19
01709f60  mov w1,w20
01709f64  bl 0x0124e060
01709f68  orr w1,wzr,#0xfffffffd
01709f6c  mov x0,x19
01709f70  bl 0x0124c4d0
01709f74  ldr w8,[sp, #0x18]
01709f78  ldr x0,[sp, #0x10]
01709f7c  sub w8,w8,#0x3
01709f80  str w8,[sp, #0x18]
01709f84  orr w1,wzr,#0xfffffffc
01709f88  bl 0x0124c4d0
01709f8c  ldr w8,[sp, #0x18]
01709f90  ldr x0,[sp, #0x10]
01709f94  str wzr,[sp, #0x18]
01709f98  cmp w8,#0x1
01709f9c  b.lt 0x01709fc0
01709fa0  mvn w1,w8
01709fa4  bl 0x0124c4d0
01709fa8  ldr w8,[sp, #0x18]
01709fac  cmp w8,#0x1
01709fb0  b.lt 0x01709fc0
01709fb4  ldr x0,[sp, #0x10]
01709fb8  mvn w1,w8
01709fbc  bl 0x0124c4d0
01709fc0  ldr w8,[sp, #0x8]
01709fc4  cmp w8,#0x1
01709fc8  b.lt 0x01709fd8
01709fcc  ldr x0,[sp]
01709fd0  mvn w1,w8
01709fd4  bl 0x0124c4d0
01709fd8  ldp x29,x30,[sp, #0x30]
01709fdc  ldp x20,x19,[sp, #0x20]
01709fe0  add sp,sp,#0x40
01709fe4  ret
