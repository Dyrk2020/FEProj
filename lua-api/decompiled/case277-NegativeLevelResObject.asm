// ===== case277-NegativeLevelResObject @ 016baa00 =====
// existing function case277-NegativeLevelResObject
016baa00  sub sp,sp,#0x40
016baa04  str x19,[sp, #0x20]
016baa08  stp x29,x30,[sp, #0x30]
016baa0c  add x29,sp,#0x30
016baa10  adrp x1,0x174a000
016baa14  add x1,x1,#0x87c
016baa18  mov x19,x0
016baa1c  bl 0x0124ba40
016baa20  adrp x1,0x575d000
016baa24  add x1,x1,#0xa06
016baa28  mov x0,x19
016baa2c  str x19,[sp]
016baa30  bl 0x01251aa0
016baa34  mov w8,#0x1
016baa38  str w8,[sp, #0x8]
016baa3c  mov x0,sp
016baa40  bl 0x0174aa04
016baa44  adrp x1,0x5761000
016baa48  adrp x3,0x736d000
016baa4c  add x1,x1,#0x93d
016baa50  add x3,x3,#0x101
016baa54  add x0,sp,#0x10
016baa58  mov x2,sp
016baa5c  bl 0x017e6cf0
016baa60  adrp x1,0x5761000
016baa64  adrp x2,0x17e6000
016baa68  adrp x4,0x17e6000
016baa6c  add x1,x1,#0x954
016baa70  add x2,x2,#0xad8
016baa74  add x4,x4,#0xae0
016baa78  add x0,sp,#0x10
016baa7c  mov x3,xzr
016baa80  mov x5,xzr
016baa84  bl 0x017e68f0
016baa88  adrp x1,0x5761000
016baa8c  adrp x2,0x17e6000
016baa90  adrp x4,0x17e6000
016baa94  add x1,x1,#0x962
016baa98  add x2,x2,#0xae8
016baa9c  add x4,x4,#0xaf0
016baaa0  mov x3,xzr
016baaa4  mov x5,xzr
016baaa8  bl 0x017e68f0
016baaac  adrp x1,0x5761000
016baab0  adrp x2,0x17e6000
016baab4  adrp x4,0x17e6000
016baab8  add x1,x1,#0x975
016baabc  add x2,x2,#0xce0
016baac0  add x4,x4,#0xce8
016baac4  mov x3,xzr
016baac8  mov x5,xzr
016baacc  bl 0x017e6af8
016baad0  mov x19,x0
016baad4  ldr w8,[x19, #0x8]
016baad8  ldr x0,[x19]
016baadc  sub w8,w8,#0x3
016baae0  str w8,[x19, #0x8]
016baae4  orr w1,wzr,#0xfffffffc
016baae8  bl 0x0124c4d0
016baaec  ldr w8,[x19, #0x8]
016baaf0  ldr x0,[x19]
016baaf4  str wzr,[x19, #0x8]
016baaf8  cmp w8,#0x1
016baafc  b.lt 0x016bab08
016bab00  mvn w1,w8
016bab04  bl 0x0124c4d0
016bab08  ldr w8,[sp, #0x18]
016bab0c  cmp w8,#0x1
016bab10  b.lt 0x016bab20
016bab14  ldr x0,[sp, #0x10]
016bab18  mvn w1,w8
016bab1c  bl 0x0124c4d0
016bab20  ldr w8,[sp, #0x8]
016bab24  cmp w8,#0x1
016bab28  b.lt 0x016bab38
016bab2c  ldr x0,[sp]
016bab30  mvn w1,w8
016bab34  bl 0x0124c4d0
016bab38  ldp x29,x30,[sp, #0x30]
016bab3c  ldr x19,[sp, #0x20]
016bab40  add sp,sp,#0x40
016bab44  ret
