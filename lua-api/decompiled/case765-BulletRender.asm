// ===== case765-BulletRender @ 0172d830 =====
// existing function case765-BulletRender
0172d830  sub sp,sp,#0x40
0172d834  str x19,[sp, #0x20]
0172d838  stp x29,x30,[sp, #0x30]
0172d83c  add x29,sp,#0x30
0172d840  adrp x1,0x174a000
0172d844  add x1,x1,#0x87c
0172d848  mov x19,x0
0172d84c  bl 0x0124ba40
0172d850  adrp x1,0x575d000
0172d854  add x1,x1,#0xa06
0172d858  mov x0,x19
0172d85c  str x19,[sp]
0172d860  bl 0x01251aa0
0172d864  mov w8,#0x1
0172d868  str w8,[sp, #0x8]
0172d86c  mov x0,sp
0172d870  bl 0x0174aa04
0172d874  adrp x1,0x5771000
0172d878  adrp x3,0x736d000
0172d87c  add x1,x1,#0x1ee
0172d880  add x3,x3,#0x101
0172d884  add x0,sp,#0x10
0172d888  mov x2,sp
0172d88c  bl 0x0199b964
0172d890  adrp x1,0x5988000
0172d894  adrp x2,0x199b000
0172d898  adrp x4,0x199b000
0172d89c  add x1,x1,#0x90e
0172d8a0  add x2,x2,#0x72c
0172d8a4  add x4,x4,#0x740
0172d8a8  add x0,sp,#0x10
0172d8ac  mov x3,xzr
0172d8b0  mov x5,xzr
0172d8b4  bl 0x0199b544
0172d8b8  adrp x1,0x5771000
0172d8bc  adrp x2,0x199b000
0172d8c0  adrp x4,0x199b000
0172d8c4  add x1,x1,#0x1fb
0172d8c8  add x2,x2,#0x944
0172d8cc  add x4,x4,#0x94c
0172d8d0  mov x3,xzr
0172d8d4  mov x5,xzr
0172d8d8  bl 0x0199b75c
0172d8dc  adrp x1,0x5771000
0172d8e0  adrp x2,0x199b000
0172d8e4  adrp x4,0x199b000
0172d8e8  add x1,x1,#0x20b
0172d8ec  add x2,x2,#0x954
0172d8f0  add x4,x4,#0x95c
0172d8f4  mov x3,xzr
0172d8f8  mov x5,xzr
0172d8fc  bl 0x0199b75c
0172d900  mov x19,x0
0172d904  ldr w8,[x19, #0x8]
0172d908  ldr x0,[x19]
0172d90c  sub w8,w8,#0x3
0172d910  str w8,[x19, #0x8]
0172d914  orr w1,wzr,#0xfffffffc
0172d918  bl 0x0124c4d0
0172d91c  ldr w8,[x19, #0x8]
0172d920  ldr x0,[x19]
0172d924  str wzr,[x19, #0x8]
0172d928  cmp w8,#0x1
0172d92c  b.lt 0x0172d938
0172d930  mvn w1,w8
0172d934  bl 0x0124c4d0
0172d938  ldr w8,[sp, #0x18]
0172d93c  cmp w8,#0x1
0172d940  b.lt 0x0172d950
0172d944  ldr x0,[sp, #0x10]
0172d948  mvn w1,w8
0172d94c  bl 0x0124c4d0
0172d950  ldr w8,[sp, #0x8]
0172d954  cmp w8,#0x1
0172d958  b.lt 0x0172d968
0172d95c  ldr x0,[sp]
0172d960  mvn w1,w8
0172d964  bl 0x0124c4d0
0172d968  ldp x29,x30,[sp, #0x30]
0172d96c  ldr x19,[sp, #0x20]
0172d970  add sp,sp,#0x40
0172d974  ret
