// ===== case621-TriggerEvent @ 0170bcf4 =====
// existing function case621-TriggerEvent
0170bcf4  sub sp,sp,#0x40
0170bcf8  str x19,[sp, #0x20]
0170bcfc  stp x29,x30,[sp, #0x30]
0170bd00  add x29,sp,#0x30
0170bd04  adrp x1,0x174a000
0170bd08  add x1,x1,#0x87c
0170bd0c  mov x19,x0
0170bd10  bl 0x0124ba40
0170bd14  adrp x1,0x575d000
0170bd18  add x1,x1,#0xa06
0170bd1c  mov x0,x19
0170bd20  str x19,[sp]
0170bd24  bl 0x01251aa0
0170bd28  mov w8,#0x1
0170bd2c  str w8,[sp, #0x8]
0170bd30  mov x0,sp
0170bd34  bl 0x0174aa04
0170bd38  adrp x1,0x576a000
0170bd3c  adrp x3,0x736d000
0170bd40  add x1,x1,#0x6b7
0170bd44  add x3,x3,#0x101
0170bd48  add x0,sp,#0x10
0170bd4c  mov x2,sp
0170bd50  bl 0x01900d80
0170bd54  adrp x1,0x595c000
0170bd58  adrp x2,0x1900000
0170bd5c  adrp x4,0x1900000
0170bd60  add x1,x1,#0x9c4
0170bd64  add x2,x2,#0xd40
0170bd68  add x4,x4,#0xd48
0170bd6c  add x0,sp,#0x10
0170bd70  mov x3,xzr
0170bd74  mov x5,xzr
0170bd78  bl 0x01900b58
0170bd7c  adrp x1,0x5976000
0170bd80  adrp x2,0x1900000
0170bd84  adrp x4,0x1900000
0170bd88  add x1,x1,#0xecf
0170bd8c  add x2,x2,#0xd50
0170bd90  add x4,x4,#0xd58
0170bd94  mov x3,xzr
0170bd98  mov x5,xzr
0170bd9c  bl 0x01900b58
0170bda0  adrp x1,0x576a000
0170bda4  adrp x2,0x1900000
0170bda8  adrp x4,0x1900000
0170bdac  add x1,x1,#0x6da
0170bdb0  add x2,x2,#0xd60
0170bdb4  add x4,x4,#0xd68
0170bdb8  mov x3,xzr
0170bdbc  mov x5,xzr
0170bdc0  bl 0x01900b58
0170bdc4  adrp x1,0x576a000
0170bdc8  adrp x2,0x1900000
0170bdcc  adrp x4,0x1900000
0170bdd0  add x1,x1,#0x6e1
0170bdd4  add x2,x2,#0xd70
0170bdd8  add x4,x4,#0xd78
0170bddc  mov x3,xzr
0170bde0  mov x5,xzr
0170bde4  bl 0x01900b58
0170bde8  mov x19,x0
0170bdec  ldr w8,[x19, #0x8]
0170bdf0  ldr x0,[x19]
0170bdf4  sub w8,w8,#0x3
0170bdf8  str w8,[x19, #0x8]
0170bdfc  orr w1,wzr,#0xfffffffc
0170be00  bl 0x0124c4d0
0170be04  ldr w8,[x19, #0x8]
0170be08  ldr x0,[x19]
0170be0c  str wzr,[x19, #0x8]
0170be10  cmp w8,#0x1
0170be14  b.lt 0x0170be20
0170be18  mvn w1,w8
0170be1c  bl 0x0124c4d0
0170be20  ldr w8,[sp, #0x18]
0170be24  cmp w8,#0x1
0170be28  b.lt 0x0170be38
0170be2c  ldr x0,[sp, #0x10]
0170be30  mvn w1,w8
0170be34  bl 0x0124c4d0
0170be38  ldr w8,[sp, #0x8]
0170be3c  cmp w8,#0x1
0170be40  b.lt 0x0170be50
0170be44  ldr x0,[sp]
0170be48  mvn w1,w8
0170be4c  bl 0x0124c4d0
0170be50  ldp x29,x30,[sp, #0x30]
0170be54  ldr x19,[sp, #0x20]
0170be58  add sp,sp,#0x40
0170be5c  ret
