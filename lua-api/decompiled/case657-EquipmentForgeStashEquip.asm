// ===== case657-EquipmentForgeStashEquip @ 01715c98 =====
// existing function case657-EquipmentForgeStashEquip
01715c98  sub sp,sp,#0x40
01715c9c  str x19,[sp, #0x20]
01715ca0  stp x29,x30,[sp, #0x30]
01715ca4  add x29,sp,#0x30
01715ca8  adrp x1,0x174a000
01715cac  add x1,x1,#0x87c
01715cb0  mov x19,x0
01715cb4  bl 0x0124ba40
01715cb8  adrp x1,0x575d000
01715cbc  add x1,x1,#0xa06
01715cc0  mov x0,x19
01715cc4  str x19,[sp]
01715cc8  bl 0x01251aa0
01715ccc  mov w8,#0x1
01715cd0  str w8,[sp, #0x8]
01715cd4  mov x0,sp
01715cd8  bl 0x0174aa04
01715cdc  adrp x1,0x576c000
01715ce0  adrp x3,0x736d000
01715ce4  add x1,x1,#0xb53
01715ce8  add x3,x3,#0x101
01715cec  add x0,sp,#0x10
01715cf0  mov x2,sp
01715cf4  bl 0x0192d668
01715cf8  adrp x1,0x576c000
01715cfc  adrp x2,0x192d000
01715d00  adrp x4,0x192d000
01715d04  add x1,x1,#0xb6c
01715d08  add x2,x2,#0x5fc
01715d0c  add x4,x4,#0x604
01715d10  add x0,sp,#0x10
01715d14  mov x3,xzr
01715d18  mov x5,xzr
01715d1c  bl 0x0192d414
01715d20  adrp x1,0x576c000
01715d24  adrp x2,0x192d000
01715d28  adrp x4,0x192d000
01715d2c  add x1,x1,#0xb74
01715d30  add x2,x2,#0x620
01715d34  add x4,x4,#0x628
01715d38  mov x3,xzr
01715d3c  mov x5,xzr
01715d40  bl 0x0192d414
01715d44  adrp x1,0x575e000
01715d48  adrp x2,0x192d000
01715d4c  adrp x4,0x192d000
01715d50  add x1,x1,#0x738
01715d54  add x2,x2,#0x644
01715d58  add x4,x4,#0x64c
01715d5c  mov x3,xzr
01715d60  mov x5,xzr
01715d64  bl 0x0192d414
01715d68  mov x19,x0
01715d6c  ldr w8,[x19, #0x8]
01715d70  ldr x0,[x19]
01715d74  sub w8,w8,#0x3
01715d78  str w8,[x19, #0x8]
01715d7c  orr w1,wzr,#0xfffffffc
01715d80  bl 0x0124c4d0
01715d84  ldr w8,[x19, #0x8]
01715d88  ldr x0,[x19]
01715d8c  str wzr,[x19, #0x8]
01715d90  cmp w8,#0x1
01715d94  b.lt 0x01715da0
01715d98  mvn w1,w8
01715d9c  bl 0x0124c4d0
01715da0  ldr w8,[sp, #0x18]
01715da4  cmp w8,#0x1
01715da8  b.lt 0x01715db8
01715dac  ldr x0,[sp, #0x10]
01715db0  mvn w1,w8
01715db4  bl 0x0124c4d0
01715db8  ldr w8,[sp, #0x8]
01715dbc  cmp w8,#0x1
01715dc0  b.lt 0x01715dd0
01715dc4  ldr x0,[sp]
01715dc8  mvn w1,w8
01715dcc  bl 0x0124c4d0
01715dd0  ldp x29,x30,[sp, #0x30]
01715dd4  ldr x19,[sp, #0x20]
01715dd8  add sp,sp,#0x40
01715ddc  ret
