// ===== case224-GainDeckResObject @ 016b2ecc =====
// existing function case224-GainDeckResObject
016b2ecc  sub sp,sp,#0x40
016b2ed0  str x19,[sp, #0x20]
016b2ed4  stp x29,x30,[sp, #0x30]
016b2ed8  add x29,sp,#0x30
016b2edc  adrp x1,0x174a000
016b2ee0  add x1,x1,#0x87c
016b2ee4  mov x19,x0
016b2ee8  bl 0x0124ba40
016b2eec  adrp x1,0x575d000
016b2ef0  add x1,x1,#0xa06
016b2ef4  mov x0,x19
016b2ef8  str x19,[sp]
016b2efc  bl 0x01251aa0
016b2f00  mov w8,#0x1
016b2f04  str w8,[sp, #0x8]
016b2f08  mov x0,sp
016b2f0c  bl 0x0174aa04
016b2f10  adrp x1,0x5761000
016b2f14  adrp x3,0x736d000
016b2f18  add x1,x1,#0x8b
016b2f1c  add x3,x3,#0x101
016b2f20  add x0,sp,#0x10
016b2f24  mov x2,sp
016b2f28  bl 0x017c7870
016b2f2c  adrp x1,0x5761000
016b2f30  adrp x2,0x17c7000
016b2f34  adrp x4,0x17c7000
016b2f38  add x1,x1,#0x9d
016b2f3c  add x2,x2,#0x668
016b2f40  add x4,x4,#0x670
016b2f44  add x0,sp,#0x10
016b2f48  mov x3,xzr
016b2f4c  mov x5,xzr
016b2f50  bl 0x017c7480
016b2f54  adrp x1,0x5761000
016b2f58  adrp x2,0x17c7000
016b2f5c  adrp x4,0x17c7000
016b2f60  add x1,x1,#0xae
016b2f64  add x2,x2,#0x860
016b2f68  add x4,x4,#0x868
016b2f6c  mov x3,xzr
016b2f70  mov x5,xzr
016b2f74  bl 0x017c7678
016b2f78  mov x19,x0
016b2f7c  ldr w8,[x19, #0x8]
016b2f80  ldr x0,[x19]
016b2f84  sub w8,w8,#0x3
016b2f88  str w8,[x19, #0x8]
016b2f8c  orr w1,wzr,#0xfffffffc
016b2f90  bl 0x0124c4d0
016b2f94  ldr w8,[x19, #0x8]
016b2f98  ldr x0,[x19]
016b2f9c  str wzr,[x19, #0x8]
016b2fa0  cmp w8,#0x1
016b2fa4  b.lt 0x016b2fb0
016b2fa8  mvn w1,w8
016b2fac  bl 0x0124c4d0
016b2fb0  ldr w8,[sp, #0x18]
016b2fb4  cmp w8,#0x1
016b2fb8  b.lt 0x016b2fc8
016b2fbc  ldr x0,[sp, #0x10]
016b2fc0  mvn w1,w8
016b2fc4  bl 0x0124c4d0
016b2fc8  ldr w8,[sp, #0x8]
016b2fcc  cmp w8,#0x1
016b2fd0  b.lt 0x016b2fe0
016b2fd4  ldr x0,[sp]
016b2fd8  mvn w1,w8
016b2fdc  bl 0x0124c4d0
016b2fe0  ldp x29,x30,[sp, #0x30]
016b2fe4  ldr x19,[sp, #0x20]
016b2fe8  add sp,sp,#0x40
016b2fec  ret
