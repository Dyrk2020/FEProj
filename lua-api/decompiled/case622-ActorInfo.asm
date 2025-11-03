// ===== case622-ActorInfo @ 0170bec4 =====
// existing function case622-ActorInfo
0170bec4  sub sp,sp,#0x40
0170bec8  str x19,[sp, #0x20]
0170becc  stp x29,x30,[sp, #0x30]
0170bed0  add x29,sp,#0x30
0170bed4  adrp x1,0x174a000
0170bed8  add x1,x1,#0x87c
0170bedc  mov x19,x0
0170bee0  bl 0x0124ba40
0170bee4  adrp x1,0x575d000
0170bee8  add x1,x1,#0xa06
0170beec  mov x0,x19
0170bef0  str x19,[sp]
0170bef4  bl 0x01251aa0
0170bef8  mov w8,#0x1
0170befc  str w8,[sp, #0x8]
0170bf00  mov x0,sp
0170bf04  bl 0x0174aa04
0170bf08  adrp x1,0x576a000
0170bf0c  adrp x3,0x736d000
0170bf10  add x1,x1,#0x5fa
0170bf14  add x3,x3,#0x101
0170bf18  add x0,sp,#0x10
0170bf1c  mov x2,sp
0170bf20  bl 0x01901774
0170bf24  adrp x1,0x576a000
0170bf28  adrp x2,0x1901000
0170bf2c  adrp x4,0x1901000
0170bf30  add x1,x1,#0x604
0170bf34  add x2,x2,#0x54c
0170bf38  add x4,x4,#0x554
0170bf3c  add x0,sp,#0x10
0170bf40  mov x3,xzr
0170bf44  mov x5,xzr
0170bf48  bl 0x01901364
0170bf4c  adrp x1,0x576a000
0170bf50  adrp x2,0x1901000
0170bf54  adrp x4,0x1901000
0170bf58  add x1,x1,#0x60f
0170bf5c  add x2,x2,#0x55c
0170bf60  add x4,x4,#0x564
0170bf64  mov x3,xzr
0170bf68  mov x5,xzr
0170bf6c  bl 0x01901364
0170bf70  adrp x1,0x576a000
0170bf74  adrp x2,0x1901000
0170bf78  adrp x4,0x1901000
0170bf7c  add x1,x1,#0x61c
0170bf80  add x2,x2,#0x56c
0170bf84  add x4,x4,#0x574
0170bf88  mov x3,xzr
0170bf8c  mov x5,xzr
0170bf90  bl 0x01901364
0170bf94  adrp x1,0x576a000
0170bf98  adrp x2,0x1901000
0170bf9c  adrp x4,0x1901000
0170bfa0  add x1,x1,#0x626
0170bfa4  add x2,x2,#0x764
0170bfa8  add x4,x4,#0x76c
0170bfac  mov x3,xzr
0170bfb0  mov x5,xzr
0170bfb4  bl 0x0190157c
0170bfb8  mov x19,x0
0170bfbc  ldr w8,[x19, #0x8]
0170bfc0  ldr x0,[x19]
0170bfc4  sub w8,w8,#0x3
0170bfc8  str w8,[x19, #0x8]
0170bfcc  orr w1,wzr,#0xfffffffc
0170bfd0  bl 0x0124c4d0
0170bfd4  ldr w8,[x19, #0x8]
0170bfd8  ldr x0,[x19]
0170bfdc  str wzr,[x19, #0x8]
0170bfe0  cmp w8,#0x1
0170bfe4  b.lt 0x0170bff0
0170bfe8  mvn w1,w8
0170bfec  bl 0x0124c4d0
0170bff0  ldr w8,[sp, #0x18]
0170bff4  cmp w8,#0x1
0170bff8  b.lt 0x0170c008
0170bffc  ldr x0,[sp, #0x10]
0170c000  mvn w1,w8
0170c004  bl 0x0124c4d0
0170c008  ldr w8,[sp, #0x8]
0170c00c  cmp w8,#0x1
0170c010  b.lt 0x0170c020
0170c014  ldr x0,[sp]
0170c018  mvn w1,w8
0170c01c  bl 0x0124c4d0
0170c020  ldp x29,x30,[sp, #0x30]
0170c024  ldr x19,[sp, #0x20]
0170c028  add sp,sp,#0x40
0170c02c  ret
