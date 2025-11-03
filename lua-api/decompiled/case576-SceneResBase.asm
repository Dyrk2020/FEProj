// ===== case576-SceneResBase @ 01702cc0 =====
// existing function case576-SceneResBase
01702cc0  sub sp,sp,#0x40
01702cc4  str x19,[sp, #0x20]
01702cc8  stp x29,x30,[sp, #0x30]
01702ccc  add x29,sp,#0x30
01702cd0  adrp x1,0x174a000
01702cd4  add x1,x1,#0x87c
01702cd8  mov x19,x0
01702cdc  bl 0x0124ba40
01702ce0  adrp x1,0x575d000
01702ce4  add x1,x1,#0xa06
01702ce8  mov x0,x19
01702cec  str x19,[sp]
01702cf0  bl 0x01251aa0
01702cf4  mov w8,#0x1
01702cf8  str w8,[sp, #0x8]
01702cfc  mov x0,sp
01702d00  bl 0x0174aa04
01702d04  adrp x1,0x5769000
01702d08  adrp x3,0x736d000
01702d0c  add x1,x1,#0xf2e
01702d10  add x3,x3,#0x101
01702d14  add x0,sp,#0x10
01702d18  mov x2,sp
01702d1c  bl 0x018e4098
01702d20  adrp x1,0x59a4000
01702d24  adrp x2,0x18e4000
01702d28  adrp x4,0x18e4000
01702d2c  add x1,x1,#0x6f7
01702d30  add x2,x2,#0x68
01702d34  add x4,x4,#0x7c
01702d38  add x0,sp,#0x10
01702d3c  mov x3,xzr
01702d40  mov x5,xzr
01702d44  bl 0x018e3e80
01702d48  mov x19,x0
01702d4c  ldr w8,[x19, #0x8]
01702d50  ldr x0,[x19]
01702d54  sub w8,w8,#0x3
01702d58  str w8,[x19, #0x8]
01702d5c  orr w1,wzr,#0xfffffffc
01702d60  bl 0x0124c4d0
01702d64  ldr w8,[x19, #0x8]
01702d68  ldr x0,[x19]
01702d6c  str wzr,[x19, #0x8]
01702d70  cmp w8,#0x1
01702d74  b.lt 0x01702d80
01702d78  mvn w1,w8
01702d7c  bl 0x0124c4d0
01702d80  ldr w8,[sp, #0x18]
01702d84  cmp w8,#0x1
01702d88  b.lt 0x01702d98
01702d8c  ldr x0,[sp, #0x10]
01702d90  mvn w1,w8
01702d94  bl 0x0124c4d0
01702d98  ldr w8,[sp, #0x8]
01702d9c  cmp w8,#0x1
01702da0  b.lt 0x01702db0
01702da4  ldr x0,[sp]
01702da8  mvn w1,w8
01702dac  bl 0x0124c4d0
01702db0  ldp x29,x30,[sp, #0x30]
01702db4  ldr x19,[sp, #0x20]
01702db8  add sp,sp,#0x40
01702dbc  ret
