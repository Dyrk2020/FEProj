// ===== case164-EquipAssetObject @ 016a8538 =====
// existing function case164_EquipAssetObject
016a8538  sub sp,sp,#0x40
016a853c  str x19,[sp, #0x20]
016a8540  stp x29,x30,[sp, #0x30]
016a8544  add x29,sp,#0x30
016a8548  adrp x1,0x174a000
016a854c  add x1,x1,#0x87c
016a8550  mov x19,x0
016a8554  bl 0x0124ba40
016a8558  adrp x1,0x575d000
016a855c  add x1,x1,#0xa06
016a8560  mov x0,x19
016a8564  str x19,[sp]
016a8568  bl 0x01251aa0
016a856c  mov w8,#0x1
016a8570  str w8,[sp, #0x8]
016a8574  mov x0,sp
016a8578  bl 0x0174aa04
016a857c  adrp x1,0x5760000
016a8580  adrp x3,0x736d000
016a8584  add x1,x1,#0x2d2
016a8588  add x3,x3,#0x101
016a858c  add x0,sp,#0x10
016a8590  mov x2,sp
016a8594  bl 0x017a8a28
016a8598  adrp x1,0x575d000
016a859c  adrp x2,0x17a8000
016a85a0  adrp x4,0x17a8000
016a85a4  add x1,x1,#0xa00
016a85a8  add x2,x2,#0xa18
016a85ac  add x4,x4,#0xa20
016a85b0  add x0,sp,#0x10
016a85b4  mov x3,xzr
016a85b8  mov x5,xzr
016a85bc  bl 0x017a8830
016a85c0  mov x19,x0
016a85c4  ldr w8,[x19, #0x8]
016a85c8  ldr x0,[x19]
016a85cc  sub w8,w8,#0x3
016a85d0  str w8,[x19, #0x8]
016a85d4  orr w1,wzr,#0xfffffffc
016a85d8  bl 0x0124c4d0
016a85dc  ldr w8,[x19, #0x8]
016a85e0  ldr x0,[x19]
016a85e4  str wzr,[x19, #0x8]
016a85e8  cmp w8,#0x1
016a85ec  b.lt 0x016a85f8
016a85f0  mvn w1,w8
016a85f4  bl 0x0124c4d0
016a85f8  ldr w8,[sp, #0x18]
016a85fc  cmp w8,#0x1
016a8600  b.lt 0x016a8610
016a8604  ldr x0,[sp, #0x10]
016a8608  mvn w1,w8
016a860c  bl 0x0124c4d0
016a8610  ldr w8,[sp, #0x8]
016a8614  cmp w8,#0x1
016a8618  b.lt 0x016a8628
016a861c  ldr x0,[sp]
016a8620  mvn w1,w8
016a8624  bl 0x0124c4d0
016a8628  ldp x29,x30,[sp, #0x30]
016a862c  ldr x19,[sp, #0x20]
016a8630  add sp,sp,#0x40
016a8634  ret
