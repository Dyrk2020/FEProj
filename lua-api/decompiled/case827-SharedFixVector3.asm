// ===== case827-SharedFixVector3 @ 01739edc =====
// existing function case827-SharedFixVector3
01739edc  sub sp,sp,#0x40
01739ee0  str x19,[sp, #0x20]
01739ee4  stp x29,x30,[sp, #0x30]
01739ee8  add x29,sp,#0x30
01739eec  adrp x1,0x174a000
01739ef0  add x1,x1,#0x87c
01739ef4  mov x19,x0
01739ef8  bl 0x0124ba40
01739efc  adrp x1,0x575d000
01739f00  add x1,x1,#0xa06
01739f04  mov x0,x19
01739f08  str x19,[sp]
01739f0c  bl 0x01251aa0
01739f10  mov w8,#0x1
01739f14  str w8,[sp, #0x8]
01739f18  mov x0,sp
01739f1c  bl 0x0174aa04
01739f20  adrp x1,0x5772000
01739f24  adrp x3,0x736d000
01739f28  add x1,x1,#0x94d
01739f2c  add x3,x3,#0x101
01739f30  add x0,sp,#0x10
01739f34  mov x2,sp
01739f38  bl 0x019d2c40
01739f3c  adrp x1,0x575d000
01739f40  adrp x2,0x19d2000
01739f44  adrp x4,0x19d2000
01739f48  add x1,x1,#0xd23
01739f4c  add x2,x2,#0xc10
01739f50  add x4,x4,#0xc24
01739f54  add x0,sp,#0x10
01739f58  mov x3,xzr
01739f5c  mov x5,xzr
01739f60  bl 0x019d2a28
01739f64  mov x19,x0
01739f68  ldr w8,[x19, #0x8]
01739f6c  ldr x0,[x19]
01739f70  sub w8,w8,#0x3
01739f74  str w8,[x19, #0x8]
01739f78  orr w1,wzr,#0xfffffffc
01739f7c  bl 0x0124c4d0
01739f80  ldr w8,[x19, #0x8]
01739f84  ldr x0,[x19]
01739f88  str wzr,[x19, #0x8]
01739f8c  cmp w8,#0x1
01739f90  b.lt 0x01739f9c
01739f94  mvn w1,w8
01739f98  bl 0x0124c4d0
01739f9c  ldr w8,[sp, #0x18]
01739fa0  cmp w8,#0x1
01739fa4  b.lt 0x01739fb4
01739fa8  ldr x0,[sp, #0x10]
01739fac  mvn w1,w8
01739fb0  bl 0x0124c4d0
01739fb4  ldr w8,[sp, #0x8]
01739fb8  cmp w8,#0x1
01739fbc  b.lt 0x01739fcc
01739fc0  ldr x0,[sp]
01739fc4  mvn w1,w8
01739fc8  bl 0x0124c4d0
01739fcc  ldp x29,x30,[sp, #0x30]
01739fd0  ldr x19,[sp, #0x20]
01739fd4  add sp,sp,#0x40
01739fd8  ret
