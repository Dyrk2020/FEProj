// ===== case11-SharedFix64 @ 0168e5b0 =====
// existing function case11-SharedFix64
0168e5b0  sub sp,sp,#0x40
0168e5b4  str x19,[sp, #0x20]
0168e5b8  stp x29,x30,[sp, #0x30]
0168e5bc  add x29,sp,#0x30
0168e5c0  adrp x1,0x174a000
0168e5c4  add x1,x1,#0x87c
0168e5c8  mov x19,x0
0168e5cc  bl 0x0124ba40
0168e5d0  adrp x1,0x575d000
0168e5d4  add x1,x1,#0xa06
0168e5d8  mov x0,x19
0168e5dc  str x19,[sp]
0168e5e0  bl 0x01251aa0
0168e5e4  mov w8,#0x1
0168e5e8  str w8,[sp, #0x8]
0168e5ec  mov x0,sp
0168e5f0  bl 0x0174aa04
0168e5f4  adrp x1,0x575d000
0168e5f8  adrp x3,0x736d000
0168e5fc  add x1,x1,#0xd2c
0168e600  add x3,x3,#0x101
0168e604  add x0,sp,#0x10
0168e608  mov x2,sp
0168e60c  bl 0x01754e3c
0168e610  adrp x1,0x575d000
0168e614  adrp x2,0x1754000
0168e618  adrp x4,0x1754000
0168e61c  add x1,x1,#0xd23
0168e620  add x2,x2,#0xe2c
0168e624  add x4,x4,#0xe34
0168e628  add x0,sp,#0x10
0168e62c  mov x3,xzr
0168e630  mov x5,xzr
0168e634  bl 0x01754c44
0168e638  mov x19,x0
0168e63c  ldr w8,[x19, #0x8]
0168e640  ldr x0,[x19]
0168e644  sub w8,w8,#0x3
0168e648  str w8,[x19, #0x8]
0168e64c  orr w1,wzr,#0xfffffffc
0168e650  bl 0x0124c4d0
0168e654  ldr w8,[x19, #0x8]
0168e658  ldr x0,[x19]
0168e65c  str wzr,[x19, #0x8]
0168e660  cmp w8,#0x1
0168e664  b.lt 0x0168e670
0168e668  mvn w1,w8
0168e66c  bl 0x0124c4d0
0168e670  ldr w8,[sp, #0x18]
0168e674  cmp w8,#0x1
0168e678  b.lt 0x0168e688
0168e67c  ldr x0,[sp, #0x10]
0168e680  mvn w1,w8
0168e684  bl 0x0124c4d0
0168e688  ldr w8,[sp, #0x8]
0168e68c  cmp w8,#0x1
0168e690  b.lt 0x0168e6a0
0168e694  ldr x0,[sp]
0168e698  mvn w1,w8
0168e69c  bl 0x0124c4d0
0168e6a0  ldp x29,x30,[sp, #0x30]
0168e6a4  ldr x19,[sp, #0x20]
0168e6a8  add sp,sp,#0x40
0168e6ac  ret
