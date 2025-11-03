// ===== case717-VirtualSkillAssetObject @ 01723ca8 =====
// existing function case717-VirtualSkillAssetObject
01723ca8  sub sp,sp,#0x40
01723cac  str x19,[sp, #0x20]
01723cb0  stp x29,x30,[sp, #0x30]
01723cb4  add x29,sp,#0x30
01723cb8  adrp x1,0x174a000
01723cbc  add x1,x1,#0x87c
01723cc0  mov x19,x0
01723cc4  bl 0x0124ba40
01723cc8  adrp x1,0x575d000
01723ccc  add x1,x1,#0xa06
01723cd0  mov x0,x19
01723cd4  str x19,[sp]
01723cd8  bl 0x01251aa0
01723cdc  mov w8,#0x1
01723ce0  str w8,[sp, #0x8]
01723ce4  mov x0,sp
01723ce8  bl 0x0174aa04
01723cec  adrp x1,0x576f000
01723cf0  adrp x3,0x736d000
01723cf4  add x1,x1,#0xbbe
01723cf8  add x3,x3,#0x101
01723cfc  add x0,sp,#0x10
01723d00  mov x2,sp
01723d04  bl 0x019714e4
01723d08  adrp x1,0x575d000
01723d0c  adrp x2,0x1971000
01723d10  adrp x4,0x1971000
01723d14  add x1,x1,#0xa00
01723d18  add x2,x2,#0x4d4
01723d1c  add x4,x4,#0x4dc
01723d20  add x0,sp,#0x10
01723d24  mov x3,xzr
01723d28  mov x5,xzr
01723d2c  bl 0x019712ec
01723d30  mov x19,x0
01723d34  ldr w8,[x19, #0x8]
01723d38  ldr x0,[x19]
01723d3c  sub w8,w8,#0x3
01723d40  str w8,[x19, #0x8]
01723d44  orr w1,wzr,#0xfffffffc
01723d48  bl 0x0124c4d0
01723d4c  ldr w8,[x19, #0x8]
01723d50  ldr x0,[x19]
01723d54  str wzr,[x19, #0x8]
01723d58  cmp w8,#0x1
01723d5c  b.lt 0x01723d68
01723d60  mvn w1,w8
01723d64  bl 0x0124c4d0
01723d68  ldr w8,[sp, #0x18]
01723d6c  cmp w8,#0x1
01723d70  b.lt 0x01723d80
01723d74  ldr x0,[sp, #0x10]
01723d78  mvn w1,w8
01723d7c  bl 0x0124c4d0
01723d80  ldr w8,[sp, #0x8]
01723d84  cmp w8,#0x1
01723d88  b.lt 0x01723d98
01723d8c  ldr x0,[sp]
01723d90  mvn w1,w8
01723d94  bl 0x0124c4d0
01723d98  ldp x29,x30,[sp, #0x30]
01723d9c  ldr x19,[sp, #0x20]
01723da0  add sp,sp,#0x40
01723da4  ret
