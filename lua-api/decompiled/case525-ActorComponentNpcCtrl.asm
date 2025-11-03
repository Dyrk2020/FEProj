// ===== case525-ActorComponentNpcCtrl @ 016f8904 =====
// existing function case525-ActorComponentNpcCtrl
016f8904  sub sp,sp,#0x40
016f8908  str x19,[sp, #0x20]
016f890c  stp x29,x30,[sp, #0x30]
016f8910  add x29,sp,#0x30
016f8914  adrp x1,0x174a000
016f8918  add x1,x1,#0x87c
016f891c  mov x19,x0
016f8920  bl 0x0124ba40
016f8924  adrp x1,0x575d000
016f8928  add x1,x1,#0xa06
016f892c  mov x0,x19
016f8930  str x19,[sp]
016f8934  bl 0x01251aa0
016f8938  mov w8,#0x1
016f893c  str w8,[sp, #0x8]
016f8940  mov x0,sp
016f8944  bl 0x0174aa04
016f8948  adrp x1,0x5768000
016f894c  adrp x3,0x736d000
016f8950  add x1,x1,#0xa11
016f8954  add x3,x3,#0x101
016f8958  add x0,sp,#0x10
016f895c  mov x2,sp
016f8960  bl 0x018ad760
016f8964  adrp x1,0x5768000
016f8968  adrp x2,0x18ad000
016f896c  adrp x4,0x18ad000
016f8970  add x1,x1,#0xa27
016f8974  add x2,x2,#0x750
016f8978  add x4,x4,#0x758
016f897c  add x0,sp,#0x10
016f8980  mov x3,xzr
016f8984  mov x5,xzr
016f8988  bl 0x018ad568
016f898c  mov x19,x0
016f8990  ldr w8,[x19, #0x8]
016f8994  ldr x0,[x19]
016f8998  sub w8,w8,#0x3
016f899c  str w8,[x19, #0x8]
016f89a0  orr w1,wzr,#0xfffffffc
016f89a4  bl 0x0124c4d0
016f89a8  ldr w8,[x19, #0x8]
016f89ac  ldr x0,[x19]
016f89b0  str wzr,[x19, #0x8]
016f89b4  cmp w8,#0x1
016f89b8  b.lt 0x016f89c4
016f89bc  mvn w1,w8
016f89c0  bl 0x0124c4d0
016f89c4  ldr w8,[sp, #0x18]
016f89c8  cmp w8,#0x1
016f89cc  b.lt 0x016f89dc
016f89d0  ldr x0,[sp, #0x10]
016f89d4  mvn w1,w8
016f89d8  bl 0x0124c4d0
016f89dc  ldr w8,[sp, #0x8]
016f89e0  cmp w8,#0x1
016f89e4  b.lt 0x016f89f4
016f89e8  ldr x0,[sp]
016f89ec  mvn w1,w8
016f89f0  bl 0x0124c4d0
016f89f4  ldp x29,x30,[sp, #0x30]
016f89f8  ldr x19,[sp, #0x20]
016f89fc  add sp,sp,#0x40
016f8a00  ret
