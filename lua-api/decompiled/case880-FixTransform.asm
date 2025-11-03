// ===== case880-FixTransform @ 01749c84 =====
// existing function case880_FixTransform
01749c84  sub sp,sp,#0x40
01749c88  str x19,[sp, #0x20]
01749c8c  stp x29,x30,[sp, #0x30]
01749c90  add x29,sp,#0x30
01749c94  adrp x1,0x174a000
01749c98  add x1,x1,#0x87c
01749c9c  mov x19,x0
01749ca0  bl 0x0124ba40
01749ca4  adrp x1,0x575d000
01749ca8  add x1,x1,#0xa06
01749cac  mov x0,x19
01749cb0  str x19,[sp]
01749cb4  bl 0x01251aa0
01749cb8  mov w8,#0x1
01749cbc  str w8,[sp, #0x8]
01749cc0  mov x0,sp
01749cc4  bl 0x0174aa04
01749cc8  adrp x1,0x5774000
01749ccc  adrp x3,0x736d000
01749cd0  add x1,x1,#0xf1
01749cd4  add x3,x3,#0x101
01749cd8  add x0,sp,#0x10
01749cdc  mov x2,sp
01749ce0  bl 0x01a1951c
01749ce4  adrp x1,0x59a4000
01749ce8  adrp x2,0x1a19000
01749cec  adrp x4,0x1a19000
01749cf0  add x1,x1,#0x6f7
01749cf4  add x2,x2,#0x274
01749cf8  add x4,x4,#0x2a0
01749cfc  add x0,sp,#0x10
01749d00  mov x3,xzr
01749d04  mov x5,xzr
01749d08  bl 0x01a1908c
01749d0c  adrp x1,0x5771000
01749d10  adrp x2,0x1a19000
01749d14  adrp x4,0x1a19000
01749d18  add x1,x1,#0x310
01749d1c  add x2,x2,#0x4ac
01749d20  add x4,x4,#0x4c0
01749d24  mov x3,xzr
01749d28  mov x5,xzr
01749d2c  bl 0x01a192c4
01749d30  adrp x1,0x5988000
01749d34  adrp x2,0x1a19000
01749d38  adrp x4,0x1a19000
01749d3c  add x1,x1,#0x90e
01749d40  add x2,x2,#0x4e4
01749d44  add x4,x4,#0x4f8
01749d48  mov x3,xzr
01749d4c  mov x5,xzr
01749d50  bl 0x01a1908c
01749d54  mov x19,x0
01749d58  ldr w8,[x19, #0x8]
01749d5c  ldr x0,[x19]
01749d60  sub w8,w8,#0x3
01749d64  str w8,[x19, #0x8]
01749d68  orr w1,wzr,#0xfffffffc
01749d6c  bl 0x0124c4d0
01749d70  ldr w8,[x19, #0x8]
01749d74  ldr x0,[x19]
01749d78  str wzr,[x19, #0x8]
01749d7c  cmp w8,#0x1
01749d80  b.lt 0x01749d8c
01749d84  mvn w1,w8
01749d88  bl 0x0124c4d0
01749d8c  ldr w8,[sp, #0x18]
01749d90  cmp w8,#0x1
01749d94  b.lt 0x01749da4
01749d98  ldr x0,[sp, #0x10]
01749d9c  mvn w1,w8
01749da0  bl 0x0124c4d0
01749da4  ldr w8,[sp, #0x8]
01749da8  cmp w8,#0x1
01749dac  b.lt 0x01749dbc
01749db0  ldr x0,[sp]
01749db4  mvn w1,w8
01749db8  bl 0x0124c4d0
01749dbc  ldp x29,x30,[sp, #0x30]
01749dc0  ldr x19,[sp, #0x20]
01749dc4  add sp,sp,#0x40
01749dc8  ret
