// ===== case692-MovementPattern @ 0171d118 =====
// existing function case692-MovementPattern
0171d118  sub sp,sp,#0x40
0171d11c  stp x20,x19,[sp, #0x20]
0171d120  stp x29,x30,[sp, #0x30]
0171d124  add x29,sp,#0x30
0171d128  adrp x1,0x174a000
0171d12c  add x1,x1,#0x87c
0171d130  mov x19,x0
0171d134  bl 0x0124ba40
0171d138  adrp x1,0x575d000
0171d13c  add x1,x1,#0xa06
0171d140  mov x0,x19
0171d144  str x19,[sp]
0171d148  bl 0x01251aa0
0171d14c  mov w8,#0x1
0171d150  str w8,[sp, #0x8]
0171d154  mov x0,sp
0171d158  bl 0x0174aa04
0171d15c  adrp x1,0x576d000
0171d160  adrp x3,0x736d000
0171d164  add x1,x1,#0x95f
0171d168  add x3,x3,#0x101
0171d16c  add x0,sp,#0x10
0171d170  mov x2,sp
0171d174  bl 0x01956a9c
0171d178  ldr x0,[sp, #0x10]
0171d17c  mov w1,#0x10
0171d180  bl 0x0124cba0
0171d184  adrp x8,0x1956000
0171d188  dup v0.2D,xzr
0171d18c  add x8,x8,#0xa94
0171d190  mov v0.D[0x0],x8
0171d194  str q0,[x0]
0171d198  ldr x0,[sp, #0x10]
0171d19c  adrp x1,0x1956000
0171d1a0  add x1,x1,#0xe60
0171d1a4  mov w2,#0x1
0171d1a8  bl 0x0124ec90
0171d1ac  ldr x0,[sp, #0x10]
0171d1b0  mov w1,#0xffffffff
0171d1b4  bl 0x0124c0c0
0171d1b8  ldr x19,[sp, #0x10]
0171d1bc  orr w1,wzr,#0xfffffffb
0171d1c0  mov w2,#0x6e7
0171d1c4  mov x0,x19
0171d1c8  bl 0x0124a650
0171d1cc  orr w1,wzr,#0xfffffffe
0171d1d0  mov x0,x19
0171d1d4  bl 0x0124c0c0
0171d1d8  orr w1,wzr,#0xfffffffe
0171d1dc  mov x0,x19
0171d1e0  bl 0x0124e920
0171d1e4  mov w20,w0
0171d1e8  adrp x1,0x576d000
0171d1ec  add x1,x1,#0x96f
0171d1f0  mov x0,x19
0171d1f4  bl 0x0124f120
0171d1f8  orr w1,wzr,#0xfffffffe
0171d1fc  mov w2,#0x1
0171d200  mov x0,x19
0171d204  bl 0x0124cfc0
0171d208  mov x0,x19
0171d20c  mov w1,w20
0171d210  bl 0x0124e060
0171d214  orr w1,wzr,#0xfffffffd
0171d218  mov x0,x19
0171d21c  bl 0x0124c4d0
0171d220  ldr x19,[sp, #0x10]
0171d224  orr w1,wzr,#0xfffffffd
0171d228  mov w2,#0x6e7
0171d22c  mov x0,x19
0171d230  bl 0x0124a650
0171d234  orr w1,wzr,#0xfffffffe
0171d238  mov x0,x19
0171d23c  bl 0x0124c0c0
0171d240  orr w1,wzr,#0xfffffffe
0171d244  mov x0,x19
0171d248  bl 0x0124e920
0171d24c  mov w20,w0
0171d250  adrp x1,0x576d000
0171d254  add x1,x1,#0x96f
0171d258  mov x0,x19
0171d25c  bl 0x0124f120
0171d260  orr w1,wzr,#0xfffffffe
0171d264  mov w2,#0x1
0171d268  mov x0,x19
0171d26c  bl 0x0124cfc0
0171d270  mov x0,x19
0171d274  mov w1,w20
0171d278  bl 0x0124e060
0171d27c  orr w1,wzr,#0xfffffffd
0171d280  mov x0,x19
0171d284  bl 0x0124c4d0
0171d288  ldr w8,[sp, #0x18]
0171d28c  ldr x0,[sp, #0x10]
0171d290  sub w8,w8,#0x3
0171d294  str w8,[sp, #0x18]
0171d298  orr w1,wzr,#0xfffffffc
0171d29c  bl 0x0124c4d0
0171d2a0  ldr w8,[sp, #0x18]
0171d2a4  ldr x0,[sp, #0x10]
0171d2a8  str wzr,[sp, #0x18]
0171d2ac  cmp w8,#0x1
0171d2b0  b.lt 0x0171d2d4
0171d2b4  mvn w1,w8
0171d2b8  bl 0x0124c4d0
0171d2bc  ldr w8,[sp, #0x18]
0171d2c0  cmp w8,#0x1
0171d2c4  b.lt 0x0171d2d4
0171d2c8  ldr x0,[sp, #0x10]
0171d2cc  mvn w1,w8
0171d2d0  bl 0x0124c4d0
0171d2d4  ldr w8,[sp, #0x8]
0171d2d8  cmp w8,#0x1
0171d2dc  b.lt 0x0171d2ec
0171d2e0  ldr x0,[sp]
0171d2e4  mvn w1,w8
0171d2e8  bl 0x0124c4d0
0171d2ec  ldp x29,x30,[sp, #0x30]
0171d2f0  ldp x20,x19,[sp, #0x20]
0171d2f4  add sp,sp,#0x40
0171d2f8  ret
