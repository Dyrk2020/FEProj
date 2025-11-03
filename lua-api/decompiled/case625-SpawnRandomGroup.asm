// ===== case625-SpawnRandomGroup @ 0170d234 =====
// existing function case625-SpawnRandomGroup
0170d234  sub sp,sp,#0x40
0170d238  str x19,[sp, #0x20]
0170d23c  stp x29,x30,[sp, #0x30]
0170d240  add x29,sp,#0x30
0170d244  adrp x1,0x174a000
0170d248  add x1,x1,#0x87c
0170d24c  mov x19,x0
0170d250  bl 0x0124ba40
0170d254  adrp x1,0x575d000
0170d258  add x1,x1,#0xa06
0170d25c  mov x0,x19
0170d260  str x19,[sp]
0170d264  bl 0x01251aa0
0170d268  mov w8,#0x1
0170d26c  str w8,[sp, #0x8]
0170d270  mov x0,sp
0170d274  bl 0x0174aa04
0170d278  adrp x1,0x576a000
0170d27c  adrp x3,0x736d000
0170d280  add x1,x1,#0x7cc
0170d284  add x3,x3,#0x101
0170d288  add x0,sp,#0x10
0170d28c  mov x2,sp
0170d290  bl 0x019056e0
0170d294  adrp x1,0x576a000
0170d298  adrp x2,0x1905000
0170d29c  adrp x4,0x1905000
0170d2a0  add x1,x1,#0x7dd
0170d2a4  add x2,x2,#0x6bc
0170d2a8  add x4,x4,#0x6c4
0170d2ac  add x0,sp,#0x10
0170d2b0  mov x3,xzr
0170d2b4  mov x5,xzr
0170d2b8  bl 0x019054d4
0170d2bc  mov x19,x0
0170d2c0  ldr w8,[x19, #0x8]
0170d2c4  ldr x0,[x19]
0170d2c8  sub w8,w8,#0x3
0170d2cc  str w8,[x19, #0x8]
0170d2d0  orr w1,wzr,#0xfffffffc
0170d2d4  bl 0x0124c4d0
0170d2d8  ldr w8,[x19, #0x8]
0170d2dc  ldr x0,[x19]
0170d2e0  str wzr,[x19, #0x8]
0170d2e4  cmp w8,#0x1
0170d2e8  b.lt 0x0170d2f4
0170d2ec  mvn w1,w8
0170d2f0  bl 0x0124c4d0
0170d2f4  ldr w8,[sp, #0x18]
0170d2f8  cmp w8,#0x1
0170d2fc  b.lt 0x0170d30c
0170d300  ldr x0,[sp, #0x10]
0170d304  mvn w1,w8
0170d308  bl 0x0124c4d0
0170d30c  ldr w8,[sp, #0x8]
0170d310  cmp w8,#0x1
0170d314  b.lt 0x0170d324
0170d318  ldr x0,[sp]
0170d31c  mvn w1,w8
0170d320  bl 0x0124c4d0
0170d324  ldp x29,x30,[sp, #0x30]
0170d328  ldr x19,[sp, #0x20]
0170d32c  add sp,sp,#0x40
0170d330  ret
