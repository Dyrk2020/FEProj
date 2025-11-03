// ===== case178-SummonerSkillResObject @ 016ab7b4 =====
// existing function case178-SummonerSkillResObject
016ab7b4  sub sp,sp,#0x40
016ab7b8  str x19,[sp, #0x20]
016ab7bc  stp x29,x30,[sp, #0x30]
016ab7c0  add x29,sp,#0x30
016ab7c4  adrp x1,0x174a000
016ab7c8  add x1,x1,#0x87c
016ab7cc  mov x19,x0
016ab7d0  bl 0x0124ba40
016ab7d4  adrp x1,0x575d000
016ab7d8  add x1,x1,#0xa06
016ab7dc  mov x0,x19
016ab7e0  str x19,[sp]
016ab7e4  bl 0x01251aa0
016ab7e8  mov w8,#0x1
016ab7ec  str w8,[sp, #0x8]
016ab7f0  mov x0,sp
016ab7f4  bl 0x0174aa04
016ab7f8  adrp x1,0x5760000
016ab7fc  adrp x3,0x736d000
016ab800  add x1,x1,#0x7e8
016ab804  add x3,x3,#0x101
016ab808  add x0,sp,#0x10
016ab80c  mov x2,sp
016ab810  bl 0x017b01d0
016ab814  adrp x1,0x5760000
016ab818  adrp x2,0x17b0000
016ab81c  adrp x4,0x17b0000
016ab820  add x1,x1,#0x777
016ab824  add x2,x2,#0x1b0
016ab828  add x4,x4,#0x1b8
016ab82c  add x0,sp,#0x10
016ab830  mov x3,xzr
016ab834  mov x5,xzr
016ab838  bl 0x017affc8
016ab83c  adrp x1,0x5760000
016ab840  adrp x2,0x17b0000
016ab844  adrp x4,0x17b0000
016ab848  add x1,x1,#0x780
016ab84c  add x2,x2,#0x1c0
016ab850  add x4,x4,#0x1c8
016ab854  mov x3,xzr
016ab858  mov x5,xzr
016ab85c  bl 0x017affc8
016ab860  mov x19,x0
016ab864  ldr w8,[x19, #0x8]
016ab868  ldr x0,[x19]
016ab86c  sub w8,w8,#0x3
016ab870  str w8,[x19, #0x8]
016ab874  orr w1,wzr,#0xfffffffc
016ab878  bl 0x0124c4d0
016ab87c  ldr w8,[x19, #0x8]
016ab880  ldr x0,[x19]
016ab884  str wzr,[x19, #0x8]
016ab888  cmp w8,#0x1
016ab88c  b.lt 0x016ab898
016ab890  mvn w1,w8
016ab894  bl 0x0124c4d0
016ab898  ldr w8,[sp, #0x18]
016ab89c  cmp w8,#0x1
016ab8a0  b.lt 0x016ab8b0
016ab8a4  ldr x0,[sp, #0x10]
016ab8a8  mvn w1,w8
016ab8ac  bl 0x0124c4d0
016ab8b0  ldr w8,[sp, #0x8]
016ab8b4  cmp w8,#0x1
016ab8b8  b.lt 0x016ab8c8
016ab8bc  ldr x0,[sp]
016ab8c0  mvn w1,w8
016ab8c4  bl 0x0124c4d0
016ab8c8  ldp x29,x30,[sp, #0x30]
016ab8cc  ldr x19,[sp, #0x20]
016ab8d0  add sp,sp,#0x40
016ab8d4  ret
