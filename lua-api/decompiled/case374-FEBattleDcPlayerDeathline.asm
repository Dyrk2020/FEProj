// ===== case374-FEBattleDcPlayerDeathline @ 016d6d84 =====
// existing function case374-FEBattleDcPlayerDeathline
016d6d84  sub sp,sp,#0x40
016d6d88  str x19,[sp, #0x20]
016d6d8c  stp x29,x30,[sp, #0x30]
016d6d90  add x29,sp,#0x30
016d6d94  adrp x1,0x174a000
016d6d98  add x1,x1,#0x87c
016d6d9c  mov x19,x0
016d6da0  bl 0x0124ba40
016d6da4  adrp x1,0x575d000
016d6da8  add x1,x1,#0xa06
016d6dac  mov x0,x19
016d6db0  str x19,[sp]
016d6db4  bl 0x01251aa0
016d6db8  mov w8,#0x1
016d6dbc  str w8,[sp, #0x8]
016d6dc0  mov x0,sp
016d6dc4  bl 0x0174aa04
016d6dc8  adrp x1,0x5764000
016d6dcc  adrp x3,0x736d000
016d6dd0  add x1,x1,#0xca2
016d6dd4  add x3,x3,#0x101
016d6dd8  add x0,sp,#0x10
016d6ddc  mov x2,sp
016d6de0  bl 0x01831188
016d6de4  adrp x1,0x5764000
016d6de8  adrp x2,0x1831000
016d6dec  adrp x4,0x1831000
016d6df0  add x1,x1,#0xcbc
016d6df4  add x2,x2,#0x128
016d6df8  add x4,x4,#0x130
016d6dfc  add x0,sp,#0x10
016d6e00  mov x3,xzr
016d6e04  mov x5,xzr
016d6e08  bl 0x01830f40
016d6e0c  adrp x1,0x5762000
016d6e10  adrp x2,0x1831000
016d6e14  adrp x4,0x1831000
016d6e18  add x1,x1,#0x3c5
016d6e1c  add x2,x2,#0x138
016d6e20  add x4,x4,#0x140
016d6e24  mov x3,xzr
016d6e28  mov x5,xzr
016d6e2c  bl 0x01830f40
016d6e30  adrp x1,0x5764000
016d6e34  adrp x2,0x1831000
016d6e38  adrp x4,0x1831000
016d6e3c  add x1,x1,#0xcca
016d6e40  add x2,x2,#0x148
016d6e44  add x4,x4,#0x150
016d6e48  mov x3,xzr
016d6e4c  mov x5,xzr
016d6e50  bl 0x01830f40
016d6e54  adrp x1,0x5764000
016d6e58  adrp x2,0x1831000
016d6e5c  adrp x4,0x1831000
016d6e60  add x1,x1,#0xce5
016d6e64  add x2,x2,#0x158
016d6e68  add x4,x4,#0x160
016d6e6c  mov x3,xzr
016d6e70  mov x5,xzr
016d6e74  bl 0x01830f40
016d6e78  adrp x1,0x5764000
016d6e7c  adrp x2,0x1831000
016d6e80  adrp x4,0x1831000
016d6e84  add x1,x1,#0xcdb
016d6e88  add x2,x2,#0x168
016d6e8c  add x4,x4,#0x170
016d6e90  mov x3,xzr
016d6e94  mov x5,xzr
016d6e98  bl 0x01830f40
016d6e9c  adrp x1,0x5764000
016d6ea0  adrp x2,0x1831000
016d6ea4  adrp x4,0x1831000
016d6ea8  add x1,x1,#0xce2
016d6eac  add x2,x2,#0x178
016d6eb0  add x4,x4,#0x180
016d6eb4  mov x3,xzr
016d6eb8  mov x5,xzr
016d6ebc  bl 0x01830f40
016d6ec0  mov x19,x0
016d6ec4  ldr w8,[x19, #0x8]
016d6ec8  ldr x0,[x19]
016d6ecc  sub w8,w8,#0x3
016d6ed0  str w8,[x19, #0x8]
016d6ed4  orr w1,wzr,#0xfffffffc
016d6ed8  bl 0x0124c4d0
016d6edc  ldr w8,[x19, #0x8]
016d6ee0  ldr x0,[x19]
016d6ee4  str wzr,[x19, #0x8]
016d6ee8  cmp w8,#0x1
016d6eec  b.lt 0x016d6ef8
016d6ef0  mvn w1,w8
016d6ef4  bl 0x0124c4d0
016d6ef8  ldr w8,[sp, #0x18]
016d6efc  cmp w8,#0x1
016d6f00  b.lt 0x016d6f10
016d6f04  ldr x0,[sp, #0x10]
016d6f08  mvn w1,w8
016d6f0c  bl 0x0124c4d0
016d6f10  ldr w8,[sp, #0x8]
016d6f14  cmp w8,#0x1
016d6f18  b.lt 0x016d6f28
016d6f1c  ldr x0,[sp]
016d6f20  mvn w1,w8
016d6f24  bl 0x0124c4d0
016d6f28  ldp x29,x30,[sp, #0x30]
016d6f2c  ldr x19,[sp, #0x20]
016d6f30  add sp,sp,#0x40
016d6f34  ret
