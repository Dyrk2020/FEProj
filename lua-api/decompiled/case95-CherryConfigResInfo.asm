// ===== case95-CherryConfigResInfo @ 0169bf64 =====
// existing function case95-CherryConfigResInfo
0169bf64  sub sp,sp,#0x40
0169bf68  str x19,[sp, #0x20]
0169bf6c  stp x29,x30,[sp, #0x30]
0169bf70  add x29,sp,#0x30
0169bf74  adrp x1,0x174a000
0169bf78  add x1,x1,#0x87c
0169bf7c  mov x19,x0
0169bf80  bl 0x0124ba40
0169bf84  adrp x1,0x575d000
0169bf88  add x1,x1,#0xa06
0169bf8c  mov x0,x19
0169bf90  str x19,[sp]
0169bf94  bl 0x01251aa0
0169bf98  mov w8,#0x1
0169bf9c  str w8,[sp, #0x8]
0169bfa0  mov x0,sp
0169bfa4  bl 0x0174aa04
0169bfa8  adrp x1,0x575f000
0169bfac  adrp x3,0x736d000
0169bfb0  add x1,x1,#0x187
0169bfb4  add x3,x3,#0x101
0169bfb8  add x0,sp,#0x10
0169bfbc  mov x2,sp
0169bfc0  bl 0x017854cc
0169bfc4  adrp x1,0x575f000
0169bfc8  adrp x2,0x1785000
0169bfcc  adrp x4,0x1785000
0169bfd0  add x1,x1,#0x19b
0169bfd4  add x2,x2,#0x4ac
0169bfd8  add x4,x4,#0x4b4
0169bfdc  add x0,sp,#0x10
0169bfe0  mov x3,xzr
0169bfe4  mov x5,xzr
0169bfe8  bl 0x017852c4
0169bfec  adrp x1,0x5955000
0169bff0  adrp x2,0x1785000
0169bff4  adrp x4,0x1785000
0169bff8  add x1,x1,#0x16f
0169bffc  add x2,x2,#0x4bc
0169c000  add x4,x4,#0x4c4
0169c004  mov x3,xzr
0169c008  mov x5,xzr
0169c00c  bl 0x017852c4
0169c010  mov x19,x0
0169c014  ldr w8,[x19, #0x8]
0169c018  ldr x0,[x19]
0169c01c  sub w8,w8,#0x3
0169c020  str w8,[x19, #0x8]
0169c024  orr w1,wzr,#0xfffffffc
0169c028  bl 0x0124c4d0
0169c02c  ldr w8,[x19, #0x8]
0169c030  ldr x0,[x19]
0169c034  str wzr,[x19, #0x8]
0169c038  cmp w8,#0x1
0169c03c  b.lt 0x0169c048
0169c040  mvn w1,w8
0169c044  bl 0x0124c4d0
0169c048  ldr w8,[sp, #0x18]
0169c04c  cmp w8,#0x1
0169c050  b.lt 0x0169c060
0169c054  ldr x0,[sp, #0x10]
0169c058  mvn w1,w8
0169c05c  bl 0x0124c4d0
0169c060  ldr w8,[sp, #0x8]
0169c064  cmp w8,#0x1
0169c068  b.lt 0x0169c078
0169c06c  ldr x0,[sp]
0169c070  mvn w1,w8
0169c074  bl 0x0124c4d0
0169c078  ldp x29,x30,[sp, #0x30]
0169c07c  ldr x19,[sp, #0x20]
0169c080  add sp,sp,#0x40
0169c084  ret
