// ===== case444-BulletCommonConfig @ 016e8e18 =====
// existing function case444-BulletCommonConfig
016e8e18  sub sp,sp,#0x40
016e8e1c  str x19,[sp, #0x20]
016e8e20  stp x29,x30,[sp, #0x30]
016e8e24  add x29,sp,#0x30
016e8e28  adrp x1,0x174a000
016e8e2c  add x1,x1,#0x87c
016e8e30  mov x19,x0
016e8e34  bl 0x0124ba40
016e8e38  adrp x1,0x575d000
016e8e3c  add x1,x1,#0xa06
016e8e40  mov x0,x19
016e8e44  str x19,[sp]
016e8e48  bl 0x01251aa0
016e8e4c  mov w8,#0x1
016e8e50  str w8,[sp, #0x8]
016e8e54  mov x0,sp
016e8e58  bl 0x0174aa04
016e8e5c  adrp x1,0x5766000
016e8e60  adrp x3,0x736d000
016e8e64  add x1,x1,#0x96f
016e8e68  add x3,x3,#0x101
016e8e6c  add x0,sp,#0x10
016e8e70  mov x2,sp
016e8e74  bl 0x0186a4c4
016e8e78  adrp x1,0x5766000
016e8e7c  adrp x2,0x186a000
016e8e80  adrp x4,0x186a000
016e8e84  add x1,x1,#0x982
016e8e88  add x2,x2,#0xb4
016e8e8c  add x4,x4,#0xbc
016e8e90  add x0,sp,#0x10
016e8e94  mov x3,xzr
016e8e98  mov x5,xzr
016e8e9c  bl 0x01869ecc
016e8ea0  adrp x1,0x5766000
016e8ea4  adrp x2,0x186a000
016e8ea8  adrp x4,0x186a000
016e8eac  add x1,x1,#0x990
016e8eb0  add x2,x2,#0xc4
016e8eb4  add x4,x4,#0xcc
016e8eb8  mov x3,xzr
016e8ebc  mov x5,xzr
016e8ec0  bl 0x01869ecc
016e8ec4  adrp x1,0x5766000
016e8ec8  adrp x2,0x186a000
016e8ecc  adrp x4,0x186a000
016e8ed0  add x1,x1,#0x9a1
016e8ed4  add x2,x2,#0x2bc
016e8ed8  add x4,x4,#0x2c4
016e8edc  mov x3,xzr
016e8ee0  mov x5,xzr
016e8ee4  bl 0x0186a0d4
016e8ee8  adrp x1,0x5766000
016e8eec  adrp x2,0x186a000
016e8ef0  adrp x4,0x186a000
016e8ef4  add x1,x1,#0x9b1
016e8ef8  add x2,x2,#0x4b4
016e8efc  add x4,x4,#0x4bc
016e8f00  mov x3,xzr
016e8f04  mov x5,xzr
016e8f08  bl 0x0186a2cc
016e8f0c  mov x19,x0
016e8f10  ldr w8,[x19, #0x8]
016e8f14  ldr x0,[x19]
016e8f18  sub w8,w8,#0x3
016e8f1c  str w8,[x19, #0x8]
016e8f20  orr w1,wzr,#0xfffffffc
016e8f24  bl 0x0124c4d0
016e8f28  ldr w8,[x19, #0x8]
016e8f2c  ldr x0,[x19]
016e8f30  str wzr,[x19, #0x8]
016e8f34  cmp w8,#0x1
016e8f38  b.lt 0x016e8f44
016e8f3c  mvn w1,w8
016e8f40  bl 0x0124c4d0
016e8f44  ldr w8,[sp, #0x18]
016e8f48  cmp w8,#0x1
016e8f4c  b.lt 0x016e8f5c
016e8f50  ldr x0,[sp, #0x10]
016e8f54  mvn w1,w8
016e8f58  bl 0x0124c4d0
016e8f5c  ldr w8,[sp, #0x8]
016e8f60  cmp w8,#0x1
016e8f64  b.lt 0x016e8f74
016e8f68  ldr x0,[sp]
016e8f6c  mvn w1,w8
016e8f70  bl 0x0124c4d0
016e8f74  ldp x29,x30,[sp, #0x30]
016e8f78  ldr x19,[sp, #0x20]
016e8f7c  add sp,sp,#0x40
016e8f80  ret
