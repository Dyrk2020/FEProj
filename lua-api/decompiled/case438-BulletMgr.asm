// ===== case438-BulletMgr @ 016e7fe8 =====
// existing function case438-BulletMgr
016e7fe8  sub sp,sp,#0x50
016e7fec  str x21,[sp, #0x20]
016e7ff0  stp x20,x19,[sp, #0x30]
016e7ff4  stp x29,x30,[sp, #0x40]
016e7ff8  add x29,sp,#0x40
016e7ffc  adrp x1,0x174a000
016e8000  add x1,x1,#0x87c
016e8004  mov x19,x0
016e8008  bl 0x0124ba40
016e800c  adrp x1,0x575d000
016e8010  add x1,x1,#0xa06
016e8014  mov x0,x19
016e8018  str x19,[sp]
016e801c  bl 0x01251aa0
016e8020  mov w8,#0x1
016e8024  str w8,[sp, #0x8]
016e8028  mov x0,sp
016e802c  bl 0x0174aa04
016e8030  adrp x1,0x5766000
016e8034  adrp x3,0x736d000
016e8038  add x1,x1,#0x899
016e803c  add x3,x3,#0x101
016e8040  add x0,sp,#0x10
016e8044  mov x2,sp
016e8048  bl 0x018662a0
016e804c  adrp x1,0x5766000
016e8050  adrp x2,0x1866000
016e8054  adrp x4,0x1866000
016e8058  add x1,x1,#0x8a3
016e805c  add x2,x2,#0x268
016e8060  add x4,x4,#0x270
016e8064  add x0,sp,#0x10
016e8068  mov x3,xzr
016e806c  mov x5,xzr
016e8070  bl 0x01866080
016e8074  adrp x1,0x5766000
016e8078  adrp x2,0x1866000
016e807c  adrp x4,0x1866000
016e8080  add x1,x1,#0x8b1
016e8084  add x2,x2,#0x278
016e8088  add x4,x4,#0x280
016e808c  mov x3,xzr
016e8090  mov x5,xzr
016e8094  bl 0x01866080
016e8098  mov x19,x0
016e809c  ldr x0,[x19]
016e80a0  mov w1,#0x10
016e80a4  bl 0x0124cba0
016e80a8  adrp x8,0x1866000
016e80ac  dup v0.2D,xzr
016e80b0  add x8,x8,#0x288
016e80b4  mov v0.D[0x0],x8
016e80b8  str q0,[x0]
016e80bc  ldr x0,[x19]
016e80c0  adrp x1,0x1866000
016e80c4  add x1,x1,#0x884
016e80c8  mov w2,#0x1
016e80cc  bl 0x0124ec90
016e80d0  ldr x0,[x19]
016e80d4  mov w1,#0xffffffff
016e80d8  bl 0x0124c0c0
016e80dc  ldr x20,[x19]
016e80e0  orr w1,wzr,#0xfffffffb
016e80e4  mov w2,#0x6e7
016e80e8  mov x0,x20
016e80ec  bl 0x0124a650
016e80f0  orr w1,wzr,#0xfffffffe
016e80f4  mov x0,x20
016e80f8  bl 0x0124c0c0
016e80fc  orr w1,wzr,#0xfffffffe
016e8100  mov x0,x20
016e8104  bl 0x0124e920
016e8108  mov w21,w0
016e810c  adrp x1,0x5766000
016e8110  add x1,x1,#0x8bd
016e8114  mov x0,x20
016e8118  bl 0x0124f120
016e811c  orr w1,wzr,#0xfffffffe
016e8120  mov w2,#0x1
016e8124  mov x0,x20
016e8128  bl 0x0124cfc0
016e812c  mov x0,x20
016e8130  mov w1,w21
016e8134  bl 0x0124e060
016e8138  orr w1,wzr,#0xfffffffd
016e813c  mov x0,x20
016e8140  bl 0x0124c4d0
016e8144  ldr x20,[x19]
016e8148  orr w1,wzr,#0xfffffffd
016e814c  mov w2,#0x6e7
016e8150  mov x0,x20
016e8154  bl 0x0124a650
016e8158  orr w1,wzr,#0xfffffffe
016e815c  mov x0,x20
016e8160  bl 0x0124c0c0
016e8164  orr w1,wzr,#0xfffffffe
016e8168  mov x0,x20
016e816c  bl 0x0124e920
016e8170  mov w21,w0
016e8174  adrp x1,0x5766000
016e8178  add x1,x1,#0x8bd
016e817c  mov x0,x20
016e8180  bl 0x0124f120
016e8184  orr w1,wzr,#0xfffffffe
016e8188  mov w2,#0x1
016e818c  mov x0,x20
016e8190  bl 0x0124cfc0
016e8194  mov x0,x20
016e8198  mov w1,w21
016e819c  bl 0x0124e060
016e81a0  orr w1,wzr,#0xfffffffd
016e81a4  mov x0,x20
016e81a8  bl 0x0124c4d0
016e81ac  adrp x1,0x5766000
016e81b0  adrp x2,0x1866000
016e81b4  adrp x4,0x1866000
016e81b8  add x1,x1,#0x8ca
016e81bc  add x2,x2,#0x290
016e81c0  add x4,x4,#0x298
016e81c4  mov x0,x19
016e81c8  mov x3,xzr
016e81cc  mov x5,xzr
016e81d0  bl 0x01866080
016e81d4  mov x19,x0
016e81d8  ldr w8,[x19, #0x8]
016e81dc  ldr x0,[x19]
016e81e0  sub w8,w8,#0x3
016e81e4  str w8,[x19, #0x8]
016e81e8  orr w1,wzr,#0xfffffffc
016e81ec  bl 0x0124c4d0
016e81f0  ldr w8,[x19, #0x8]
016e81f4  ldr x0,[x19]
016e81f8  str wzr,[x19, #0x8]
016e81fc  cmp w8,#0x1
016e8200  b.lt 0x016e820c
016e8204  mvn w1,w8
016e8208  bl 0x0124c4d0
016e820c  ldr w8,[sp, #0x18]
016e8210  cmp w8,#0x1
016e8214  b.lt 0x016e8224
016e8218  ldr x0,[sp, #0x10]
016e821c  mvn w1,w8
016e8220  bl 0x0124c4d0
016e8224  ldr w8,[sp, #0x8]
016e8228  cmp w8,#0x1
016e822c  b.lt 0x016e823c
016e8230  ldr x0,[sp]
016e8234  mvn w1,w8
016e8238  bl 0x0124c4d0
016e823c  ldp x29,x30,[sp, #0x40]
016e8240  ldp x20,x19,[sp, #0x30]
016e8244  ldr x21,[sp, #0x20]
016e8248  add sp,sp,#0x50
016e824c  ret
