// ===== case90-CherryAwardConfig @ 0169b264 =====
// existing function case90-CherryAwardConfig
0169b264  sub sp,sp,#0x40
0169b268  str x19,[sp, #0x20]
0169b26c  stp x29,x30,[sp, #0x30]
0169b270  add x29,sp,#0x30
0169b274  adrp x1,0x174a000
0169b278  add x1,x1,#0x87c
0169b27c  mov x19,x0
0169b280  bl 0x0124ba40
0169b284  adrp x1,0x575d000
0169b288  add x1,x1,#0xa06
0169b28c  mov x0,x19
0169b290  str x19,[sp]
0169b294  bl 0x01251aa0
0169b298  mov w8,#0x1
0169b29c  str w8,[sp, #0x8]
0169b2a0  mov x0,sp
0169b2a4  bl 0x0174aa04
0169b2a8  adrp x1,0x575f000
0169b2ac  adrp x3,0x736d000
0169b2b0  add x1,x1,#0x72
0169b2b4  add x3,x3,#0x101
0169b2b8  add x0,sp,#0x10
0169b2bc  mov x2,sp
0169b2c0  bl 0x017829ec
0169b2c4  adrp x1,0x57f9000
0169b2c8  adrp x2,0x1782000
0169b2cc  adrp x4,0x1782000
0169b2d0  add x1,x1,#0xcf2
0169b2d4  add x2,x2,#0x7b4
0169b2d8  add x4,x4,#0x7bc
0169b2dc  add x0,sp,#0x10
0169b2e0  mov x3,xzr
0169b2e4  mov x5,xzr
0169b2e8  bl 0x017825cc
0169b2ec  adrp x1,0x575f000
0169b2f0  adrp x2,0x1782000
0169b2f4  adrp x4,0x1782000
0169b2f8  add x1,x1,#0x6a
0169b2fc  add x2,x2,#0x7c4
0169b300  add x4,x4,#0x7cc
0169b304  mov x3,xzr
0169b308  mov x5,xzr
0169b30c  bl 0x017825cc
0169b310  adrp x1,0x575f000
0169b314  adrp x2,0x1782000
0169b318  adrp x4,0x1782000
0169b31c  add x1,x1,#0x84
0169b320  add x2,x2,#0x9bc
0169b324  add x4,x4,#0x9c4
0169b328  mov x3,xzr
0169b32c  mov x5,xzr
0169b330  bl 0x017827d4
0169b334  adrp x1,0x575f000
0169b338  adrp x2,0x1782000
0169b33c  adrp x4,0x1782000
0169b340  add x1,x1,#0x8d
0169b344  add x2,x2,#0x9cc
0169b348  add x4,x4,#0x9d4
0169b34c  mov x3,xzr
0169b350  mov x5,xzr
0169b354  bl 0x017827d4
0169b358  adrp x1,0x575f000
0169b35c  adrp x2,0x1782000
0169b360  adrp x4,0x1782000
0169b364  add x1,x1,#0x98
0169b368  add x2,x2,#0x9dc
0169b36c  add x4,x4,#0x9e4
0169b370  mov x3,xzr
0169b374  mov x5,xzr
0169b378  bl 0x017827d4
0169b37c  mov x19,x0
0169b380  ldr w8,[x19, #0x8]
0169b384  ldr x0,[x19]
0169b388  sub w8,w8,#0x3
0169b38c  str w8,[x19, #0x8]
0169b390  orr w1,wzr,#0xfffffffc
0169b394  bl 0x0124c4d0
0169b398  ldr w8,[x19, #0x8]
0169b39c  ldr x0,[x19]
0169b3a0  str wzr,[x19, #0x8]
0169b3a4  cmp w8,#0x1
0169b3a8  b.lt 0x0169b3b4
0169b3ac  mvn w1,w8
0169b3b0  bl 0x0124c4d0
0169b3b4  ldr w8,[sp, #0x18]
0169b3b8  cmp w8,#0x1
0169b3bc  b.lt 0x0169b3cc
0169b3c0  ldr x0,[sp, #0x10]
0169b3c4  mvn w1,w8
0169b3c8  bl 0x0124c4d0
0169b3cc  ldr w8,[sp, #0x8]
0169b3d0  cmp w8,#0x1
0169b3d4  b.lt 0x0169b3e4
0169b3d8  ldr x0,[sp]
0169b3dc  mvn w1,w8
0169b3e0  bl 0x0124c4d0
0169b3e4  ldp x29,x30,[sp, #0x30]
0169b3e8  ldr x19,[sp, #0x20]
0169b3ec  add sp,sp,#0x40
0169b3f0  ret
