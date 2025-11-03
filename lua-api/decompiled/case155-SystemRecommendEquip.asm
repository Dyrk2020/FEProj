// ===== case155-SystemRecommendEquip @ 016a6f60 =====
// existing function case155-SystemRecommendEquip
016a6f60  sub sp,sp,#0x40
016a6f64  str x19,[sp, #0x20]
016a6f68  stp x29,x30,[sp, #0x30]
016a6f6c  add x29,sp,#0x30
016a6f70  adrp x1,0x174a000
016a6f74  add x1,x1,#0x87c
016a6f78  mov x19,x0
016a6f7c  bl 0x0124ba40
016a6f80  adrp x1,0x575d000
016a6f84  add x1,x1,#0xa06
016a6f88  mov x0,x19
016a6f8c  str x19,[sp]
016a6f90  bl 0x01251aa0
016a6f94  mov w8,#0x1
016a6f98  str w8,[sp, #0x8]
016a6f9c  mov x0,sp
016a6fa0  bl 0x0174aa04
016a6fa4  adrp x1,0x5760000
016a6fa8  adrp x3,0x736d000
016a6fac  add x1,x1,#0x151
016a6fb0  add x3,x3,#0x101
016a6fb4  add x0,sp,#0x10
016a6fb8  mov x2,sp
016a6fbc  bl 0x017a23a0
016a6fc0  adrp x1,0x5760000
016a6fc4  adrp x2,0x17a2000
016a6fc8  add x1,x1,#0x166
016a6fcc  add x2,x2,#0x198
016a6fd0  add x0,sp,#0x10
016a6fd4  mov x3,xzr
016a6fd8  mov x4,xzr
016a6fdc  mov x5,xzr
016a6fe0  bl 0x017a1fb0
016a6fe4  adrp x1,0x5760000
016a6fe8  adrp x2,0x17a2000
016a6fec  add x1,x1,#0x171
016a6ff0  add x2,x2,#0x1a0
016a6ff4  mov x3,xzr
016a6ff8  mov x4,xzr
016a6ffc  mov x5,xzr
016a7000  bl 0x017a1fb0
016a7004  adrp x1,0x5760000
016a7008  adrp x2,0x17a2000
016a700c  adrp x4,0x17a2000
016a7010  add x1,x1,#0x17c
016a7014  add x2,x2,#0x390
016a7018  add x4,x4,#0x398
016a701c  mov x3,xzr
016a7020  mov x5,xzr
016a7024  bl 0x017a21a8
016a7028  mov x19,x0
016a702c  ldr w8,[x19, #0x8]
016a7030  ldr x0,[x19]
016a7034  sub w8,w8,#0x3
016a7038  str w8,[x19, #0x8]
016a703c  orr w1,wzr,#0xfffffffc
016a7040  bl 0x0124c4d0
016a7044  ldr w8,[x19, #0x8]
016a7048  ldr x0,[x19]
016a704c  str wzr,[x19, #0x8]
016a7050  cmp w8,#0x1
016a7054  b.lt 0x016a7060
016a7058  mvn w1,w8
016a705c  bl 0x0124c4d0
016a7060  ldr w8,[sp, #0x18]
016a7064  cmp w8,#0x1
016a7068  b.lt 0x016a7078
016a706c  ldr x0,[sp, #0x10]
016a7070  mvn w1,w8
016a7074  bl 0x0124c4d0
016a7078  ldr w8,[sp, #0x8]
016a707c  cmp w8,#0x1
016a7080  b.lt 0x016a7090
016a7084  ldr x0,[sp]
016a7088  mvn w1,w8
016a708c  bl 0x0124c4d0
016a7090  ldp x29,x30,[sp, #0x30]
016a7094  ldr x19,[sp, #0x20]
016a7098  add sp,sp,#0x40
016a709c  ret
