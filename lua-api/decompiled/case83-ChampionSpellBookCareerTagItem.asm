// ===== case83-ChampionSpellBookCareerTagItem @ 0169a038 =====
// existing function case83-ChampionSpellBookCareerTagItem
0169a038  sub sp,sp,#0x40
0169a03c  stp x20,x19,[sp, #0x20]
0169a040  stp x29,x30,[sp, #0x30]
0169a044  add x29,sp,#0x30
0169a048  adrp x1,0x174a000
0169a04c  add x1,x1,#0x87c
0169a050  mov x19,x0
0169a054  bl 0x0124ba40
0169a058  adrp x1,0x575d000
0169a05c  add x1,x1,#0xa06
0169a060  mov x0,x19
0169a064  str x19,[sp]
0169a068  bl 0x01251aa0
0169a06c  mov w8,#0x1
0169a070  str w8,[sp, #0x8]
0169a074  mov x0,sp
0169a078  bl 0x0174aa04
0169a07c  adrp x1,0x575e000
0169a080  adrp x3,0x736d000
0169a084  add x1,x1,#0xf93
0169a088  add x3,x3,#0x101
0169a08c  add x0,sp,#0x10
0169a090  mov x2,sp
0169a094  bl 0x0177f390
0169a098  ldr x0,[sp, #0x10]
0169a09c  mov w1,#0x10
0169a0a0  bl 0x0124cba0
0169a0a4  adrp x8,0x177f000
0169a0a8  dup v0.2D,xzr
0169a0ac  add x8,x8,#0x180
0169a0b0  mov v0.D[0x0],x8
0169a0b4  str q0,[x0]
0169a0b8  ldr x0,[sp, #0x10]
0169a0bc  adrp x1,0x177f000
0169a0c0  add x1,x1,#0x754
0169a0c4  mov w2,#0x1
0169a0c8  bl 0x0124ec90
0169a0cc  ldr x0,[sp, #0x10]
0169a0d0  mov w1,#0xffffffff
0169a0d4  bl 0x0124c0c0
0169a0d8  ldr x19,[sp, #0x10]
0169a0dc  orr w1,wzr,#0xfffffffb
0169a0e0  mov w2,#0x6e7
0169a0e4  mov x0,x19
0169a0e8  bl 0x0124a650
0169a0ec  orr w1,wzr,#0xfffffffe
0169a0f0  mov x0,x19
0169a0f4  bl 0x0124c0c0
0169a0f8  orr w1,wzr,#0xfffffffe
0169a0fc  mov x0,x19
0169a100  bl 0x0124e920
0169a104  mov w20,w0
0169a108  adrp x1,0x575e000
0169a10c  add x1,x1,#0xfb2
0169a110  mov x0,x19
0169a114  bl 0x0124f120
0169a118  orr w1,wzr,#0xfffffffe
0169a11c  mov w2,#0x1
0169a120  mov x0,x19
0169a124  bl 0x0124cfc0
0169a128  mov x0,x19
0169a12c  mov w1,w20
0169a130  bl 0x0124e060
0169a134  orr w1,wzr,#0xfffffffd
0169a138  mov x0,x19
0169a13c  bl 0x0124c4d0
0169a140  ldr x19,[sp, #0x10]
0169a144  orr w1,wzr,#0xfffffffd
0169a148  mov w2,#0x6e7
0169a14c  mov x0,x19
0169a150  bl 0x0124a650
0169a154  orr w1,wzr,#0xfffffffe
0169a158  mov x0,x19
0169a15c  bl 0x0124c0c0
0169a160  orr w1,wzr,#0xfffffffe
0169a164  mov x0,x19
0169a168  bl 0x0124e920
0169a16c  mov w20,w0
0169a170  adrp x1,0x575e000
0169a174  add x1,x1,#0xfb2
0169a178  mov x0,x19
0169a17c  bl 0x0124f120
0169a180  orr w1,wzr,#0xfffffffe
0169a184  mov w2,#0x1
0169a188  mov x0,x19
0169a18c  bl 0x0124cfc0
0169a190  mov x0,x19
0169a194  mov w1,w20
0169a198  bl 0x0124e060
0169a19c  orr w1,wzr,#0xfffffffd
0169a1a0  mov x0,x19
0169a1a4  bl 0x0124c4d0
0169a1a8  adrp x1,0x575e000
0169a1ac  adrp x2,0x177f000
0169a1b0  adrp x4,0x177f000
0169a1b4  add x1,x1,#0xfc0
0169a1b8  add x2,x2,#0x370
0169a1bc  add x4,x4,#0x378
0169a1c0  add x0,sp,#0x10
0169a1c4  mov x3,xzr
0169a1c8  mov x5,xzr
0169a1cc  bl 0x0177f188
0169a1d0  adrp x1,0x575e000
0169a1d4  adrp x2,0x177f000
0169a1d8  adrp x4,0x177f000
0169a1dc  add x1,x1,#0xfcc
0169a1e0  add x2,x2,#0x380
0169a1e4  add x4,x4,#0x388
0169a1e8  mov x3,xzr
0169a1ec  mov x5,xzr
0169a1f0  bl 0x0177f188
0169a1f4  mov x19,x0
0169a1f8  ldr w8,[x19, #0x8]
0169a1fc  ldr x0,[x19]
0169a200  sub w8,w8,#0x3
0169a204  str w8,[x19, #0x8]
0169a208  orr w1,wzr,#0xfffffffc
0169a20c  bl 0x0124c4d0
0169a210  ldr w8,[x19, #0x8]
0169a214  ldr x0,[x19]
0169a218  str wzr,[x19, #0x8]
0169a21c  cmp w8,#0x1
0169a220  b.lt 0x0169a22c
0169a224  mvn w1,w8
0169a228  bl 0x0124c4d0
0169a22c  ldr w8,[sp, #0x18]
0169a230  cmp w8,#0x1
0169a234  b.lt 0x0169a244
0169a238  ldr x0,[sp, #0x10]
0169a23c  mvn w1,w8
0169a240  bl 0x0124c4d0
0169a244  ldr w8,[sp, #0x8]
0169a248  cmp w8,#0x1
0169a24c  b.lt 0x0169a25c
0169a250  ldr x0,[sp]
0169a254  mvn w1,w8
0169a258  bl 0x0124c4d0
0169a25c  ldp x29,x30,[sp, #0x30]
0169a260  ldp x20,x19,[sp, #0x20]
0169a264  add sp,sp,#0x40
0169a268  ret
