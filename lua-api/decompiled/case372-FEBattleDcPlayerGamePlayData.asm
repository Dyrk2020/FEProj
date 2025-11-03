// ===== case372-FEBattleDcPlayerGamePlayData @ 016d65c8 =====
// existing function case372-FEBattleDcPlayerGamePlayData
016d65c8  sub sp,sp,#0x40
016d65cc  str x19,[sp, #0x20]
016d65d0  stp x29,x30,[sp, #0x30]
016d65d4  add x29,sp,#0x30
016d65d8  adrp x1,0x174a000
016d65dc  add x1,x1,#0x87c
016d65e0  mov x19,x0
016d65e4  bl 0x0124ba40
016d65e8  adrp x1,0x575d000
016d65ec  add x1,x1,#0xa06
016d65f0  mov x0,x19
016d65f4  str x19,[sp]
016d65f8  bl 0x01251aa0
016d65fc  mov w8,#0x1
016d6600  str w8,[sp, #0x8]
016d6604  mov x0,sp
016d6608  bl 0x0174aa04
016d660c  adrp x1,0x5764000
016d6610  adrp x3,0x736d000
016d6614  add x1,x1,#0x9fd
016d6618  add x3,x3,#0x101
016d661c  add x0,sp,#0x10
016d6620  mov x2,sp
016d6624  bl 0x0182f220
016d6628  adrp x1,0x5763000
016d662c  adrp x2,0x182e000
016d6630  add x1,x1,#0xe22
016d6634  add x2,x2,#0xe20
016d6638  add x0,sp,#0x10
016d663c  mov x3,xzr
016d6640  mov x4,xzr
016d6644  mov x5,xzr
016d6648  bl 0x0182ec38
016d664c  adrp x1,0x5763000
016d6650  adrp x2,0x182f000
016d6654  add x1,x1,#0xe35
016d6658  add x2,x2,#0x10
016d665c  mov x3,xzr
016d6660  mov x4,xzr
016d6664  mov x5,xzr
016d6668  bl 0x0182ee28
016d666c  adrp x1,0x5763000
016d6670  adrp x2,0x182f000
016d6674  add x1,x1,#0xe4a
016d6678  add x2,x2,#0x18
016d667c  mov x3,xzr
016d6680  mov x4,xzr
016d6684  mov x5,xzr
016d6688  bl 0x0182ec38
016d668c  adrp x1,0x5763000
016d6690  adrp x2,0x182f000
016d6694  add x1,x1,#0xe5d
016d6698  add x2,x2,#0x20
016d669c  mov x3,xzr
016d66a0  mov x4,xzr
016d66a4  mov x5,xzr
016d66a8  bl 0x0182ee28
016d66ac  adrp x1,0x5763000
016d66b0  adrp x2,0x182f000
016d66b4  adrp x4,0x182f000
016d66b8  add x1,x1,#0xe72
016d66bc  add x2,x2,#0x210
016d66c0  add x4,x4,#0x218
016d66c4  mov x3,xzr
016d66c8  mov x5,xzr
016d66cc  bl 0x0182f028
016d66d0  mov x19,x0
016d66d4  ldr w8,[x19, #0x8]
016d66d8  ldr x0,[x19]
016d66dc  sub w8,w8,#0x3
016d66e0  str w8,[x19, #0x8]
016d66e4  orr w1,wzr,#0xfffffffc
016d66e8  bl 0x0124c4d0
016d66ec  ldr w8,[x19, #0x8]
016d66f0  ldr x0,[x19]
016d66f4  str wzr,[x19, #0x8]
016d66f8  cmp w8,#0x1
016d66fc  b.lt 0x016d6708
016d6700  mvn w1,w8
016d6704  bl 0x0124c4d0
016d6708  ldr w8,[sp, #0x18]
016d670c  cmp w8,#0x1
016d6710  b.lt 0x016d6720
016d6714  ldr x0,[sp, #0x10]
016d6718  mvn w1,w8
016d671c  bl 0x0124c4d0
016d6720  ldr w8,[sp, #0x8]
016d6724  cmp w8,#0x1
016d6728  b.lt 0x016d6738
016d672c  ldr x0,[sp]
016d6730  mvn w1,w8
016d6734  bl 0x0124c4d0
016d6738  ldp x29,x30,[sp, #0x30]
016d673c  ldr x19,[sp, #0x20]
016d6740  add sp,sp,#0x40
016d6744  ret
