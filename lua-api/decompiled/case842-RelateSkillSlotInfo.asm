// ===== case842-RelateSkillSlotInfo @ 0173d1b4 =====
// existing function case842-RelateSkillSlotInfo
0173d1b4  sub sp,sp,#0x40
0173d1b8  str x19,[sp, #0x20]
0173d1bc  stp x29,x30,[sp, #0x30]
0173d1c0  add x29,sp,#0x30
0173d1c4  adrp x1,0x174a000
0173d1c8  add x1,x1,#0x87c
0173d1cc  mov x19,x0
0173d1d0  bl 0x0124ba40
0173d1d4  adrp x1,0x575d000
0173d1d8  add x1,x1,#0xa06
0173d1dc  mov x0,x19
0173d1e0  str x19,[sp]
0173d1e4  bl 0x01251aa0
0173d1e8  mov w8,#0x1
0173d1ec  str w8,[sp, #0x8]
0173d1f0  mov x0,sp
0173d1f4  bl 0x0174aa04
0173d1f8  adrp x1,0x5772000
0173d1fc  adrp x3,0x736d000
0173d200  add x1,x1,#0xf80
0173d204  add x3,x3,#0x101
0173d208  add x0,sp,#0x10
0173d20c  mov x2,sp
0173d210  bl 0x019e0b30
0173d214  adrp x1,0x5772000
0173d218  adrp x2,0x19e0000
0173d21c  adrp x4,0x19e0000
0173d220  add x1,x1,#0xf94
0173d224  add x2,x2,#0xb00
0173d228  add x4,x4,#0xb08
0173d22c  add x0,sp,#0x10
0173d230  mov x3,xzr
0173d234  mov x5,xzr
0173d238  bl 0x019e0918
0173d23c  adrp x1,0x5768000
0173d240  adrp x2,0x19e0000
0173d244  adrp x4,0x19e0000
0173d248  add x1,x1,#0x6ca
0173d24c  add x2,x2,#0xb10
0173d250  add x4,x4,#0xb18
0173d254  mov x3,xzr
0173d258  mov x5,xzr
0173d25c  bl 0x019e0918
0173d260  adrp x1,0x5768000
0173d264  adrp x2,0x19e0000
0173d268  adrp x4,0x19e0000
0173d26c  add x1,x1,#0xa56
0173d270  add x2,x2,#0xb20
0173d274  add x4,x4,#0xb28
0173d278  mov x3,xzr
0173d27c  mov x5,xzr
0173d280  bl 0x019e0918
0173d284  mov x19,x0
0173d288  ldr w8,[x19, #0x8]
0173d28c  ldr x0,[x19]
0173d290  sub w8,w8,#0x3
0173d294  str w8,[x19, #0x8]
0173d298  orr w1,wzr,#0xfffffffc
0173d29c  bl 0x0124c4d0
0173d2a0  ldr w8,[x19, #0x8]
0173d2a4  ldr x0,[x19]
0173d2a8  str wzr,[x19, #0x8]
0173d2ac  cmp w8,#0x1
0173d2b0  b.lt 0x0173d2bc
0173d2b4  mvn w1,w8
0173d2b8  bl 0x0124c4d0
0173d2bc  ldr w8,[sp, #0x18]
0173d2c0  cmp w8,#0x1
0173d2c4  b.lt 0x0173d2d4
0173d2c8  ldr x0,[sp, #0x10]
0173d2cc  mvn w1,w8
0173d2d0  bl 0x0124c4d0
0173d2d4  ldr w8,[sp, #0x8]
0173d2d8  cmp w8,#0x1
0173d2dc  b.lt 0x0173d2ec
0173d2e0  ldr x0,[sp]
0173d2e4  mvn w1,w8
0173d2e8  bl 0x0124c4d0
0173d2ec  ldp x29,x30,[sp, #0x30]
0173d2f0  ldr x19,[sp, #0x20]
0173d2f4  add sp,sp,#0x40
0173d2f8  ret
