// ===== case335-PlayerManager @ 016cd88c =====
// existing function case335-PlayerManager
016cd88c  sub sp,sp,#0x40
016cd890  stp x20,x19,[sp, #0x20]
016cd894  stp x29,x30,[sp, #0x30]
016cd898  add x29,sp,#0x30
016cd89c  adrp x1,0x174a000
016cd8a0  add x1,x1,#0x87c
016cd8a4  mov x19,x0
016cd8a8  bl 0x0124ba40
016cd8ac  adrp x1,0x575d000
016cd8b0  add x1,x1,#0xa06
016cd8b4  mov x0,x19
016cd8b8  str x19,[sp]
016cd8bc  bl 0x01251aa0
016cd8c0  mov w8,#0x1
016cd8c4  str w8,[sp, #0x8]
016cd8c8  mov x0,sp
016cd8cc  bl 0x0174aa04
016cd8d0  adrp x1,0x5763000
016cd8d4  adrp x3,0x736d000
016cd8d8  add x1,x1,#0x8b8
016cd8dc  add x3,x3,#0x101
016cd8e0  add x0,sp,#0x10
016cd8e4  mov x2,sp
016cd8e8  bl 0x018117bc
016cd8ec  ldr x0,[sp, #0x10]
016cd8f0  mov w1,#0x10
016cd8f4  bl 0x0124cba0
016cd8f8  adrp x8,0x1811000
016cd8fc  dup v0.2D,xzr
016cd900  add x8,x8,#0x7b4
016cd904  mov v0.D[0x0],x8
016cd908  str q0,[x0]
016cd90c  ldr x0,[sp, #0x10]
016cd910  adrp x1,0x1811000
016cd914  add x1,x1,#0xb80
016cd918  mov w2,#0x1
016cd91c  bl 0x0124ec90
016cd920  ldr x0,[sp, #0x10]
016cd924  mov w1,#0xffffffff
016cd928  bl 0x0124c0c0
016cd92c  ldr x19,[sp, #0x10]
016cd930  orr w1,wzr,#0xfffffffb
016cd934  mov w2,#0x6e7
016cd938  mov x0,x19
016cd93c  bl 0x0124a650
016cd940  orr w1,wzr,#0xfffffffe
016cd944  mov x0,x19
016cd948  bl 0x0124c0c0
016cd94c  orr w1,wzr,#0xfffffffe
016cd950  mov x0,x19
016cd954  bl 0x0124e920
016cd958  mov w20,w0
016cd95c  adrp x1,0x5763000
016cd960  add x1,x1,#0x8c6
016cd964  mov x0,x19
016cd968  bl 0x0124f120
016cd96c  orr w1,wzr,#0xfffffffe
016cd970  mov w2,#0x1
016cd974  mov x0,x19
016cd978  bl 0x0124cfc0
016cd97c  mov x0,x19
016cd980  mov w1,w20
016cd984  bl 0x0124e060
016cd988  orr w1,wzr,#0xfffffffd
016cd98c  mov x0,x19
016cd990  bl 0x0124c4d0
016cd994  ldr x19,[sp, #0x10]
016cd998  orr w1,wzr,#0xfffffffd
016cd99c  mov w2,#0x6e7
016cd9a0  mov x0,x19
016cd9a4  bl 0x0124a650
016cd9a8  orr w1,wzr,#0xfffffffe
016cd9ac  mov x0,x19
016cd9b0  bl 0x0124c0c0
016cd9b4  orr w1,wzr,#0xfffffffe
016cd9b8  mov x0,x19
016cd9bc  bl 0x0124e920
016cd9c0  mov w20,w0
016cd9c4  adrp x1,0x5763000
016cd9c8  add x1,x1,#0x8c6
016cd9cc  mov x0,x19
016cd9d0  bl 0x0124f120
016cd9d4  orr w1,wzr,#0xfffffffe
016cd9d8  mov w2,#0x1
016cd9dc  mov x0,x19
016cd9e0  bl 0x0124cfc0
016cd9e4  mov x0,x19
016cd9e8  mov w1,w20
016cd9ec  bl 0x0124e060
016cd9f0  orr w1,wzr,#0xfffffffd
016cd9f4  mov x0,x19
016cd9f8  bl 0x0124c4d0
016cd9fc  ldr w8,[sp, #0x18]
016cda00  ldr x0,[sp, #0x10]
016cda04  sub w8,w8,#0x3
016cda08  str w8,[sp, #0x18]
016cda0c  orr w1,wzr,#0xfffffffc
016cda10  bl 0x0124c4d0
016cda14  ldr w8,[sp, #0x18]
016cda18  ldr x0,[sp, #0x10]
016cda1c  str wzr,[sp, #0x18]
016cda20  cmp w8,#0x1
016cda24  b.lt 0x016cda48
016cda28  mvn w1,w8
016cda2c  bl 0x0124c4d0
016cda30  ldr w8,[sp, #0x18]
016cda34  cmp w8,#0x1
016cda38  b.lt 0x016cda48
016cda3c  ldr x0,[sp, #0x10]
016cda40  mvn w1,w8
016cda44  bl 0x0124c4d0
016cda48  ldr w8,[sp, #0x8]
016cda4c  cmp w8,#0x1
016cda50  b.lt 0x016cda60
016cda54  ldr x0,[sp]
016cda58  mvn w1,w8
016cda5c  bl 0x0124c4d0
016cda60  ldp x29,x30,[sp, #0x30]
016cda64  ldp x20,x19,[sp, #0x20]
016cda68  add sp,sp,#0x40
016cda6c  ret
