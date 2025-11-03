// ===== case611-SharedAnchor @ 0170a04c =====
// existing function case611-SharedAnchor
0170a04c  sub sp,sp,#0x40
0170a050  stp x20,x19,[sp, #0x20]
0170a054  stp x29,x30,[sp, #0x30]
0170a058  add x29,sp,#0x30
0170a05c  adrp x1,0x174a000
0170a060  add x1,x1,#0x87c
0170a064  mov x19,x0
0170a068  bl 0x0124ba40
0170a06c  adrp x1,0x575d000
0170a070  add x1,x1,#0xa06
0170a074  mov x0,x19
0170a078  str x19,[sp]
0170a07c  bl 0x01251aa0
0170a080  mov w8,#0x1
0170a084  str w8,[sp, #0x8]
0170a088  mov x0,sp
0170a08c  bl 0x0174aa04
0170a090  adrp x1,0x576a000
0170a094  adrp x3,0x736d000
0170a098  add x1,x1,#0x523
0170a09c  add x3,x3,#0x101
0170a0a0  add x0,sp,#0x10
0170a0a4  mov x2,sp
0170a0a8  bl 0x018fa620
0170a0ac  ldr x0,[sp, #0x10]
0170a0b0  mov w1,#0x10
0170a0b4  bl 0x0124cba0
0170a0b8  adrp x8,0x18fa000
0170a0bc  dup v0.2D,xzr
0170a0c0  add x8,x8,#0x618
0170a0c4  mov v0.D[0x0],x8
0170a0c8  str q0,[x0]
0170a0cc  ldr x0,[sp, #0x10]
0170a0d0  adrp x1,0x18fa000
0170a0d4  add x1,x1,#0x9e4
0170a0d8  mov w2,#0x1
0170a0dc  bl 0x0124ec90
0170a0e0  ldr x0,[sp, #0x10]
0170a0e4  mov w1,#0xffffffff
0170a0e8  bl 0x0124c0c0
0170a0ec  ldr x19,[sp, #0x10]
0170a0f0  orr w1,wzr,#0xfffffffb
0170a0f4  mov w2,#0x6e7
0170a0f8  mov x0,x19
0170a0fc  bl 0x0124a650
0170a100  orr w1,wzr,#0xfffffffe
0170a104  mov x0,x19
0170a108  bl 0x0124c0c0
0170a10c  orr w1,wzr,#0xfffffffe
0170a110  mov x0,x19
0170a114  bl 0x0124e920
0170a118  mov w20,w0
0170a11c  adrp x1,0x575d000
0170a120  add x1,x1,#0xd23
0170a124  mov x0,x19
0170a128  bl 0x0124f120
0170a12c  orr w1,wzr,#0xfffffffe
0170a130  mov w2,#0x1
0170a134  mov x0,x19
0170a138  bl 0x0124cfc0
0170a13c  mov x0,x19
0170a140  mov w1,w20
0170a144  bl 0x0124e060
0170a148  orr w1,wzr,#0xfffffffd
0170a14c  mov x0,x19
0170a150  bl 0x0124c4d0
0170a154  ldr x19,[sp, #0x10]
0170a158  orr w1,wzr,#0xfffffffd
0170a15c  mov w2,#0x6e7
0170a160  mov x0,x19
0170a164  bl 0x0124a650
0170a168  orr w1,wzr,#0xfffffffe
0170a16c  mov x0,x19
0170a170  bl 0x0124c0c0
0170a174  orr w1,wzr,#0xfffffffe
0170a178  mov x0,x19
0170a17c  bl 0x0124e920
0170a180  mov w20,w0
0170a184  adrp x1,0x575d000
0170a188  add x1,x1,#0xd23
0170a18c  mov x0,x19
0170a190  bl 0x0124f120
0170a194  orr w1,wzr,#0xfffffffe
0170a198  mov w2,#0x1
0170a19c  mov x0,x19
0170a1a0  bl 0x0124cfc0
0170a1a4  mov x0,x19
0170a1a8  mov w1,w20
0170a1ac  bl 0x0124e060
0170a1b0  orr w1,wzr,#0xfffffffd
0170a1b4  mov x0,x19
0170a1b8  bl 0x0124c4d0
0170a1bc  ldr w8,[sp, #0x18]
0170a1c0  ldr x0,[sp, #0x10]
0170a1c4  sub w8,w8,#0x3
0170a1c8  str w8,[sp, #0x18]
0170a1cc  orr w1,wzr,#0xfffffffc
0170a1d0  bl 0x0124c4d0
0170a1d4  ldr w8,[sp, #0x18]
0170a1d8  ldr x0,[sp, #0x10]
0170a1dc  str wzr,[sp, #0x18]
0170a1e0  cmp w8,#0x1
0170a1e4  b.lt 0x0170a208
0170a1e8  mvn w1,w8
0170a1ec  bl 0x0124c4d0
0170a1f0  ldr w8,[sp, #0x18]
0170a1f4  cmp w8,#0x1
0170a1f8  b.lt 0x0170a208
0170a1fc  ldr x0,[sp, #0x10]
0170a200  mvn w1,w8
0170a204  bl 0x0124c4d0
0170a208  ldr w8,[sp, #0x8]
0170a20c  cmp w8,#0x1
0170a210  b.lt 0x0170a220
0170a214  ldr x0,[sp]
0170a218  mvn w1,w8
0170a21c  bl 0x0124c4d0
0170a220  ldp x29,x30,[sp, #0x30]
0170a224  ldp x20,x19,[sp, #0x20]
0170a228  add sp,sp,#0x40
0170a22c  ret
