// ===== case420-RemakeMgr @ 016e51c4 =====
// existing function case420-RemakeMgr
016e51c4  sub sp,sp,#0x40
016e51c8  stp x20,x19,[sp, #0x20]
016e51cc  stp x29,x30,[sp, #0x30]
016e51d0  add x29,sp,#0x30
016e51d4  adrp x1,0x174a000
016e51d8  add x1,x1,#0x87c
016e51dc  mov x19,x0
016e51e0  bl 0x0124ba40
016e51e4  adrp x1,0x575d000
016e51e8  add x1,x1,#0xa06
016e51ec  mov x0,x19
016e51f0  str x19,[sp]
016e51f4  bl 0x01251aa0
016e51f8  mov w8,#0x1
016e51fc  str w8,[sp, #0x8]
016e5200  mov x0,sp
016e5204  bl 0x0174aa04
016e5208  adrp x1,0x5766000
016e520c  adrp x3,0x736d000
016e5210  add x1,x1,#0x4a2
016e5214  add x3,x3,#0x101
016e5218  add x0,sp,#0x10
016e521c  mov x2,sp
016e5220  bl 0x0185cc84
016e5224  ldr x0,[sp, #0x10]
016e5228  mov w1,#0x10
016e522c  bl 0x0124cba0
016e5230  adrp x8,0x185c000
016e5234  dup v0.2D,xzr
016e5238  add x8,x8,#0xa60
016e523c  mov v0.D[0x0],x8
016e5240  str q0,[x0]
016e5244  ldr x0,[sp, #0x10]
016e5248  adrp x1,0x185d000
016e524c  add x1,x1,#0x48
016e5250  mov w2,#0x1
016e5254  bl 0x0124ec90
016e5258  ldr x0,[sp, #0x10]
016e525c  mov w1,#0xffffffff
016e5260  bl 0x0124c0c0
016e5264  ldr x19,[sp, #0x10]
016e5268  orr w1,wzr,#0xfffffffb
016e526c  mov w2,#0x6e7
016e5270  mov x0,x19
016e5274  bl 0x0124a650
016e5278  orr w1,wzr,#0xfffffffe
016e527c  mov x0,x19
016e5280  bl 0x0124c0c0
016e5284  orr w1,wzr,#0xfffffffe
016e5288  mov x0,x19
016e528c  bl 0x0124e920
016e5290  mov w20,w0
016e5294  adrp x1,0x5766000
016e5298  add x1,x1,#0x4ac
016e529c  mov x0,x19
016e52a0  bl 0x0124f120
016e52a4  orr w1,wzr,#0xfffffffe
016e52a8  mov w2,#0x1
016e52ac  mov x0,x19
016e52b0  bl 0x0124cfc0
016e52b4  mov x0,x19
016e52b8  mov w1,w20
016e52bc  bl 0x0124e060
016e52c0  orr w1,wzr,#0xfffffffd
016e52c4  mov x0,x19
016e52c8  bl 0x0124c4d0
016e52cc  ldr x19,[sp, #0x10]
016e52d0  orr w1,wzr,#0xfffffffd
016e52d4  mov w2,#0x6e7
016e52d8  mov x0,x19
016e52dc  bl 0x0124a650
016e52e0  orr w1,wzr,#0xfffffffe
016e52e4  mov x0,x19
016e52e8  bl 0x0124c0c0
016e52ec  orr w1,wzr,#0xfffffffe
016e52f0  mov x0,x19
016e52f4  bl 0x0124e920
016e52f8  mov w20,w0
016e52fc  adrp x1,0x5766000
016e5300  add x1,x1,#0x4ac
016e5304  mov x0,x19
016e5308  bl 0x0124f120
016e530c  orr w1,wzr,#0xfffffffe
016e5310  mov w2,#0x1
016e5314  mov x0,x19
016e5318  bl 0x0124cfc0
016e531c  mov x0,x19
016e5320  mov w1,w20
016e5324  bl 0x0124e060
016e5328  orr w1,wzr,#0xfffffffd
016e532c  mov x0,x19
016e5330  bl 0x0124c4d0
016e5334  adrp x1,0x5766000
016e5338  adrp x2,0x185c000
016e533c  adrp x4,0x185c000
016e5340  add x1,x1,#0x4bf
016e5344  add x2,x2,#0xc50
016e5348  add x4,x4,#0xc58
016e534c  add x0,sp,#0x10
016e5350  mov x3,xzr
016e5354  mov x5,xzr
016e5358  bl 0x0185ca68
016e535c  adrp x1,0x5766000
016e5360  adrp x2,0x185c000
016e5364  adrp x4,0x185c000
016e5368  add x1,x1,#0x4d1
016e536c  add x2,x2,#0xc60
016e5370  add x4,x4,#0xc68
016e5374  mov x3,xzr
016e5378  mov x5,xzr
016e537c  bl 0x0185ca68
016e5380  mov x19,x0
016e5384  ldr w8,[x19, #0x8]
016e5388  ldr x0,[x19]
016e538c  sub w8,w8,#0x3
016e5390  str w8,[x19, #0x8]
016e5394  orr w1,wzr,#0xfffffffc
016e5398  bl 0x0124c4d0
016e539c  ldr w8,[x19, #0x8]
016e53a0  ldr x0,[x19]
016e53a4  str wzr,[x19, #0x8]
016e53a8  cmp w8,#0x1
016e53ac  b.lt 0x016e53b8
016e53b0  mvn w1,w8
016e53b4  bl 0x0124c4d0
016e53b8  ldr w8,[sp, #0x18]
016e53bc  cmp w8,#0x1
016e53c0  b.lt 0x016e53d0
016e53c4  ldr x0,[sp, #0x10]
016e53c8  mvn w1,w8
016e53cc  bl 0x0124c4d0
016e53d0  ldr w8,[sp, #0x8]
016e53d4  cmp w8,#0x1
016e53d8  b.lt 0x016e53e8
016e53dc  ldr x0,[sp]
016e53e0  mvn w1,w8
016e53e4  bl 0x0124c4d0
016e53e8  ldp x29,x30,[sp, #0x30]
016e53ec  ldp x20,x19,[sp, #0x20]
016e53f0  add sp,sp,#0x40
016e53f4  ret
