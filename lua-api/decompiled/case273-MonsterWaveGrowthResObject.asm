// ===== case273-MonsterWaveGrowthResObject @ 016ba108 =====
// existing function case273-MonsterWaveGrowthResObject
016ba108  sub sp,sp,#0x40
016ba10c  stp x20,x19,[sp, #0x20]
016ba110  stp x29,x30,[sp, #0x30]
016ba114  add x29,sp,#0x30
016ba118  adrp x1,0x174a000
016ba11c  add x1,x1,#0x87c
016ba120  mov x19,x0
016ba124  bl 0x0124ba40
016ba128  adrp x1,0x575d000
016ba12c  add x1,x1,#0xa06
016ba130  mov x0,x19
016ba134  str x19,[sp]
016ba138  bl 0x01251aa0
016ba13c  mov w8,#0x1
016ba140  str w8,[sp, #0x8]
016ba144  mov x0,sp
016ba148  bl 0x0174aa04
016ba14c  adrp x1,0x5761000
016ba150  adrp x3,0x736d000
016ba154  add x1,x1,#0x8ae
016ba158  add x3,x3,#0x101
016ba15c  add x0,sp,#0x10
016ba160  mov x2,sp
016ba164  bl 0x017e49c0
016ba168  ldr x0,[sp, #0x10]
016ba16c  mov w1,#0x10
016ba170  bl 0x0124cba0
016ba174  adrp x8,0x17e4000
016ba178  dup v0.2D,xzr
016ba17c  add x8,x8,#0x9b8
016ba180  mov v0.D[0x0],x8
016ba184  str q0,[x0]
016ba188  ldr x0,[sp, #0x10]
016ba18c  adrp x1,0x17e4000
016ba190  add x1,x1,#0xd84
016ba194  mov w2,#0x1
016ba198  bl 0x0124ec90
016ba19c  ldr x0,[sp, #0x10]
016ba1a0  mov w1,#0xffffffff
016ba1a4  bl 0x0124c0c0
016ba1a8  ldr x19,[sp, #0x10]
016ba1ac  orr w1,wzr,#0xfffffffb
016ba1b0  mov w2,#0x6e7
016ba1b4  mov x0,x19
016ba1b8  bl 0x0124a650
016ba1bc  orr w1,wzr,#0xfffffffe
016ba1c0  mov x0,x19
016ba1c4  bl 0x0124c0c0
016ba1c8  orr w1,wzr,#0xfffffffe
016ba1cc  mov x0,x19
016ba1d0  bl 0x0124e920
016ba1d4  mov w20,w0
016ba1d8  adrp x1,0x5761000
016ba1dc  add x1,x1,#0x8c9
016ba1e0  mov x0,x19
016ba1e4  bl 0x0124f120
016ba1e8  orr w1,wzr,#0xfffffffe
016ba1ec  mov w2,#0x1
016ba1f0  mov x0,x19
016ba1f4  bl 0x0124cfc0
016ba1f8  mov x0,x19
016ba1fc  mov w1,w20
016ba200  bl 0x0124e060
016ba204  orr w1,wzr,#0xfffffffd
016ba208  mov x0,x19
016ba20c  bl 0x0124c4d0
016ba210  ldr x19,[sp, #0x10]
016ba214  orr w1,wzr,#0xfffffffd
016ba218  mov w2,#0x6e7
016ba21c  mov x0,x19
016ba220  bl 0x0124a650
016ba224  orr w1,wzr,#0xfffffffe
016ba228  mov x0,x19
016ba22c  bl 0x0124c0c0
016ba230  orr w1,wzr,#0xfffffffe
016ba234  mov x0,x19
016ba238  bl 0x0124e920
016ba23c  mov w20,w0
016ba240  adrp x1,0x5761000
016ba244  add x1,x1,#0x8c9
016ba248  mov x0,x19
016ba24c  bl 0x0124f120
016ba250  orr w1,wzr,#0xfffffffe
016ba254  mov w2,#0x1
016ba258  mov x0,x19
016ba25c  bl 0x0124cfc0
016ba260  mov x0,x19
016ba264  mov w1,w20
016ba268  bl 0x0124e060
016ba26c  orr w1,wzr,#0xfffffffd
016ba270  mov x0,x19
016ba274  bl 0x0124c4d0
016ba278  ldr w8,[sp, #0x18]
016ba27c  ldr x0,[sp, #0x10]
016ba280  sub w8,w8,#0x3
016ba284  str w8,[sp, #0x18]
016ba288  orr w1,wzr,#0xfffffffc
016ba28c  bl 0x0124c4d0
016ba290  ldr w8,[sp, #0x18]
016ba294  ldr x0,[sp, #0x10]
016ba298  str wzr,[sp, #0x18]
016ba29c  cmp w8,#0x1
016ba2a0  b.lt 0x016ba2c4
016ba2a4  mvn w1,w8
016ba2a8  bl 0x0124c4d0
016ba2ac  ldr w8,[sp, #0x18]
016ba2b0  cmp w8,#0x1
016ba2b4  b.lt 0x016ba2c4
016ba2b8  ldr x0,[sp, #0x10]
016ba2bc  mvn w1,w8
016ba2c0  bl 0x0124c4d0
016ba2c4  ldr w8,[sp, #0x8]
016ba2c8  cmp w8,#0x1
016ba2cc  b.lt 0x016ba2dc
016ba2d0  ldr x0,[sp]
016ba2d4  mvn w1,w8
016ba2d8  bl 0x0124c4d0
016ba2dc  ldp x29,x30,[sp, #0x30]
016ba2e0  ldp x20,x19,[sp, #0x20]
016ba2e4  add sp,sp,#0x40
016ba2e8  ret
