// ===== case69-RuinEquipAndSkillRandomData @ 01697b64 =====
// existing function case69-RuinEquipAndSkillRandomData
01697b64  sub sp,sp,#0x40
01697b68  str x19,[sp, #0x20]
01697b6c  stp x29,x30,[sp, #0x30]
01697b70  add x29,sp,#0x30
01697b74  adrp x1,0x174a000
01697b78  add x1,x1,#0x87c
01697b7c  mov x19,x0
01697b80  bl 0x0124ba40
01697b84  adrp x1,0x575d000
01697b88  add x1,x1,#0xa06
01697b8c  mov x0,x19
01697b90  str x19,[sp]
01697b94  bl 0x01251aa0
01697b98  mov w8,#0x1
01697b9c  str w8,[sp, #0x8]
01697ba0  mov x0,sp
01697ba4  bl 0x0174aa04
01697ba8  adrp x1,0x575e000
01697bac  adrp x3,0x736d000
01697bb0  add x1,x1,#0xc7e
01697bb4  add x3,x3,#0x101
01697bb8  add x0,sp,#0x10
01697bbc  mov x2,sp
01697bc0  bl 0x01776010
01697bc4  adrp x1,0x575e000
01697bc8  adrp x2,0x1775000
01697bcc  adrp x4,0x1775000
01697bd0  add x1,x1,#0xc36
01697bd4  add x2,x2,#0xdb8
01697bd8  add x4,x4,#0xdc0
01697bdc  add x0,sp,#0x10
01697be0  mov x3,xzr
01697be4  mov x5,xzr
01697be8  bl 0x01775bd0
01697bec  adrp x1,0x575e000
01697bf0  adrp x2,0x1775000
01697bf4  adrp x4,0x1775000
01697bf8  add x1,x1,#0xc9a
01697bfc  add x2,x2,#0xdc8
01697c00  add x4,x4,#0xdd0
01697c04  mov x3,xzr
01697c08  mov x5,xzr
01697c0c  bl 0x01775bd0
01697c10  adrp x1,0x575e000
01697c14  adrp x2,0x1775000
01697c18  adrp x4,0x1775000
01697c1c  add x1,x1,#0xcab
01697c20  add x2,x2,#0xdd8
01697c24  add x4,x4,#0xde0
01697c28  mov x3,xzr
01697c2c  mov x5,xzr
01697c30  bl 0x01775bd0
01697c34  adrp x1,0x575e000
01697c38  adrp x2,0x1775000
01697c3c  adrp x4,0x1775000
01697c40  add x1,x1,#0xcba
01697c44  add x2,x2,#0xfd0
01697c48  add x4,x4,#0xfd8
01697c4c  mov x3,xzr
01697c50  mov x5,xzr
01697c54  bl 0x01775de8
01697c58  adrp x1,0x575e000
01697c5c  adrp x2,0x1775000
01697c60  adrp x4,0x1775000
01697c64  add x1,x1,#0xcca
01697c68  add x2,x2,#0xfe0
01697c6c  add x4,x4,#0xfe8
01697c70  mov x3,xzr
01697c74  mov x5,xzr
01697c78  bl 0x01775de8
01697c7c  adrp x1,0x575e000
01697c80  adrp x2,0x1775000
01697c84  adrp x4,0x1775000
01697c88  add x1,x1,#0xcdc
01697c8c  add x2,x2,#0xff0
01697c90  add x4,x4,#0xff8
01697c94  mov x3,xzr
01697c98  mov x5,xzr
01697c9c  bl 0x01775de8
01697ca0  adrp x1,0x575e000
01697ca4  adrp x2,0x1776000
01697ca8  adrp x4,0x1776000
01697cac  add x1,x1,#0xceb
01697cb0  add x2,x2,#0x0
01697cb4  add x4,x4,#0x8
01697cb8  mov x3,xzr
01697cbc  mov x5,xzr
01697cc0  bl 0x01775de8
01697cc4  mov x19,x0
01697cc8  ldr w8,[x19, #0x8]
01697ccc  ldr x0,[x19]
01697cd0  sub w8,w8,#0x3
01697cd4  str w8,[x19, #0x8]
01697cd8  orr w1,wzr,#0xfffffffc
01697cdc  bl 0x0124c4d0
01697ce0  ldr w8,[x19, #0x8]
01697ce4  ldr x0,[x19]
01697ce8  str wzr,[x19, #0x8]
01697cec  cmp w8,#0x1
01697cf0  b.lt 0x01697cfc
01697cf4  mvn w1,w8
01697cf8  bl 0x0124c4d0
01697cfc  ldr w8,[sp, #0x18]
01697d00  cmp w8,#0x1
01697d04  b.lt 0x01697d14
01697d08  ldr x0,[sp, #0x10]
01697d0c  mvn w1,w8
01697d10  bl 0x0124c4d0
01697d14  ldr w8,[sp, #0x8]
01697d18  cmp w8,#0x1
01697d1c  b.lt 0x01697d2c
01697d20  ldr x0,[sp]
01697d24  mvn w1,w8
01697d28  bl 0x0124c4d0
01697d2c  ldp x29,x30,[sp, #0x30]
01697d30  ldr x19,[sp, #0x20]
01697d34  add sp,sp,#0x40
01697d38  ret
