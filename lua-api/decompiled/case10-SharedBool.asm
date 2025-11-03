// ===== case10-SharedBool @ 0168e458 =====
// existing function case10-SharedBool
0168e458  sub sp,sp,#0x40
0168e45c  str x19,[sp, #0x20]
0168e460  stp x29,x30,[sp, #0x30]
0168e464  add x29,sp,#0x30
0168e468  adrp x1,0x174a000
0168e46c  add x1,x1,#0x87c
0168e470  mov x19,x0
0168e474  bl 0x0124ba40
0168e478  adrp x1,0x575d000
0168e47c  add x1,x1,#0xa06
0168e480  mov x0,x19
0168e484  str x19,[sp]
0168e488  bl 0x01251aa0
0168e48c  mov w8,#0x1
0168e490  str w8,[sp, #0x8]
0168e494  mov x0,sp
0168e498  bl 0x0174aa04
0168e49c  adrp x1,0x575d000
0168e4a0  adrp x3,0x736d000
0168e4a4  add x1,x1,#0xd18
0168e4a8  add x3,x3,#0x101
0168e4ac  add x0,sp,#0x10
0168e4b0  mov x2,sp
0168e4b4  bl 0x01754660
0168e4b8  adrp x1,0x575d000
0168e4bc  adrp x2,0x1754000
0168e4c0  adrp x4,0x1754000
0168e4c4  add x1,x1,#0xd23
0168e4c8  add x2,x2,#0x650
0168e4cc  add x4,x4,#0x658
0168e4d0  add x0,sp,#0x10
0168e4d4  mov x3,xzr
0168e4d8  mov x5,xzr
0168e4dc  bl 0x01754468
0168e4e0  mov x19,x0
0168e4e4  ldr w8,[x19, #0x8]
0168e4e8  ldr x0,[x19]
0168e4ec  sub w8,w8,#0x3
0168e4f0  str w8,[x19, #0x8]
0168e4f4  orr w1,wzr,#0xfffffffc
0168e4f8  bl 0x0124c4d0
0168e4fc  ldr w8,[x19, #0x8]
0168e500  ldr x0,[x19]
0168e504  str wzr,[x19, #0x8]
0168e508  cmp w8,#0x1
0168e50c  b.lt 0x0168e518
0168e510  mvn w1,w8
0168e514  bl 0x0124c4d0
0168e518  ldr w8,[sp, #0x18]
0168e51c  cmp w8,#0x1
0168e520  b.lt 0x0168e530
0168e524  ldr x0,[sp, #0x10]
0168e528  mvn w1,w8
0168e52c  bl 0x0124c4d0
0168e530  ldr w8,[sp, #0x8]
0168e534  cmp w8,#0x1
0168e538  b.lt 0x0168e548
0168e53c  ldr x0,[sp]
0168e540  mvn w1,w8
0168e544  bl 0x0124c4d0
0168e548  ldp x29,x30,[sp, #0x30]
0168e54c  ldr x19,[sp, #0x20]
0168e550  add sp,sp,#0x40
0168e554  ret
