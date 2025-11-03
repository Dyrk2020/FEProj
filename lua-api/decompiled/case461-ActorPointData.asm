// ===== case461-ActorPointData @ 016ec054 =====
// existing function case461-ActorPointData
016ec054  sub sp,sp,#0x40
016ec058  stp x20,x19,[sp, #0x20]
016ec05c  stp x29,x30,[sp, #0x30]
016ec060  add x29,sp,#0x30
016ec064  adrp x1,0x174a000
016ec068  add x1,x1,#0x87c
016ec06c  mov x19,x0
016ec070  bl 0x0124ba40
016ec074  adrp x1,0x575d000
016ec078  add x1,x1,#0xa06
016ec07c  mov x0,x19
016ec080  str x19,[sp]
016ec084  bl 0x01251aa0
016ec088  mov w8,#0x1
016ec08c  str w8,[sp, #0x8]
016ec090  mov x0,sp
016ec094  bl 0x0174aa04
016ec098  adrp x1,0x5766000
016ec09c  adrp x3,0x736d000
016ec0a0  add x1,x1,#0xe94
016ec0a4  add x3,x3,#0x101
016ec0a8  add x0,sp,#0x10
016ec0ac  mov x2,sp
016ec0b0  bl 0x01873c38
016ec0b4  ldr x0,[sp, #0x10]
016ec0b8  mov w1,#0x10
016ec0bc  bl 0x0124cba0
016ec0c0  adrp x8,0x1873000
016ec0c4  dup v0.2D,xzr
016ec0c8  add x8,x8,#0xc30
016ec0cc  mov v0.D[0x0],x8
016ec0d0  str q0,[x0]
016ec0d4  ldr x0,[sp, #0x10]
016ec0d8  adrp x1,0x1873000
016ec0dc  add x1,x1,#0xffc
016ec0e0  mov w2,#0x1
016ec0e4  bl 0x0124ec90
016ec0e8  ldr x0,[sp, #0x10]
016ec0ec  mov w1,#0xffffffff
016ec0f0  bl 0x0124c0c0
016ec0f4  ldr x19,[sp, #0x10]
016ec0f8  orr w1,wzr,#0xfffffffb
016ec0fc  mov w2,#0x6e7
016ec100  mov x0,x19
016ec104  bl 0x0124a650
016ec108  orr w1,wzr,#0xfffffffe
016ec10c  mov x0,x19
016ec110  bl 0x0124c0c0
016ec114  orr w1,wzr,#0xfffffffe
016ec118  mov x0,x19
016ec11c  bl 0x0124e920
016ec120  mov w20,w0
016ec124  adrp x1,0x5766000
016ec128  add x1,x1,#0xea3
016ec12c  mov x0,x19
016ec130  bl 0x0124f120
016ec134  orr w1,wzr,#0xfffffffe
016ec138  mov w2,#0x1
016ec13c  mov x0,x19
016ec140  bl 0x0124cfc0
016ec144  mov x0,x19
016ec148  mov w1,w20
016ec14c  bl 0x0124e060
016ec150  orr w1,wzr,#0xfffffffd
016ec154  mov x0,x19
016ec158  bl 0x0124c4d0
016ec15c  ldr x19,[sp, #0x10]
016ec160  orr w1,wzr,#0xfffffffd
016ec164  mov w2,#0x6e7
016ec168  mov x0,x19
016ec16c  bl 0x0124a650
016ec170  orr w1,wzr,#0xfffffffe
016ec174  mov x0,x19
016ec178  bl 0x0124c0c0
016ec17c  orr w1,wzr,#0xfffffffe
016ec180  mov x0,x19
016ec184  bl 0x0124e920
016ec188  mov w20,w0
016ec18c  adrp x1,0x5766000
016ec190  add x1,x1,#0xea3
016ec194  mov x0,x19
016ec198  bl 0x0124f120
016ec19c  orr w1,wzr,#0xfffffffe
016ec1a0  mov w2,#0x1
016ec1a4  mov x0,x19
016ec1a8  bl 0x0124cfc0
016ec1ac  mov x0,x19
016ec1b0  mov w1,w20
016ec1b4  bl 0x0124e060
016ec1b8  orr w1,wzr,#0xfffffffd
016ec1bc  mov x0,x19
016ec1c0  bl 0x0124c4d0
016ec1c4  ldr w8,[sp, #0x18]
016ec1c8  ldr x0,[sp, #0x10]
016ec1cc  sub w8,w8,#0x3
016ec1d0  str w8,[sp, #0x18]
016ec1d4  orr w1,wzr,#0xfffffffc
016ec1d8  bl 0x0124c4d0
016ec1dc  ldr w8,[sp, #0x18]
016ec1e0  ldr x0,[sp, #0x10]
016ec1e4  str wzr,[sp, #0x18]
016ec1e8  cmp w8,#0x1
016ec1ec  b.lt 0x016ec210
016ec1f0  mvn w1,w8
016ec1f4  bl 0x0124c4d0
016ec1f8  ldr w8,[sp, #0x18]
016ec1fc  cmp w8,#0x1
016ec200  b.lt 0x016ec210
016ec204  ldr x0,[sp, #0x10]
016ec208  mvn w1,w8
016ec20c  bl 0x0124c4d0
016ec210  ldr w8,[sp, #0x8]
016ec214  cmp w8,#0x1
016ec218  b.lt 0x016ec228
016ec21c  ldr x0,[sp]
016ec220  mvn w1,w8
016ec224  bl 0x0124c4d0
016ec228  ldp x29,x30,[sp, #0x30]
016ec22c  ldp x20,x19,[sp, #0x20]
016ec230  add sp,sp,#0x40
016ec234  ret
