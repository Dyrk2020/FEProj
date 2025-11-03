// ===== case166-VirtualSkillResObject @ 016a923c =====
// existing function case166-VirtualSkillResObject
016a923c  sub sp,sp,#0x40
016a9240  stp x20,x19,[sp, #0x20]
016a9244  stp x29,x30,[sp, #0x30]
016a9248  add x29,sp,#0x30
016a924c  adrp x1,0x174a000
016a9250  add x1,x1,#0x87c
016a9254  mov x19,x0
016a9258  bl 0x0124ba40
016a925c  adrp x1,0x575d000
016a9260  add x1,x1,#0xa06
016a9264  mov x0,x19
016a9268  str x19,[sp]
016a926c  bl 0x01251aa0
016a9270  mov w8,#0x1
016a9274  str w8,[sp, #0x8]
016a9278  mov x0,sp
016a927c  bl 0x0174aa04
016a9280  adrp x1,0x5760000
016a9284  adrp x3,0x736d000
016a9288  add x1,x1,#0x58a
016a928c  add x3,x3,#0x101
016a9290  add x0,sp,#0x10
016a9294  mov x2,sp
016a9298  bl 0x017aa6f0
016a929c  ldr x0,[sp, #0x10]
016a92a0  mov w1,#0x10
016a92a4  bl 0x0124cba0
016a92a8  adrp x8,0x17aa000
016a92ac  dup v0.2D,xzr
016a92b0  add x8,x8,#0x6e0
016a92b4  mov v0.D[0x0],x8
016a92b8  str q0,[x0]
016a92bc  ldr x0,[sp, #0x10]
016a92c0  adrp x1,0x17aa000
016a92c4  add x1,x1,#0xab4
016a92c8  mov w2,#0x1
016a92cc  bl 0x0124ec90
016a92d0  ldr x0,[sp, #0x10]
016a92d4  mov w1,#0xffffffff
016a92d8  bl 0x0124c0c0
016a92dc  ldr x19,[sp, #0x10]
016a92e0  orr w1,wzr,#0xfffffffb
016a92e4  mov w2,#0x6e7
016a92e8  mov x0,x19
016a92ec  bl 0x0124a650
016a92f0  orr w1,wzr,#0xfffffffe
016a92f4  mov x0,x19
016a92f8  bl 0x0124c0c0
016a92fc  orr w1,wzr,#0xfffffffe
016a9300  mov x0,x19
016a9304  bl 0x0124e920
016a9308  mov w20,w0
016a930c  adrp x1,0x575e000
016a9310  add x1,x1,#0x56d
016a9314  mov x0,x19
016a9318  bl 0x0124f120
016a931c  orr w1,wzr,#0xfffffffe
016a9320  mov w2,#0x1
016a9324  mov x0,x19
016a9328  bl 0x0124cfc0
016a932c  mov x0,x19
016a9330  mov w1,w20
016a9334  bl 0x0124e060
016a9338  orr w1,wzr,#0xfffffffd
016a933c  mov x0,x19
016a9340  bl 0x0124c4d0
016a9344  ldr x19,[sp, #0x10]
016a9348  orr w1,wzr,#0xfffffffd
016a934c  mov w2,#0x6e7
016a9350  mov x0,x19
016a9354  bl 0x0124a650
016a9358  orr w1,wzr,#0xfffffffe
016a935c  mov x0,x19
016a9360  bl 0x0124c0c0
016a9364  orr w1,wzr,#0xfffffffe
016a9368  mov x0,x19
016a936c  bl 0x0124e920
016a9370  mov w20,w0
016a9374  adrp x1,0x575e000
016a9378  add x1,x1,#0x56d
016a937c  mov x0,x19
016a9380  bl 0x0124f120
016a9384  orr w1,wzr,#0xfffffffe
016a9388  mov w2,#0x1
016a938c  mov x0,x19
016a9390  bl 0x0124cfc0
016a9394  mov x0,x19
016a9398  mov w1,w20
016a939c  bl 0x0124e060
016a93a0  orr w1,wzr,#0xfffffffd
016a93a4  mov x0,x19
016a93a8  bl 0x0124c4d0
016a93ac  ldr x0,[sp, #0x10]
016a93b0  mov w1,#0x10
016a93b4  bl 0x0124cba0
016a93b8  adrp x8,0x17aa000
016a93bc  dup v0.2D,xzr
016a93c0  add x8,x8,#0x6e8
016a93c4  mov v0.D[0x0],x8
016a93c8  str q0,[x0]
016a93cc  ldr x0,[sp, #0x10]
016a93d0  adrp x1,0x17aa000
016a93d4  add x1,x1,#0xbd8
016a93d8  mov w2,#0x1
016a93dc  bl 0x0124ec90
016a93e0  ldr x0,[sp, #0x10]
016a93e4  mov w1,#0xffffffff
016a93e8  bl 0x0124c0c0
016a93ec  ldr x19,[sp, #0x10]
016a93f0  orr w1,wzr,#0xfffffffb
016a93f4  mov w2,#0x6e7
016a93f8  mov x0,x19
016a93fc  bl 0x0124a650
016a9400  orr w1,wzr,#0xfffffffe
016a9404  mov x0,x19
016a9408  bl 0x0124c0c0
016a940c  orr w1,wzr,#0xfffffffe
016a9410  mov x0,x19
016a9414  bl 0x0124e920
016a9418  mov w20,w0
016a941c  adrp x1,0x575e000
016a9420  add x1,x1,#0x578
016a9424  mov x0,x19
016a9428  bl 0x0124f120
016a942c  orr w1,wzr,#0xfffffffe
016a9430  mov w2,#0x1
016a9434  mov x0,x19
016a9438  bl 0x0124cfc0
016a943c  mov x0,x19
016a9440  mov w1,w20
016a9444  bl 0x0124e060
016a9448  orr w1,wzr,#0xfffffffd
016a944c  mov x0,x19
016a9450  bl 0x0124c4d0
016a9454  ldr x19,[sp, #0x10]
016a9458  orr w1,wzr,#0xfffffffd
016a945c  mov w2,#0x6e7
016a9460  mov x0,x19
016a9464  bl 0x0124a650
016a9468  orr w1,wzr,#0xfffffffe
016a946c  mov x0,x19
016a9470  bl 0x0124c0c0
016a9474  orr w1,wzr,#0xfffffffe
016a9478  mov x0,x19
016a947c  bl 0x0124e920
016a9480  mov w20,w0
016a9484  adrp x1,0x575e000
016a9488  add x1,x1,#0x578
016a948c  mov x0,x19
016a9490  bl 0x0124f120
016a9494  orr w1,wzr,#0xfffffffe
016a9498  mov w2,#0x1
016a949c  mov x0,x19
016a94a0  bl 0x0124cfc0
016a94a4  mov x0,x19
016a94a8  mov w1,w20
016a94ac  bl 0x0124e060
016a94b0  orr w1,wzr,#0xfffffffd
016a94b4  mov x0,x19
016a94b8  bl 0x0124c4d0
016a94bc  ldr w8,[sp, #0x18]
016a94c0  ldr x0,[sp, #0x10]
016a94c4  sub w8,w8,#0x3
016a94c8  str w8,[sp, #0x18]
016a94cc  orr w1,wzr,#0xfffffffc
016a94d0  bl 0x0124c4d0
016a94d4  ldr w8,[sp, #0x18]
016a94d8  ldr x0,[sp, #0x10]
016a94dc  str wzr,[sp, #0x18]
016a94e0  cmp w8,#0x1
016a94e4  b.lt 0x016a9508
016a94e8  mvn w1,w8
016a94ec  bl 0x0124c4d0
016a94f0  ldr w8,[sp, #0x18]
016a94f4  cmp w8,#0x1
016a94f8  b.lt 0x016a9508
016a94fc  ldr x0,[sp, #0x10]
016a9500  mvn w1,w8
016a9504  bl 0x0124c4d0
016a9508  ldr w8,[sp, #0x8]
016a950c  cmp w8,#0x1
016a9510  b.lt 0x016a9520
016a9514  ldr x0,[sp]
016a9518  mvn w1,w8
016a951c  bl 0x0124c4d0
016a9520  ldp x29,x30,[sp, #0x30]
016a9524  ldp x20,x19,[sp, #0x20]
016a9528  add sp,sp,#0x40
016a952c  ret
