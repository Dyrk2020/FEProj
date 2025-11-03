// ===== case96-BuffTypeGroupResObject @ 0169c0ec =====
// existing function case96-BuffTypeGroupResObject
0169c0ec  sub sp,sp,#0x40
0169c0f0  stp x20,x19,[sp, #0x20]
0169c0f4  stp x29,x30,[sp, #0x30]
0169c0f8  add x29,sp,#0x30
0169c0fc  adrp x1,0x174a000
0169c100  add x1,x1,#0x87c
0169c104  mov x19,x0
0169c108  bl 0x0124ba40
0169c10c  adrp x1,0x575d000
0169c110  add x1,x1,#0xa06
0169c114  mov x0,x19
0169c118  str x19,[sp]
0169c11c  bl 0x01251aa0
0169c120  mov w8,#0x1
0169c124  str w8,[sp, #0x8]
0169c128  mov x0,sp
0169c12c  bl 0x0174aa04
0169c130  adrp x1,0x575f000
0169c134  adrp x3,0x736d000
0169c138  add x1,x1,#0x1ad
0169c13c  add x3,x3,#0x101
0169c140  add x0,sp,#0x10
0169c144  mov x2,sp
0169c148  bl 0x01785ac0
0169c14c  ldr x0,[sp, #0x10]
0169c150  mov w1,#0x10
0169c154  bl 0x0124cba0
0169c158  adrp x8,0x1785000
0169c15c  dup v0.2D,xzr
0169c160  add x8,x8,#0xab0
0169c164  mov v0.D[0x0],x8
0169c168  str q0,[x0]
0169c16c  ldr x0,[sp, #0x10]
0169c170  adrp x1,0x1785000
0169c174  add x1,x1,#0xe84
0169c178  mov w2,#0x1
0169c17c  bl 0x0124ec90
0169c180  ldr x0,[sp, #0x10]
0169c184  mov w1,#0xffffffff
0169c188  bl 0x0124c0c0
0169c18c  ldr x19,[sp, #0x10]
0169c190  orr w1,wzr,#0xfffffffb
0169c194  mov w2,#0x6e7
0169c198  mov x0,x19
0169c19c  bl 0x0124a650
0169c1a0  orr w1,wzr,#0xfffffffe
0169c1a4  mov x0,x19
0169c1a8  bl 0x0124c0c0
0169c1ac  orr w1,wzr,#0xfffffffe
0169c1b0  mov x0,x19
0169c1b4  bl 0x0124e920
0169c1b8  mov w20,w0
0169c1bc  adrp x1,0x575e000
0169c1c0  add x1,x1,#0x56d
0169c1c4  mov x0,x19
0169c1c8  bl 0x0124f120
0169c1cc  orr w1,wzr,#0xfffffffe
0169c1d0  mov w2,#0x1
0169c1d4  mov x0,x19
0169c1d8  bl 0x0124cfc0
0169c1dc  mov x0,x19
0169c1e0  mov w1,w20
0169c1e4  bl 0x0124e060
0169c1e8  orr w1,wzr,#0xfffffffd
0169c1ec  mov x0,x19
0169c1f0  bl 0x0124c4d0
0169c1f4  ldr x19,[sp, #0x10]
0169c1f8  orr w1,wzr,#0xfffffffd
0169c1fc  mov w2,#0x6e7
0169c200  mov x0,x19
0169c204  bl 0x0124a650
0169c208  orr w1,wzr,#0xfffffffe
0169c20c  mov x0,x19
0169c210  bl 0x0124c0c0
0169c214  orr w1,wzr,#0xfffffffe
0169c218  mov x0,x19
0169c21c  bl 0x0124e920
0169c220  mov w20,w0
0169c224  adrp x1,0x575e000
0169c228  add x1,x1,#0x56d
0169c22c  mov x0,x19
0169c230  bl 0x0124f120
0169c234  orr w1,wzr,#0xfffffffe
0169c238  mov w2,#0x1
0169c23c  mov x0,x19
0169c240  bl 0x0124cfc0
0169c244  mov x0,x19
0169c248  mov w1,w20
0169c24c  bl 0x0124e060
0169c250  orr w1,wzr,#0xfffffffd
0169c254  mov x0,x19
0169c258  bl 0x0124c4d0
0169c25c  ldr x0,[sp, #0x10]
0169c260  mov w1,#0x10
0169c264  bl 0x0124cba0
0169c268  adrp x8,0x1785000
0169c26c  dup v0.2D,xzr
0169c270  add x8,x8,#0xab8
0169c274  mov v0.D[0x0],x8
0169c278  str q0,[x0]
0169c27c  ldr x0,[sp, #0x10]
0169c280  adrp x1,0x1785000
0169c284  add x1,x1,#0xfa8
0169c288  mov w2,#0x1
0169c28c  bl 0x0124ec90
0169c290  ldr x0,[sp, #0x10]
0169c294  mov w1,#0xffffffff
0169c298  bl 0x0124c0c0
0169c29c  ldr x19,[sp, #0x10]
0169c2a0  orr w1,wzr,#0xfffffffb
0169c2a4  mov w2,#0x6e7
0169c2a8  mov x0,x19
0169c2ac  bl 0x0124a650
0169c2b0  orr w1,wzr,#0xfffffffe
0169c2b4  mov x0,x19
0169c2b8  bl 0x0124c0c0
0169c2bc  orr w1,wzr,#0xfffffffe
0169c2c0  mov x0,x19
0169c2c4  bl 0x0124e920
0169c2c8  mov w20,w0
0169c2cc  adrp x1,0x575e000
0169c2d0  add x1,x1,#0x578
0169c2d4  mov x0,x19
0169c2d8  bl 0x0124f120
0169c2dc  orr w1,wzr,#0xfffffffe
0169c2e0  mov w2,#0x1
0169c2e4  mov x0,x19
0169c2e8  bl 0x0124cfc0
0169c2ec  mov x0,x19
0169c2f0  mov w1,w20
0169c2f4  bl 0x0124e060
0169c2f8  orr w1,wzr,#0xfffffffd
0169c2fc  mov x0,x19
0169c300  bl 0x0124c4d0
0169c304  ldr x19,[sp, #0x10]
0169c308  orr w1,wzr,#0xfffffffd
0169c30c  mov w2,#0x6e7
0169c310  mov x0,x19
0169c314  bl 0x0124a650
0169c318  orr w1,wzr,#0xfffffffe
0169c31c  mov x0,x19
0169c320  bl 0x0124c0c0
0169c324  orr w1,wzr,#0xfffffffe
0169c328  mov x0,x19
0169c32c  bl 0x0124e920
0169c330  mov w20,w0
0169c334  adrp x1,0x575e000
0169c338  add x1,x1,#0x578
0169c33c  mov x0,x19
0169c340  bl 0x0124f120
0169c344  orr w1,wzr,#0xfffffffe
0169c348  mov w2,#0x1
0169c34c  mov x0,x19
0169c350  bl 0x0124cfc0
0169c354  mov x0,x19
0169c358  mov w1,w20
0169c35c  bl 0x0124e060
0169c360  orr w1,wzr,#0xfffffffd
0169c364  mov x0,x19
0169c368  bl 0x0124c4d0
0169c36c  ldr w8,[sp, #0x18]
0169c370  ldr x0,[sp, #0x10]
0169c374  sub w8,w8,#0x3
0169c378  str w8,[sp, #0x18]
0169c37c  orr w1,wzr,#0xfffffffc
0169c380  bl 0x0124c4d0
0169c384  ldr w8,[sp, #0x18]
0169c388  ldr x0,[sp, #0x10]
0169c38c  str wzr,[sp, #0x18]
0169c390  cmp w8,#0x1
0169c394  b.lt 0x0169c3b8
0169c398  mvn w1,w8
0169c39c  bl 0x0124c4d0
0169c3a0  ldr w8,[sp, #0x18]
0169c3a4  cmp w8,#0x1
0169c3a8  b.lt 0x0169c3b8
0169c3ac  ldr x0,[sp, #0x10]
0169c3b0  mvn w1,w8
0169c3b4  bl 0x0124c4d0
0169c3b8  ldr w8,[sp, #0x8]
0169c3bc  cmp w8,#0x1
0169c3c0  b.lt 0x0169c3d0
0169c3c4  ldr x0,[sp]
0169c3c8  mvn w1,w8
0169c3cc  bl 0x0124c4d0
0169c3d0  ldp x29,x30,[sp, #0x30]
0169c3d4  ldp x20,x19,[sp, #0x20]
0169c3d8  add sp,sp,#0x40
0169c3dc  ret
