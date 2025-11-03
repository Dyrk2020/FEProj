// ===== case233-GainWeightResObject @ 016b4460 =====
// existing function case233-GainWeightResObject
016b4460  sub sp,sp,#0x40
016b4464  stp x20,x19,[sp, #0x20]
016b4468  stp x29,x30,[sp, #0x30]
016b446c  add x29,sp,#0x30
016b4470  adrp x1,0x174a000
016b4474  add x1,x1,#0x87c
016b4478  mov x19,x0
016b447c  bl 0x0124ba40
016b4480  adrp x1,0x575d000
016b4484  add x1,x1,#0xa06
016b4488  mov x0,x19
016b448c  str x19,[sp]
016b4490  bl 0x01251aa0
016b4494  mov w8,#0x1
016b4498  str w8,[sp, #0x8]
016b449c  mov x0,sp
016b44a0  bl 0x0174aa04
016b44a4  adrp x1,0x5761000
016b44a8  adrp x3,0x736d000
016b44ac  add x1,x1,#0x1ae
016b44b0  add x3,x3,#0x101
016b44b4  add x0,sp,#0x10
016b44b8  mov x2,sp
016b44bc  bl 0x017cbe24
016b44c0  ldr x0,[sp, #0x10]
016b44c4  mov w1,#0x10
016b44c8  bl 0x0124cba0
016b44cc  adrp x8,0x17cb000
016b44d0  dup v0.2D,xzr
016b44d4  add x8,x8,#0xe1c
016b44d8  mov v0.D[0x0],x8
016b44dc  str q0,[x0]
016b44e0  ldr x0,[sp, #0x10]
016b44e4  adrp x1,0x17cc000
016b44e8  add x1,x1,#0x1e8
016b44ec  mov w2,#0x1
016b44f0  bl 0x0124ec90
016b44f4  ldr x0,[sp, #0x10]
016b44f8  mov w1,#0xffffffff
016b44fc  bl 0x0124c0c0
016b4500  ldr x19,[sp, #0x10]
016b4504  orr w1,wzr,#0xfffffffb
016b4508  mov w2,#0x6e7
016b450c  mov x0,x19
016b4510  bl 0x0124a650
016b4514  orr w1,wzr,#0xfffffffe
016b4518  mov x0,x19
016b451c  bl 0x0124c0c0
016b4520  orr w1,wzr,#0xfffffffe
016b4524  mov x0,x19
016b4528  bl 0x0124e920
016b452c  mov w20,w0
016b4530  adrp x1,0x5761000
016b4534  add x1,x1,#0x1c2
016b4538  mov x0,x19
016b453c  bl 0x0124f120
016b4540  orr w1,wzr,#0xfffffffe
016b4544  mov w2,#0x1
016b4548  mov x0,x19
016b454c  bl 0x0124cfc0
016b4550  mov x0,x19
016b4554  mov w1,w20
016b4558  bl 0x0124e060
016b455c  orr w1,wzr,#0xfffffffd
016b4560  mov x0,x19
016b4564  bl 0x0124c4d0
016b4568  ldr x19,[sp, #0x10]
016b456c  orr w1,wzr,#0xfffffffd
016b4570  mov w2,#0x6e7
016b4574  mov x0,x19
016b4578  bl 0x0124a650
016b457c  orr w1,wzr,#0xfffffffe
016b4580  mov x0,x19
016b4584  bl 0x0124c0c0
016b4588  orr w1,wzr,#0xfffffffe
016b458c  mov x0,x19
016b4590  bl 0x0124e920
016b4594  mov w20,w0
016b4598  adrp x1,0x5761000
016b459c  add x1,x1,#0x1c2
016b45a0  mov x0,x19
016b45a4  bl 0x0124f120
016b45a8  orr w1,wzr,#0xfffffffe
016b45ac  mov w2,#0x1
016b45b0  mov x0,x19
016b45b4  bl 0x0124cfc0
016b45b8  mov x0,x19
016b45bc  mov w1,w20
016b45c0  bl 0x0124e060
016b45c4  orr w1,wzr,#0xfffffffd
016b45c8  mov x0,x19
016b45cc  bl 0x0124c4d0
016b45d0  ldr w8,[sp, #0x18]
016b45d4  ldr x0,[sp, #0x10]
016b45d8  sub w8,w8,#0x3
016b45dc  str w8,[sp, #0x18]
016b45e0  orr w1,wzr,#0xfffffffc
016b45e4  bl 0x0124c4d0
016b45e8  ldr w8,[sp, #0x18]
016b45ec  ldr x0,[sp, #0x10]
016b45f0  str wzr,[sp, #0x18]
016b45f4  cmp w8,#0x1
016b45f8  b.lt 0x016b461c
016b45fc  mvn w1,w8
016b4600  bl 0x0124c4d0
016b4604  ldr w8,[sp, #0x18]
016b4608  cmp w8,#0x1
016b460c  b.lt 0x016b461c
016b4610  ldr x0,[sp, #0x10]
016b4614  mvn w1,w8
016b4618  bl 0x0124c4d0
016b461c  ldr w8,[sp, #0x8]
016b4620  cmp w8,#0x1
016b4624  b.lt 0x016b4634
016b4628  ldr x0,[sp]
016b462c  mvn w1,w8
016b4630  bl 0x0124c4d0
016b4634  ldp x29,x30,[sp, #0x30]
016b4638  ldp x20,x19,[sp, #0x20]
016b463c  add sp,sp,#0x40
016b4640  ret
