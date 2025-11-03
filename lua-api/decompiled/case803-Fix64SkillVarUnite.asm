// ===== case803-Fix64SkillVarUnite @ 01733ccc =====
// existing function case803-Fix64SkillVarUnite
01733ccc  sub sp,sp,#0x40
01733cd0  str x19,[sp, #0x20]
01733cd4  stp x29,x30,[sp, #0x30]
01733cd8  add x29,sp,#0x30
01733cdc  adrp x1,0x174a000
01733ce0  add x1,x1,#0x87c
01733ce4  mov x19,x0
01733ce8  bl 0x0124ba40
01733cec  adrp x1,0x575d000
01733cf0  add x1,x1,#0xa06
01733cf4  mov x0,x19
01733cf8  str x19,[sp]
01733cfc  bl 0x01251aa0
01733d00  mov w8,#0x1
01733d04  str w8,[sp, #0x8]
01733d08  mov x0,sp
01733d0c  bl 0x0174aa04
01733d10  adrp x1,0x5772000
01733d14  adrp x3,0x736d000
01733d18  add x1,x1,#0x11
01733d1c  add x3,x3,#0x101
01733d20  add x0,sp,#0x10
01733d24  mov x2,sp
01733d28  bl 0x019b977c
01733d2c  adrp x1,0x5955000
01733d30  adrp x2,0x19b9000
01733d34  adrp x4,0x19b9000
01733d38  add x1,x1,#0x16f
01733d3c  add x2,x2,#0x76c
01733d40  add x4,x4,#0x774
01733d44  add x0,sp,#0x10
01733d48  mov x3,xzr
01733d4c  mov x5,xzr
01733d50  bl 0x019b9584
01733d54  mov x19,x0
01733d58  ldr w8,[x19, #0x8]
01733d5c  ldr x0,[x19]
01733d60  sub w8,w8,#0x3
01733d64  str w8,[x19, #0x8]
01733d68  orr w1,wzr,#0xfffffffc
01733d6c  bl 0x0124c4d0
01733d70  ldr w8,[x19, #0x8]
01733d74  ldr x0,[x19]
01733d78  str wzr,[x19, #0x8]
01733d7c  cmp w8,#0x1
01733d80  b.lt 0x01733d8c
01733d84  mvn w1,w8
01733d88  bl 0x0124c4d0
01733d8c  ldr w8,[sp, #0x18]
01733d90  cmp w8,#0x1
01733d94  b.lt 0x01733da4
01733d98  ldr x0,[sp, #0x10]
01733d9c  mvn w1,w8
01733da0  bl 0x0124c4d0
01733da4  ldr w8,[sp, #0x8]
01733da8  cmp w8,#0x1
01733dac  b.lt 0x01733dbc
01733db0  ldr x0,[sp]
01733db4  mvn w1,w8
01733db8  bl 0x0124c4d0
01733dbc  ldp x29,x30,[sp, #0x30]
01733dc0  ldr x19,[sp, #0x20]
01733dc4  add sp,sp,#0x40
01733dc8  ret
