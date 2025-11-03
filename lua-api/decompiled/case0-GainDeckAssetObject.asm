// ===== case0-GainDeckAssetObject @ 0168c558 =====
// existing function case0_GainDeckAssetObject
0168c558  sub sp,sp,#0x40
0168c55c  str x19,[sp, #0x20]
0168c560  stp x29,x30,[sp, #0x30]
0168c564  add x29,sp,#0x30
0168c568  adrp x1,0x174a000
0168c56c  add x1,x1,#0x87c
0168c570  mov x19,x0
0168c574  bl 0x0124ba40
0168c578  adrp x1,0x575d000
0168c57c  add x1,x1,#0xa06
0168c580  mov x0,x19
0168c584  str x19,[sp]
0168c588  bl 0x01251aa0
0168c58c  mov w8,#0x1
0168c590  str w8,[sp, #0x8]
0168c594  mov x0,sp
0168c598  bl 0x0174aa04
0168c59c  adrp x1,0x575d000
0168c5a0  adrp x3,0x736d000
0168c5a4  add x1,x1,#0x9ec
0168c5a8  add x3,x3,#0x101
0168c5ac  add x0,sp,#0x10
0168c5b0  mov x2,sp
0168c5b4  bl 0x0174ab04
0168c5b8  adrp x1,0x575d000
0168c5bc  adrp x2,0x174a000
0168c5c0  adrp x4,0x174a000
0168c5c4  add x1,x1,#0xa00
0168c5c8  add x2,x2,#0x86c
0168c5cc  add x4,x4,#0x874
0168c5d0  add x0,sp,#0x10
0168c5d4  mov x3,xzr
0168c5d8  mov x5,xzr
0168c5dc  bl 0x0174a684
0168c5e0  mov x19,x0
0168c5e4  ldr w8,[x19, #0x8]
0168c5e8  ldr x0,[x19]
0168c5ec  sub w8,w8,#0x3
0168c5f0  str w8,[x19, #0x8]
0168c5f4  orr w1,wzr,#0xfffffffc
0168c5f8  bl 0x0124c4d0
0168c5fc  ldr w8,[x19, #0x8]
0168c600  ldr x0,[x19]
0168c604  str wzr,[x19, #0x8]
0168c608  cmp w8,#0x1
0168c60c  b.lt 0x0168c618
0168c610  mvn w1,w8
0168c614  bl 0x0124c4d0
0168c618  ldr w8,[sp, #0x18]
0168c61c  cmp w8,#0x1
0168c620  b.lt 0x0168c630
0168c624  ldr x0,[sp, #0x10]
0168c628  mvn w1,w8
0168c62c  bl 0x0124c4d0
0168c630  ldr w8,[sp, #0x8]
0168c634  cmp w8,#0x1
0168c638  b.lt 0x0168c648
0168c63c  ldr x0,[sp]
0168c640  mvn w1,w8
0168c644  bl 0x0124c4d0
0168c648  ldp x29,x30,[sp, #0x30]
0168c64c  ldr x19,[sp, #0x20]
0168c650  add sp,sp,#0x40
0168c654  ret
