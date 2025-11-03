// ===== case737-MonsterLevelVarResObject @ 01726c50 =====
// existing function case737-MonsterLevelVarResObject
01726c50  sub sp,sp,#0x40
01726c54  str x19,[sp, #0x20]
01726c58  stp x29,x30,[sp, #0x30]
01726c5c  add x29,sp,#0x30
01726c60  adrp x1,0x174a000
01726c64  add x1,x1,#0x87c
01726c68  mov x19,x0
01726c6c  bl 0x0124ba40
01726c70  adrp x1,0x575d000
01726c74  add x1,x1,#0xa06
01726c78  mov x0,x19
01726c7c  str x19,[sp]
01726c80  bl 0x01251aa0
01726c84  mov w8,#0x1
01726c88  str w8,[sp, #0x8]
01726c8c  mov x0,sp
01726c90  bl 0x0174aa04
01726c94  adrp x1,0x5770000
01726c98  adrp x3,0x736d000
01726c9c  add x1,x1,#0x100
01726ca0  add x3,x3,#0x101
01726ca4  add x0,sp,#0x10
01726ca8  mov x2,sp
01726cac  bl 0x0197e438
01726cb0  adrp x1,0x5770000
01726cb4  adrp x2,0x197e000
01726cb8  adrp x4,0x197e000
01726cbc  add x1,x1,#0x119
01726cc0  add x2,x2,#0x428
01726cc4  add x4,x4,#0x430
01726cc8  add x0,sp,#0x10
01726ccc  mov x3,xzr
01726cd0  mov x5,xzr
01726cd4  bl 0x0197e240
01726cd8  mov x19,x0
01726cdc  ldr w8,[x19, #0x8]
01726ce0  ldr x0,[x19]
01726ce4  sub w8,w8,#0x3
01726ce8  str w8,[x19, #0x8]
01726cec  orr w1,wzr,#0xfffffffc
01726cf0  bl 0x0124c4d0
01726cf4  ldr w8,[x19, #0x8]
01726cf8  ldr x0,[x19]
01726cfc  str wzr,[x19, #0x8]
01726d00  cmp w8,#0x1
01726d04  b.lt 0x01726d10
01726d08  mvn w1,w8
01726d0c  bl 0x0124c4d0
01726d10  ldr w8,[sp, #0x18]
01726d14  cmp w8,#0x1
01726d18  b.lt 0x01726d28
01726d1c  ldr x0,[sp, #0x10]
01726d20  mvn w1,w8
01726d24  bl 0x0124c4d0
01726d28  ldr w8,[sp, #0x8]
01726d2c  cmp w8,#0x1
01726d30  b.lt 0x01726d40
01726d34  ldr x0,[sp]
01726d38  mvn w1,w8
01726d3c  bl 0x0124c4d0
01726d40  ldp x29,x30,[sp, #0x30]
01726d44  ldr x19,[sp, #0x20]
01726d48  add sp,sp,#0x40
01726d4c  ret
