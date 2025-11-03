// ===== case332-NonRecoverConsistencyStaticVars @ 016cd0a4 =====
// existing function case332-NonRecoverConsistencyStaticVars
016cd0a4  sub sp,sp,#0x40
016cd0a8  stp x20,x19,[sp, #0x20]
016cd0ac  stp x29,x30,[sp, #0x30]
016cd0b0  add x29,sp,#0x30
016cd0b4  adrp x1,0x174a000
016cd0b8  add x1,x1,#0x87c
016cd0bc  mov x19,x0
016cd0c0  bl 0x0124ba40
016cd0c4  adrp x1,0x575d000
016cd0c8  add x1,x1,#0xa06
016cd0cc  mov x0,x19
016cd0d0  str x19,[sp]
016cd0d4  bl 0x01251aa0
016cd0d8  mov w8,#0x1
016cd0dc  str w8,[sp, #0x8]
016cd0e0  mov x0,sp
016cd0e4  bl 0x0174aa04
016cd0e8  adrp x1,0x5763000
016cd0ec  adrp x3,0x736d000
016cd0f0  add x1,x1,#0x855
016cd0f4  add x3,x3,#0x101
016cd0f8  add x0,sp,#0x10
016cd0fc  mov x2,sp
016cd100  bl 0x018107c0
016cd104  ldr x0,[sp, #0x10]
016cd108  mov w1,#0x10
016cd10c  bl 0x0124cba0
016cd110  adrp x8,0x1810000
016cd114  dup v0.2D,xzr
016cd118  add x8,x8,#0x7b8
016cd11c  mov v0.D[0x0],x8
016cd120  str q0,[x0]
016cd124  ldr x0,[sp, #0x10]
016cd128  adrp x1,0x1810000
016cd12c  add x1,x1,#0xb84
016cd130  mov w2,#0x1
016cd134  bl 0x0124ec90
016cd138  ldr x0,[sp, #0x10]
016cd13c  mov w1,#0xffffffff
016cd140  bl 0x0124c0c0
016cd144  ldr x19,[sp, #0x10]
016cd148  orr w1,wzr,#0xfffffffb
016cd14c  mov w2,#0x6e7
016cd150  mov x0,x19
016cd154  bl 0x0124a650
016cd158  orr w1,wzr,#0xfffffffe
016cd15c  mov x0,x19
016cd160  bl 0x0124c0c0
016cd164  orr w1,wzr,#0xfffffffe
016cd168  mov x0,x19
016cd16c  bl 0x0124e920
016cd170  mov w20,w0
016cd174  adrp x1,0x5763000
016cd178  add x1,x1,#0x875
016cd17c  mov x0,x19
016cd180  bl 0x0124f120
016cd184  orr w1,wzr,#0xfffffffe
016cd188  mov w2,#0x1
016cd18c  mov x0,x19
016cd190  bl 0x0124cfc0
016cd194  mov x0,x19
016cd198  mov w1,w20
016cd19c  bl 0x0124e060
016cd1a0  orr w1,wzr,#0xfffffffd
016cd1a4  mov x0,x19
016cd1a8  bl 0x0124c4d0
016cd1ac  ldr x19,[sp, #0x10]
016cd1b0  orr w1,wzr,#0xfffffffd
016cd1b4  mov w2,#0x6e7
016cd1b8  mov x0,x19
016cd1bc  bl 0x0124a650
016cd1c0  orr w1,wzr,#0xfffffffe
016cd1c4  mov x0,x19
016cd1c8  bl 0x0124c0c0
016cd1cc  orr w1,wzr,#0xfffffffe
016cd1d0  mov x0,x19
016cd1d4  bl 0x0124e920
016cd1d8  mov w20,w0
016cd1dc  adrp x1,0x5763000
016cd1e0  add x1,x1,#0x875
016cd1e4  mov x0,x19
016cd1e8  bl 0x0124f120
016cd1ec  orr w1,wzr,#0xfffffffe
016cd1f0  mov w2,#0x1
016cd1f4  mov x0,x19
016cd1f8  bl 0x0124cfc0
016cd1fc  mov x0,x19
016cd200  mov w1,w20
016cd204  bl 0x0124e060
016cd208  orr w1,wzr,#0xfffffffd
016cd20c  mov x0,x19
016cd210  bl 0x0124c4d0
016cd214  ldr w8,[sp, #0x18]
016cd218  ldr x0,[sp, #0x10]
016cd21c  sub w8,w8,#0x3
016cd220  str w8,[sp, #0x18]
016cd224  orr w1,wzr,#0xfffffffc
016cd228  bl 0x0124c4d0
016cd22c  ldr w8,[sp, #0x18]
016cd230  ldr x0,[sp, #0x10]
016cd234  str wzr,[sp, #0x18]
016cd238  cmp w8,#0x1
016cd23c  b.lt 0x016cd260
016cd240  mvn w1,w8
016cd244  bl 0x0124c4d0
016cd248  ldr w8,[sp, #0x18]
016cd24c  cmp w8,#0x1
016cd250  b.lt 0x016cd260
016cd254  ldr x0,[sp, #0x10]
016cd258  mvn w1,w8
016cd25c  bl 0x0124c4d0
016cd260  ldr w8,[sp, #0x8]
016cd264  cmp w8,#0x1
016cd268  b.lt 0x016cd278
016cd26c  ldr x0,[sp]
016cd270  mvn w1,w8
016cd274  bl 0x0124c4d0
016cd278  ldp x29,x30,[sp, #0x30]
016cd27c  ldp x20,x19,[sp, #0x20]
016cd280  add sp,sp,#0x40
016cd284  ret
