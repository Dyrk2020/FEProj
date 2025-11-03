// ===== case530-ActorComponentBuffMgr @ 016f919c =====
// existing function case530-ActorComponentBuffMgr
016f919c  sub sp,sp,#0x40
016f91a0  str x19,[sp, #0x20]
016f91a4  stp x29,x30,[sp, #0x30]
016f91a8  add x29,sp,#0x30
016f91ac  adrp x1,0x174a000
016f91b0  add x1,x1,#0x87c
016f91b4  mov x19,x0
016f91b8  bl 0x0124ba40
016f91bc  adrp x1,0x575d000
016f91c0  add x1,x1,#0xa06
016f91c4  mov x0,x19
016f91c8  str x19,[sp]
016f91cc  bl 0x01251aa0
016f91d0  mov w8,#0x1
016f91d4  str w8,[sp, #0x8]
016f91d8  mov x0,sp
016f91dc  bl 0x0174aa04
016f91e0  adrp x1,0x5768000
016f91e4  adrp x3,0x736d000
016f91e8  add x1,x1,#0xb02
016f91ec  add x3,x3,#0x101
016f91f0  add x0,sp,#0x10
016f91f4  mov x2,sp
016f91f8  bl 0x018afd2c
016f91fc  adrp x1,0x5768000
016f9200  adrp x2,0x18af000
016f9204  adrp x4,0x18af000
016f9208  add x1,x1,#0xb18
016f920c  add x2,x2,#0xd1c
016f9210  add x4,x4,#0xd24
016f9214  add x0,sp,#0x10
016f9218  mov x3,xzr
016f921c  mov x5,xzr
016f9220  bl 0x018afb34
016f9224  mov x19,x0
016f9228  ldr w8,[x19, #0x8]
016f922c  ldr x0,[x19]
016f9230  sub w8,w8,#0x3
016f9234  str w8,[x19, #0x8]
016f9238  orr w1,wzr,#0xfffffffc
016f923c  bl 0x0124c4d0
016f9240  ldr w8,[x19, #0x8]
016f9244  ldr x0,[x19]
016f9248  str wzr,[x19, #0x8]
016f924c  cmp w8,#0x1
016f9250  b.lt 0x016f925c
016f9254  mvn w1,w8
016f9258  bl 0x0124c4d0
016f925c  ldr w8,[sp, #0x18]
016f9260  cmp w8,#0x1
016f9264  b.lt 0x016f9274
016f9268  ldr x0,[sp, #0x10]
016f926c  mvn w1,w8
016f9270  bl 0x0124c4d0
016f9274  ldr w8,[sp, #0x8]
016f9278  cmp w8,#0x1
016f927c  b.lt 0x016f928c
016f9280  ldr x0,[sp]
016f9284  mvn w1,w8
016f9288  bl 0x0124c4d0
016f928c  ldp x29,x30,[sp, #0x30]
016f9290  ldr x19,[sp, #0x20]
016f9294  add sp,sp,#0x40
016f9298  ret
