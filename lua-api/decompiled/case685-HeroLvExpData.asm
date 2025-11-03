// ===== case685-HeroLvExpData @ 0171a25c =====
// existing function case685-HeroLvExpData
0171a25c  sub sp,sp,#0x40
0171a260  str x19,[sp, #0x20]
0171a264  stp x29,x30,[sp, #0x30]
0171a268  add x29,sp,#0x30
0171a26c  adrp x1,0x174a000
0171a270  add x1,x1,#0x87c
0171a274  mov x19,x0
0171a278  bl 0x0124ba40
0171a27c  adrp x1,0x575d000
0171a280  add x1,x1,#0xa06
0171a284  mov x0,x19
0171a288  str x19,[sp]
0171a28c  bl 0x01251aa0
0171a290  mov w8,#0x1
0171a294  str w8,[sp, #0x8]
0171a298  mov x0,sp
0171a29c  bl 0x0174aa04
0171a2a0  adrp x1,0x576d000
0171a2a4  adrp x3,0x736d000
0171a2a8  add x1,x1,#0x49f
0171a2ac  add x3,x3,#0x101
0171a2b0  add x0,sp,#0x10
0171a2b4  mov x2,sp
0171a2b8  bl 0x0194b9ec
0171a2bc  adrp x1,0x5762000
0171a2c0  adrp x2,0x194b000
0171a2c4  adrp x4,0x194b000
0171a2c8  add x1,x1,#0x8d5
0171a2cc  add x2,x2,#0x98c
0171a2d0  add x4,x4,#0x994
0171a2d4  add x0,sp,#0x10
0171a2d8  mov x3,xzr
0171a2dc  mov x5,xzr
0171a2e0  bl 0x0194b7a4
0171a2e4  adrp x1,0x576d000
0171a2e8  adrp x2,0x194b000
0171a2ec  adrp x4,0x194b000
0171a2f0  add x1,x1,#0x4ad
0171a2f4  add x2,x2,#0x99c
0171a2f8  add x4,x4,#0x9a4
0171a2fc  mov x3,xzr
0171a300  mov x5,xzr
0171a304  bl 0x0194b7a4
0171a308  adrp x1,0x575b000
0171a30c  adrp x2,0x194b000
0171a310  adrp x4,0x194b000
0171a314  add x1,x1,#0x2f8
0171a318  add x2,x2,#0x9ac
0171a31c  add x4,x4,#0x9b4
0171a320  mov x3,xzr
0171a324  mov x5,xzr
0171a328  bl 0x0194b7a4
0171a32c  adrp x1,0x576d000
0171a330  adrp x2,0x194b000
0171a334  adrp x4,0x194b000
0171a338  add x1,x1,#0x4ba
0171a33c  add x2,x2,#0x9bc
0171a340  add x4,x4,#0x9c4
0171a344  mov x3,xzr
0171a348  mov x5,xzr
0171a34c  bl 0x0194b7a4
0171a350  adrp x1,0x576d000
0171a354  adrp x2,0x194b000
0171a358  adrp x4,0x194b000
0171a35c  add x1,x1,#0x4c2
0171a360  add x2,x2,#0x9cc
0171a364  add x4,x4,#0x9d4
0171a368  mov x3,xzr
0171a36c  mov x5,xzr
0171a370  bl 0x0194b7a4
0171a374  adrp x1,0x576d000
0171a378  adrp x2,0x194b000
0171a37c  adrp x4,0x194b000
0171a380  add x1,x1,#0x4ca
0171a384  add x2,x2,#0x9dc
0171a388  add x4,x4,#0x9e4
0171a38c  mov x3,xzr
0171a390  mov x5,xzr
0171a394  bl 0x0194b7a4
0171a398  mov x19,x0
0171a39c  ldr w8,[x19, #0x8]
0171a3a0  ldr x0,[x19]
0171a3a4  sub w8,w8,#0x3
0171a3a8  str w8,[x19, #0x8]
0171a3ac  orr w1,wzr,#0xfffffffc
0171a3b0  bl 0x0124c4d0
0171a3b4  ldr w8,[x19, #0x8]
0171a3b8  ldr x0,[x19]
0171a3bc  str wzr,[x19, #0x8]
0171a3c0  cmp w8,#0x1
0171a3c4  b.lt 0x0171a3d0
0171a3c8  mvn w1,w8
0171a3cc  bl 0x0124c4d0
0171a3d0  ldr w8,[sp, #0x18]
0171a3d4  cmp w8,#0x1
0171a3d8  b.lt 0x0171a3e8
0171a3dc  ldr x0,[sp, #0x10]
0171a3e0  mvn w1,w8
0171a3e4  bl 0x0124c4d0
0171a3e8  ldr w8,[sp, #0x8]
0171a3ec  cmp w8,#0x1
0171a3f0  b.lt 0x0171a400
0171a3f4  ldr x0,[sp]
0171a3f8  mvn w1,w8
0171a3fc  bl 0x0124c4d0
0171a400  ldp x29,x30,[sp, #0x30]
0171a404  ldr x19,[sp, #0x20]
0171a408  add sp,sp,#0x40
0171a40c  ret
