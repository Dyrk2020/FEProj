// ===== case416-RPNAnalyzeData @ 016e43cc =====
// existing function case416-RPNAnalyzeData
016e43cc  sub sp,sp,#0x40
016e43d0  str x19,[sp, #0x20]
016e43d4  stp x29,x30,[sp, #0x30]
016e43d8  add x29,sp,#0x30
016e43dc  adrp x1,0x174a000
016e43e0  add x1,x1,#0x87c
016e43e4  mov x19,x0
016e43e8  bl 0x0124ba40
016e43ec  adrp x1,0x575d000
016e43f0  add x1,x1,#0xa06
016e43f4  mov x0,x19
016e43f8  str x19,[sp]
016e43fc  bl 0x01251aa0
016e4400  mov w8,#0x1
016e4404  str w8,[sp, #0x8]
016e4408  mov x0,sp
016e440c  bl 0x0174aa04
016e4410  adrp x1,0x5766000
016e4414  adrp x3,0x736d000
016e4418  add x1,x1,#0x427
016e441c  add x3,x3,#0x101
016e4420  add x0,sp,#0x10
016e4424  mov x2,sp
016e4428  bl 0x0185a084
016e442c  adrp x1,0x5766000
016e4430  adrp x2,0x185a000
016e4434  adrp x4,0x185a000
016e4438  add x1,x1,#0x436
016e443c  add x2,x2,#0x60
016e4440  add x4,x4,#0x68
016e4444  add x0,sp,#0x10
016e4448  mov x3,xzr
016e444c  mov x5,xzr
016e4450  bl 0x01859e78
016e4454  mov x19,x0
016e4458  ldr w8,[x19, #0x8]
016e445c  ldr x0,[x19]
016e4460  sub w8,w8,#0x3
016e4464  str w8,[x19, #0x8]
016e4468  orr w1,wzr,#0xfffffffc
016e446c  bl 0x0124c4d0
016e4470  ldr w8,[x19, #0x8]
016e4474  ldr x0,[x19]
016e4478  str wzr,[x19, #0x8]
016e447c  cmp w8,#0x1
016e4480  b.lt 0x016e448c
016e4484  mvn w1,w8
016e4488  bl 0x0124c4d0
016e448c  ldr w8,[sp, #0x18]
016e4490  cmp w8,#0x1
016e4494  b.lt 0x016e44a4
016e4498  ldr x0,[sp, #0x10]
016e449c  mvn w1,w8
016e44a0  bl 0x0124c4d0
016e44a4  ldr w8,[sp, #0x8]
016e44a8  cmp w8,#0x1
016e44ac  b.lt 0x016e44bc
016e44b0  ldr x0,[sp]
016e44b4  mvn w1,w8
016e44b8  bl 0x0124c4d0
016e44bc  ldp x29,x30,[sp, #0x30]
016e44c0  ldr x19,[sp, #0x20]
016e44c4  add sp,sp,#0x40
016e44c8  ret
