// ===== case453-MapGrassWardPointMgr @ 016ea130 =====
// existing function case453-MapGrassWardPointMgr
016ea130  sub sp,sp,#0x40
016ea134  stp x20,x19,[sp, #0x20]
016ea138  stp x29,x30,[sp, #0x30]
016ea13c  add x29,sp,#0x30
016ea140  adrp x1,0x174a000
016ea144  add x1,x1,#0x87c
016ea148  mov x19,x0
016ea14c  bl 0x0124ba40
016ea150  adrp x1,0x575d000
016ea154  add x1,x1,#0xa06
016ea158  mov x0,x19
016ea15c  str x19,[sp]
016ea160  bl 0x01251aa0
016ea164  mov w8,#0x1
016ea168  str w8,[sp, #0x8]
016ea16c  mov x0,sp
016ea170  bl 0x0174aa04
016ea174  adrp x1,0x5766000
016ea178  adrp x3,0x736d000
016ea17c  add x1,x1,#0xabe
016ea180  add x3,x3,#0x101
016ea184  add x0,sp,#0x10
016ea188  mov x2,sp
016ea18c  bl 0x0186e4e4
016ea190  ldr x0,[sp, #0x10]
016ea194  mov w1,#0x10
016ea198  bl 0x0124cba0
016ea19c  adrp x8,0x186e000
016ea1a0  dup v0.2D,xzr
016ea1a4  add x8,x8,#0x4dc
016ea1a8  mov v0.D[0x0],x8
016ea1ac  str q0,[x0]
016ea1b0  ldr x0,[sp, #0x10]
016ea1b4  adrp x1,0x186e000
016ea1b8  add x1,x1,#0x8a8
016ea1bc  mov w2,#0x1
016ea1c0  bl 0x0124ec90
016ea1c4  ldr x0,[sp, #0x10]
016ea1c8  mov w1,#0xffffffff
016ea1cc  bl 0x0124c0c0
016ea1d0  ldr x19,[sp, #0x10]
016ea1d4  orr w1,wzr,#0xfffffffb
016ea1d8  mov w2,#0x6e7
016ea1dc  mov x0,x19
016ea1e0  bl 0x0124a650
016ea1e4  orr w1,wzr,#0xfffffffe
016ea1e8  mov x0,x19
016ea1ec  bl 0x0124c0c0
016ea1f0  orr w1,wzr,#0xfffffffe
016ea1f4  mov x0,x19
016ea1f8  bl 0x0124e920
016ea1fc  mov w20,w0
016ea200  adrp x1,0x5766000
016ea204  add x1,x1,#0xad3
016ea208  mov x0,x19
016ea20c  bl 0x0124f120
016ea210  orr w1,wzr,#0xfffffffe
016ea214  mov w2,#0x1
016ea218  mov x0,x19
016ea21c  bl 0x0124cfc0
016ea220  mov x0,x19
016ea224  mov w1,w20
016ea228  bl 0x0124e060
016ea22c  orr w1,wzr,#0xfffffffd
016ea230  mov x0,x19
016ea234  bl 0x0124c4d0
016ea238  ldr x19,[sp, #0x10]
016ea23c  orr w1,wzr,#0xfffffffd
016ea240  mov w2,#0x6e7
016ea244  mov x0,x19
016ea248  bl 0x0124a650
016ea24c  orr w1,wzr,#0xfffffffe
016ea250  mov x0,x19
016ea254  bl 0x0124c0c0
016ea258  orr w1,wzr,#0xfffffffe
016ea25c  mov x0,x19
016ea260  bl 0x0124e920
016ea264  mov w20,w0
016ea268  adrp x1,0x5766000
016ea26c  add x1,x1,#0xad3
016ea270  mov x0,x19
016ea274  bl 0x0124f120
016ea278  orr w1,wzr,#0xfffffffe
016ea27c  mov w2,#0x1
016ea280  mov x0,x19
016ea284  bl 0x0124cfc0
016ea288  mov x0,x19
016ea28c  mov w1,w20
016ea290  bl 0x0124e060
016ea294  orr w1,wzr,#0xfffffffd
016ea298  mov x0,x19
016ea29c  bl 0x0124c4d0
016ea2a0  ldr w8,[sp, #0x18]
016ea2a4  ldr x0,[sp, #0x10]
016ea2a8  sub w8,w8,#0x3
016ea2ac  str w8,[sp, #0x18]
016ea2b0  orr w1,wzr,#0xfffffffc
016ea2b4  bl 0x0124c4d0
016ea2b8  ldr w8,[sp, #0x18]
016ea2bc  ldr x0,[sp, #0x10]
016ea2c0  str wzr,[sp, #0x18]
016ea2c4  cmp w8,#0x1
016ea2c8  b.lt 0x016ea2ec
016ea2cc  mvn w1,w8
016ea2d0  bl 0x0124c4d0
016ea2d4  ldr w8,[sp, #0x18]
016ea2d8  cmp w8,#0x1
016ea2dc  b.lt 0x016ea2ec
016ea2e0  ldr x0,[sp, #0x10]
016ea2e4  mvn w1,w8
016ea2e8  bl 0x0124c4d0
016ea2ec  ldr w8,[sp, #0x8]
016ea2f0  cmp w8,#0x1
016ea2f4  b.lt 0x016ea304
016ea2f8  ldr x0,[sp]
016ea2fc  mvn w1,w8
016ea300  bl 0x0124c4d0
016ea304  ldp x29,x30,[sp, #0x30]
016ea308  ldp x20,x19,[sp, #0x20]
016ea30c  add sp,sp,#0x40
016ea310  ret
