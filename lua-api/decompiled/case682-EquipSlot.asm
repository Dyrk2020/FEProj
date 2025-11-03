// ===== case682-EquipSlot @ 01719b3c =====
// existing function case682-EquipSlot
01719b3c  sub sp,sp,#0x40
01719b40  str x19,[sp, #0x20]
01719b44  stp x29,x30,[sp, #0x30]
01719b48  add x29,sp,#0x30
01719b4c  adrp x1,0x174a000
01719b50  add x1,x1,#0x87c
01719b54  mov x19,x0
01719b58  bl 0x0124ba40
01719b5c  adrp x1,0x575d000
01719b60  add x1,x1,#0xa06
01719b64  mov x0,x19
01719b68  str x19,[sp]
01719b6c  bl 0x01251aa0
01719b70  mov w8,#0x1
01719b74  str w8,[sp, #0x8]
01719b78  mov x0,sp
01719b7c  bl 0x0174aa04
01719b80  adrp x1,0x5760000
01719b84  adrp x3,0x736d000
01719b88  add x1,x1,#0x4e6
01719b8c  add x3,x3,#0x101
01719b90  add x0,sp,#0x10
01719b94  mov x2,sp
01719b98  bl 0x01947dc8
01719b9c  adrp x1,0x575e000
01719ba0  adrp x2,0x1947000
01719ba4  adrp x4,0x1947000
01719ba8  add x1,x1,#0x498
01719bac  add x2,x2,#0xb98
01719bb0  add x4,x4,#0xba0
01719bb4  add x0,sp,#0x10
01719bb8  mov x3,xzr
01719bbc  mov x5,xzr
01719bc0  bl 0x019479b0
01719bc4  adrp x1,0x576d000
01719bc8  adrp x2,0x1947000
01719bcc  adrp x4,0x1947000
01719bd0  add x1,x1,#0x34d
01719bd4  add x2,x2,#0xda4
01719bd8  add x4,x4,#0xdac
01719bdc  mov x3,xzr
01719be0  mov x5,xzr
01719be4  bl 0x01947bbc
01719be8  mov x19,x0
01719bec  ldr w8,[x19, #0x8]
01719bf0  ldr x0,[x19]
01719bf4  sub w8,w8,#0x3
01719bf8  str w8,[x19, #0x8]
01719bfc  orr w1,wzr,#0xfffffffc
01719c00  bl 0x0124c4d0
01719c04  ldr w8,[x19, #0x8]
01719c08  ldr x0,[x19]
01719c0c  str wzr,[x19, #0x8]
01719c10  cmp w8,#0x1
01719c14  b.lt 0x01719c20
01719c18  mvn w1,w8
01719c1c  bl 0x0124c4d0
01719c20  ldr w8,[sp, #0x18]
01719c24  cmp w8,#0x1
01719c28  b.lt 0x01719c38
01719c2c  ldr x0,[sp, #0x10]
01719c30  mvn w1,w8
01719c34  bl 0x0124c4d0
01719c38  ldr w8,[sp, #0x8]
01719c3c  cmp w8,#0x1
01719c40  b.lt 0x01719c50
01719c44  ldr x0,[sp]
01719c48  mvn w1,w8
01719c4c  bl 0x0124c4d0
01719c50  ldp x29,x30,[sp, #0x30]
01719c54  ldr x19,[sp, #0x20]
01719c58  add sp,sp,#0x40
01719c5c  ret
