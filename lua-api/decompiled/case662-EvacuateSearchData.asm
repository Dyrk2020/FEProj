// ===== case662-EvacuateSearchData @ 01716cac =====
// existing function case662-EvacuateSearchData
01716cac  sub sp,sp,#0x40
01716cb0  str x19,[sp, #0x20]
01716cb4  stp x29,x30,[sp, #0x30]
01716cb8  add x29,sp,#0x30
01716cbc  adrp x1,0x174a000
01716cc0  add x1,x1,#0x87c
01716cc4  mov x19,x0
01716cc8  bl 0x0124ba40
01716ccc  adrp x1,0x575d000
01716cd0  add x1,x1,#0xa06
01716cd4  mov x0,x19
01716cd8  str x19,[sp]
01716cdc  bl 0x01251aa0
01716ce0  mov w8,#0x1
01716ce4  str w8,[sp, #0x8]
01716ce8  mov x0,sp
01716cec  bl 0x0174aa04
01716cf0  adrp x1,0x576c000
01716cf4  adrp x3,0x736d000
01716cf8  add x1,x1,#0xe2b
01716cfc  add x3,x3,#0x101
01716d00  add x0,sp,#0x10
01716d04  mov x2,sp
01716d08  bl 0x01934e9c
01716d0c  adrp x1,0x57f9000
01716d10  adrp x2,0x1934000
01716d14  adrp x4,0x1934000
01716d18  add x1,x1,#0xcf2
01716d1c  add x2,x2,#0xc58
01716d20  add x4,x4,#0xc60
01716d24  add x0,sp,#0x10
01716d28  mov x3,xzr
01716d2c  mov x5,xzr
01716d30  bl 0x01934a70
01716d34  adrp x1,0x59a4000
01716d38  adrp x2,0x1934000
01716d3c  adrp x4,0x1934000
01716d40  add x1,x1,#0x6f7
01716d44  add x2,x2,#0xe64
01716d48  add x4,x4,#0xe78
01716d4c  mov x3,xzr
01716d50  mov x5,xzr
01716d54  bl 0x01934c7c
01716d58  mov x19,x0
01716d5c  ldr w8,[x19, #0x8]
01716d60  ldr x0,[x19]
01716d64  sub w8,w8,#0x3
01716d68  str w8,[x19, #0x8]
01716d6c  orr w1,wzr,#0xfffffffc
01716d70  bl 0x0124c4d0
01716d74  ldr w8,[x19, #0x8]
01716d78  ldr x0,[x19]
01716d7c  str wzr,[x19, #0x8]
01716d80  cmp w8,#0x1
01716d84  b.lt 0x01716d90
01716d88  mvn w1,w8
01716d8c  bl 0x0124c4d0
01716d90  ldr w8,[sp, #0x18]
01716d94  cmp w8,#0x1
01716d98  b.lt 0x01716da8
01716d9c  ldr x0,[sp, #0x10]
01716da0  mvn w1,w8
01716da4  bl 0x0124c4d0
01716da8  ldr w8,[sp, #0x8]
01716dac  cmp w8,#0x1
01716db0  b.lt 0x01716dc0
01716db4  ldr x0,[sp]
01716db8  mvn w1,w8
01716dbc  bl 0x0124c4d0
01716dc0  ldp x29,x30,[sp, #0x30]
01716dc4  ldr x19,[sp, #0x20]
01716dc8  add sp,sp,#0x40
01716dcc  ret
