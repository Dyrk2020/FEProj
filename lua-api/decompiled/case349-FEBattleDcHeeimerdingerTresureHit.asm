// ===== case349-FEBattleDcHeeimerdingerTresureHit @ 016d0bac =====
// existing function case349-FEBattleDcHeeimerdingerTresureHit
016d0bac  sub sp,sp,#0x40
016d0bb0  str x19,[sp, #0x20]
016d0bb4  stp x29,x30,[sp, #0x30]
016d0bb8  add x29,sp,#0x30
016d0bbc  adrp x1,0x174a000
016d0bc0  add x1,x1,#0x87c
016d0bc4  mov x19,x0
016d0bc8  bl 0x0124ba40
016d0bcc  adrp x1,0x575d000
016d0bd0  add x1,x1,#0xa06
016d0bd4  mov x0,x19
016d0bd8  str x19,[sp]
016d0bdc  bl 0x01251aa0
016d0be0  mov w8,#0x1
016d0be4  str w8,[sp, #0x8]
016d0be8  mov x0,sp
016d0bec  bl 0x0174aa04
016d0bf0  adrp x1,0x5763000
016d0bf4  adrp x3,0x736d000
016d0bf8  add x1,x1,#0xd1a
016d0bfc  add x3,x3,#0x101
016d0c00  add x0,sp,#0x10
016d0c04  mov x2,sp
016d0c08  bl 0x01819e4c
016d0c0c  adrp x1,0x5763000
016d0c10  adrp x2,0x1819000
016d0c14  adrp x4,0x1819000
016d0c18  add x1,x1,#0xcff
016d0c1c  add x2,x2,#0xa3c
016d0c20  add x4,x4,#0xa44
016d0c24  add x0,sp,#0x10
016d0c28  mov x3,xzr
016d0c2c  mov x5,xzr
016d0c30  bl 0x01819854
016d0c34  adrp x1,0x5763000
016d0c38  adrp x2,0x1819000
016d0c3c  adrp x4,0x1819000
016d0c40  add x1,x1,#0xd06
016d0c44  add x2,x2,#0xc34
016d0c48  add x4,x4,#0xc3c
016d0c4c  mov x3,xzr
016d0c50  mov x5,xzr
016d0c54  bl 0x01819a4c
016d0c58  adrp x1,0x5944000
016d0c5c  adrp x2,0x1819000
016d0c60  adrp x4,0x1819000
016d0c64  add x1,x1,#0xaba
016d0c68  add x2,x2,#0xe2c
016d0c6c  add x4,x4,#0xe34
016d0c70  mov x3,xzr
016d0c74  mov x5,xzr
016d0c78  bl 0x01819c44
016d0c7c  adrp x1,0x5763000
016d0c80  adrp x2,0x1819000
016d0c84  adrp x4,0x1819000
016d0c88  add x1,x1,#0xd0d
016d0c8c  add x2,x2,#0xe3c
016d0c90  add x4,x4,#0xe44
016d0c94  mov x3,xzr
016d0c98  mov x5,xzr
016d0c9c  bl 0x01819a4c
016d0ca0  mov x19,x0
016d0ca4  ldr w8,[x19, #0x8]
016d0ca8  ldr x0,[x19]
016d0cac  sub w8,w8,#0x3
016d0cb0  str w8,[x19, #0x8]
016d0cb4  orr w1,wzr,#0xfffffffc
016d0cb8  bl 0x0124c4d0
016d0cbc  ldr w8,[x19, #0x8]
016d0cc0  ldr x0,[x19]
016d0cc4  str wzr,[x19, #0x8]
016d0cc8  cmp w8,#0x1
016d0ccc  b.lt 0x016d0cd8
016d0cd0  mvn w1,w8
016d0cd4  bl 0x0124c4d0
016d0cd8  ldr w8,[sp, #0x18]
016d0cdc  cmp w8,#0x1
016d0ce0  b.lt 0x016d0cf0
016d0ce4  ldr x0,[sp, #0x10]
016d0ce8  mvn w1,w8
016d0cec  bl 0x0124c4d0
016d0cf0  ldr w8,[sp, #0x8]
016d0cf4  cmp w8,#0x1
016d0cf8  b.lt 0x016d0d08
016d0cfc  ldr x0,[sp]
016d0d00  mvn w1,w8
016d0d04  bl 0x0124c4d0
016d0d08  ldp x29,x30,[sp, #0x30]
016d0d0c  ldr x19,[sp, #0x20]
016d0d10  add sp,sp,#0x40
016d0d14  ret
