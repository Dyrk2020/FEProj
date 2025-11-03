// ===== case528-ActorVisionMgr @ 016f8dfc =====
// existing function case528-ActorVisionMgr
016f8dfc  sub sp,sp,#0x40
016f8e00  stp x20,x19,[sp, #0x20]
016f8e04  stp x29,x30,[sp, #0x30]
016f8e08  add x29,sp,#0x30
016f8e0c  adrp x1,0x174a000
016f8e10  add x1,x1,#0x87c
016f8e14  mov x19,x0
016f8e18  bl 0x0124ba40
016f8e1c  adrp x1,0x575d000
016f8e20  add x1,x1,#0xa06
016f8e24  mov x0,x19
016f8e28  str x19,[sp]
016f8e2c  bl 0x01251aa0
016f8e30  mov w8,#0x1
016f8e34  str w8,[sp, #0x8]
016f8e38  mov x0,sp
016f8e3c  bl 0x0174aa04
016f8e40  adrp x1,0x5768000
016f8e44  adrp x3,0x736d000
016f8e48  add x1,x1,#0xaba
016f8e4c  add x3,x3,#0x101
016f8e50  add x0,sp,#0x10
016f8e54  mov x2,sp
016f8e58  bl 0x018aee70
016f8e5c  ldr x0,[sp, #0x10]
016f8e60  mov w1,#0x10
016f8e64  bl 0x0124cba0
016f8e68  adrp x8,0x18ae000
016f8e6c  dup v0.2D,xzr
016f8e70  add x8,x8,#0xe68
016f8e74  mov v0.D[0x0],x8
016f8e78  str q0,[x0]
016f8e7c  ldr x0,[sp, #0x10]
016f8e80  adrp x1,0x18af000
016f8e84  add x1,x1,#0x234
016f8e88  mov w2,#0x1
016f8e8c  bl 0x0124ec90
016f8e90  ldr x0,[sp, #0x10]
016f8e94  mov w1,#0xffffffff
016f8e98  bl 0x0124c0c0
016f8e9c  ldr x19,[sp, #0x10]
016f8ea0  orr w1,wzr,#0xfffffffb
016f8ea4  mov w2,#0x6e7
016f8ea8  mov x0,x19
016f8eac  bl 0x0124a650
016f8eb0  orr w1,wzr,#0xfffffffe
016f8eb4  mov x0,x19
016f8eb8  bl 0x0124c0c0
016f8ebc  orr w1,wzr,#0xfffffffe
016f8ec0  mov x0,x19
016f8ec4  bl 0x0124e920
016f8ec8  mov w20,w0
016f8ecc  adrp x1,0x5768000
016f8ed0  add x1,x1,#0xac9
016f8ed4  mov x0,x19
016f8ed8  bl 0x0124f120
016f8edc  orr w1,wzr,#0xfffffffe
016f8ee0  mov w2,#0x1
016f8ee4  mov x0,x19
016f8ee8  bl 0x0124cfc0
016f8eec  mov x0,x19
016f8ef0  mov w1,w20
016f8ef4  bl 0x0124e060
016f8ef8  orr w1,wzr,#0xfffffffd
016f8efc  mov x0,x19
016f8f00  bl 0x0124c4d0
016f8f04  ldr x19,[sp, #0x10]
016f8f08  orr w1,wzr,#0xfffffffd
016f8f0c  mov w2,#0x6e7
016f8f10  mov x0,x19
016f8f14  bl 0x0124a650
016f8f18  orr w1,wzr,#0xfffffffe
016f8f1c  mov x0,x19
016f8f20  bl 0x0124c0c0
016f8f24  orr w1,wzr,#0xfffffffe
016f8f28  mov x0,x19
016f8f2c  bl 0x0124e920
016f8f30  mov w20,w0
016f8f34  adrp x1,0x5768000
016f8f38  add x1,x1,#0xac9
016f8f3c  mov x0,x19
016f8f40  bl 0x0124f120
016f8f44  orr w1,wzr,#0xfffffffe
016f8f48  mov w2,#0x1
016f8f4c  mov x0,x19
016f8f50  bl 0x0124cfc0
016f8f54  mov x0,x19
016f8f58  mov w1,w20
016f8f5c  bl 0x0124e060
016f8f60  orr w1,wzr,#0xfffffffd
016f8f64  mov x0,x19
016f8f68  bl 0x0124c4d0
016f8f6c  ldr w8,[sp, #0x18]
016f8f70  ldr x0,[sp, #0x10]
016f8f74  sub w8,w8,#0x3
016f8f78  str w8,[sp, #0x18]
016f8f7c  orr w1,wzr,#0xfffffffc
016f8f80  bl 0x0124c4d0
016f8f84  ldr w8,[sp, #0x18]
016f8f88  ldr x0,[sp, #0x10]
016f8f8c  str wzr,[sp, #0x18]
016f8f90  cmp w8,#0x1
016f8f94  b.lt 0x016f8fb8
016f8f98  mvn w1,w8
016f8f9c  bl 0x0124c4d0
016f8fa0  ldr w8,[sp, #0x18]
016f8fa4  cmp w8,#0x1
016f8fa8  b.lt 0x016f8fb8
016f8fac  ldr x0,[sp, #0x10]
016f8fb0  mvn w1,w8
016f8fb4  bl 0x0124c4d0
016f8fb8  ldr w8,[sp, #0x8]
016f8fbc  cmp w8,#0x1
016f8fc0  b.lt 0x016f8fd0
016f8fc4  ldr x0,[sp]
016f8fc8  mvn w1,w8
016f8fcc  bl 0x0124c4d0
016f8fd0  ldp x29,x30,[sp, #0x30]
016f8fd4  ldp x20,x19,[sp, #0x20]
016f8fd8  add sp,sp,#0x40
016f8fdc  ret
