// ===== case522-ActorComponentLife @ 016f826c =====
// existing function case522-ActorComponentLife
016f826c  sub sp,sp,#0x40
016f8270  str x19,[sp, #0x20]
016f8274  stp x29,x30,[sp, #0x30]
016f8278  add x29,sp,#0x30
016f827c  adrp x1,0x174a000
016f8280  add x1,x1,#0x87c
016f8284  mov x19,x0
016f8288  bl 0x0124ba40
016f828c  adrp x1,0x575d000
016f8290  add x1,x1,#0xa06
016f8294  mov x0,x19
016f8298  str x19,[sp]
016f829c  bl 0x01251aa0
016f82a0  mov w8,#0x1
016f82a4  str w8,[sp, #0x8]
016f82a8  mov x0,sp
016f82ac  bl 0x0174aa04
016f82b0  adrp x1,0x5768000
016f82b4  adrp x3,0x736d000
016f82b8  add x1,x1,#0x93c
016f82bc  add x3,x3,#0x101
016f82c0  add x0,sp,#0x10
016f82c4  mov x2,sp
016f82c8  bl 0x018ab63c
016f82cc  adrp x1,0x5768000
016f82d0  adrp x2,0x18ab000
016f82d4  adrp x4,0x18ab000
016f82d8  add x1,x1,#0x94f
016f82dc  add x2,x2,#0x314
016f82e0  add x4,x4,#0x31c
016f82e4  add x0,sp,#0x10
016f82e8  mov x3,xzr
016f82ec  mov x5,xzr
016f82f0  bl 0x018ab12c
016f82f4  adrp x1,0x5769000
016f82f8  adrp x2,0x18ab000
016f82fc  adrp x4,0x18ab000
016f8300  add x1,x1,#0x9fc
016f8304  add x2,x2,#0x50c
016f8308  add x4,x4,#0x514
016f830c  mov x3,xzr
016f8310  mov x5,xzr
016f8314  bl 0x018ab324
016f8318  adrp x1,0x5768000
016f831c  adrp x2,0x18ab000
016f8320  adrp x4,0x18ab000
016f8324  add x1,x1,#0x95e
016f8328  add x2,x2,#0x574
016f832c  add x4,x4,#0x57c
016f8330  mov x3,xzr
016f8334  mov x5,xzr
016f8338  bl 0x018ab324
016f833c  adrp x1,0x5768000
016f8340  adrp x2,0x18ab000
016f8344  adrp x4,0x18ab000
016f8348  add x1,x1,#0x96a
016f834c  add x2,x2,#0x584
016f8350  add x4,x4,#0x58c
016f8354  mov x3,xzr
016f8358  mov x5,xzr
016f835c  bl 0x018ab324
016f8360  adrp x1,0x5768000
016f8364  adrp x2,0x18ab000
016f8368  adrp x4,0x18ab000
016f836c  add x1,x1,#0x977
016f8370  add x2,x2,#0x594
016f8374  add x4,x4,#0x59c
016f8378  mov x3,xzr
016f837c  mov x5,xzr
016f8380  bl 0x018ab324
016f8384  adrp x1,0x5768000
016f8388  adrp x2,0x18ab000
016f838c  adrp x4,0x18ab000
016f8390  add x1,x1,#0x982
016f8394  add x2,x2,#0x5a4
016f8398  add x4,x4,#0x5ac
016f839c  mov x3,xzr
016f83a0  mov x5,xzr
016f83a4  bl 0x018ab12c
016f83a8  mov x19,x0
016f83ac  ldr w8,[x19, #0x8]
016f83b0  ldr x0,[x19]
016f83b4  sub w8,w8,#0x3
016f83b8  str w8,[x19, #0x8]
016f83bc  orr w1,wzr,#0xfffffffc
016f83c0  bl 0x0124c4d0
016f83c4  ldr w8,[x19, #0x8]
016f83c8  ldr x0,[x19]
016f83cc  str wzr,[x19, #0x8]
016f83d0  cmp w8,#0x1
016f83d4  b.lt 0x016f83e0
016f83d8  mvn w1,w8
016f83dc  bl 0x0124c4d0
016f83e0  ldr w8,[sp, #0x18]
016f83e4  cmp w8,#0x1
016f83e8  b.lt 0x016f83f8
016f83ec  ldr x0,[sp, #0x10]
016f83f0  mvn w1,w8
016f83f4  bl 0x0124c4d0
016f83f8  ldr w8,[sp, #0x8]
016f83fc  cmp w8,#0x1
016f8400  b.lt 0x016f8410
016f8404  ldr x0,[sp]
016f8408  mvn w1,w8
016f840c  bl 0x0124c4d0
016f8410  ldp x29,x30,[sp, #0x30]
016f8414  ldr x19,[sp, #0x20]
016f8418  add sp,sp,#0x40
016f841c  ret
