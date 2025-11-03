// ===== case699-SkillHurtInfo @ 01720b4c =====
// existing function case699-SkillHurtInfo
01720b4c  sub sp,sp,#0x40
01720b50  str x19,[sp, #0x20]
01720b54  stp x29,x30,[sp, #0x30]
01720b58  add x29,sp,#0x30
01720b5c  adrp x1,0x174a000
01720b60  add x1,x1,#0x87c
01720b64  mov x19,x0
01720b68  bl 0x0124ba40
01720b6c  adrp x1,0x575d000
01720b70  add x1,x1,#0xa06
01720b74  mov x0,x19
01720b78  str x19,[sp]
01720b7c  bl 0x01251aa0
01720b80  mov w8,#0x1
01720b84  str w8,[sp, #0x8]
01720b88  mov x0,sp
01720b8c  bl 0x0174aa04
01720b90  adrp x1,0x5770000
01720b94  adrp x3,0x736d000
01720b98  add x1,x1,#0xcc2
01720b9c  add x3,x3,#0x101
01720ba0  add x0,sp,#0x10
01720ba4  mov x2,sp
01720ba8  bl 0x0195f4c8
01720bac  adrp x1,0x576f000
01720bb0  adrp x2,0x195e000
01720bb4  adrp x4,0x195e000
01720bb8  add x1,x1,#0x633
01720bbc  add x2,x2,#0xf54
01720bc0  add x4,x4,#0xf5c
01720bc4  add x0,sp,#0x10
01720bc8  mov x3,xzr
01720bcc  mov x5,xzr
01720bd0  bl 0x0195ed6c
01720bd4  adrp x1,0x576f000
01720bd8  adrp x2,0x195f000
01720bdc  adrp x4,0x195f000
01720be0  add x1,x1,#0x5b9
01720be4  add x2,x2,#0x160
01720be8  add x4,x4,#0x168
01720bec  mov x3,xzr
01720bf0  mov x5,xzr
01720bf4  bl 0x0195ef78
01720bf8  adrp x1,0x576f000
01720bfc  adrp x2,0x195f000
01720c00  adrp x4,0x195f000
01720c04  add x1,x1,#0x5ec
01720c08  add x2,x2,#0x184
01720c0c  add x4,x4,#0x18c
01720c10  mov x3,xzr
01720c14  mov x5,xzr
01720c18  bl 0x0195ef78
01720c1c  adrp x1,0x576f000
01720c20  adrp x2,0x195f000
01720c24  adrp x4,0x195f000
01720c28  add x1,x1,#0x63f
01720c2c  add x2,x2,#0x390
01720c30  add x4,x4,#0x398
01720c34  mov x3,xzr
01720c38  mov x5,xzr
01720c3c  bl 0x0195f1a8
01720c40  adrp x1,0x576f000
01720c44  adrp x2,0x195f000
01720c48  adrp x4,0x195f000
01720c4c  add x1,x1,#0x64c
01720c50  add x2,x2,#0x3f8
01720c54  add x4,x4,#0x400
01720c58  mov x3,xzr
01720c5c  mov x5,xzr
01720c60  bl 0x0195f1a8
01720c64  adrp x1,0x576f000
01720c68  adrp x2,0x195f000
01720c6c  adrp x4,0x195f000
01720c70  add x1,x1,#0x65b
01720c74  add x2,x2,#0x460
01720c78  add x4,x4,#0x468
01720c7c  mov x3,xzr
01720c80  mov x5,xzr
01720c84  bl 0x0195f1a8
01720c88  mov x19,x0
01720c8c  ldr w8,[x19, #0x8]
01720c90  ldr x0,[x19]
01720c94  sub w8,w8,#0x3
01720c98  str w8,[x19, #0x8]
01720c9c  orr w1,wzr,#0xfffffffc
01720ca0  bl 0x0124c4d0
01720ca4  ldr w8,[x19, #0x8]
01720ca8  ldr x0,[x19]
01720cac  str wzr,[x19, #0x8]
01720cb0  cmp w8,#0x1
01720cb4  b.lt 0x01720cc0
01720cb8  mvn w1,w8
01720cbc  bl 0x0124c4d0
01720cc0  ldr w8,[sp, #0x18]
01720cc4  cmp w8,#0x1
01720cc8  b.lt 0x01720cd8
01720ccc  ldr x0,[sp, #0x10]
01720cd0  mvn w1,w8
01720cd4  bl 0x0124c4d0
01720cd8  ldr w8,[sp, #0x8]
01720cdc  cmp w8,#0x1
01720ce0  b.lt 0x01720cf0
01720ce4  ldr x0,[sp]
01720ce8  mvn w1,w8
01720cec  bl 0x0124c4d0
01720cf0  ldp x29,x30,[sp, #0x30]
01720cf4  ldr x19,[sp, #0x20]
01720cf8  add sp,sp,#0x40
01720cfc  ret
