// ===== case505-GamePlayComponentMgr @ 016f511c =====
// existing function case505-GamePlayComponentMgr
016f511c  sub sp,sp,#0x40
016f5120  str x19,[sp, #0x20]
016f5124  stp x29,x30,[sp, #0x30]
016f5128  add x29,sp,#0x30
016f512c  adrp x1,0x174a000
016f5130  add x1,x1,#0x87c
016f5134  mov x19,x0
016f5138  bl 0x0124ba40
016f513c  adrp x1,0x575d000
016f5140  add x1,x1,#0xa06
016f5144  mov x0,x19
016f5148  str x19,[sp]
016f514c  bl 0x01251aa0
016f5150  mov w8,#0x1
016f5154  str w8,[sp, #0x8]
016f5158  mov x0,sp
016f515c  bl 0x0174aa04
016f5160  adrp x1,0x5768000
016f5164  adrp x3,0x736d000
016f5168  add x1,x1,#0x2d8
016f516c  add x3,x3,#0x101
016f5170  add x0,sp,#0x10
016f5174  mov x2,sp
016f5178  bl 0x018981d0
016f517c  adrp x1,0x5768000
016f5180  adrp x2,0x1898000
016f5184  adrp x4,0x1898000
016f5188  add x1,x1,#0x2cf
016f518c  add x2,x2,#0x1ac
016f5190  add x4,x4,#0x1b4
016f5194  add x0,sp,#0x10
016f5198  mov x3,xzr
016f519c  mov x5,xzr
016f51a0  bl 0x01897fc4
016f51a4  mov x19,x0
016f51a8  ldr w8,[x19, #0x8]
016f51ac  ldr x0,[x19]
016f51b0  sub w8,w8,#0x3
016f51b4  str w8,[x19, #0x8]
016f51b8  orr w1,wzr,#0xfffffffc
016f51bc  bl 0x0124c4d0
016f51c0  ldr w8,[x19, #0x8]
016f51c4  ldr x0,[x19]
016f51c8  str wzr,[x19, #0x8]
016f51cc  cmp w8,#0x1
016f51d0  b.lt 0x016f51dc
016f51d4  mvn w1,w8
016f51d8  bl 0x0124c4d0
016f51dc  ldr w8,[sp, #0x18]
016f51e0  cmp w8,#0x1
016f51e4  b.lt 0x016f51f4
016f51e8  ldr x0,[sp, #0x10]
016f51ec  mvn w1,w8
016f51f0  bl 0x0124c4d0
016f51f4  ldr w8,[sp, #0x8]
016f51f8  cmp w8,#0x1
016f51fc  b.lt 0x016f520c
016f5200  ldr x0,[sp]
016f5204  mvn w1,w8
016f5208  bl 0x0124c4d0
016f520c  ldp x29,x30,[sp, #0x30]
016f5210  ldr x19,[sp, #0x20]
016f5214  add sp,sp,#0x40
016f5218  ret
