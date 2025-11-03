// ===== case350-FEBattleDcHeeimerdingerTresureUse @ 016d0d7c =====
// existing function case350-FEBattleDcHeeimerdingerTresureUse
016d0d7c  sub sp,sp,#0x40
016d0d80  str x19,[sp, #0x20]
016d0d84  stp x29,x30,[sp, #0x30]
016d0d88  add x29,sp,#0x30
016d0d8c  adrp x1,0x174a000
016d0d90  add x1,x1,#0x87c
016d0d94  mov x19,x0
016d0d98  bl 0x0124ba40
016d0d9c  adrp x1,0x575d000
016d0da0  add x1,x1,#0xa06
016d0da4  mov x0,x19
016d0da8  str x19,[sp]
016d0dac  bl 0x01251aa0
016d0db0  mov w8,#0x1
016d0db4  str w8,[sp, #0x8]
016d0db8  mov x0,sp
016d0dbc  bl 0x0174aa04
016d0dc0  adrp x1,0x5763000
016d0dc4  adrp x3,0x736d000
016d0dc8  add x1,x1,#0xd3c
016d0dcc  add x3,x3,#0x101
016d0dd0  add x0,sp,#0x10
016d0dd4  mov x2,sp
016d0dd8  bl 0x0181ae94
016d0ddc  adrp x1,0x5763000
016d0de0  adrp x2,0x181a000
016d0de4  adrp x4,0x181a000
016d0de8  add x1,x1,#0xcff
016d0dec  add x2,x2,#0xa84
016d0df0  add x4,x4,#0xa8c
016d0df4  add x0,sp,#0x10
016d0df8  mov x3,xzr
016d0dfc  mov x5,xzr
016d0e00  bl 0x0181a89c
016d0e04  adrp x1,0x5763000
016d0e08  adrp x2,0x181a000
016d0e0c  adrp x4,0x181a000
016d0e10  add x1,x1,#0xd06
016d0e14  add x2,x2,#0xc7c
016d0e18  add x4,x4,#0xc84
016d0e1c  mov x3,xzr
016d0e20  mov x5,xzr
016d0e24  bl 0x0181aa94
016d0e28  adrp x1,0x5944000
016d0e2c  adrp x2,0x181a000
016d0e30  adrp x4,0x181a000
016d0e34  add x1,x1,#0xaba
016d0e38  add x2,x2,#0xe74
016d0e3c  add x4,x4,#0xe7c
016d0e40  mov x3,xzr
016d0e44  mov x5,xzr
016d0e48  bl 0x0181ac8c
016d0e4c  adrp x1,0x5763000
016d0e50  adrp x2,0x181a000
016d0e54  adrp x4,0x181a000
016d0e58  add x1,x1,#0xd0d
016d0e5c  add x2,x2,#0xe84
016d0e60  add x4,x4,#0xe8c
016d0e64  mov x3,xzr
016d0e68  mov x5,xzr
016d0e6c  bl 0x0181aa94
016d0e70  mov x19,x0
016d0e74  ldr w8,[x19, #0x8]
016d0e78  ldr x0,[x19]
016d0e7c  sub w8,w8,#0x3
016d0e80  str w8,[x19, #0x8]
016d0e84  orr w1,wzr,#0xfffffffc
016d0e88  bl 0x0124c4d0
016d0e8c  ldr w8,[x19, #0x8]
016d0e90  ldr x0,[x19]
016d0e94  str wzr,[x19, #0x8]
016d0e98  cmp w8,#0x1
016d0e9c  b.lt 0x016d0ea8
016d0ea0  mvn w1,w8
016d0ea4  bl 0x0124c4d0
016d0ea8  ldr w8,[sp, #0x18]
016d0eac  cmp w8,#0x1
016d0eb0  b.lt 0x016d0ec0
016d0eb4  ldr x0,[sp, #0x10]
016d0eb8  mvn w1,w8
016d0ebc  bl 0x0124c4d0
016d0ec0  ldr w8,[sp, #0x8]
016d0ec4  cmp w8,#0x1
016d0ec8  b.lt 0x016d0ed8
016d0ecc  ldr x0,[sp]
016d0ed0  mvn w1,w8
016d0ed4  bl 0x0124c4d0
016d0ed8  ldp x29,x30,[sp, #0x30]
016d0edc  ldr x19,[sp, #0x20]
016d0ee0  add sp,sp,#0x40
016d0ee4  ret
