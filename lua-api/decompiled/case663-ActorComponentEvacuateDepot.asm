// ===== case663-ActorComponentEvacuateDepot @ 01716e34 =====
// existing function case663-ActorComponentEvacuateDepot
01716e34  sub sp,sp,#0x40
01716e38  str x19,[sp, #0x20]
01716e3c  stp x29,x30,[sp, #0x30]
01716e40  add x29,sp,#0x30
01716e44  adrp x1,0x174a000
01716e48  add x1,x1,#0x87c
01716e4c  mov x19,x0
01716e50  bl 0x0124ba40
01716e54  adrp x1,0x575d000
01716e58  add x1,x1,#0xa06
01716e5c  mov x0,x19
01716e60  str x19,[sp]
01716e64  bl 0x01251aa0
01716e68  mov w8,#0x1
01716e6c  str w8,[sp, #0x8]
01716e70  mov x0,sp
01716e74  bl 0x0174aa04
01716e78  adrp x1,0x576c000
01716e7c  adrp x3,0x736d000
01716e80  add x1,x1,#0xe3e
01716e84  add x3,x3,#0x101
01716e88  add x0,sp,#0x10
01716e8c  mov x2,sp
01716e90  bl 0x01936044
01716e94  adrp x1,0x576c000
01716e98  adrp x2,0x1935000
01716e9c  adrp x4,0x1935000
01716ea0  add x1,x1,#0xe5a
01716ea4  add x2,x2,#0xfd8
01716ea8  add x4,x4,#0xfe0
01716eac  add x0,sp,#0x10
01716eb0  mov x3,xzr
01716eb4  mov x5,xzr
01716eb8  bl 0x01935df0
01716ebc  adrp x1,0x576c000
01716ec0  adrp x2,0x1935000
01716ec4  adrp x4,0x1936000
01716ec8  add x1,x1,#0xe62
01716ecc  add x2,x2,#0xffc
01716ed0  add x4,x4,#0x4
01716ed4  mov x3,xzr
01716ed8  mov x5,xzr
01716edc  bl 0x01935df0
01716ee0  adrp x1,0x576c000
01716ee4  adrp x2,0x1936000
01716ee8  adrp x4,0x1936000
01716eec  add x1,x1,#0xe73
01716ef0  add x2,x2,#0x20
01716ef4  add x4,x4,#0x28
01716ef8  mov x3,xzr
01716efc  mov x5,xzr
01716f00  bl 0x01935df0
01716f04  mov x19,x0
01716f08  ldr w8,[x19, #0x8]
01716f0c  ldr x0,[x19]
01716f10  sub w8,w8,#0x3
01716f14  str w8,[x19, #0x8]
01716f18  orr w1,wzr,#0xfffffffc
01716f1c  bl 0x0124c4d0
01716f20  ldr w8,[x19, #0x8]
01716f24  ldr x0,[x19]
01716f28  str wzr,[x19, #0x8]
01716f2c  cmp w8,#0x1
01716f30  b.lt 0x01716f3c
01716f34  mvn w1,w8
01716f38  bl 0x0124c4d0
01716f3c  ldr w8,[sp, #0x18]
01716f40  cmp w8,#0x1
01716f44  b.lt 0x01716f54
01716f48  ldr x0,[sp, #0x10]
01716f4c  mvn w1,w8
01716f50  bl 0x0124c4d0
01716f54  ldr w8,[sp, #0x8]
01716f58  cmp w8,#0x1
01716f5c  b.lt 0x01716f6c
01716f60  ldr x0,[sp]
01716f64  mvn w1,w8
01716f68  bl 0x0124c4d0
01716f6c  ldp x29,x30,[sp, #0x30]
01716f70  ldr x19,[sp, #0x20]
01716f74  add sp,sp,#0x40
01716f78  ret
