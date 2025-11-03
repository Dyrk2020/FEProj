// ===== case759-ActorComponentHatred @ 0172c114 =====
// existing function case759-ActorComponentHatred
0172c114  sub sp,sp,#0x50
0172c118  str x21,[sp, #0x20]
0172c11c  stp x20,x19,[sp, #0x30]
0172c120  stp x29,x30,[sp, #0x40]
0172c124  add x29,sp,#0x40
0172c128  adrp x1,0x174a000
0172c12c  add x1,x1,#0x87c
0172c130  mov x19,x0
0172c134  bl 0x0124ba40
0172c138  adrp x1,0x575d000
0172c13c  add x1,x1,#0xa06
0172c140  mov x0,x19
0172c144  str x19,[sp]
0172c148  bl 0x01251aa0
0172c14c  mov w8,#0x1
0172c150  str w8,[sp, #0x8]
0172c154  mov x0,sp
0172c158  bl 0x0174aa04
0172c15c  adrp x1,0x5770000
0172c160  adrp x3,0x736d000
0172c164  add x1,x1,#0xd84
0172c168  add x3,x3,#0x101
0172c16c  add x0,sp,#0x10
0172c170  mov x2,sp
0172c174  bl 0x0198fdc4
0172c178  adrp x1,0x5770000
0172c17c  adrp x2,0x198f000
0172c180  adrp x4,0x198f000
0172c184  add x1,x1,#0xd99
0172c188  add x2,x2,#0xdac
0172c18c  add x4,x4,#0xdb4
0172c190  add x0,sp,#0x10
0172c194  mov x3,xzr
0172c198  mov x5,xzr
0172c19c  bl 0x0198fbc4
0172c1a0  mov x19,x0
0172c1a4  ldr x0,[x19]
0172c1a8  mov w1,#0x10
0172c1ac  bl 0x0124cba0
0172c1b0  adrp x8,0x198f000
0172c1b4  dup v0.2D,xzr
0172c1b8  add x8,x8,#0xdbc
0172c1bc  mov v0.D[0x0],x8
0172c1c0  str q0,[x0]
0172c1c4  ldr x0,[x19]
0172c1c8  adrp x1,0x1990000
0172c1cc  add x1,x1,#0x3d4
0172c1d0  mov w2,#0x1
0172c1d4  bl 0x0124ec90
0172c1d8  ldr x0,[x19]
0172c1dc  mov w1,#0xffffffff
0172c1e0  bl 0x0124c0c0
0172c1e4  ldr x20,[x19]
0172c1e8  orr w1,wzr,#0xfffffffb
0172c1ec  mov w2,#0x6e7
0172c1f0  mov x0,x20
0172c1f4  bl 0x0124a650
0172c1f8  orr w1,wzr,#0xfffffffe
0172c1fc  mov x0,x20
0172c200  bl 0x0124c0c0
0172c204  orr w1,wzr,#0xfffffffe
0172c208  mov x0,x20
0172c20c  bl 0x0124e920
0172c210  mov w21,w0
0172c214  adrp x1,0x5770000
0172c218  add x1,x1,#0xda8
0172c21c  mov x0,x20
0172c220  bl 0x0124f120
0172c224  orr w1,wzr,#0xfffffffe
0172c228  mov w2,#0x1
0172c22c  mov x0,x20
0172c230  bl 0x0124cfc0
0172c234  mov x0,x20
0172c238  mov w1,w21
0172c23c  bl 0x0124e060
0172c240  orr w1,wzr,#0xfffffffd
0172c244  mov x0,x20
0172c248  bl 0x0124c4d0
0172c24c  ldr x20,[x19]
0172c250  orr w1,wzr,#0xfffffffd
0172c254  mov w2,#0x6e7
0172c258  mov x0,x20
0172c25c  bl 0x0124a650
0172c260  orr w1,wzr,#0xfffffffe
0172c264  mov x0,x20
0172c268  bl 0x0124c0c0
0172c26c  orr w1,wzr,#0xfffffffe
0172c270  mov x0,x20
0172c274  bl 0x0124e920
0172c278  mov w21,w0
0172c27c  adrp x1,0x5770000
0172c280  add x1,x1,#0xda8
0172c284  mov x0,x20
0172c288  bl 0x0124f120
0172c28c  orr w1,wzr,#0xfffffffe
0172c290  mov w2,#0x1
0172c294  mov x0,x20
0172c298  bl 0x0124cfc0
0172c29c  mov x0,x20
0172c2a0  mov w1,w21
0172c2a4  bl 0x0124e060
0172c2a8  orr w1,wzr,#0xfffffffd
0172c2ac  mov x0,x20
0172c2b0  bl 0x0124c4d0
0172c2b4  ldr w8,[x19, #0x8]
0172c2b8  ldr x0,[x19]
0172c2bc  sub w8,w8,#0x3
0172c2c0  str w8,[x19, #0x8]
0172c2c4  orr w1,wzr,#0xfffffffc
0172c2c8  bl 0x0124c4d0
0172c2cc  ldr w8,[x19, #0x8]
0172c2d0  ldr x0,[x19]
0172c2d4  str wzr,[x19, #0x8]
0172c2d8  cmp w8,#0x1
0172c2dc  b.lt 0x0172c2e8
0172c2e0  mvn w1,w8
0172c2e4  bl 0x0124c4d0
0172c2e8  ldr w8,[sp, #0x18]
0172c2ec  cmp w8,#0x1
0172c2f0  b.lt 0x0172c300
0172c2f4  ldr x0,[sp, #0x10]
0172c2f8  mvn w1,w8
0172c2fc  bl 0x0124c4d0
0172c300  ldr w8,[sp, #0x8]
0172c304  cmp w8,#0x1
0172c308  b.lt 0x0172c318
0172c30c  ldr x0,[sp]
0172c310  mvn w1,w8
0172c314  bl 0x0124c4d0
0172c318  ldp x29,x30,[sp, #0x40]
0172c31c  ldp x20,x19,[sp, #0x30]
0172c320  ldr x21,[sp, #0x20]
0172c324  add sp,sp,#0x50
0172c328  ret
