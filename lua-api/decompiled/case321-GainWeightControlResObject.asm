// ===== case321-GainWeightControlResObject @ 016c1f00 =====
// existing function case321-GainWeightControlResObject
016c1f00  sub sp,sp,#0x40
016c1f04  stp x20,x19,[sp, #0x20]
016c1f08  stp x29,x30,[sp, #0x30]
016c1f0c  add x29,sp,#0x30
016c1f10  adrp x1,0x174a000
016c1f14  add x1,x1,#0x87c
016c1f18  mov x19,x0
016c1f1c  bl 0x0124ba40
016c1f20  adrp x1,0x575d000
016c1f24  add x1,x1,#0xa06
016c1f28  mov x0,x19
016c1f2c  str x19,[sp]
016c1f30  bl 0x01251aa0
016c1f34  mov w8,#0x1
016c1f38  str w8,[sp, #0x8]
016c1f3c  mov x0,sp
016c1f40  bl 0x0174aa04
016c1f44  adrp x1,0x5762000
016c1f48  adrp x3,0x736d000
016c1f4c  add x1,x1,#0xba0
016c1f50  add x3,x3,#0x101
016c1f54  add x0,sp,#0x10
016c1f58  mov x2,sp
016c1f5c  bl 0x017ff30c
016c1f60  ldr x0,[sp, #0x10]
016c1f64  mov w1,#0x10
016c1f68  bl 0x0124cba0
016c1f6c  adrp x8,0x17ff000
016c1f70  dup v0.2D,xzr
016c1f74  add x8,x8,#0x304
016c1f78  mov v0.D[0x0],x8
016c1f7c  str q0,[x0]
016c1f80  ldr x0,[sp, #0x10]
016c1f84  adrp x1,0x17ff000
016c1f88  add x1,x1,#0x6d0
016c1f8c  mov w2,#0x1
016c1f90  bl 0x0124ec90
016c1f94  ldr x0,[sp, #0x10]
016c1f98  mov w1,#0xffffffff
016c1f9c  bl 0x0124c0c0
016c1fa0  ldr x19,[sp, #0x10]
016c1fa4  orr w1,wzr,#0xfffffffb
016c1fa8  mov w2,#0x6e7
016c1fac  mov x0,x19
016c1fb0  bl 0x0124a650
016c1fb4  orr w1,wzr,#0xfffffffe
016c1fb8  mov x0,x19
016c1fbc  bl 0x0124c0c0
016c1fc0  orr w1,wzr,#0xfffffffe
016c1fc4  mov x0,x19
016c1fc8  bl 0x0124e920
016c1fcc  mov w20,w0
016c1fd0  adrp x1,0x5762000
016c1fd4  add x1,x1,#0xbbb
016c1fd8  mov x0,x19
016c1fdc  bl 0x0124f120
016c1fe0  orr w1,wzr,#0xfffffffe
016c1fe4  mov w2,#0x1
016c1fe8  mov x0,x19
016c1fec  bl 0x0124cfc0
016c1ff0  mov x0,x19
016c1ff4  mov w1,w20
016c1ff8  bl 0x0124e060
016c1ffc  orr w1,wzr,#0xfffffffd
016c2000  mov x0,x19
016c2004  bl 0x0124c4d0
016c2008  ldr x19,[sp, #0x10]
016c200c  orr w1,wzr,#0xfffffffd
016c2010  mov w2,#0x6e7
016c2014  mov x0,x19
016c2018  bl 0x0124a650
016c201c  orr w1,wzr,#0xfffffffe
016c2020  mov x0,x19
016c2024  bl 0x0124c0c0
016c2028  orr w1,wzr,#0xfffffffe
016c202c  mov x0,x19
016c2030  bl 0x0124e920
016c2034  mov w20,w0
016c2038  adrp x1,0x5762000
016c203c  add x1,x1,#0xbbb
016c2040  mov x0,x19
016c2044  bl 0x0124f120
016c2048  orr w1,wzr,#0xfffffffe
016c204c  mov w2,#0x1
016c2050  mov x0,x19
016c2054  bl 0x0124cfc0
016c2058  mov x0,x19
016c205c  mov w1,w20
016c2060  bl 0x0124e060
016c2064  orr w1,wzr,#0xfffffffd
016c2068  mov x0,x19
016c206c  bl 0x0124c4d0
016c2070  ldr w8,[sp, #0x18]
016c2074  ldr x0,[sp, #0x10]
016c2078  sub w8,w8,#0x3
016c207c  str w8,[sp, #0x18]
016c2080  orr w1,wzr,#0xfffffffc
016c2084  bl 0x0124c4d0
016c2088  ldr w8,[sp, #0x18]
016c208c  ldr x0,[sp, #0x10]
016c2090  str wzr,[sp, #0x18]
016c2094  cmp w8,#0x1
016c2098  b.lt 0x016c20bc
016c209c  mvn w1,w8
016c20a0  bl 0x0124c4d0
016c20a4  ldr w8,[sp, #0x18]
016c20a8  cmp w8,#0x1
016c20ac  b.lt 0x016c20bc
016c20b0  ldr x0,[sp, #0x10]
016c20b4  mvn w1,w8
016c20b8  bl 0x0124c4d0
016c20bc  ldr w8,[sp, #0x8]
016c20c0  cmp w8,#0x1
016c20c4  b.lt 0x016c20d4
016c20c8  ldr x0,[sp]
016c20cc  mvn w1,w8
016c20d0  bl 0x0124c4d0
016c20d4  ldp x29,x30,[sp, #0x30]
016c20d8  ldp x20,x19,[sp, #0x20]
016c20dc  add sp,sp,#0x40
016c20e0  ret
