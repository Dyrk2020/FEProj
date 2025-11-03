// ===== case589-MapConfigAssetObject @ 01704a00 =====
// existing function case589-MapConfigAssetObject
01704a00  sub sp,sp,#0x40
01704a04  str x19,[sp, #0x20]
01704a08  stp x29,x30,[sp, #0x30]
01704a0c  add x29,sp,#0x30
01704a10  adrp x1,0x174a000
01704a14  add x1,x1,#0x87c
01704a18  mov x19,x0
01704a1c  bl 0x0124ba40
01704a20  adrp x1,0x575d000
01704a24  add x1,x1,#0xa06
01704a28  mov x0,x19
01704a2c  str x19,[sp]
01704a30  bl 0x01251aa0
01704a34  mov w8,#0x1
01704a38  str w8,[sp, #0x8]
01704a3c  mov x0,sp
01704a40  bl 0x0174aa04
01704a44  adrp x1,0x576a000
01704a48  adrp x3,0x736d000
01704a4c  add x1,x1,#0xb2
01704a50  add x3,x3,#0x101
01704a54  add x0,sp,#0x10
01704a58  mov x2,sp
01704a5c  bl 0x018eb014
01704a60  adrp x1,0x575d000
01704a64  adrp x2,0x18eb000
01704a68  adrp x4,0x18eb000
01704a6c  add x1,x1,#0xa00
01704a70  add x2,x2,#0x4
01704a74  add x4,x4,#0xc
01704a78  add x0,sp,#0x10
01704a7c  mov x3,xzr
01704a80  mov x5,xzr
01704a84  bl 0x018eae1c
01704a88  mov x19,x0
01704a8c  ldr w8,[x19, #0x8]
01704a90  ldr x0,[x19]
01704a94  sub w8,w8,#0x3
01704a98  str w8,[x19, #0x8]
01704a9c  orr w1,wzr,#0xfffffffc
01704aa0  bl 0x0124c4d0
01704aa4  ldr w8,[x19, #0x8]
01704aa8  ldr x0,[x19]
01704aac  str wzr,[x19, #0x8]
01704ab0  cmp w8,#0x1
01704ab4  b.lt 0x01704ac0
01704ab8  mvn w1,w8
01704abc  bl 0x0124c4d0
01704ac0  ldr w8,[sp, #0x18]
01704ac4  cmp w8,#0x1
01704ac8  b.lt 0x01704ad8
01704acc  ldr x0,[sp, #0x10]
01704ad0  mvn w1,w8
01704ad4  bl 0x0124c4d0
01704ad8  ldr w8,[sp, #0x8]
01704adc  cmp w8,#0x1
01704ae0  b.lt 0x01704af0
01704ae4  ldr x0,[sp]
01704ae8  mvn w1,w8
01704aec  bl 0x0124c4d0
01704af0  ldp x29,x30,[sp, #0x30]
01704af4  ldr x19,[sp, #0x20]
01704af8  add sp,sp,#0x40
01704afc  ret
