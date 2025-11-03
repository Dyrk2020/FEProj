// ===== case70-RuinEquipRandomResObject @ 01697da0 =====
// existing function case70-RuinEquipRandomResObject
01697da0  sub sp,sp,#0x40
01697da4  stp x20,x19,[sp, #0x20]
01697da8  stp x29,x30,[sp, #0x30]
01697dac  add x29,sp,#0x30
01697db0  adrp x1,0x174a000
01697db4  add x1,x1,#0x87c
01697db8  mov x19,x0
01697dbc  bl 0x0124ba40
01697dc0  adrp x1,0x575d000
01697dc4  add x1,x1,#0xa06
01697dc8  mov x0,x19
01697dcc  str x19,[sp]
01697dd0  bl 0x01251aa0
01697dd4  mov w8,#0x1
01697dd8  str w8,[sp, #0x8]
01697ddc  mov x0,sp
01697de0  bl 0x0174aa04
01697de4  adrp x1,0x574e000
01697de8  adrp x3,0x736d000
01697dec  add x1,x1,#0x5eb
01697df0  add x3,x3,#0x101
01697df4  add x0,sp,#0x10
01697df8  mov x2,sp
01697dfc  bl 0x01776848
01697e00  ldr x0,[sp, #0x10]
01697e04  mov w1,#0x10
01697e08  bl 0x0124cba0
01697e0c  adrp x8,0x1776000
01697e10  dup v0.2D,xzr
01697e14  add x8,x8,#0x840
01697e18  mov v0.D[0x0],x8
01697e1c  str q0,[x0]
01697e20  ldr x0,[sp, #0x10]
01697e24  adrp x1,0x1776000
01697e28  add x1,x1,#0xc0c
01697e2c  mov w2,#0x1
01697e30  bl 0x0124ec90
01697e34  ldr x0,[sp, #0x10]
01697e38  mov w1,#0xffffffff
01697e3c  bl 0x0124c0c0
01697e40  ldr x19,[sp, #0x10]
01697e44  orr w1,wzr,#0xfffffffb
01697e48  mov w2,#0x6e7
01697e4c  mov x0,x19
01697e50  bl 0x0124a650
01697e54  orr w1,wzr,#0xfffffffe
01697e58  mov x0,x19
01697e5c  bl 0x0124c0c0
01697e60  orr w1,wzr,#0xfffffffe
01697e64  mov x0,x19
01697e68  bl 0x0124e920
01697e6c  mov w20,w0
01697e70  adrp x1,0x575e000
01697e74  add x1,x1,#0xcfe
01697e78  mov x0,x19
01697e7c  bl 0x0124f120
01697e80  orr w1,wzr,#0xfffffffe
01697e84  mov w2,#0x1
01697e88  mov x0,x19
01697e8c  bl 0x0124cfc0
01697e90  mov x0,x19
01697e94  mov w1,w20
01697e98  bl 0x0124e060
01697e9c  orr w1,wzr,#0xfffffffd
01697ea0  mov x0,x19
01697ea4  bl 0x0124c4d0
01697ea8  ldr x19,[sp, #0x10]
01697eac  orr w1,wzr,#0xfffffffd
01697eb0  mov w2,#0x6e7
01697eb4  mov x0,x19
01697eb8  bl 0x0124a650
01697ebc  orr w1,wzr,#0xfffffffe
01697ec0  mov x0,x19
01697ec4  bl 0x0124c0c0
01697ec8  orr w1,wzr,#0xfffffffe
01697ecc  mov x0,x19
01697ed0  bl 0x0124e920
01697ed4  mov w20,w0
01697ed8  adrp x1,0x575e000
01697edc  add x1,x1,#0xcfe
01697ee0  mov x0,x19
01697ee4  bl 0x0124f120
01697ee8  orr w1,wzr,#0xfffffffe
01697eec  mov w2,#0x1
01697ef0  mov x0,x19
01697ef4  bl 0x0124cfc0
01697ef8  mov x0,x19
01697efc  mov w1,w20
01697f00  bl 0x0124e060
01697f04  orr w1,wzr,#0xfffffffd
01697f08  mov x0,x19
01697f0c  bl 0x0124c4d0
01697f10  ldr w8,[sp, #0x18]
01697f14  ldr x0,[sp, #0x10]
01697f18  sub w8,w8,#0x3
01697f1c  str w8,[sp, #0x18]
01697f20  orr w1,wzr,#0xfffffffc
01697f24  bl 0x0124c4d0
01697f28  ldr w8,[sp, #0x18]
01697f2c  ldr x0,[sp, #0x10]
01697f30  str wzr,[sp, #0x18]
01697f34  cmp w8,#0x1
01697f38  b.lt 0x01697f5c
01697f3c  mvn w1,w8
01697f40  bl 0x0124c4d0
01697f44  ldr w8,[sp, #0x18]
01697f48  cmp w8,#0x1
01697f4c  b.lt 0x01697f5c
01697f50  ldr x0,[sp, #0x10]
01697f54  mvn w1,w8
01697f58  bl 0x0124c4d0
01697f5c  ldr w8,[sp, #0x8]
01697f60  cmp w8,#0x1
01697f64  b.lt 0x01697f74
01697f68  ldr x0,[sp]
01697f6c  mvn w1,w8
01697f70  bl 0x0124c4d0
01697f74  ldp x29,x30,[sp, #0x30]
01697f78  ldp x20,x19,[sp, #0x20]
01697f7c  add sp,sp,#0x40
01697f80  ret
