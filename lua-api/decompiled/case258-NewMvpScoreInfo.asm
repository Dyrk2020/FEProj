// ===== case258-NewMvpScoreInfo @ 016b7e8c =====
// existing function case258-NewMvpScoreInfo
016b7e8c  sub sp,sp,#0x40
016b7e90  str x19,[sp, #0x20]
016b7e94  stp x29,x30,[sp, #0x30]
016b7e98  add x29,sp,#0x30
016b7e9c  adrp x1,0x174a000
016b7ea0  add x1,x1,#0x87c
016b7ea4  mov x19,x0
016b7ea8  bl 0x0124ba40
016b7eac  adrp x1,0x575d000
016b7eb0  add x1,x1,#0xa06
016b7eb4  mov x0,x19
016b7eb8  str x19,[sp]
016b7ebc  bl 0x01251aa0
016b7ec0  mov w8,#0x1
016b7ec4  str w8,[sp, #0x8]
016b7ec8  mov x0,sp
016b7ecc  bl 0x0174aa04
016b7ed0  adrp x1,0x5761000
016b7ed4  adrp x3,0x736d000
016b7ed8  add x1,x1,#0x5c2
016b7edc  add x3,x3,#0x101
016b7ee0  add x0,sp,#0x10
016b7ee4  mov x2,sp
016b7ee8  bl 0x017db820
016b7eec  adrp x1,0x5761000
016b7ef0  adrp x2,0x17db000
016b7ef4  adrp x4,0x17db000
016b7ef8  add x1,x1,#0x56a
016b7efc  add x2,x2,#0x7a0
016b7f00  add x4,x4,#0x7a8
016b7f04  add x0,sp,#0x10
016b7f08  mov x3,xzr
016b7f0c  mov x5,xzr
016b7f10  bl 0x017db5b8
016b7f14  adrp x1,0x5761000
016b7f18  adrp x2,0x17db000
016b7f1c  adrp x4,0x17db000
016b7f20  add x1,x1,#0x57a
016b7f24  add x2,x2,#0x7b0
016b7f28  add x4,x4,#0x7b8
016b7f2c  mov x3,xzr
016b7f30  mov x5,xzr
016b7f34  bl 0x017db5b8
016b7f38  adrp x1,0x5761000
016b7f3c  adrp x2,0x17db000
016b7f40  adrp x4,0x17db000
016b7f44  add x1,x1,#0x5d2
016b7f48  add x2,x2,#0x7c0
016b7f4c  add x4,x4,#0x7c8
016b7f50  mov x3,xzr
016b7f54  mov x5,xzr
016b7f58  bl 0x017db5b8
016b7f5c  adrp x1,0x59ac000
016b7f60  adrp x2,0x17db000
016b7f64  adrp x4,0x17db000
016b7f68  add x1,x1,#0xb8f
016b7f6c  add x2,x2,#0x7d0
016b7f70  add x4,x4,#0x7d8
016b7f74  mov x3,xzr
016b7f78  mov x5,xzr
016b7f7c  bl 0x017db5b8
016b7f80  adrp x1,0x5761000
016b7f84  adrp x2,0x17db000
016b7f88  adrp x4,0x17db000
016b7f8c  add x1,x1,#0x5d9
016b7f90  add x2,x2,#0x7e0
016b7f94  add x4,x4,#0x7e8
016b7f98  mov x3,xzr
016b7f9c  mov x5,xzr
016b7fa0  bl 0x017db5b8
016b7fa4  adrp x1,0x5761000
016b7fa8  adrp x2,0x17db000
016b7fac  adrp x4,0x17db000
016b7fb0  add x1,x1,#0x5e6
016b7fb4  add x2,x2,#0x7f0
016b7fb8  add x4,x4,#0x7f8
016b7fbc  mov x3,xzr
016b7fc0  mov x5,xzr
016b7fc4  bl 0x017db5b8
016b7fc8  adrp x1,0x5761000
016b7fcc  adrp x2,0x17db000
016b7fd0  adrp x4,0x17db000
016b7fd4  add x1,x1,#0x5f5
016b7fd8  add x2,x2,#0x800
016b7fdc  add x4,x4,#0x808
016b7fe0  mov x3,xzr
016b7fe4  mov x5,xzr
016b7fe8  bl 0x017db5b8
016b7fec  adrp x1,0x5761000
016b7ff0  adrp x2,0x17db000
016b7ff4  adrp x4,0x17db000
016b7ff8  add x1,x1,#0x604
016b7ffc  add x2,x2,#0x810
016b8000  add x4,x4,#0x818
016b8004  mov x3,xzr
016b8008  mov x5,xzr
016b800c  bl 0x017db5b8
016b8010  mov x19,x0
016b8014  ldr w8,[x19, #0x8]
016b8018  ldr x0,[x19]
016b801c  sub w8,w8,#0x3
016b8020  str w8,[x19, #0x8]
016b8024  orr w1,wzr,#0xfffffffc
016b8028  bl 0x0124c4d0
016b802c  ldr w8,[x19, #0x8]
016b8030  ldr x0,[x19]
016b8034  str wzr,[x19, #0x8]
016b8038  cmp w8,#0x1
016b803c  b.lt 0x016b8048
016b8040  mvn w1,w8
016b8044  bl 0x0124c4d0
016b8048  ldr w8,[sp, #0x18]
016b804c  cmp w8,#0x1
016b8050  b.lt 0x016b8060
016b8054  ldr x0,[sp, #0x10]
016b8058  mvn w1,w8
016b805c  bl 0x0124c4d0
016b8060  ldr w8,[sp, #0x8]
016b8064  cmp w8,#0x1
016b8068  b.lt 0x016b8078
016b806c  ldr x0,[sp]
016b8070  mvn w1,w8
016b8074  bl 0x0124c4d0
016b8078  ldp x29,x30,[sp, #0x30]
016b807c  ldr x19,[sp, #0x20]
016b8080  add sp,sp,#0x40
016b8084  ret
