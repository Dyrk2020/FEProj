// ===== case59-ForgeHeroSetting @ 01695cd4 =====
// existing function case59-ForgeHeroSetting
01695cd4  sub sp,sp,#0x50
01695cd8  str x21,[sp, #0x20]
01695cdc  stp x20,x19,[sp, #0x30]
01695ce0  stp x29,x30,[sp, #0x40]
01695ce4  add x29,sp,#0x40
01695ce8  adrp x1,0x174a000
01695cec  add x1,x1,#0x87c
01695cf0  mov x19,x0
01695cf4  bl 0x0124ba40
01695cf8  adrp x1,0x575d000
01695cfc  add x1,x1,#0xa06
01695d00  mov x0,x19
01695d04  str x19,[sp]
01695d08  bl 0x01251aa0
01695d0c  mov w8,#0x1
01695d10  str w8,[sp, #0x8]
01695d14  mov x0,sp
01695d18  bl 0x0174aa04
01695d1c  adrp x1,0x575e000
01695d20  adrp x3,0x736d000
01695d24  add x1,x1,#0x506
01695d28  add x3,x3,#0x101
01695d2c  add x0,sp,#0x10
01695d30  mov x2,sp
01695d34  bl 0x017711b0
01695d38  adrp x1,0x575e000
01695d3c  adrp x2,0x1771000
01695d40  adrp x4,0x1771000
01695d44  add x1,x1,#0x517
01695d48  add x2,x2,#0x158
01695d4c  add x4,x4,#0x160
01695d50  add x0,sp,#0x10
01695d54  mov x3,xzr
01695d58  mov x5,xzr
01695d5c  bl 0x01770f70
01695d60  adrp x1,0x575e000
01695d64  adrp x2,0x1771000
01695d68  adrp x4,0x1771000
01695d6c  add x1,x1,#0x720
01695d70  add x2,x2,#0x168
01695d74  add x4,x4,#0x170
01695d78  mov x3,xzr
01695d7c  mov x5,xzr
01695d80  bl 0x01770f70
01695d84  adrp x1,0x575e000
01695d88  adrp x2,0x1771000
01695d8c  adrp x4,0x1771000
01695d90  add x1,x1,#0x72b
01695d94  add x2,x2,#0x178
01695d98  add x4,x4,#0x180
01695d9c  mov x3,xzr
01695da0  mov x5,xzr
01695da4  bl 0x01770f70
01695da8  adrp x1,0x575e000
01695dac  adrp x2,0x1771000
01695db0  adrp x4,0x1771000
01695db4  add x1,x1,#0x736
01695db8  add x2,x2,#0x188
01695dbc  add x4,x4,#0x190
01695dc0  mov x3,xzr
01695dc4  mov x5,xzr
01695dc8  bl 0x01770f70
01695dcc  adrp x1,0x575e000
01695dd0  adrp x2,0x1771000
01695dd4  adrp x4,0x1771000
01695dd8  add x1,x1,#0x6cd
01695ddc  add x2,x2,#0x198
01695de0  add x4,x4,#0x1a0
01695de4  mov x3,xzr
01695de8  mov x5,xzr
01695dec  bl 0x01770f70
01695df0  mov x19,x0
01695df4  ldr x0,[x19]
01695df8  mov w1,#0x10
01695dfc  bl 0x0124cba0
01695e00  adrp x8,0x1771000
01695e04  dup v0.2D,xzr
01695e08  add x8,x8,#0x1a8
01695e0c  mov v0.D[0x0],x8
01695e10  str q0,[x0]
01695e14  ldr x0,[x19]
01695e18  adrp x1,0x1771000
01695e1c  add x1,x1,#0x794
01695e20  mov w2,#0x1
01695e24  bl 0x0124ec90
01695e28  ldr x0,[x19]
01695e2c  mov w1,#0xffffffff
01695e30  bl 0x0124c0c0
01695e34  ldr x20,[x19]
01695e38  orr w1,wzr,#0xfffffffb
01695e3c  mov w2,#0x6e7
01695e40  mov x0,x20
01695e44  bl 0x0124a650
01695e48  orr w1,wzr,#0xfffffffe
01695e4c  mov x0,x20
01695e50  bl 0x0124c0c0
01695e54  orr w1,wzr,#0xfffffffe
01695e58  mov x0,x20
01695e5c  bl 0x0124e920
01695e60  mov w21,w0
01695e64  adrp x1,0x575e000
01695e68  add x1,x1,#0x743
01695e6c  mov x0,x20
01695e70  bl 0x0124f120
01695e74  orr w1,wzr,#0xfffffffe
01695e78  mov w2,#0x1
01695e7c  mov x0,x20
01695e80  bl 0x0124cfc0
01695e84  mov x0,x20
01695e88  mov w1,w21
01695e8c  bl 0x0124e060
01695e90  orr w1,wzr,#0xfffffffd
01695e94  mov x0,x20
01695e98  bl 0x0124c4d0
01695e9c  ldr x20,[x19]
01695ea0  orr w1,wzr,#0xfffffffd
01695ea4  mov w2,#0x6e7
01695ea8  mov x0,x20
01695eac  bl 0x0124a650
01695eb0  orr w1,wzr,#0xfffffffe
01695eb4  mov x0,x20
01695eb8  bl 0x0124c0c0
01695ebc  orr w1,wzr,#0xfffffffe
01695ec0  mov x0,x20
01695ec4  bl 0x0124e920
01695ec8  mov w21,w0
01695ecc  adrp x1,0x575e000
01695ed0  add x1,x1,#0x743
01695ed4  mov x0,x20
01695ed8  bl 0x0124f120
01695edc  orr w1,wzr,#0xfffffffe
01695ee0  mov w2,#0x1
01695ee4  mov x0,x20
01695ee8  bl 0x0124cfc0
01695eec  mov x0,x20
01695ef0  mov w1,w21
01695ef4  bl 0x0124e060
01695ef8  orr w1,wzr,#0xfffffffd
01695efc  mov x0,x20
01695f00  bl 0x0124c4d0
01695f04  ldr w8,[x19, #0x8]
01695f08  ldr x0,[x19]
01695f0c  sub w8,w8,#0x3
01695f10  str w8,[x19, #0x8]
01695f14  orr w1,wzr,#0xfffffffc
01695f18  bl 0x0124c4d0
01695f1c  ldr w8,[x19, #0x8]
01695f20  ldr x0,[x19]
01695f24  str wzr,[x19, #0x8]
01695f28  cmp w8,#0x1
01695f2c  b.lt 0x01695f38
01695f30  mvn w1,w8
01695f34  bl 0x0124c4d0
01695f38  ldr w8,[sp, #0x18]
01695f3c  cmp w8,#0x1
01695f40  b.lt 0x01695f50
01695f44  ldr x0,[sp, #0x10]
01695f48  mvn w1,w8
01695f4c  bl 0x0124c4d0
01695f50  ldr w8,[sp, #0x8]
01695f54  cmp w8,#0x1
01695f58  b.lt 0x01695f68
01695f5c  ldr x0,[sp]
01695f60  mvn w1,w8
01695f64  bl 0x0124c4d0
01695f68  ldp x29,x30,[sp, #0x40]
01695f6c  ldp x20,x19,[sp, #0x30]
01695f70  ldr x21,[sp, #0x20]
01695f74  add sp,sp,#0x50
01695f78  ret
