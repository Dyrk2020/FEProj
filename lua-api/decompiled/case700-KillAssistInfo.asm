// ===== case700-KillAssistInfo @ 01720d64 =====
// existing function case700-KillAssistInfo
01720d64  sub sp,sp,#0x40
01720d68  str x19,[sp, #0x20]
01720d6c  stp x29,x30,[sp, #0x30]
01720d70  add x29,sp,#0x30
01720d74  adrp x1,0x174a000
01720d78  add x1,x1,#0x87c
01720d7c  mov x19,x0
01720d80  bl 0x0124ba40
01720d84  adrp x1,0x575d000
01720d88  add x1,x1,#0xa06
01720d8c  mov x0,x19
01720d90  str x19,[sp]
01720d94  bl 0x01251aa0
01720d98  mov w8,#0x1
01720d9c  str w8,[sp, #0x8]
01720da0  mov x0,sp
01720da4  bl 0x0174aa04
01720da8  adrp x1,0x576f000
01720dac  adrp x3,0x736d000
01720db0  add x1,x1,#0x673
01720db4  add x3,x3,#0x101
01720db8  add x0,sp,#0x10
01720dbc  mov x2,sp
01720dc0  bl 0x01960ea0
01720dc4  adrp x1,0x5764000
01720dc8  adrp x2,0x1960000
01720dcc  adrp x4,0x1960000
01720dd0  add x1,x1,#0x7a2
01720dd4  add x2,x2,#0x970
01720dd8  add x4,x4,#0x978
01720ddc  add x0,sp,#0x10
01720de0  mov x3,xzr
01720de4  mov x5,xzr
01720de8  bl 0x01960788
01720dec  adrp x1,0x5768000
01720df0  adrp x2,0x1960000
01720df4  adrp x4,0x1960000
01720df8  add x1,x1,#0x387
01720dfc  add x2,x2,#0x994
01720e00  add x4,x4,#0x99c
01720e04  mov x3,xzr
01720e08  mov x5,xzr
01720e0c  bl 0x01960788
01720e10  adrp x1,0x576f000
01720e14  adrp x2,0x1960000
01720e18  adrp x4,0x1960000
01720e1c  add x1,x1,#0x5b9
01720e20  add x2,x2,#0xba0
01720e24  add x4,x4,#0xba8
01720e28  mov x3,xzr
01720e2c  mov x5,xzr
01720e30  bl 0x019609b8
01720e34  adrp x1,0x576f000
01720e38  adrp x2,0x1960000
01720e3c  adrp x4,0x1960000
01720e40  add x1,x1,#0x5c4
01720e44  add x2,x2,#0xbc4
01720e48  add x4,x4,#0xbcc
01720e4c  mov x3,xzr
01720e50  mov x5,xzr
01720e54  bl 0x019609b8
01720e58  adrp x1,0x576f000
01720e5c  adrp x2,0x1960000
01720e60  adrp x4,0x1960000
01720e64  add x1,x1,#0x63f
01720e68  add x2,x2,#0xdd0
01720e6c  add x4,x4,#0xdd8
01720e70  mov x3,xzr
01720e74  mov x5,xzr
01720e78  bl 0x01960be8
01720e7c  adrp x1,0x576f000
01720e80  adrp x2,0x1960000
01720e84  adrp x4,0x1960000
01720e88  add x1,x1,#0x682
01720e8c  add x2,x2,#0xe38
01720e90  add x4,x4,#0xe40
01720e94  mov x3,xzr
01720e98  mov x5,xzr
01720e9c  bl 0x01960be8
01720ea0  mov x19,x0
01720ea4  ldr w8,[x19, #0x8]
01720ea8  ldr x0,[x19]
01720eac  sub w8,w8,#0x3
01720eb0  str w8,[x19, #0x8]
01720eb4  orr w1,wzr,#0xfffffffc
01720eb8  bl 0x0124c4d0
01720ebc  ldr w8,[x19, #0x8]
01720ec0  ldr x0,[x19]
01720ec4  str wzr,[x19, #0x8]
01720ec8  cmp w8,#0x1
01720ecc  b.lt 0x01720ed8
01720ed0  mvn w1,w8
01720ed4  bl 0x0124c4d0
01720ed8  ldr w8,[sp, #0x18]
01720edc  cmp w8,#0x1
01720ee0  b.lt 0x01720ef0
01720ee4  ldr x0,[sp, #0x10]
01720ee8  mvn w1,w8
01720eec  bl 0x0124c4d0
01720ef0  ldr w8,[sp, #0x8]
01720ef4  cmp w8,#0x1
01720ef8  b.lt 0x01720f08
01720efc  ldr x0,[sp]
01720f00  mvn w1,w8
01720f04  bl 0x0124c4d0
01720f08  ldp x29,x30,[sp, #0x30]
01720f0c  ldr x19,[sp, #0x20]
01720f10  add sp,sp,#0x40
01720f14  ret
