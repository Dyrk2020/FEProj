// ===== case763-TrackPosParam @ 0172cb14 =====
// existing function case763-TrackPosParam
0172cb14  sub sp,sp,#0x40
0172cb18  str x19,[sp, #0x20]
0172cb1c  stp x29,x30,[sp, #0x30]
0172cb20  add x29,sp,#0x30
0172cb24  adrp x1,0x174a000
0172cb28  add x1,x1,#0x87c
0172cb2c  mov x19,x0
0172cb30  bl 0x0124ba40
0172cb34  adrp x1,0x575d000
0172cb38  add x1,x1,#0xa06
0172cb3c  mov x0,x19
0172cb40  str x19,[sp]
0172cb44  bl 0x01251aa0
0172cb48  mov w8,#0x1
0172cb4c  str w8,[sp, #0x8]
0172cb50  mov x0,sp
0172cb54  bl 0x0174aa04
0172cb58  adrp x1,0x5770000
0172cb5c  adrp x3,0x736d000
0172cb60  add x1,x1,#0xeaa
0172cb64  add x3,x3,#0x101
0172cb68  add x0,sp,#0x10
0172cb6c  mov x2,sp
0172cb70  bl 0x01993994
0172cb74  adrp x1,0x5964000
0172cb78  adrp x2,0x1993000
0172cb7c  adrp x4,0x1993000
0172cb80  add x1,x1,#0x464
0172cb84  add x2,x2,#0x7f4
0172cb88  add x4,x4,#0x7fc
0172cb8c  add x0,sp,#0x10
0172cb90  mov x3,xzr
0172cb94  mov x5,xzr
0172cb98  bl 0x0199360c
0172cb9c  adrp x1,0x5964000
0172cba0  adrp x2,0x1993000
0172cba4  adrp x4,0x1993000
0172cba8  add x1,x1,#0x477
0172cbac  add x2,x2,#0x85c
0172cbb0  add x4,x4,#0x864
0172cbb4  mov x3,xzr
0172cbb8  mov x5,xzr
0172cbbc  bl 0x0199360c
0172cbc0  adrp x1,0x58e7000
0172cbc4  adrp x2,0x1993000
0172cbc8  adrp x4,0x1993000
0172cbcc  add x1,x1,#0x938
0172cbd0  add x2,x2,#0x8c4
0172cbd4  add x4,x4,#0x8cc
0172cbd8  mov x3,xzr
0172cbdc  mov x5,xzr
0172cbe0  bl 0x0199360c
0172cbe4  adrp x1,0x59a6000
0172cbe8  adrp x2,0x1993000
0172cbec  adrp x4,0x1993000
0172cbf0  add x1,x1,#0x779
0172cbf4  add x2,x2,#0x92c
0172cbf8  add x4,x4,#0x934
0172cbfc  mov x3,xzr
0172cc00  mov x5,xzr
0172cc04  bl 0x0199360c
0172cc08  mov x19,x0
0172cc0c  ldr w8,[x19, #0x8]
0172cc10  ldr x0,[x19]
0172cc14  sub w8,w8,#0x3
0172cc18  str w8,[x19, #0x8]
0172cc1c  orr w1,wzr,#0xfffffffc
0172cc20  bl 0x0124c4d0
0172cc24  ldr w8,[x19, #0x8]
0172cc28  ldr x0,[x19]
0172cc2c  str wzr,[x19, #0x8]
0172cc30  cmp w8,#0x1
0172cc34  b.lt 0x0172cc40
0172cc38  mvn w1,w8
0172cc3c  bl 0x0124c4d0
0172cc40  ldr w8,[sp, #0x18]
0172cc44  cmp w8,#0x1
0172cc48  b.lt 0x0172cc58
0172cc4c  ldr x0,[sp, #0x10]
0172cc50  mvn w1,w8
0172cc54  bl 0x0124c4d0
0172cc58  ldr w8,[sp, #0x8]
0172cc5c  cmp w8,#0x1
0172cc60  b.lt 0x0172cc70
0172cc64  ldr x0,[sp]
0172cc68  mvn w1,w8
0172cc6c  bl 0x0124c4d0
0172cc70  ldp x29,x30,[sp, #0x30]
0172cc74  ldr x19,[sp, #0x20]
0172cc78  add sp,sp,#0x40
0172cc7c  ret
