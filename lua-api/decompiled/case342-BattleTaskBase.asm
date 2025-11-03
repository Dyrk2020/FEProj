// ===== case342-BattleTaskBase @ 016cf19c =====
// existing function case342-BattleTaskBase
016cf19c  sub sp,sp,#0x50
016cf1a0  str x21,[sp, #0x20]
016cf1a4  stp x20,x19,[sp, #0x30]
016cf1a8  stp x29,x30,[sp, #0x40]
016cf1ac  add x29,sp,#0x40
016cf1b0  adrp x1,0x174a000
016cf1b4  add x1,x1,#0x87c
016cf1b8  mov x19,x0
016cf1bc  bl 0x0124ba40
016cf1c0  adrp x1,0x575d000
016cf1c4  add x1,x1,#0xa06
016cf1c8  mov x0,x19
016cf1cc  str x19,[sp]
016cf1d0  bl 0x01251aa0
016cf1d4  mov w8,#0x1
016cf1d8  str w8,[sp, #0x8]
016cf1dc  mov x0,sp
016cf1e0  bl 0x0174aa04
016cf1e4  adrp x1,0x5763000
016cf1e8  adrp x3,0x736d000
016cf1ec  add x1,x1,#0x9d0
016cf1f0  add x3,x3,#0x101
016cf1f4  add x0,sp,#0x10
016cf1f8  mov x2,sp
016cf1fc  bl 0x018149ec
016cf200  adrp x1,0x5763000
016cf204  adrp x2,0x1814000
016cf208  adrp x4,0x1814000
016cf20c  add x1,x1,#0x9df
016cf210  add x2,x2,#0x9d4
016cf214  add x4,x4,#0x9dc
016cf218  add x0,sp,#0x10
016cf21c  mov x3,xzr
016cf220  mov x5,xzr
016cf224  bl 0x018147ec
016cf228  mov x19,x0
016cf22c  ldr x0,[x19]
016cf230  mov w1,#0x10
016cf234  bl 0x0124cba0
016cf238  adrp x8,0x1814000
016cf23c  dup v0.2D,xzr
016cf240  add x8,x8,#0x9e4
016cf244  mov v0.D[0x0],x8
016cf248  str q0,[x0]
016cf24c  ldr x0,[x19]
016cf250  adrp x1,0x1814000
016cf254  add x1,x1,#0xfd0
016cf258  mov w2,#0x1
016cf25c  bl 0x0124ec90
016cf260  ldr x0,[x19]
016cf264  mov w1,#0xffffffff
016cf268  bl 0x0124c0c0
016cf26c  ldr x20,[x19]
016cf270  orr w1,wzr,#0xfffffffb
016cf274  mov w2,#0x6e7
016cf278  mov x0,x20
016cf27c  bl 0x0124a650
016cf280  orr w1,wzr,#0xfffffffe
016cf284  mov x0,x20
016cf288  bl 0x0124c0c0
016cf28c  orr w1,wzr,#0xfffffffe
016cf290  mov x0,x20
016cf294  bl 0x0124e920
016cf298  mov w21,w0
016cf29c  adrp x1,0x5763000
016cf2a0  add x1,x1,#0x344
016cf2a4  mov x0,x20
016cf2a8  bl 0x0124f120
016cf2ac  orr w1,wzr,#0xfffffffe
016cf2b0  mov w2,#0x1
016cf2b4  mov x0,x20
016cf2b8  bl 0x0124cfc0
016cf2bc  mov x0,x20
016cf2c0  mov w1,w21
016cf2c4  bl 0x0124e060
016cf2c8  orr w1,wzr,#0xfffffffd
016cf2cc  mov x0,x20
016cf2d0  bl 0x0124c4d0
016cf2d4  ldr x20,[x19]
016cf2d8  orr w1,wzr,#0xfffffffd
016cf2dc  mov w2,#0x6e7
016cf2e0  mov x0,x20
016cf2e4  bl 0x0124a650
016cf2e8  orr w1,wzr,#0xfffffffe
016cf2ec  mov x0,x20
016cf2f0  bl 0x0124c0c0
016cf2f4  orr w1,wzr,#0xfffffffe
016cf2f8  mov x0,x20
016cf2fc  bl 0x0124e920
016cf300  mov w21,w0
016cf304  adrp x1,0x5763000
016cf308  add x1,x1,#0x344
016cf30c  mov x0,x20
016cf310  bl 0x0124f120
016cf314  orr w1,wzr,#0xfffffffe
016cf318  mov w2,#0x1
016cf31c  mov x0,x20
016cf320  bl 0x0124cfc0
016cf324  mov x0,x20
016cf328  mov w1,w21
016cf32c  bl 0x0124e060
016cf330  orr w1,wzr,#0xfffffffd
016cf334  mov x0,x20
016cf338  bl 0x0124c4d0
016cf33c  ldr w8,[x19, #0x8]
016cf340  ldr x0,[x19]
016cf344  sub w8,w8,#0x3
016cf348  str w8,[x19, #0x8]
016cf34c  orr w1,wzr,#0xfffffffc
016cf350  bl 0x0124c4d0
016cf354  ldr w8,[x19, #0x8]
016cf358  ldr x0,[x19]
016cf35c  str wzr,[x19, #0x8]
016cf360  cmp w8,#0x1
016cf364  b.lt 0x016cf370
016cf368  mvn w1,w8
016cf36c  bl 0x0124c4d0
016cf370  ldr w8,[sp, #0x18]
016cf374  cmp w8,#0x1
016cf378  b.lt 0x016cf388
016cf37c  ldr x0,[sp, #0x10]
016cf380  mvn w1,w8
016cf384  bl 0x0124c4d0
016cf388  ldr w8,[sp, #0x8]
016cf38c  cmp w8,#0x1
016cf390  b.lt 0x016cf3a0
016cf394  ldr x0,[sp]
016cf398  mvn w1,w8
016cf39c  bl 0x0124c4d0
016cf3a0  ldp x29,x30,[sp, #0x40]
016cf3a4  ldp x20,x19,[sp, #0x30]
016cf3a8  ldr x21,[sp, #0x20]
016cf3ac  add sp,sp,#0x50
016cf3b0  ret
