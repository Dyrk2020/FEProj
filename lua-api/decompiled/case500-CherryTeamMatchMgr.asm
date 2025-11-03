// ===== case500-CherryTeamMatchMgr @ 016f4234 =====
// existing function case500-CherryTeamMatchMgr
016f4234  sub sp,sp,#0x40
016f4238  stp x20,x19,[sp, #0x20]
016f423c  stp x29,x30,[sp, #0x30]
016f4240  add x29,sp,#0x30
016f4244  adrp x1,0x174a000
016f4248  add x1,x1,#0x87c
016f424c  mov x19,x0
016f4250  bl 0x0124ba40
016f4254  adrp x1,0x575d000
016f4258  add x1,x1,#0xa06
016f425c  mov x0,x19
016f4260  str x19,[sp]
016f4264  bl 0x01251aa0
016f4268  mov w8,#0x1
016f426c  str w8,[sp, #0x8]
016f4270  mov x0,sp
016f4274  bl 0x0174aa04
016f4278  adrp x1,0x5768000
016f427c  adrp x3,0x736d000
016f4280  add x1,x1,#0x7c
016f4284  add x3,x3,#0x101
016f4288  add x0,sp,#0x10
016f428c  mov x2,sp
016f4290  bl 0x018918c8
016f4294  ldr x0,[sp, #0x10]
016f4298  mov w1,#0x10
016f429c  bl 0x0124cba0
016f42a0  adrp x8,0x1891000
016f42a4  dup v0.2D,xzr
016f42a8  add x8,x8,#0x6a8
016f42ac  mov v0.D[0x0],x8
016f42b0  str q0,[x0]
016f42b4  ldr x0,[sp, #0x10]
016f42b8  adrp x1,0x1891000
016f42bc  add x1,x1,#0xc8c
016f42c0  mov w2,#0x1
016f42c4  bl 0x0124ec90
016f42c8  ldr x0,[sp, #0x10]
016f42cc  mov w1,#0xffffffff
016f42d0  bl 0x0124c0c0
016f42d4  ldr x19,[sp, #0x10]
016f42d8  orr w1,wzr,#0xfffffffb
016f42dc  mov w2,#0x6e7
016f42e0  mov x0,x19
016f42e4  bl 0x0124a650
016f42e8  orr w1,wzr,#0xfffffffe
016f42ec  mov x0,x19
016f42f0  bl 0x0124c0c0
016f42f4  orr w1,wzr,#0xfffffffe
016f42f8  mov x0,x19
016f42fc  bl 0x0124e920
016f4300  mov w20,w0
016f4304  adrp x1,0x5768000
016f4308  add x1,x1,#0x8f
016f430c  mov x0,x19
016f4310  bl 0x0124f120
016f4314  orr w1,wzr,#0xfffffffe
016f4318  mov w2,#0x1
016f431c  mov x0,x19
016f4320  bl 0x0124cfc0
016f4324  mov x0,x19
016f4328  mov w1,w20
016f432c  bl 0x0124e060
016f4330  orr w1,wzr,#0xfffffffd
016f4334  mov x0,x19
016f4338  bl 0x0124c4d0
016f433c  ldr x19,[sp, #0x10]
016f4340  orr w1,wzr,#0xfffffffd
016f4344  mov w2,#0x6e7
016f4348  mov x0,x19
016f434c  bl 0x0124a650
016f4350  orr w1,wzr,#0xfffffffe
016f4354  mov x0,x19
016f4358  bl 0x0124c0c0
016f435c  orr w1,wzr,#0xfffffffe
016f4360  mov x0,x19
016f4364  bl 0x0124e920
016f4368  mov w20,w0
016f436c  adrp x1,0x5768000
016f4370  add x1,x1,#0x8f
016f4374  mov x0,x19
016f4378  bl 0x0124f120
016f437c  orr w1,wzr,#0xfffffffe
016f4380  mov w2,#0x1
016f4384  mov x0,x19
016f4388  bl 0x0124cfc0
016f438c  mov x0,x19
016f4390  mov w1,w20
016f4394  bl 0x0124e060
016f4398  orr w1,wzr,#0xfffffffd
016f439c  mov x0,x19
016f43a0  bl 0x0124c4d0
016f43a4  adrp x1,0x5768000
016f43a8  adrp x2,0x1891000
016f43ac  adrp x4,0x1891000
016f43b0  add x1,x1,#0xa4
016f43b4  add x2,x2,#0x898
016f43b8  add x4,x4,#0x8a0
016f43bc  add x0,sp,#0x10
016f43c0  mov x3,xzr
016f43c4  mov x5,xzr
016f43c8  bl 0x018916b0
016f43cc  adrp x1,0x5768000
016f43d0  adrp x2,0x1891000
016f43d4  adrp x4,0x1891000
016f43d8  add x1,x1,#0xb8
016f43dc  add x2,x2,#0x8a8
016f43e0  add x4,x4,#0x8b0
016f43e4  mov x3,xzr
016f43e8  mov x5,xzr
016f43ec  bl 0x018916b0
016f43f0  adrp x1,0x5768000
016f43f4  adrp x2,0x1891000
016f43f8  adrp x4,0x1891000
016f43fc  add x1,x1,#0xce
016f4400  add x2,x2,#0x8b8
016f4404  add x4,x4,#0x8c0
016f4408  mov x3,xzr
016f440c  mov x5,xzr
016f4410  bl 0x018916b0
016f4414  mov x19,x0
016f4418  ldr w8,[x19, #0x8]
016f441c  ldr x0,[x19]
016f4420  sub w8,w8,#0x3
016f4424  str w8,[x19, #0x8]
016f4428  orr w1,wzr,#0xfffffffc
016f442c  bl 0x0124c4d0
016f4430  ldr w8,[x19, #0x8]
016f4434  ldr x0,[x19]
016f4438  str wzr,[x19, #0x8]
016f443c  cmp w8,#0x1
016f4440  b.lt 0x016f444c
016f4444  mvn w1,w8
016f4448  bl 0x0124c4d0
016f444c  ldr w8,[sp, #0x18]
016f4450  cmp w8,#0x1
016f4454  b.lt 0x016f4464
016f4458  ldr x0,[sp, #0x10]
016f445c  mvn w1,w8
016f4460  bl 0x0124c4d0
016f4464  ldr w8,[sp, #0x8]
016f4468  cmp w8,#0x1
016f446c  b.lt 0x016f447c
016f4470  ldr x0,[sp]
016f4474  mvn w1,w8
016f4478  bl 0x0124c4d0
016f447c  ldp x29,x30,[sp, #0x30]
016f4480  ldp x20,x19,[sp, #0x20]
016f4484  add sp,sp,#0x40
016f4488  ret
