// ===== case465-SkillGemAssetObject @ 016ecd60 =====
// existing function case465-SkillGemAssetObject
016ecd60  sub sp,sp,#0x40
016ecd64  str x19,[sp, #0x20]
016ecd68  stp x29,x30,[sp, #0x30]
016ecd6c  add x29,sp,#0x30
016ecd70  adrp x1,0x174a000
016ecd74  add x1,x1,#0x87c
016ecd78  mov x19,x0
016ecd7c  bl 0x0124ba40
016ecd80  adrp x1,0x575d000
016ecd84  add x1,x1,#0xa06
016ecd88  mov x0,x19
016ecd8c  str x19,[sp]
016ecd90  bl 0x01251aa0
016ecd94  mov w8,#0x1
016ecd98  str w8,[sp, #0x8]
016ecd9c  mov x0,sp
016ecda0  bl 0x0174aa04
016ecda4  adrp x1,0x5766000
016ecda8  adrp x3,0x736d000
016ecdac  add x1,x1,#0xf34
016ecdb0  add x3,x3,#0x101
016ecdb4  add x0,sp,#0x10
016ecdb8  mov x2,sp
016ecdbc  bl 0x01875e84
016ecdc0  adrp x1,0x575d000
016ecdc4  adrp x2,0x1875000
016ecdc8  adrp x4,0x1875000
016ecdcc  add x1,x1,#0xa00
016ecdd0  add x2,x2,#0xe74
016ecdd4  add x4,x4,#0xe7c
016ecdd8  add x0,sp,#0x10
016ecddc  mov x3,xzr
016ecde0  mov x5,xzr
016ecde4  bl 0x01875c8c
016ecde8  mov x19,x0
016ecdec  ldr w8,[x19, #0x8]
016ecdf0  ldr x0,[x19]
016ecdf4  sub w8,w8,#0x3
016ecdf8  str w8,[x19, #0x8]
016ecdfc  orr w1,wzr,#0xfffffffc
016ece00  bl 0x0124c4d0
016ece04  ldr w8,[x19, #0x8]
016ece08  ldr x0,[x19]
016ece0c  str wzr,[x19, #0x8]
016ece10  cmp w8,#0x1
016ece14  b.lt 0x016ece20
016ece18  mvn w1,w8
016ece1c  bl 0x0124c4d0
016ece20  ldr w8,[sp, #0x18]
016ece24  cmp w8,#0x1
016ece28  b.lt 0x016ece38
016ece2c  ldr x0,[sp, #0x10]
016ece30  mvn w1,w8
016ece34  bl 0x0124c4d0
016ece38  ldr w8,[sp, #0x8]
016ece3c  cmp w8,#0x1
016ece40  b.lt 0x016ece50
016ece44  ldr x0,[sp]
016ece48  mvn w1,w8
016ece4c  bl 0x0124c4d0
016ece50  ldp x29,x30,[sp, #0x30]
016ece54  ldr x19,[sp, #0x20]
016ece58  add sp,sp,#0x40
016ece5c  ret
