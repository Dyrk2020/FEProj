// ===== case577-SceneRes @ 01702e18 =====
// existing function case577-SceneRes
01702e18  sub sp,sp,#0x50
01702e1c  str x21,[sp, #0x20]
01702e20  stp x20,x19,[sp, #0x30]
01702e24  stp x29,x30,[sp, #0x40]
01702e28  add x29,sp,#0x40
01702e2c  adrp x1,0x174a000
01702e30  add x1,x1,#0x87c
01702e34  mov x19,x0
01702e38  bl 0x0124ba40
01702e3c  adrp x1,0x575d000
01702e40  add x1,x1,#0xa06
01702e44  mov x0,x19
01702e48  str x19,[sp]
01702e4c  bl 0x01251aa0
01702e50  mov w8,#0x1
01702e54  str w8,[sp, #0x8]
01702e58  mov x0,sp
01702e5c  bl 0x0174aa04
01702e60  adrp x1,0x5769000
01702e64  adrp x3,0x736d000
01702e68  add x1,x1,#0xf3b
01702e6c  add x3,x3,#0x101
01702e70  add x0,sp,#0x10
01702e74  mov x2,sp
01702e78  bl 0x018e4914
01702e7c  adrp x1,0x57cf000
01702e80  adrp x2,0x18e4000
01702e84  adrp x4,0x18e4000
01702e88  add x1,x1,#0x365
01702e8c  add x2,x2,#0x8dc
01702e90  add x4,x4,#0x8f0
01702e94  add x0,sp,#0x10
01702e98  mov x3,xzr
01702e9c  mov x5,xzr
01702ea0  bl 0x018e46f4
01702ea4  mov x19,x0
01702ea8  ldr x0,[x19]
01702eac  mov w1,#0x10
01702eb0  bl 0x0124cba0
01702eb4  adrp x8,0x18e4000
01702eb8  dup v0.2D,xzr
01702ebc  add x8,x8,#0x90c
01702ec0  mov v0.D[0x0],x8
01702ec4  str q0,[x0]
01702ec8  ldr x0,[x19]
01702ecc  adrp x1,0x18e4000
01702ed0  add x1,x1,#0xf70
01702ed4  mov w2,#0x1
01702ed8  bl 0x0124ec90
01702edc  ldr x0,[x19]
01702ee0  mov w1,#0xffffffff
01702ee4  bl 0x0124c0c0
01702ee8  ldr x20,[x19]
01702eec  orr w1,wzr,#0xfffffffb
01702ef0  mov w2,#0x6e7
01702ef4  mov x0,x20
01702ef8  bl 0x0124a650
01702efc  orr w1,wzr,#0xfffffffe
01702f00  mov x0,x20
01702f04  bl 0x0124c0c0
01702f08  orr w1,wzr,#0xfffffffe
01702f0c  mov x0,x20
01702f10  bl 0x0124e920
01702f14  mov w21,w0
01702f18  adrp x1,0x59af000
01702f1c  add x1,x1,#0xc83
01702f20  mov x0,x20
01702f24  bl 0x0124f120
01702f28  orr w1,wzr,#0xfffffffe
01702f2c  mov w2,#0x1
01702f30  mov x0,x20
01702f34  bl 0x0124cfc0
01702f38  mov x0,x20
01702f3c  mov w1,w21
01702f40  bl 0x0124e060
01702f44  orr w1,wzr,#0xfffffffd
01702f48  mov x0,x20
01702f4c  bl 0x0124c4d0
01702f50  ldr x20,[x19]
01702f54  orr w1,wzr,#0xfffffffd
01702f58  mov w2,#0x6e7
01702f5c  mov x0,x20
01702f60  bl 0x0124a650
01702f64  orr w1,wzr,#0xfffffffe
01702f68  mov x0,x20
01702f6c  bl 0x0124c0c0
01702f70  orr w1,wzr,#0xfffffffe
01702f74  mov x0,x20
01702f78  bl 0x0124e920
01702f7c  mov w21,w0
01702f80  adrp x1,0x59af000
01702f84  add x1,x1,#0xc83
01702f88  mov x0,x20
01702f8c  bl 0x0124f120
01702f90  orr w1,wzr,#0xfffffffe
01702f94  mov w2,#0x1
01702f98  mov x0,x20
01702f9c  bl 0x0124cfc0
01702fa0  mov x0,x20
01702fa4  mov w1,w21
01702fa8  bl 0x0124e060
01702fac  orr w1,wzr,#0xfffffffd
01702fb0  mov x0,x20
01702fb4  bl 0x0124c4d0
01702fb8  ldr w8,[x19, #0x8]
01702fbc  ldr x0,[x19]
01702fc0  sub w8,w8,#0x3
01702fc4  str w8,[x19, #0x8]
01702fc8  orr w1,wzr,#0xfffffffc
01702fcc  bl 0x0124c4d0
01702fd0  ldr w8,[x19, #0x8]
01702fd4  ldr x0,[x19]
01702fd8  str wzr,[x19, #0x8]
01702fdc  cmp w8,#0x1
01702fe0  b.lt 0x01702fec
01702fe4  mvn w1,w8
01702fe8  bl 0x0124c4d0
01702fec  ldr w8,[sp, #0x18]
01702ff0  cmp w8,#0x1
01702ff4  b.lt 0x01703004
01702ff8  ldr x0,[sp, #0x10]
01702ffc  mvn w1,w8
01703000  bl 0x0124c4d0
01703004  ldr w8,[sp, #0x8]
01703008  cmp w8,#0x1
0170300c  b.lt 0x0170301c
01703010  ldr x0,[sp]
01703014  mvn w1,w8
01703018  bl 0x0124c4d0
0170301c  ldp x29,x30,[sp, #0x40]
01703020  ldp x20,x19,[sp, #0x30]
01703024  ldr x21,[sp, #0x20]
01703028  add sp,sp,#0x50
0170302c  ret
