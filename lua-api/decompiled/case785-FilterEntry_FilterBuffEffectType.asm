// ===== case785-FilterEntry_FilterBuffEffectType @ 01730e84 =====
// existing function case785-FilterEntry_FilterBuffEffectType
01730e84  sub sp,sp,#0x40
01730e88  str x19,[sp, #0x20]
01730e8c  stp x29,x30,[sp, #0x30]
01730e90  add x29,sp,#0x30
01730e94  adrp x1,0x174a000
01730e98  add x1,x1,#0x87c
01730e9c  mov x19,x0
01730ea0  bl 0x0124ba40
01730ea4  adrp x1,0x575d000
01730ea8  add x1,x1,#0xa06
01730eac  mov x0,x19
01730eb0  str x19,[sp]
01730eb4  bl 0x01251aa0
01730eb8  mov w8,#0x1
01730ebc  str w8,[sp, #0x8]
01730ec0  mov x0,sp
01730ec4  bl 0x0174aa04
01730ec8  adrp x1,0x5771000
01730ecc  adrp x3,0x736d000
01730ed0  add x1,x1,#0xa5d
01730ed4  add x3,x3,#0x101
01730ed8  add x0,sp,#0x10
01730edc  mov x2,sp
01730ee0  bl 0x019ac0ec
01730ee4  adrp x1,0x5771000
01730ee8  adrp x2,0x19ab000
01730eec  adrp x4,0x19ab000
01730ef0  add x1,x1,#0xa7e
01730ef4  add x2,x2,#0xed4
01730ef8  add x4,x4,#0xedc
01730efc  add x0,sp,#0x10
01730f00  mov x3,xzr
01730f04  mov x5,xzr
01730f08  bl 0x019abcec
01730f0c  adrp x1,0x5771000
01730f10  adrp x2,0x19ac000
01730f14  adrp x4,0x19ac000
01730f18  add x1,x1,#0xa8b
01730f1c  add x2,x2,#0xcc
01730f20  add x4,x4,#0xd4
01730f24  mov x3,xzr
01730f28  mov x5,xzr
01730f2c  bl 0x019abee4
01730f30  adrp x1,0x5762000
01730f34  adrp x2,0x19ac000
01730f38  adrp x4,0x19ac000
01730f3c  add x1,x1,#0x7c6
01730f40  add x2,x2,#0xdc
01730f44  add x4,x4,#0xe4
01730f48  mov x3,xzr
01730f4c  mov x5,xzr
01730f50  bl 0x019abee4
01730f54  mov x19,x0
01730f58  ldr w8,[x19, #0x8]
01730f5c  ldr x0,[x19]
01730f60  sub w8,w8,#0x3
01730f64  str w8,[x19, #0x8]
01730f68  orr w1,wzr,#0xfffffffc
01730f6c  bl 0x0124c4d0
01730f70  ldr w8,[x19, #0x8]
01730f74  ldr x0,[x19]
01730f78  str wzr,[x19, #0x8]
01730f7c  cmp w8,#0x1
01730f80  b.lt 0x01730f8c
01730f84  mvn w1,w8
01730f88  bl 0x0124c4d0
01730f8c  ldr w8,[sp, #0x18]
01730f90  cmp w8,#0x1
01730f94  b.lt 0x01730fa4
01730f98  ldr x0,[sp, #0x10]
01730f9c  mvn w1,w8
01730fa0  bl 0x0124c4d0
01730fa4  ldr w8,[sp, #0x8]
01730fa8  cmp w8,#0x1
01730fac  b.lt 0x01730fbc
01730fb0  ldr x0,[sp]
01730fb4  mvn w1,w8
01730fb8  bl 0x0124c4d0
01730fbc  ldp x29,x30,[sp, #0x30]
01730fc0  ldr x19,[sp, #0x20]
01730fc4  add sp,sp,#0x40
01730fc8  ret
