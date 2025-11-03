// ===== case531-SwitchSkillData @ 016f92f4 =====
// existing function case531-SwitchSkillData
016f92f4  sub sp,sp,#0x40
016f92f8  str x19,[sp, #0x20]
016f92fc  stp x29,x30,[sp, #0x30]
016f9300  add x29,sp,#0x30
016f9304  adrp x1,0x174a000
016f9308  add x1,x1,#0x87c
016f930c  mov x19,x0
016f9310  bl 0x0124ba40
016f9314  adrp x1,0x575d000
016f9318  add x1,x1,#0xa06
016f931c  mov x0,x19
016f9320  str x19,[sp]
016f9324  bl 0x01251aa0
016f9328  mov w8,#0x1
016f932c  str w8,[sp, #0x8]
016f9330  mov x0,sp
016f9334  bl 0x0174aa04
016f9338  adrp x1,0x5768000
016f933c  adrp x3,0x736d000
016f9340  add x1,x1,#0xb2d
016f9344  add x3,x3,#0x101
016f9348  add x0,sp,#0x10
016f934c  mov x2,sp
016f9350  bl 0x018b051c
016f9354  adrp x1,0x575e000
016f9358  adrp x2,0x18b0000
016f935c  adrp x4,0x18b0000
016f9360  add x1,x1,#0x2ec
016f9364  add x2,x2,#0x4f8
016f9368  add x4,x4,#0x500
016f936c  add x0,sp,#0x10
016f9370  mov x3,xzr
016f9374  mov x5,xzr
016f9378  bl 0x018b0310
016f937c  mov x19,x0
016f9380  ldr w8,[x19, #0x8]
016f9384  ldr x0,[x19]
016f9388  sub w8,w8,#0x3
016f938c  str w8,[x19, #0x8]
016f9390  orr w1,wzr,#0xfffffffc
016f9394  bl 0x0124c4d0
016f9398  ldr w8,[x19, #0x8]
016f939c  ldr x0,[x19]
016f93a0  str wzr,[x19, #0x8]
016f93a4  cmp w8,#0x1
016f93a8  b.lt 0x016f93b4
016f93ac  mvn w1,w8
016f93b0  bl 0x0124c4d0
016f93b4  ldr w8,[sp, #0x18]
016f93b8  cmp w8,#0x1
016f93bc  b.lt 0x016f93cc
016f93c0  ldr x0,[sp, #0x10]
016f93c4  mvn w1,w8
016f93c8  bl 0x0124c4d0
016f93cc  ldr w8,[sp, #0x8]
016f93d0  cmp w8,#0x1
016f93d4  b.lt 0x016f93e4
016f93d8  ldr x0,[sp]
016f93dc  mvn w1,w8
016f93e0  bl 0x0124c4d0
016f93e4  ldp x29,x30,[sp, #0x30]
016f93e8  ldr x19,[sp, #0x20]
016f93ec  add sp,sp,#0x40
016f93f0  ret
