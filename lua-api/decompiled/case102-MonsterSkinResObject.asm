// ===== case102-MonsterSkinResObject @ 0169d110 =====
// existing function case102-MonsterSkinResObject
0169d110  sub sp,sp,#0x40
0169d114  stp x20,x19,[sp, #0x20]
0169d118  stp x29,x30,[sp, #0x30]
0169d11c  add x29,sp,#0x30
0169d120  adrp x1,0x174a000
0169d124  add x1,x1,#0x87c
0169d128  mov x19,x0
0169d12c  bl 0x0124ba40
0169d130  adrp x1,0x575d000
0169d134  add x1,x1,#0xa06
0169d138  mov x0,x19
0169d13c  str x19,[sp]
0169d140  bl 0x01251aa0
0169d144  mov w8,#0x1
0169d148  str w8,[sp, #0x8]
0169d14c  mov x0,sp
0169d150  bl 0x0174aa04
0169d154  adrp x1,0x575f000
0169d158  adrp x3,0x736d000
0169d15c  add x1,x1,#0x2da
0169d160  add x3,x3,#0x101
0169d164  add x0,sp,#0x10
0169d168  mov x2,sp
0169d16c  bl 0x01788a70
0169d170  ldr x0,[sp, #0x10]
0169d174  mov w1,#0x10
0169d178  bl 0x0124cba0
0169d17c  adrp x8,0x1788000
0169d180  dup v0.2D,xzr
0169d184  add x8,x8,#0xa60
0169d188  mov v0.D[0x0],x8
0169d18c  str q0,[x0]
0169d190  ldr x0,[sp, #0x10]
0169d194  adrp x1,0x1788000
0169d198  add x1,x1,#0xe34
0169d19c  mov w2,#0x1
0169d1a0  bl 0x0124ec90
0169d1a4  ldr x0,[sp, #0x10]
0169d1a8  mov w1,#0xffffffff
0169d1ac  bl 0x0124c0c0
0169d1b0  ldr x19,[sp, #0x10]
0169d1b4  orr w1,wzr,#0xfffffffb
0169d1b8  mov w2,#0x6e7
0169d1bc  mov x0,x19
0169d1c0  bl 0x0124a650
0169d1c4  orr w1,wzr,#0xfffffffe
0169d1c8  mov x0,x19
0169d1cc  bl 0x0124c0c0
0169d1d0  orr w1,wzr,#0xfffffffe
0169d1d4  mov x0,x19
0169d1d8  bl 0x0124e920
0169d1dc  mov w20,w0
0169d1e0  adrp x1,0x575f000
0169d1e4  add x1,x1,#0x2ef
0169d1e8  mov x0,x19
0169d1ec  bl 0x0124f120
0169d1f0  orr w1,wzr,#0xfffffffe
0169d1f4  mov w2,#0x1
0169d1f8  mov x0,x19
0169d1fc  bl 0x0124cfc0
0169d200  mov x0,x19
0169d204  mov w1,w20
0169d208  bl 0x0124e060
0169d20c  orr w1,wzr,#0xfffffffd
0169d210  mov x0,x19
0169d214  bl 0x0124c4d0
0169d218  ldr x19,[sp, #0x10]
0169d21c  orr w1,wzr,#0xfffffffd
0169d220  mov w2,#0x6e7
0169d224  mov x0,x19
0169d228  bl 0x0124a650
0169d22c  orr w1,wzr,#0xfffffffe
0169d230  mov x0,x19
0169d234  bl 0x0124c0c0
0169d238  orr w1,wzr,#0xfffffffe
0169d23c  mov x0,x19
0169d240  bl 0x0124e920
0169d244  mov w20,w0
0169d248  adrp x1,0x575f000
0169d24c  add x1,x1,#0x2ef
0169d250  mov x0,x19
0169d254  bl 0x0124f120
0169d258  orr w1,wzr,#0xfffffffe
0169d25c  mov w2,#0x1
0169d260  mov x0,x19
0169d264  bl 0x0124cfc0
0169d268  mov x0,x19
0169d26c  mov w1,w20
0169d270  bl 0x0124e060
0169d274  orr w1,wzr,#0xfffffffd
0169d278  mov x0,x19
0169d27c  bl 0x0124c4d0
0169d280  ldr x0,[sp, #0x10]
0169d284  mov w1,#0x10
0169d288  bl 0x0124cba0
0169d28c  adrp x8,0x1788000
0169d290  dup v0.2D,xzr
0169d294  add x8,x8,#0xa68
0169d298  mov v0.D[0x0],x8
0169d29c  str q0,[x0]
0169d2a0  ldr x0,[sp, #0x10]
0169d2a4  adrp x1,0x1788000
0169d2a8  add x1,x1,#0xf58
0169d2ac  mov w2,#0x1
0169d2b0  bl 0x0124ec90
0169d2b4  ldr x0,[sp, #0x10]
0169d2b8  mov w1,#0xffffffff
0169d2bc  bl 0x0124c0c0
0169d2c0  ldr x19,[sp, #0x10]
0169d2c4  orr w1,wzr,#0xfffffffb
0169d2c8  mov w2,#0x6e7
0169d2cc  mov x0,x19
0169d2d0  bl 0x0124a650
0169d2d4  orr w1,wzr,#0xfffffffe
0169d2d8  mov x0,x19
0169d2dc  bl 0x0124c0c0
0169d2e0  orr w1,wzr,#0xfffffffe
0169d2e4  mov x0,x19
0169d2e8  bl 0x0124e920
0169d2ec  mov w20,w0
0169d2f0  adrp x1,0x575f000
0169d2f4  add x1,x1,#0x2f8
0169d2f8  mov x0,x19
0169d2fc  bl 0x0124f120
0169d300  orr w1,wzr,#0xfffffffe
0169d304  mov w2,#0x1
0169d308  mov x0,x19
0169d30c  bl 0x0124cfc0
0169d310  mov x0,x19
0169d314  mov w1,w20
0169d318  bl 0x0124e060
0169d31c  orr w1,wzr,#0xfffffffd
0169d320  mov x0,x19
0169d324  bl 0x0124c4d0
0169d328  ldr x19,[sp, #0x10]
0169d32c  orr w1,wzr,#0xfffffffd
0169d330  mov w2,#0x6e7
0169d334  mov x0,x19
0169d338  bl 0x0124a650
0169d33c  orr w1,wzr,#0xfffffffe
0169d340  mov x0,x19
0169d344  bl 0x0124c0c0
0169d348  orr w1,wzr,#0xfffffffe
0169d34c  mov x0,x19
0169d350  bl 0x0124e920
0169d354  mov w20,w0
0169d358  adrp x1,0x575f000
0169d35c  add x1,x1,#0x2f8
0169d360  mov x0,x19
0169d364  bl 0x0124f120
0169d368  orr w1,wzr,#0xfffffffe
0169d36c  mov w2,#0x1
0169d370  mov x0,x19
0169d374  bl 0x0124cfc0
0169d378  mov x0,x19
0169d37c  mov w1,w20
0169d380  bl 0x0124e060
0169d384  orr w1,wzr,#0xfffffffd
0169d388  mov x0,x19
0169d38c  bl 0x0124c4d0
0169d390  ldr w8,[sp, #0x18]
0169d394  ldr x0,[sp, #0x10]
0169d398  sub w8,w8,#0x3
0169d39c  str w8,[sp, #0x18]
0169d3a0  orr w1,wzr,#0xfffffffc
0169d3a4  bl 0x0124c4d0
0169d3a8  ldr w8,[sp, #0x18]
0169d3ac  ldr x0,[sp, #0x10]
0169d3b0  str wzr,[sp, #0x18]
0169d3b4  cmp w8,#0x1
0169d3b8  b.lt 0x0169d3dc
0169d3bc  mvn w1,w8
0169d3c0  bl 0x0124c4d0
0169d3c4  ldr w8,[sp, #0x18]
0169d3c8  cmp w8,#0x1
0169d3cc  b.lt 0x0169d3dc
0169d3d0  ldr x0,[sp, #0x10]
0169d3d4  mvn w1,w8
0169d3d8  bl 0x0124c4d0
0169d3dc  ldr w8,[sp, #0x8]
0169d3e0  cmp w8,#0x1
0169d3e4  b.lt 0x0169d3f4
0169d3e8  ldr x0,[sp]
0169d3ec  mvn w1,w8
0169d3f0  bl 0x0124c4d0
0169d3f4  ldp x29,x30,[sp, #0x30]
0169d3f8  ldp x20,x19,[sp, #0x20]
0169d3fc  add sp,sp,#0x40
0169d400  ret
