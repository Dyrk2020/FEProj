// ===== case19-SharedInt @ 0168fb94 =====
// existing function case19-SharedInt
0168fb94  sub sp,sp,#0x40
0168fb98  str x19,[sp, #0x20]
0168fb9c  stp x29,x30,[sp, #0x30]
0168fba0  add x29,sp,#0x30
0168fba4  adrp x1,0x174a000
0168fba8  add x1,x1,#0x87c
0168fbac  mov x19,x0
0168fbb0  bl 0x0124ba40
0168fbb4  adrp x1,0x575d000
0168fbb8  add x1,x1,#0xa06
0168fbbc  mov x0,x19
0168fbc0  str x19,[sp]
0168fbc4  bl 0x01251aa0
0168fbc8  mov w8,#0x1
0168fbcc  str w8,[sp, #0x8]
0168fbd0  mov x0,sp
0168fbd4  bl 0x0174aa04
0168fbd8  adrp x1,0x575d000
0168fbdc  adrp x3,0x736d000
0168fbe0  add x1,x1,#0xdb0
0168fbe4  add x3,x3,#0x101
0168fbe8  add x0,sp,#0x10
0168fbec  mov x2,sp
0168fbf0  bl 0x017585e0
0168fbf4  adrp x1,0x575d000
0168fbf8  adrp x2,0x1758000
0168fbfc  adrp x4,0x1758000
0168fc00  add x1,x1,#0xd23
0168fc04  add x2,x2,#0x5d0
0168fc08  add x4,x4,#0x5d8
0168fc0c  add x0,sp,#0x10
0168fc10  mov x3,xzr
0168fc14  mov x5,xzr
0168fc18  bl 0x017583e8
0168fc1c  mov x19,x0
0168fc20  ldr w8,[x19, #0x8]
0168fc24  ldr x0,[x19]
0168fc28  sub w8,w8,#0x3
0168fc2c  str w8,[x19, #0x8]
0168fc30  orr w1,wzr,#0xfffffffc
0168fc34  bl 0x0124c4d0
0168fc38  ldr w8,[x19, #0x8]
0168fc3c  ldr x0,[x19]
0168fc40  str wzr,[x19, #0x8]
0168fc44  cmp w8,#0x1
0168fc48  b.lt 0x0168fc54
0168fc4c  mvn w1,w8
0168fc50  bl 0x0124c4d0
0168fc54  ldr w8,[sp, #0x18]
0168fc58  cmp w8,#0x1
0168fc5c  b.lt 0x0168fc6c
0168fc60  ldr x0,[sp, #0x10]
0168fc64  mvn w1,w8
0168fc68  bl 0x0124c4d0
0168fc6c  ldr w8,[sp, #0x8]
0168fc70  cmp w8,#0x1
0168fc74  b.lt 0x0168fc84
0168fc78  ldr x0,[sp]
0168fc7c  mvn w1,w8
0168fc80  bl 0x0124c4d0
0168fc84  ldp x29,x30,[sp, #0x30]
0168fc88  ldr x19,[sp, #0x20]
0168fc8c  add sp,sp,#0x40
0168fc90  ret
