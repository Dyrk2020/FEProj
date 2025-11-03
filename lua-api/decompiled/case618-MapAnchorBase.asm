// ===== case618-MapAnchorBase @ 0170b6e8 =====
// existing function case618-MapAnchorBase
0170b6e8  sub sp,sp,#0x40
0170b6ec  str x19,[sp, #0x20]
0170b6f0  stp x29,x30,[sp, #0x30]
0170b6f4  add x29,sp,#0x30
0170b6f8  adrp x1,0x174a000
0170b6fc  add x1,x1,#0x87c
0170b700  mov x19,x0
0170b704  bl 0x0124ba40
0170b708  adrp x1,0x575d000
0170b70c  add x1,x1,#0xa06
0170b710  mov x0,x19
0170b714  str x19,[sp]
0170b718  bl 0x01251aa0
0170b71c  mov w8,#0x1
0170b720  str w8,[sp, #0x8]
0170b724  mov x0,sp
0170b728  bl 0x0174aa04
0170b72c  adrp x1,0x576a000
0170b730  adrp x3,0x736d000
0170b734  add x1,x1,#0x656
0170b738  add x3,x3,#0x101
0170b73c  add x0,sp,#0x10
0170b740  mov x2,sp
0170b744  bl 0x018fefb8
0170b748  adrp x1,0x576a000
0170b74c  adrp x2,0x18fe000
0170b750  add x1,x1,#0x206
0170b754  add x2,x2,#0xfa8
0170b758  add x0,sp,#0x10
0170b75c  mov x3,xzr
0170b760  mov x4,xzr
0170b764  mov x5,xzr
0170b768  bl 0x018fedc0
0170b76c  adrp x1,0x576a000
0170b770  adrp x2,0x18fe000
0170b774  add x1,x1,#0x664
0170b778  add x2,x2,#0xfb0
0170b77c  mov x3,xzr
0170b780  mov x4,xzr
0170b784  mov x5,xzr
0170b788  bl 0x018fedc0
0170b78c  mov x19,x0
0170b790  ldr w8,[x19, #0x8]
0170b794  ldr x0,[x19]
0170b798  sub w8,w8,#0x3
0170b79c  str w8,[x19, #0x8]
0170b7a0  orr w1,wzr,#0xfffffffc
0170b7a4  bl 0x0124c4d0
0170b7a8  ldr w8,[x19, #0x8]
0170b7ac  ldr x0,[x19]
0170b7b0  str wzr,[x19, #0x8]
0170b7b4  cmp w8,#0x1
0170b7b8  b.lt 0x0170b7c4
0170b7bc  mvn w1,w8
0170b7c0  bl 0x0124c4d0
0170b7c4  ldr w8,[sp, #0x18]
0170b7c8  cmp w8,#0x1
0170b7cc  b.lt 0x0170b7dc
0170b7d0  ldr x0,[sp, #0x10]
0170b7d4  mvn w1,w8
0170b7d8  bl 0x0124c4d0
0170b7dc  ldr w8,[sp, #0x8]
0170b7e0  cmp w8,#0x1
0170b7e4  b.lt 0x0170b7f4
0170b7e8  ldr x0,[sp]
0170b7ec  mvn w1,w8
0170b7f0  bl 0x0124c4d0
0170b7f4  ldp x29,x30,[sp, #0x30]
0170b7f8  ldr x19,[sp, #0x20]
0170b7fc  add sp,sp,#0x40
0170b800  ret
