// ===== case53-PreloadCommonConfigResObject @ 01694e58 =====
// existing function case53-PreloadCommonConfigResObject
01694e58  sub sp,sp,#0x40
01694e5c  stp x20,x19,[sp, #0x20]
01694e60  stp x29,x30,[sp, #0x30]
01694e64  add x29,sp,#0x30
01694e68  adrp x1,0x174a000
01694e6c  add x1,x1,#0x87c
01694e70  mov x19,x0
01694e74  bl 0x0124ba40
01694e78  adrp x1,0x575d000
01694e7c  add x1,x1,#0xa06
01694e80  mov x0,x19
01694e84  str x19,[sp]
01694e88  bl 0x01251aa0
01694e8c  mov w8,#0x1
01694e90  str w8,[sp, #0x8]
01694e94  mov x0,sp
01694e98  bl 0x0174aa04
01694e9c  adrp x1,0x575e000
01694ea0  adrp x3,0x736d000
01694ea4  add x1,x1,#0x5e6
01694ea8  add x3,x3,#0x101
01694eac  add x0,sp,#0x10
01694eb0  mov x2,sp
01694eb4  bl 0x0176be50
01694eb8  ldr x0,[sp, #0x10]
01694ebc  mov w1,#0x10
01694ec0  bl 0x0124cba0
01694ec4  adrp x8,0x176b000
01694ec8  dup v0.2D,xzr
01694ecc  add x8,x8,#0xe48
01694ed0  mov v0.D[0x0],x8
01694ed4  str q0,[x0]
01694ed8  ldr x0,[sp, #0x10]
01694edc  adrp x1,0x176c000
01694ee0  add x1,x1,#0x214
01694ee4  mov w2,#0x1
01694ee8  bl 0x0124ec90
01694eec  ldr x0,[sp, #0x10]
01694ef0  mov w1,#0xffffffff
01694ef4  bl 0x0124c0c0
01694ef8  ldr x19,[sp, #0x10]
01694efc  orr w1,wzr,#0xfffffffb
01694f00  mov w2,#0x6e7
01694f04  mov x0,x19
01694f08  bl 0x0124a650
01694f0c  orr w1,wzr,#0xfffffffe
01694f10  mov x0,x19
01694f14  bl 0x0124c0c0
01694f18  orr w1,wzr,#0xfffffffe
01694f1c  mov x0,x19
01694f20  bl 0x0124e920
01694f24  mov w20,w0
01694f28  adrp x1,0x59ae000
01694f2c  add x1,x1,#0xf93
01694f30  mov x0,x19
01694f34  bl 0x0124f120
01694f38  orr w1,wzr,#0xfffffffe
01694f3c  mov w2,#0x1
01694f40  mov x0,x19
01694f44  bl 0x0124cfc0
01694f48  mov x0,x19
01694f4c  mov w1,w20
01694f50  bl 0x0124e060
01694f54  orr w1,wzr,#0xfffffffd
01694f58  mov x0,x19
01694f5c  bl 0x0124c4d0
01694f60  ldr x19,[sp, #0x10]
01694f64  orr w1,wzr,#0xfffffffd
01694f68  mov w2,#0x6e7
01694f6c  mov x0,x19
01694f70  bl 0x0124a650
01694f74  orr w1,wzr,#0xfffffffe
01694f78  mov x0,x19
01694f7c  bl 0x0124c0c0
01694f80  orr w1,wzr,#0xfffffffe
01694f84  mov x0,x19
01694f88  bl 0x0124e920
01694f8c  mov w20,w0
01694f90  adrp x1,0x59ae000
01694f94  add x1,x1,#0xf93
01694f98  mov x0,x19
01694f9c  bl 0x0124f120
01694fa0  orr w1,wzr,#0xfffffffe
01694fa4  mov w2,#0x1
01694fa8  mov x0,x19
01694fac  bl 0x0124cfc0
01694fb0  mov x0,x19
01694fb4  mov w1,w20
01694fb8  bl 0x0124e060
01694fbc  orr w1,wzr,#0xfffffffd
01694fc0  mov x0,x19
01694fc4  bl 0x0124c4d0
01694fc8  ldr w8,[sp, #0x18]
01694fcc  ldr x0,[sp, #0x10]
01694fd0  sub w8,w8,#0x3
01694fd4  str w8,[sp, #0x18]
01694fd8  orr w1,wzr,#0xfffffffc
01694fdc  bl 0x0124c4d0
01694fe0  ldr w8,[sp, #0x18]
01694fe4  ldr x0,[sp, #0x10]
01694fe8  str wzr,[sp, #0x18]
01694fec  cmp w8,#0x1
01694ff0  b.lt 0x01695014
01694ff4  mvn w1,w8
01694ff8  bl 0x0124c4d0
01694ffc  ldr w8,[sp, #0x18]
01695000  cmp w8,#0x1
01695004  b.lt 0x01695014
01695008  ldr x0,[sp, #0x10]
0169500c  mvn w1,w8
01695010  bl 0x0124c4d0
01695014  ldr w8,[sp, #0x8]
01695018  cmp w8,#0x1
0169501c  b.lt 0x0169502c
01695020  ldr x0,[sp]
01695024  mvn w1,w8
01695028  bl 0x0124c4d0
0169502c  ldp x29,x30,[sp, #0x30]
01695030  ldp x20,x19,[sp, #0x20]
01695034  add sp,sp,#0x40
01695038  ret
