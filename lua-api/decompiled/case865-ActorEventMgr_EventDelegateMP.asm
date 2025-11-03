// ===== case865-ActorEventMgr_EventDelegateMP @ 01743ebc =====
// existing function case865-ActorEventMgr_EventDelegateMP
01743ebc  sub sp,sp,#0x40
01743ec0  str x19,[sp, #0x20]
01743ec4  stp x29,x30,[sp, #0x30]
01743ec8  add x29,sp,#0x30
01743ecc  adrp x1,0x174a000
01743ed0  add x1,x1,#0x87c
01743ed4  mov x19,x0
01743ed8  bl 0x0124ba40
01743edc  adrp x1,0x575d000
01743ee0  add x1,x1,#0xa06
01743ee4  mov x0,x19
01743ee8  str x19,[sp]
01743eec  bl 0x01251aa0
01743ef0  mov w8,#0x1
01743ef4  str w8,[sp, #0x8]
01743ef8  mov x0,sp
01743efc  bl 0x0174aa04
01743f00  adrp x1,0x5773000
01743f04  adrp x3,0x736d000
01743f08  add x1,x1,#0xc6a
01743f0c  add x3,x3,#0x101
01743f10  add x0,sp,#0x10
01743f14  mov x2,sp
01743f18  bl 0x01a09ba4
01743f1c  adrp x1,0x5771000
01743f20  adrp x2,0x1a09000
01743f24  adrp x4,0x1a09000
01743f28  add x1,x1,#0xeb5
01743f2c  add x2,x2,#0x98c
01743f30  add x4,x4,#0x994
01743f34  add x0,sp,#0x10
01743f38  mov x3,xzr
01743f3c  mov x5,xzr
01743f40  bl 0x01a097a4
01743f44  adrp x1,0x5773000
01743f48  adrp x2,0x1a09000
01743f4c  adrp x4,0x1a09000
01743f50  add x1,x1,#0xc88
01743f54  add x2,x2,#0x99c
01743f58  add x4,x4,#0x9a4
01743f5c  mov x3,xzr
01743f60  mov x5,xzr
01743f64  bl 0x01a097a4
01743f68  adrp x1,0x5773000
01743f6c  adrp x2,0x1a09000
01743f70  add x1,x1,#0xc91
01743f74  add x2,x2,#0xb94
01743f78  mov x3,xzr
01743f7c  mov x4,xzr
01743f80  mov x5,xzr
01743f84  bl 0x01a099ac
01743f88  adrp x1,0x5773000
01743f8c  adrp x2,0x1a09000
01743f90  add x1,x1,#0xc9a
01743f94  add x2,x2,#0xb9c
01743f98  mov x3,xzr
01743f9c  mov x4,xzr
01743fa0  mov x5,xzr
01743fa4  bl 0x01a099ac
01743fa8  mov x19,x0
01743fac  ldr w8,[x19, #0x8]
01743fb0  ldr x0,[x19]
01743fb4  sub w8,w8,#0x3
01743fb8  str w8,[x19, #0x8]
01743fbc  orr w1,wzr,#0xfffffffc
01743fc0  bl 0x0124c4d0
01743fc4  ldr w8,[x19, #0x8]
01743fc8  ldr x0,[x19]
01743fcc  str wzr,[x19, #0x8]
01743fd0  cmp w8,#0x1
01743fd4  b.lt 0x01743fe0
01743fd8  mvn w1,w8
01743fdc  bl 0x0124c4d0
01743fe0  ldr w8,[sp, #0x18]
01743fe4  cmp w8,#0x1
01743fe8  b.lt 0x01743ff8
01743fec  ldr x0,[sp, #0x10]
01743ff0  mvn w1,w8
01743ff4  bl 0x0124c4d0
01743ff8  ldr w8,[sp, #0x8]
01743ffc  cmp w8,#0x1
01744000  b.lt 0x01744010
01744004  ldr x0,[sp]
01744008  mvn w1,w8
0174400c  bl 0x0124c4d0
01744010  ldp x29,x30,[sp, #0x30]
01744014  ldr x19,[sp, #0x20]
01744018  add sp,sp,#0x40
0174401c  ret
