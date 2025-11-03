// ===== case473-ResAssetObject @ 016edd8c =====
// existing function case473-ResAssetObject
016edd8c  sub sp,sp,#0x40
016edd90  str x19,[sp, #0x20]
016edd94  stp x29,x30,[sp, #0x30]
016edd98  add x29,sp,#0x30
016edd9c  adrp x1,0x174a000
016edda0  add x1,x1,#0x87c
016edda4  mov x19,x0
016edda8  bl 0x0124ba40
016eddac  adrp x1,0x575d000
016eddb0  add x1,x1,#0xa06
016eddb4  mov x0,x19
016eddb8  str x19,[sp]
016eddbc  bl 0x01251aa0
016eddc0  mov w8,#0x1
016eddc4  str w8,[sp, #0x8]
016eddc8  mov x0,sp
016eddcc  bl 0x0174aa04
016eddd0  adrp x1,0x5767000
016eddd4  adrp x3,0x736d000
016eddd8  add x1,x1,#0x1e4
016edddc  add x3,x3,#0x101
016edde0  add x0,sp,#0x10
016edde4  mov x2,sp
016edde8  bl 0x0187a550
016eddec  adrp x1,0x575d000
016eddf0  adrp x2,0x187a000
016eddf4  adrp x4,0x187a000
016eddf8  add x1,x1,#0xa00
016eddfc  add x2,x2,#0x540
016ede00  add x4,x4,#0x548
016ede04  add x0,sp,#0x10
016ede08  mov x3,xzr
016ede0c  mov x5,xzr
016ede10  bl 0x0187a358
016ede14  mov x19,x0
016ede18  ldr w8,[x19, #0x8]
016ede1c  ldr x0,[x19]
016ede20  sub w8,w8,#0x3
016ede24  str w8,[x19, #0x8]
016ede28  orr w1,wzr,#0xfffffffc
016ede2c  bl 0x0124c4d0
016ede30  ldr w8,[x19, #0x8]
016ede34  ldr x0,[x19]
016ede38  str wzr,[x19, #0x8]
016ede3c  cmp w8,#0x1
016ede40  b.lt 0x016ede4c
016ede44  mvn w1,w8
016ede48  bl 0x0124c4d0
016ede4c  ldr w8,[sp, #0x18]
016ede50  cmp w8,#0x1
016ede54  b.lt 0x016ede64
016ede58  ldr x0,[sp, #0x10]
016ede5c  mvn w1,w8
016ede60  bl 0x0124c4d0
016ede64  ldr w8,[sp, #0x8]
016ede68  cmp w8,#0x1
016ede6c  b.lt 0x016ede7c
016ede70  ldr x0,[sp]
016ede74  mvn w1,w8
016ede78  bl 0x0124c4d0
016ede7c  ldp x29,x30,[sp, #0x30]
016ede80  ldr x19,[sp, #0x20]
016ede84  add sp,sp,#0x40
016ede88  ret
