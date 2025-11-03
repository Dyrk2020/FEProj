// ===== case612-AnchorFlow @ 0170a294 =====
// existing function case612-AnchorFlow
0170a294  sub sp,sp,#0x40
0170a298  stp x20,x19,[sp, #0x20]
0170a29c  stp x29,x30,[sp, #0x30]
0170a2a0  add x29,sp,#0x30
0170a2a4  adrp x1,0x174a000
0170a2a8  add x1,x1,#0x87c
0170a2ac  mov x19,x0
0170a2b0  bl 0x0124ba40
0170a2b4  adrp x1,0x575d000
0170a2b8  add x1,x1,#0xa06
0170a2bc  mov x0,x19
0170a2c0  str x19,[sp]
0170a2c4  bl 0x01251aa0
0170a2c8  mov w8,#0x1
0170a2cc  str w8,[sp, #0x8]
0170a2d0  mov x0,sp
0170a2d4  bl 0x0174aa04
0170a2d8  adrp x1,0x576a000
0170a2dc  adrp x3,0x736d000
0170a2e0  add x1,x1,#0x530
0170a2e4  add x3,x3,#0x101
0170a2e8  add x0,sp,#0x10
0170a2ec  mov x2,sp
0170a2f0  bl 0x018fab10
0170a2f4  ldr x0,[sp, #0x10]
0170a2f8  mov w1,#0x10
0170a2fc  bl 0x0124cba0
0170a300  adrp x8,0x18fa000
0170a304  dup v0.2D,xzr
0170a308  add x8,x8,#0xb08
0170a30c  mov v0.D[0x0],x8
0170a310  str q0,[x0]
0170a314  ldr x0,[sp, #0x10]
0170a318  adrp x1,0x18fa000
0170a31c  add x1,x1,#0xed4
0170a320  mov w2,#0x1
0170a324  bl 0x0124ec90
0170a328  ldr x0,[sp, #0x10]
0170a32c  mov w1,#0xffffffff
0170a330  bl 0x0124c0c0
0170a334  ldr x19,[sp, #0x10]
0170a338  orr w1,wzr,#0xfffffffb
0170a33c  mov w2,#0x6e7
0170a340  mov x0,x19
0170a344  bl 0x0124a650
0170a348  orr w1,wzr,#0xfffffffe
0170a34c  mov x0,x19
0170a350  bl 0x0124c0c0
0170a354  orr w1,wzr,#0xfffffffe
0170a358  mov x0,x19
0170a35c  bl 0x0124e920
0170a360  mov w20,w0
0170a364  adrp x1,0x576a000
0170a368  add x1,x1,#0x51c
0170a36c  mov x0,x19
0170a370  bl 0x0124f120
0170a374  orr w1,wzr,#0xfffffffe
0170a378  mov w2,#0x1
0170a37c  mov x0,x19
0170a380  bl 0x0124cfc0
0170a384  mov x0,x19
0170a388  mov w1,w20
0170a38c  bl 0x0124e060
0170a390  orr w1,wzr,#0xfffffffd
0170a394  mov x0,x19
0170a398  bl 0x0124c4d0
0170a39c  ldr x19,[sp, #0x10]
0170a3a0  orr w1,wzr,#0xfffffffd
0170a3a4  mov w2,#0x6e7
0170a3a8  mov x0,x19
0170a3ac  bl 0x0124a650
0170a3b0  orr w1,wzr,#0xfffffffe
0170a3b4  mov x0,x19
0170a3b8  bl 0x0124c0c0
0170a3bc  orr w1,wzr,#0xfffffffe
0170a3c0  mov x0,x19
0170a3c4  bl 0x0124e920
0170a3c8  mov w20,w0
0170a3cc  adrp x1,0x576a000
0170a3d0  add x1,x1,#0x51c
0170a3d4  mov x0,x19
0170a3d8  bl 0x0124f120
0170a3dc  orr w1,wzr,#0xfffffffe
0170a3e0  mov w2,#0x1
0170a3e4  mov x0,x19
0170a3e8  bl 0x0124cfc0
0170a3ec  mov x0,x19
0170a3f0  mov w1,w20
0170a3f4  bl 0x0124e060
0170a3f8  orr w1,wzr,#0xfffffffd
0170a3fc  mov x0,x19
0170a400  bl 0x0124c4d0
0170a404  ldr w8,[sp, #0x18]
0170a408  ldr x0,[sp, #0x10]
0170a40c  sub w8,w8,#0x3
0170a410  str w8,[sp, #0x18]
0170a414  orr w1,wzr,#0xfffffffc
0170a418  bl 0x0124c4d0
0170a41c  ldr w8,[sp, #0x18]
0170a420  ldr x0,[sp, #0x10]
0170a424  str wzr,[sp, #0x18]
0170a428  cmp w8,#0x1
0170a42c  b.lt 0x0170a450
0170a430  mvn w1,w8
0170a434  bl 0x0124c4d0
0170a438  ldr w8,[sp, #0x18]
0170a43c  cmp w8,#0x1
0170a440  b.lt 0x0170a450
0170a444  ldr x0,[sp, #0x10]
0170a448  mvn w1,w8
0170a44c  bl 0x0124c4d0
0170a450  ldr w8,[sp, #0x8]
0170a454  cmp w8,#0x1
0170a458  b.lt 0x0170a468
0170a45c  ldr x0,[sp]
0170a460  mvn w1,w8
0170a464  bl 0x0124c4d0
0170a468  ldp x29,x30,[sp, #0x30]
0170a46c  ldp x20,x19,[sp, #0x20]
0170a470  add sp,sp,#0x40
0170a474  ret
