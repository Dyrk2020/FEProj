// ===== case259-BulletAssetObject @ 016b80ec =====
// existing function case259-BulletAssetObject
016b80ec  sub sp,sp,#0x50
016b80f0  str x21,[sp, #0x20]
016b80f4  stp x20,x19,[sp, #0x30]
016b80f8  stp x29,x30,[sp, #0x40]
016b80fc  add x29,sp,#0x40
016b8100  adrp x1,0x174a000
016b8104  add x1,x1,#0x87c
016b8108  mov x19,x0
016b810c  bl 0x0124ba40
016b8110  adrp x1,0x575d000
016b8114  add x1,x1,#0xa06
016b8118  mov x0,x19
016b811c  str x19,[sp]
016b8120  bl 0x01251aa0
016b8124  mov w8,#0x1
016b8128  str w8,[sp, #0x8]
016b812c  mov x0,sp
016b8130  bl 0x0174aa04
016b8134  adrp x1,0x5761000
016b8138  adrp x3,0x736d000
016b813c  add x1,x1,#0x615
016b8140  add x3,x3,#0x101
016b8144  add x0,sp,#0x10
016b8148  mov x2,sp
016b814c  bl 0x017dc004
016b8150  adrp x1,0x575d000
016b8154  adrp x2,0x17db000
016b8158  adrp x4,0x17db000
016b815c  add x1,x1,#0xa00
016b8160  add x2,x2,#0xfec
016b8164  add x4,x4,#0xff4
016b8168  add x0,sp,#0x10
016b816c  mov x3,xzr
016b8170  mov x5,xzr
016b8174  bl 0x017dbe04
016b8178  mov x19,x0
016b817c  ldr x0,[x19]
016b8180  mov w1,#0x10
016b8184  bl 0x0124cba0
016b8188  adrp x8,0x17db000
016b818c  dup v0.2D,xzr
016b8190  add x8,x8,#0xffc
016b8194  mov v0.D[0x0],x8
016b8198  str q0,[x0]
016b819c  ldr x0,[x19]
016b81a0  adrp x1,0x17dc000
016b81a4  add x1,x1,#0x5e8
016b81a8  mov w2,#0x1
016b81ac  bl 0x0124ec90
016b81b0  ldr x0,[x19]
016b81b4  mov w1,#0xffffffff
016b81b8  bl 0x0124c0c0
016b81bc  ldr x20,[x19]
016b81c0  orr w1,wzr,#0xfffffffb
016b81c4  mov w2,#0x6e7
016b81c8  mov x0,x20
016b81cc  bl 0x0124a650
016b81d0  orr w1,wzr,#0xfffffffe
016b81d4  mov x0,x20
016b81d8  bl 0x0124c0c0
016b81dc  orr w1,wzr,#0xfffffffe
016b81e0  mov x0,x20
016b81e4  bl 0x0124e920
016b81e8  mov w21,w0
016b81ec  adrp x1,0x5761000
016b81f0  add x1,x1,#0x627
016b81f4  mov x0,x20
016b81f8  bl 0x0124f120
016b81fc  orr w1,wzr,#0xfffffffe
016b8200  mov w2,#0x1
016b8204  mov x0,x20
016b8208  bl 0x0124cfc0
016b820c  mov x0,x20
016b8210  mov w1,w21
016b8214  bl 0x0124e060
016b8218  orr w1,wzr,#0xfffffffd
016b821c  mov x0,x20
016b8220  bl 0x0124c4d0
016b8224  ldr x20,[x19]
016b8228  orr w1,wzr,#0xfffffffd
016b822c  mov w2,#0x6e7
016b8230  mov x0,x20
016b8234  bl 0x0124a650
016b8238  orr w1,wzr,#0xfffffffe
016b823c  mov x0,x20
016b8240  bl 0x0124c0c0
016b8244  orr w1,wzr,#0xfffffffe
016b8248  mov x0,x20
016b824c  bl 0x0124e920
016b8250  mov w21,w0
016b8254  adrp x1,0x5761000
016b8258  add x1,x1,#0x627
016b825c  mov x0,x20
016b8260  bl 0x0124f120
016b8264  orr w1,wzr,#0xfffffffe
016b8268  mov w2,#0x1
016b826c  mov x0,x20
016b8270  bl 0x0124cfc0
016b8274  mov x0,x20
016b8278  mov w1,w21
016b827c  bl 0x0124e060
016b8280  orr w1,wzr,#0xfffffffd
016b8284  mov x0,x20
016b8288  bl 0x0124c4d0
016b828c  ldr w8,[x19, #0x8]
016b8290  ldr x0,[x19]
016b8294  sub w8,w8,#0x3
016b8298  str w8,[x19, #0x8]
016b829c  orr w1,wzr,#0xfffffffc
016b82a0  bl 0x0124c4d0
016b82a4  ldr w8,[x19, #0x8]
016b82a8  ldr x0,[x19]
016b82ac  str wzr,[x19, #0x8]
016b82b0  cmp w8,#0x1
016b82b4  b.lt 0x016b82c0
016b82b8  mvn w1,w8
016b82bc  bl 0x0124c4d0
016b82c0  ldr w8,[sp, #0x18]
016b82c4  cmp w8,#0x1
016b82c8  b.lt 0x016b82d8
016b82cc  ldr x0,[sp, #0x10]
016b82d0  mvn w1,w8
016b82d4  bl 0x0124c4d0
016b82d8  ldr w8,[sp, #0x8]
016b82dc  cmp w8,#0x1
016b82e0  b.lt 0x016b82f0
016b82e4  ldr x0,[sp]
016b82e8  mvn w1,w8
016b82ec  bl 0x0124c4d0
016b82f0  ldp x29,x30,[sp, #0x40]
016b82f4  ldp x20,x19,[sp, #0x30]
016b82f8  ldr x21,[sp, #0x20]
016b82fc  add sp,sp,#0x50
016b8300  ret
