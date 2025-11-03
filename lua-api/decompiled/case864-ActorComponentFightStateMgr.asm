// ===== case864-ActorComponentFightStateMgr @ 01743d10 =====
// existing function case864-ActorComponentFightStateMgr
01743d10  sub sp,sp,#0x40
01743d14  str x19,[sp, #0x20]
01743d18  stp x29,x30,[sp, #0x30]
01743d1c  add x29,sp,#0x30
01743d20  adrp x1,0x174a000
01743d24  add x1,x1,#0x87c
01743d28  mov x19,x0
01743d2c  bl 0x0124ba40
01743d30  adrp x1,0x575d000
01743d34  add x1,x1,#0xa06
01743d38  mov x0,x19
01743d3c  str x19,[sp]
01743d40  bl 0x01251aa0
01743d44  mov w8,#0x1
01743d48  str w8,[sp, #0x8]
01743d4c  mov x0,sp
01743d50  bl 0x0174aa04
01743d54  adrp x1,0x5773000
01743d58  adrp x3,0x736d000
01743d5c  add x1,x1,#0xc23
01743d60  add x3,x3,#0x101
01743d64  add x0,sp,#0x10
01743d68  mov x2,sp
01743d6c  bl 0x01a08e0c
01743d70  adrp x1,0x5773000
01743d74  adrp x2,0x1a08000
01743d78  adrp x4,0x1a08000
01743d7c  add x1,x1,#0xc3f
01743d80  add x2,x2,#0xbe0
01743d84  add x4,x4,#0xbe8
01743d88  add x0,sp,#0x10
01743d8c  mov x3,xzr
01743d90  mov x5,xzr
01743d94  bl 0x01a089f8
01743d98  adrp x1,0x5773000
01743d9c  adrp x2,0x1a08000
01743da0  adrp x4,0x1a08000
01743da4  add x1,x1,#0xc4c
01743da8  add x2,x2,#0xdec
01743dac  add x4,x4,#0xdf4
01743db0  mov x3,xzr
01743db4  mov x5,xzr
01743db8  bl 0x01a08c04
01743dbc  adrp x1,0x5773000
01743dc0  adrp x2,0x1a08000
01743dc4  adrp x4,0x1a08000
01743dc8  add x1,x1,#0xc5b
01743dcc  add x2,x2,#0xdfc
01743dd0  add x4,x4,#0xe04
01743dd4  mov x3,xzr
01743dd8  mov x5,xzr
01743ddc  bl 0x01a08c04
01743de0  mov x19,x0
01743de4  ldr w8,[x19, #0x8]
01743de8  ldr x0,[x19]
01743dec  sub w8,w8,#0x3
01743df0  str w8,[x19, #0x8]
01743df4  orr w1,wzr,#0xfffffffc
01743df8  bl 0x0124c4d0
01743dfc  ldr w8,[x19, #0x8]
01743e00  ldr x0,[x19]
01743e04  str wzr,[x19, #0x8]
01743e08  cmp w8,#0x1
01743e0c  b.lt 0x01743e18
01743e10  mvn w1,w8
01743e14  bl 0x0124c4d0
01743e18  ldr w8,[sp, #0x18]
01743e1c  cmp w8,#0x1
01743e20  b.lt 0x01743e30
01743e24  ldr x0,[sp, #0x10]
01743e28  mvn w1,w8
01743e2c  bl 0x0124c4d0
01743e30  ldr w8,[sp, #0x8]
01743e34  cmp w8,#0x1
01743e38  b.lt 0x01743e48
01743e3c  ldr x0,[sp]
01743e40  mvn w1,w8
01743e44  bl 0x0124c4d0
01743e48  ldp x29,x30,[sp, #0x30]
01743e4c  ldr x19,[sp, #0x20]
01743e50  add sp,sp,#0x40
01743e54  ret
