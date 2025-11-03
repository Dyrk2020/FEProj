// ===== case738-MonsterAttrGrowth @ 01726da8 =====
// existing function case738-MonsterAttrGrowth
01726da8  sub sp,sp,#0x40
01726dac  str x19,[sp, #0x20]
01726db0  stp x29,x30,[sp, #0x30]
01726db4  add x29,sp,#0x30
01726db8  adrp x1,0x174a000
01726dbc  add x1,x1,#0x87c
01726dc0  mov x19,x0
01726dc4  bl 0x0124ba40
01726dc8  adrp x1,0x575d000
01726dcc  add x1,x1,#0xa06
01726dd0  mov x0,x19
01726dd4  str x19,[sp]
01726dd8  bl 0x01251aa0
01726ddc  mov w8,#0x1
01726de0  str w8,[sp, #0x8]
01726de4  mov x0,sp
01726de8  bl 0x0174aa04
01726dec  adrp x1,0x5770000
01726df0  adrp x3,0x736d000
01726df4  add x1,x1,#0x128
01726df8  add x3,x3,#0x101
01726dfc  add x0,sp,#0x10
01726e00  mov x2,sp
01726e04  bl 0x0197ec24
01726e08  adrp x1,0x5761000
01726e0c  adrp x2,0x197e000
01726e10  adrp x4,0x197e000
01726e14  add x1,x1,#0x788
01726e18  add x2,x2,#0xc04
01726e1c  add x4,x4,#0xc0c
01726e20  add x0,sp,#0x10
01726e24  mov x3,xzr
01726e28  mov x5,xzr
01726e2c  bl 0x0197ea1c
01726e30  adrp x1,0x5770000
01726e34  adrp x2,0x197e000
01726e38  adrp x4,0x197e000
01726e3c  add x1,x1,#0x13a
01726e40  add x2,x2,#0xc14
01726e44  add x4,x4,#0xc1c
01726e48  mov x3,xzr
01726e4c  mov x5,xzr
01726e50  bl 0x0197ea1c
01726e54  mov x19,x0
01726e58  ldr w8,[x19, #0x8]
01726e5c  ldr x0,[x19]
01726e60  sub w8,w8,#0x3
01726e64  str w8,[x19, #0x8]
01726e68  orr w1,wzr,#0xfffffffc
01726e6c  bl 0x0124c4d0
01726e70  ldr w8,[x19, #0x8]
01726e74  ldr x0,[x19]
01726e78  str wzr,[x19, #0x8]
01726e7c  cmp w8,#0x1
01726e80  b.lt 0x01726e8c
01726e84  mvn w1,w8
01726e88  bl 0x0124c4d0
01726e8c  ldr w8,[sp, #0x18]
01726e90  cmp w8,#0x1
01726e94  b.lt 0x01726ea4
01726e98  ldr x0,[sp, #0x10]
01726e9c  mvn w1,w8
01726ea0  bl 0x0124c4d0
01726ea4  ldr w8,[sp, #0x8]
01726ea8  cmp w8,#0x1
01726eac  b.lt 0x01726ebc
01726eb0  ldr x0,[sp]
01726eb4  mvn w1,w8
01726eb8  bl 0x0124c4d0
01726ebc  ldp x29,x30,[sp, #0x30]
01726ec0  ldr x19,[sp, #0x20]
01726ec4  add sp,sp,#0x40
01726ec8  ret
