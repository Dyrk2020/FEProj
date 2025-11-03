// ===== case263-SoldierDieTimeResObject @ 016b8e0c =====
// existing function case263-SoldierDieTimeResObject
016b8e0c  sub sp,sp,#0x40
016b8e10  stp x20,x19,[sp, #0x20]
016b8e14  stp x29,x30,[sp, #0x30]
016b8e18  add x29,sp,#0x30
016b8e1c  adrp x1,0x174a000
016b8e20  add x1,x1,#0x87c
016b8e24  mov x19,x0
016b8e28  bl 0x0124ba40
016b8e2c  adrp x1,0x575d000
016b8e30  add x1,x1,#0xa06
016b8e34  mov x0,x19
016b8e38  str x19,[sp]
016b8e3c  bl 0x01251aa0
016b8e40  mov w8,#0x1
016b8e44  str w8,[sp, #0x8]
016b8e48  mov x0,sp
016b8e4c  bl 0x0174aa04
016b8e50  adrp x1,0x5761000
016b8e54  adrp x3,0x736d000
016b8e58  add x1,x1,#0x701
016b8e5c  add x3,x3,#0x101
016b8e60  add x0,sp,#0x10
016b8e64  mov x2,sp
016b8e68  bl 0x017dee04
016b8e6c  ldr x0,[sp, #0x10]
016b8e70  mov w1,#0x10
016b8e74  bl 0x0124cba0
016b8e78  adrp x8,0x17de000
016b8e7c  dup v0.2D,xzr
016b8e80  add x8,x8,#0xdfc
016b8e84  mov v0.D[0x0],x8
016b8e88  str q0,[x0]
016b8e8c  ldr x0,[sp, #0x10]
016b8e90  adrp x1,0x17df000
016b8e94  add x1,x1,#0x1c8
016b8e98  mov w2,#0x1
016b8e9c  bl 0x0124ec90
016b8ea0  ldr x0,[sp, #0x10]
016b8ea4  mov w1,#0xffffffff
016b8ea8  bl 0x0124c0c0
016b8eac  ldr x19,[sp, #0x10]
016b8eb0  orr w1,wzr,#0xfffffffb
016b8eb4  mov w2,#0x6e7
016b8eb8  mov x0,x19
016b8ebc  bl 0x0124a650
016b8ec0  orr w1,wzr,#0xfffffffe
016b8ec4  mov x0,x19
016b8ec8  bl 0x0124c0c0
016b8ecc  orr w1,wzr,#0xfffffffe
016b8ed0  mov x0,x19
016b8ed4  bl 0x0124e920
016b8ed8  mov w20,w0
016b8edc  adrp x1,0x5761000
016b8ee0  add x1,x1,#0x719
016b8ee4  mov x0,x19
016b8ee8  bl 0x0124f120
016b8eec  orr w1,wzr,#0xfffffffe
016b8ef0  mov w2,#0x1
016b8ef4  mov x0,x19
016b8ef8  bl 0x0124cfc0
016b8efc  mov x0,x19
016b8f00  mov w1,w20
016b8f04  bl 0x0124e060
016b8f08  orr w1,wzr,#0xfffffffd
016b8f0c  mov x0,x19
016b8f10  bl 0x0124c4d0
016b8f14  ldr x19,[sp, #0x10]
016b8f18  orr w1,wzr,#0xfffffffd
016b8f1c  mov w2,#0x6e7
016b8f20  mov x0,x19
016b8f24  bl 0x0124a650
016b8f28  orr w1,wzr,#0xfffffffe
016b8f2c  mov x0,x19
016b8f30  bl 0x0124c0c0
016b8f34  orr w1,wzr,#0xfffffffe
016b8f38  mov x0,x19
016b8f3c  bl 0x0124e920
016b8f40  mov w20,w0
016b8f44  adrp x1,0x5761000
016b8f48  add x1,x1,#0x719
016b8f4c  mov x0,x19
016b8f50  bl 0x0124f120
016b8f54  orr w1,wzr,#0xfffffffe
016b8f58  mov w2,#0x1
016b8f5c  mov x0,x19
016b8f60  bl 0x0124cfc0
016b8f64  mov x0,x19
016b8f68  mov w1,w20
016b8f6c  bl 0x0124e060
016b8f70  orr w1,wzr,#0xfffffffd
016b8f74  mov x0,x19
016b8f78  bl 0x0124c4d0
016b8f7c  ldr w8,[sp, #0x18]
016b8f80  ldr x0,[sp, #0x10]
016b8f84  sub w8,w8,#0x3
016b8f88  str w8,[sp, #0x18]
016b8f8c  orr w1,wzr,#0xfffffffc
016b8f90  bl 0x0124c4d0
016b8f94  ldr w8,[sp, #0x18]
016b8f98  ldr x0,[sp, #0x10]
016b8f9c  str wzr,[sp, #0x18]
016b8fa0  cmp w8,#0x1
016b8fa4  b.lt 0x016b8fc8
016b8fa8  mvn w1,w8
016b8fac  bl 0x0124c4d0
016b8fb0  ldr w8,[sp, #0x18]
016b8fb4  cmp w8,#0x1
016b8fb8  b.lt 0x016b8fc8
016b8fbc  ldr x0,[sp, #0x10]
016b8fc0  mvn w1,w8
016b8fc4  bl 0x0124c4d0
016b8fc8  ldr w8,[sp, #0x8]
016b8fcc  cmp w8,#0x1
016b8fd0  b.lt 0x016b8fe0
016b8fd4  ldr x0,[sp]
016b8fd8  mvn w1,w8
016b8fdc  bl 0x0124c4d0
016b8fe0  ldp x29,x30,[sp, #0x30]
016b8fe4  ldp x20,x19,[sp, #0x20]
016b8fe8  add sp,sp,#0x40
016b8fec  ret
