// ===== case52-SkillComboLevelResObject @ 01694b68 =====
// existing function case52-SkillComboLevelResObject
01694b68  sub sp,sp,#0x50
01694b6c  str x21,[sp, #0x20]
01694b70  stp x20,x19,[sp, #0x30]
01694b74  stp x29,x30,[sp, #0x40]
01694b78  add x29,sp,#0x40
01694b7c  adrp x1,0x174a000
01694b80  add x1,x1,#0x87c
01694b84  mov x19,x0
01694b88  bl 0x0124ba40
01694b8c  adrp x1,0x575d000
01694b90  add x1,x1,#0xa06
01694b94  mov x0,x19
01694b98  str x19,[sp]
01694b9c  bl 0x01251aa0
01694ba0  mov w8,#0x1
01694ba4  str w8,[sp, #0x8]
01694ba8  mov x0,sp
01694bac  bl 0x0174aa04
01694bb0  adrp x1,0x575e000
01694bb4  adrp x3,0x736d000
01694bb8  add x1,x1,#0x583
01694bbc  add x3,x3,#0x101
01694bc0  add x0,sp,#0x10
01694bc4  mov x2,sp
01694bc8  bl 0x0176b740
01694bcc  adrp x1,0x575e000
01694bd0  adrp x2,0x176b000
01694bd4  adrp x4,0x176b000
01694bd8  add x1,x1,#0x59c
01694bdc  add x2,x2,#0x6f8
01694be0  add x4,x4,#0x700
01694be4  add x0,sp,#0x10
01694be8  mov x3,xzr
01694bec  mov x5,xzr
01694bf0  bl 0x0176b510
01694bf4  adrp x1,0x575e000
01694bf8  adrp x2,0x176b000
01694bfc  adrp x4,0x176b000
01694c00  add x1,x1,#0x5a4
01694c04  add x2,x2,#0x708
01694c08  add x4,x4,#0x710
01694c0c  mov x3,xzr
01694c10  mov x5,xzr
01694c14  bl 0x0176b510
01694c18  mov x19,x0
01694c1c  ldr x0,[x19]
01694c20  mov w1,#0x10
01694c24  bl 0x0124cba0
01694c28  adrp x8,0x176b000
01694c2c  dup v0.2D,xzr
01694c30  add x8,x8,#0x718
01694c34  mov v0.D[0x0],x8
01694c38  str q0,[x0]
01694c3c  ldr x0,[x19]
01694c40  adrp x1,0x176b000
01694c44  add x1,x1,#0xd24
01694c48  mov w2,#0x1
01694c4c  bl 0x0124ec90
01694c50  ldr x0,[x19]
01694c54  mov w1,#0xffffffff
01694c58  bl 0x0124c0c0
01694c5c  ldr x20,[x19]
01694c60  orr w1,wzr,#0xfffffffb
01694c64  mov w2,#0x6e7
01694c68  mov x0,x20
01694c6c  bl 0x0124a650
01694c70  orr w1,wzr,#0xfffffffe
01694c74  mov x0,x20
01694c78  bl 0x0124c0c0
01694c7c  orr w1,wzr,#0xfffffffe
01694c80  mov x0,x20
01694c84  bl 0x0124e920
01694c88  mov w21,w0
01694c8c  adrp x1,0x575e000
01694c90  add x1,x1,#0x5af
01694c94  mov x0,x20
01694c98  bl 0x0124f120
01694c9c  orr w1,wzr,#0xfffffffe
01694ca0  mov w2,#0x1
01694ca4  mov x0,x20
01694ca8  bl 0x0124cfc0
01694cac  mov x0,x20
01694cb0  mov w1,w21
01694cb4  bl 0x0124e060
01694cb8  orr w1,wzr,#0xfffffffd
01694cbc  mov x0,x20
01694cc0  bl 0x0124c4d0
01694cc4  ldr x20,[x19]
01694cc8  orr w1,wzr,#0xfffffffd
01694ccc  mov w2,#0x6e7
01694cd0  mov x0,x20
01694cd4  bl 0x0124a650
01694cd8  orr w1,wzr,#0xfffffffe
01694cdc  mov x0,x20
01694ce0  bl 0x0124c0c0
01694ce4  orr w1,wzr,#0xfffffffe
01694ce8  mov x0,x20
01694cec  bl 0x0124e920
01694cf0  mov w21,w0
01694cf4  adrp x1,0x575e000
01694cf8  add x1,x1,#0x5af
01694cfc  mov x0,x20
01694d00  bl 0x0124f120
01694d04  orr w1,wzr,#0xfffffffe
01694d08  mov w2,#0x1
01694d0c  mov x0,x20
01694d10  bl 0x0124cfc0
01694d14  mov x0,x20
01694d18  mov w1,w21
01694d1c  bl 0x0124e060
01694d20  orr w1,wzr,#0xfffffffd
01694d24  mov x0,x20
01694d28  bl 0x0124c4d0
01694d2c  adrp x1,0x575e000
01694d30  adrp x2,0x176b000
01694d34  adrp x4,0x176b000
01694d38  add x1,x1,#0x5be
01694d3c  add x2,x2,#0x720
01694d40  add x4,x4,#0x728
01694d44  mov x0,x19
01694d48  mov x3,xzr
01694d4c  mov x5,xzr
01694d50  bl 0x0176b510
01694d54  adrp x1,0x575e000
01694d58  adrp x2,0x176b000
01694d5c  adrp x4,0x176b000
01694d60  add x1,x1,#0x5d3
01694d64  add x2,x2,#0x730
01694d68  add x4,x4,#0x738
01694d6c  mov x3,xzr
01694d70  mov x5,xzr
01694d74  bl 0x0176b510
01694d78  mov x19,x0
01694d7c  ldr w8,[x19, #0x8]
01694d80  ldr x0,[x19]
01694d84  sub w8,w8,#0x3
01694d88  str w8,[x19, #0x8]
01694d8c  orr w1,wzr,#0xfffffffc
01694d90  bl 0x0124c4d0
01694d94  ldr w8,[x19, #0x8]
01694d98  ldr x0,[x19]
01694d9c  str wzr,[x19, #0x8]
01694da0  cmp w8,#0x1
01694da4  b.lt 0x01694db0
01694da8  mvn w1,w8
01694dac  bl 0x0124c4d0
01694db0  ldr w8,[sp, #0x18]
01694db4  cmp w8,#0x1
01694db8  b.lt 0x01694dc8
01694dbc  ldr x0,[sp, #0x10]
01694dc0  mvn w1,w8
01694dc4  bl 0x0124c4d0
01694dc8  ldr w8,[sp, #0x8]
01694dcc  cmp w8,#0x1
01694dd0  b.lt 0x01694de0
01694dd4  ldr x0,[sp]
01694dd8  mvn w1,w8
01694ddc  bl 0x0124c4d0
01694de0  ldp x29,x30,[sp, #0x40]
01694de4  ldp x20,x19,[sp, #0x30]
01694de8  ldr x21,[sp, #0x20]
01694dec  add sp,sp,#0x50
01694df0  ret
