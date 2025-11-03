// ===== case828-SharedActor @ 0173a034 =====
// existing function case828-SharedActor
0173a034  sub sp,sp,#0x40
0173a038  stp x20,x19,[sp, #0x20]
0173a03c  stp x29,x30,[sp, #0x30]
0173a040  add x29,sp,#0x30
0173a044  adrp x1,0x174a000
0173a048  add x1,x1,#0x87c
0173a04c  mov x19,x0
0173a050  bl 0x0124ba40
0173a054  adrp x1,0x575d000
0173a058  add x1,x1,#0xa06
0173a05c  mov x0,x19
0173a060  str x19,[sp]
0173a064  bl 0x01251aa0
0173a068  mov w8,#0x1
0173a06c  str w8,[sp, #0x8]
0173a070  mov x0,sp
0173a074  bl 0x0174aa04
0173a078  adrp x1,0x5772000
0173a07c  adrp x3,0x736d000
0173a080  add x1,x1,#0x95e
0173a084  add x3,x3,#0x101
0173a088  add x0,sp,#0x10
0173a08c  mov x2,sp
0173a090  bl 0x019d32a4
0173a094  ldr x0,[sp, #0x10]
0173a098  mov w1,#0x10
0173a09c  bl 0x0124cba0
0173a0a0  adrp x8,0x19d3000
0173a0a4  dup v0.2D,xzr
0173a0a8  add x8,x8,#0x29c
0173a0ac  mov v0.D[0x0],x8
0173a0b0  str q0,[x0]
0173a0b4  ldr x0,[sp, #0x10]
0173a0b8  adrp x1,0x19d3000
0173a0bc  add x1,x1,#0x668
0173a0c0  mov w2,#0x1
0173a0c4  bl 0x0124ec90
0173a0c8  ldr x0,[sp, #0x10]
0173a0cc  mov w1,#0xffffffff
0173a0d0  bl 0x0124c0c0
0173a0d4  ldr x19,[sp, #0x10]
0173a0d8  orr w1,wzr,#0xfffffffb
0173a0dc  mov w2,#0x6e7
0173a0e0  mov x0,x19
0173a0e4  bl 0x0124a650
0173a0e8  orr w1,wzr,#0xfffffffe
0173a0ec  mov x0,x19
0173a0f0  bl 0x0124c0c0
0173a0f4  orr w1,wzr,#0xfffffffe
0173a0f8  mov x0,x19
0173a0fc  bl 0x0124e920
0173a100  mov w20,w0
0173a104  adrp x1,0x575d000
0173a108  add x1,x1,#0xd23
0173a10c  mov x0,x19
0173a110  bl 0x0124f120
0173a114  orr w1,wzr,#0xfffffffe
0173a118  mov w2,#0x1
0173a11c  mov x0,x19
0173a120  bl 0x0124cfc0
0173a124  mov x0,x19
0173a128  mov w1,w20
0173a12c  bl 0x0124e060
0173a130  orr w1,wzr,#0xfffffffd
0173a134  mov x0,x19
0173a138  bl 0x0124c4d0
0173a13c  ldr x19,[sp, #0x10]
0173a140  orr w1,wzr,#0xfffffffd
0173a144  mov w2,#0x6e7
0173a148  mov x0,x19
0173a14c  bl 0x0124a650
0173a150  orr w1,wzr,#0xfffffffe
0173a154  mov x0,x19
0173a158  bl 0x0124c0c0
0173a15c  orr w1,wzr,#0xfffffffe
0173a160  mov x0,x19
0173a164  bl 0x0124e920
0173a168  mov w20,w0
0173a16c  adrp x1,0x575d000
0173a170  add x1,x1,#0xd23
0173a174  mov x0,x19
0173a178  bl 0x0124f120
0173a17c  orr w1,wzr,#0xfffffffe
0173a180  mov w2,#0x1
0173a184  mov x0,x19
0173a188  bl 0x0124cfc0
0173a18c  mov x0,x19
0173a190  mov w1,w20
0173a194  bl 0x0124e060
0173a198  orr w1,wzr,#0xfffffffd
0173a19c  mov x0,x19
0173a1a0  bl 0x0124c4d0
0173a1a4  ldr w8,[sp, #0x18]
0173a1a8  ldr x0,[sp, #0x10]
0173a1ac  sub w8,w8,#0x3
0173a1b0  str w8,[sp, #0x18]
0173a1b4  orr w1,wzr,#0xfffffffc
0173a1b8  bl 0x0124c4d0
0173a1bc  ldr w8,[sp, #0x18]
0173a1c0  ldr x0,[sp, #0x10]
0173a1c4  str wzr,[sp, #0x18]
0173a1c8  cmp w8,#0x1
0173a1cc  b.lt 0x0173a1f0
0173a1d0  mvn w1,w8
0173a1d4  bl 0x0124c4d0
0173a1d8  ldr w8,[sp, #0x18]
0173a1dc  cmp w8,#0x1
0173a1e0  b.lt 0x0173a1f0
0173a1e4  ldr x0,[sp, #0x10]
0173a1e8  mvn w1,w8
0173a1ec  bl 0x0124c4d0
0173a1f0  ldr w8,[sp, #0x8]
0173a1f4  cmp w8,#0x1
0173a1f8  b.lt 0x0173a208
0173a1fc  ldr x0,[sp]
0173a200  mvn w1,w8
0173a204  bl 0x0124c4d0
0173a208  ldp x29,x30,[sp, #0x30]
0173a20c  ldp x20,x19,[sp, #0x20]
0173a210  add sp,sp,#0x40
0173a214  ret
