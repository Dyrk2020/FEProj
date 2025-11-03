// ===== case501-FightRecord @ 016f44f0 =====
// existing function case501-FightRecord
016f44f0  sub sp,sp,#0x40
016f44f4  str x19,[sp, #0x20]
016f44f8  stp x29,x30,[sp, #0x30]
016f44fc  add x29,sp,#0x30
016f4500  adrp x1,0x174a000
016f4504  add x1,x1,#0x87c
016f4508  mov x19,x0
016f450c  bl 0x0124ba40
016f4510  adrp x1,0x575d000
016f4514  add x1,x1,#0xa06
016f4518  mov x0,x19
016f451c  str x19,[sp]
016f4520  bl 0x01251aa0
016f4524  mov w8,#0x1
016f4528  str w8,[sp, #0x8]
016f452c  mov x0,sp
016f4530  bl 0x0174aa04
016f4534  adrp x1,0x57c7000
016f4538  adrp x3,0x736d000
016f453c  add x1,x1,#0xe03
016f4540  add x3,x3,#0x101
016f4544  add x0,sp,#0x10
016f4548  mov x2,sp
016f454c  bl 0x01892854
016f4550  adrp x1,0x5768000
016f4554  adrp x2,0x1892000
016f4558  adrp x4,0x1892000
016f455c  add x1,x1,#0xe3
016f4560  add x2,x2,#0x1b8
016f4564  add x4,x4,#0x1c0
016f4568  add x0,sp,#0x10
016f456c  mov x3,xzr
016f4570  mov x5,xzr
016f4574  bl 0x01891fd0
016f4578  adrp x1,0x58e6000
016f457c  adrp x2,0x1892000
016f4580  adrp x4,0x1892000
016f4584  add x1,x1,#0x5b7
016f4588  add x2,x2,#0x1dc
016f458c  add x4,x4,#0x1e4
016f4590  mov x3,xzr
016f4594  mov x5,xzr
016f4598  bl 0x01891fd0
016f459c  adrp x1,0x575f000
016f45a0  adrp x2,0x1892000
016f45a4  adrp x4,0x1892000
016f45a8  add x1,x1,#0x128
016f45ac  add x2,x2,#0x200
016f45b0  add x4,x4,#0x208
016f45b4  mov x3,xzr
016f45b8  mov x5,xzr
016f45bc  bl 0x01891fd0
016f45c0  adrp x1,0x5768000
016f45c4  adrp x2,0x1892000
016f45c8  adrp x4,0x1892000
016f45cc  add x1,x1,#0xea
016f45d0  add x2,x2,#0x40c
016f45d4  add x4,x4,#0x414
016f45d8  mov x3,xzr
016f45dc  mov x5,xzr
016f45e0  bl 0x01892224
016f45e4  adrp x1,0x5768000
016f45e8  adrp x2,0x1892000
016f45ec  adrp x4,0x1892000
016f45f0  add x1,x1,#0xf8
016f45f4  add x2,x2,#0x68c
016f45f8  add x4,x4,#0x694
016f45fc  mov x3,xzr
016f4600  mov x5,xzr
016f4604  bl 0x018924a4
016f4608  adrp x1,0x5768000
016f460c  adrp x2,0x1892000
016f4610  adrp x4,0x1892000
016f4614  add x1,x1,#0x10b
016f4618  add x2,x2,#0x724
016f461c  add x4,x4,#0x72c
016f4620  mov x3,xzr
016f4624  mov x5,xzr
016f4628  bl 0x01892224
016f462c  adrp x1,0x5768000
016f4630  adrp x2,0x1892000
016f4634  adrp x4,0x1892000
016f4638  add x1,x1,#0x119
016f463c  add x2,x2,#0x7bc
016f4640  add x4,x4,#0x7c4
016f4644  mov x3,xzr
016f4648  mov x5,xzr
016f464c  bl 0x018924a4
016f4650  mov x19,x0
016f4654  ldr w8,[x19, #0x8]
016f4658  ldr x0,[x19]
016f465c  sub w8,w8,#0x3
016f4660  str w8,[x19, #0x8]
016f4664  orr w1,wzr,#0xfffffffc
016f4668  bl 0x0124c4d0
016f466c  ldr w8,[x19, #0x8]
016f4670  ldr x0,[x19]
016f4674  str wzr,[x19, #0x8]
016f4678  cmp w8,#0x1
016f467c  b.lt 0x016f4688
016f4680  mvn w1,w8
016f4684  bl 0x0124c4d0
016f4688  ldr w8,[sp, #0x18]
016f468c  cmp w8,#0x1
016f4690  b.lt 0x016f46a0
016f4694  ldr x0,[sp, #0x10]
016f4698  mvn w1,w8
016f469c  bl 0x0124c4d0
016f46a0  ldr w8,[sp, #0x8]
016f46a4  cmp w8,#0x1
016f46a8  b.lt 0x016f46b8
016f46ac  ldr x0,[sp]
016f46b0  mvn w1,w8
016f46b4  bl 0x0124c4d0
016f46b8  ldp x29,x30,[sp, #0x30]
016f46bc  ldr x19,[sp, #0x20]
016f46c0  add sp,sp,#0x40
016f46c4  ret
