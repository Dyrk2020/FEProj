// ===== case427-EquipSkillGroupData @ 016e648c =====
// existing function case427-EquipSkillGroupData
016e648c  sub sp,sp,#0x40
016e6490  str x19,[sp, #0x20]
016e6494  stp x29,x30,[sp, #0x30]
016e6498  add x29,sp,#0x30
016e649c  adrp x1,0x174a000
016e64a0  add x1,x1,#0x87c
016e64a4  mov x19,x0
016e64a8  bl 0x0124ba40
016e64ac  adrp x1,0x575d000
016e64b0  add x1,x1,#0xa06
016e64b4  mov x0,x19
016e64b8  str x19,[sp]
016e64bc  bl 0x01251aa0
016e64c0  mov w8,#0x1
016e64c4  str w8,[sp, #0x8]
016e64c8  mov x0,sp
016e64cc  bl 0x0174aa04
016e64d0  adrp x1,0x5766000
016e64d4  adrp x3,0x736d000
016e64d8  add x1,x1,#0x6f1
016e64dc  add x3,x3,#0x101
016e64e0  add x0,sp,#0x10
016e64e4  mov x2,sp
016e64e8  bl 0x01861464
016e64ec  adrp x1,0x5763000
016e64f0  adrp x2,0x1861000
016e64f4  adrp x4,0x1861000
016e64f8  add x1,x1,#0xcff
016e64fc  add x2,x2,#0x23c
016e6500  add x4,x4,#0x244
016e6504  add x0,sp,#0x10
016e6508  mov x3,xzr
016e650c  mov x5,xzr
016e6510  bl 0x01861054
016e6514  adrp x1,0x5766000
016e6518  adrp x2,0x1861000
016e651c  adrp x4,0x1861000
016e6520  add x1,x1,#0x705
016e6524  add x2,x2,#0x434
016e6528  add x4,x4,#0x43c
016e652c  mov x3,xzr
016e6530  mov x5,xzr
016e6534  bl 0x0186124c
016e6538  adrp x1,0x5766000
016e653c  adrp x2,0x1861000
016e6540  adrp x4,0x1861000
016e6544  add x1,x1,#0x710
016e6548  add x2,x2,#0x444
016e654c  add x4,x4,#0x44c
016e6550  mov x3,xzr
016e6554  mov x5,xzr
016e6558  bl 0x0186124c
016e655c  adrp x1,0x5760000
016e6560  adrp x2,0x1861000
016e6564  adrp x4,0x1861000
016e6568  add x1,x1,#0x339
016e656c  add x2,x2,#0x454
016e6570  add x4,x4,#0x45c
016e6574  mov x3,xzr
016e6578  mov x5,xzr
016e657c  bl 0x0186124c
016e6580  mov x19,x0
016e6584  ldr w8,[x19, #0x8]
016e6588  ldr x0,[x19]
016e658c  sub w8,w8,#0x3
016e6590  str w8,[x19, #0x8]
016e6594  orr w1,wzr,#0xfffffffc
016e6598  bl 0x0124c4d0
016e659c  ldr w8,[x19, #0x8]
016e65a0  ldr x0,[x19]
016e65a4  str wzr,[x19, #0x8]
016e65a8  cmp w8,#0x1
016e65ac  b.lt 0x016e65b8
016e65b0  mvn w1,w8
016e65b4  bl 0x0124c4d0
016e65b8  ldr w8,[sp, #0x18]
016e65bc  cmp w8,#0x1
016e65c0  b.lt 0x016e65d0
016e65c4  ldr x0,[sp, #0x10]
016e65c8  mvn w1,w8
016e65cc  bl 0x0124c4d0
016e65d0  ldr w8,[sp, #0x8]
016e65d4  cmp w8,#0x1
016e65d8  b.lt 0x016e65e8
016e65dc  ldr x0,[sp]
016e65e0  mvn w1,w8
016e65e4  bl 0x0124c4d0
016e65e8  ldp x29,x30,[sp, #0x30]
016e65ec  ldr x19,[sp, #0x20]
016e65f0  add sp,sp,#0x40
016e65f4  ret
