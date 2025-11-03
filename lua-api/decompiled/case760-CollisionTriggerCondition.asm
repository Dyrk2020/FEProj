// ===== case760-CollisionTriggerCondition @ 0172c390 =====
// existing function case760-CollisionTriggerCondition
0172c390  sub sp,sp,#0x40
0172c394  str x19,[sp, #0x20]
0172c398  stp x29,x30,[sp, #0x30]
0172c39c  add x29,sp,#0x30
0172c3a0  adrp x1,0x174a000
0172c3a4  add x1,x1,#0x87c
0172c3a8  mov x19,x0
0172c3ac  bl 0x0124ba40
0172c3b0  adrp x1,0x575d000
0172c3b4  add x1,x1,#0xa06
0172c3b8  mov x0,x19
0172c3bc  str x19,[sp]
0172c3c0  bl 0x01251aa0
0172c3c4  mov w8,#0x1
0172c3c8  str w8,[sp, #0x8]
0172c3cc  mov x0,sp
0172c3d0  bl 0x0174aa04
0172c3d4  adrp x1,0x5770000
0172c3d8  adrp x3,0x736d000
0172c3dc  add x1,x1,#0xdb2
0172c3e0  add x3,x3,#0x101
0172c3e4  add x0,sp,#0x10
0172c3e8  mov x2,sp
0172c3ec  bl 0x01990778
0172c3f0  adrp x1,0x5770000
0172c3f4  adrp x2,0x1990000
0172c3f8  adrp x4,0x1990000
0172c3fc  add x1,x1,#0xdcc
0172c400  add x2,x2,#0x6e0
0172c404  add x4,x4,#0x6e8
0172c408  add x0,sp,#0x10
0172c40c  mov x3,xzr
0172c410  mov x5,xzr
0172c414  bl 0x019904f8
0172c418  mov x19,x0
0172c41c  ldr w8,[x19, #0x8]
0172c420  ldr x0,[x19]
0172c424  sub w8,w8,#0x3
0172c428  str w8,[x19, #0x8]
0172c42c  orr w1,wzr,#0xfffffffc
0172c430  bl 0x0124c4d0
0172c434  ldr w8,[x19, #0x8]
0172c438  ldr x0,[x19]
0172c43c  str wzr,[x19, #0x8]
0172c440  cmp w8,#0x1
0172c444  b.lt 0x0172c450
0172c448  mvn w1,w8
0172c44c  bl 0x0124c4d0
0172c450  ldr w8,[sp, #0x18]
0172c454  cmp w8,#0x1
0172c458  b.lt 0x0172c468
0172c45c  ldr x0,[sp, #0x10]
0172c460  mvn w1,w8
0172c464  bl 0x0124c4d0
0172c468  ldr w8,[sp, #0x8]
0172c46c  cmp w8,#0x1
0172c470  b.lt 0x0172c480
0172c474  ldr x0,[sp]
0172c478  mvn w1,w8
0172c47c  bl 0x0124c4d0
0172c480  ldp x29,x30,[sp, #0x30]
0172c484  ldr x19,[sp, #0x20]
0172c488  add sp,sp,#0x40
0172c48c  ret
