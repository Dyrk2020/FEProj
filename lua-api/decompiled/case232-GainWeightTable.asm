// ===== case232-GainWeightTable @ 016b41ec =====
// existing function case232-GainWeightTable
016b41ec  sub sp,sp,#0x40
016b41f0  stp x20,x19,[sp, #0x20]
016b41f4  stp x29,x30,[sp, #0x30]
016b41f8  add x29,sp,#0x30
016b41fc  adrp x1,0x174a000
016b4200  add x1,x1,#0x87c
016b4204  mov x19,x0
016b4208  bl 0x0124ba40
016b420c  adrp x1,0x575d000
016b4210  add x1,x1,#0xa06
016b4214  mov x0,x19
016b4218  str x19,[sp]
016b421c  bl 0x01251aa0
016b4220  mov w8,#0x1
016b4224  str w8,[sp, #0x8]
016b4228  mov x0,sp
016b422c  bl 0x0174aa04
016b4230  adrp x1,0x5761000
016b4234  adrp x3,0x736d000
016b4238  add x1,x1,#0x182
016b423c  add x3,x3,#0x101
016b4240  add x0,sp,#0x10
016b4244  mov x2,sp
016b4248  bl 0x017cb6e8
016b424c  ldr x0,[sp, #0x10]
016b4250  mov w1,#0x10
016b4254  bl 0x0124cba0
016b4258  adrp x8,0x17cb000
016b425c  dup v0.2D,xzr
016b4260  add x8,x8,#0x4e8
016b4264  mov v0.D[0x0],x8
016b4268  str q0,[x0]
016b426c  ldr x0,[sp, #0x10]
016b4270  adrp x1,0x17cb000
016b4274  add x1,x1,#0xaac
016b4278  mov w2,#0x1
016b427c  bl 0x0124ec90
016b4280  ldr x0,[sp, #0x10]
016b4284  mov w1,#0xffffffff
016b4288  bl 0x0124c0c0
016b428c  ldr x19,[sp, #0x10]
016b4290  orr w1,wzr,#0xfffffffb
016b4294  mov w2,#0x6e7
016b4298  mov x0,x19
016b429c  bl 0x0124a650
016b42a0  orr w1,wzr,#0xfffffffe
016b42a4  mov x0,x19
016b42a8  bl 0x0124c0c0
016b42ac  orr w1,wzr,#0xfffffffe
016b42b0  mov x0,x19
016b42b4  bl 0x0124e920
016b42b8  mov w20,w0
016b42bc  adrp x1,0x5761000
016b42c0  add x1,x1,#0x192
016b42c4  mov x0,x19
016b42c8  bl 0x0124f120
016b42cc  orr w1,wzr,#0xfffffffe
016b42d0  mov w2,#0x1
016b42d4  mov x0,x19
016b42d8  bl 0x0124cfc0
016b42dc  mov x0,x19
016b42e0  mov w1,w20
016b42e4  bl 0x0124e060
016b42e8  orr w1,wzr,#0xfffffffd
016b42ec  mov x0,x19
016b42f0  bl 0x0124c4d0
016b42f4  ldr x19,[sp, #0x10]
016b42f8  orr w1,wzr,#0xfffffffd
016b42fc  mov w2,#0x6e7
016b4300  mov x0,x19
016b4304  bl 0x0124a650
016b4308  orr w1,wzr,#0xfffffffe
016b430c  mov x0,x19
016b4310  bl 0x0124c0c0
016b4314  orr w1,wzr,#0xfffffffe
016b4318  mov x0,x19
016b431c  bl 0x0124e920
016b4320  mov w20,w0
016b4324  adrp x1,0x5761000
016b4328  add x1,x1,#0x192
016b432c  mov x0,x19
016b4330  bl 0x0124f120
016b4334  orr w1,wzr,#0xfffffffe
016b4338  mov w2,#0x1
016b433c  mov x0,x19
016b4340  bl 0x0124cfc0
016b4344  mov x0,x19
016b4348  mov w1,w20
016b434c  bl 0x0124e060
016b4350  orr w1,wzr,#0xfffffffd
016b4354  mov x0,x19
016b4358  bl 0x0124c4d0
016b435c  adrp x1,0x5761000
016b4360  adrp x2,0x17cb000
016b4364  adrp x4,0x17cb000
016b4368  add x1,x1,#0x1a2
016b436c  add x2,x2,#0x6d8
016b4370  add x4,x4,#0x6e0
016b4374  add x0,sp,#0x10
016b4378  mov x3,xzr
016b437c  mov x5,xzr
016b4380  bl 0x017cb4f0
016b4384  mov x19,x0
016b4388  ldr w8,[x19, #0x8]
016b438c  ldr x0,[x19]
016b4390  sub w8,w8,#0x3
016b4394  str w8,[x19, #0x8]
016b4398  orr w1,wzr,#0xfffffffc
016b439c  bl 0x0124c4d0
016b43a0  ldr w8,[x19, #0x8]
016b43a4  ldr x0,[x19]
016b43a8  str wzr,[x19, #0x8]
016b43ac  cmp w8,#0x1
016b43b0  b.lt 0x016b43bc
016b43b4  mvn w1,w8
016b43b8  bl 0x0124c4d0
016b43bc  ldr w8,[sp, #0x18]
016b43c0  cmp w8,#0x1
016b43c4  b.lt 0x016b43d4
016b43c8  ldr x0,[sp, #0x10]
016b43cc  mvn w1,w8
016b43d0  bl 0x0124c4d0
016b43d4  ldr w8,[sp, #0x8]
016b43d8  cmp w8,#0x1
016b43dc  b.lt 0x016b43ec
016b43e0  ldr x0,[sp]
016b43e4  mvn w1,w8
016b43e8  bl 0x0124c4d0
016b43ec  ldp x29,x30,[sp, #0x30]
016b43f0  ldp x20,x19,[sp, #0x20]
016b43f4  add sp,sp,#0x40
016b43f8  ret
