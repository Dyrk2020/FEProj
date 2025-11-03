// ===== case288-CherryHangUpInfoResObject @ 016bd550 =====
// existing function case288-CherryHangUpInfoResObject
016bd550  sub sp,sp,#0x40
016bd554  str x19,[sp, #0x20]
016bd558  stp x29,x30,[sp, #0x30]
016bd55c  add x29,sp,#0x30
016bd560  adrp x1,0x174a000
016bd564  add x1,x1,#0x87c
016bd568  mov x19,x0
016bd56c  bl 0x0124ba40
016bd570  adrp x1,0x575d000
016bd574  add x1,x1,#0xa06
016bd578  mov x0,x19
016bd57c  str x19,[sp]
016bd580  bl 0x01251aa0
016bd584  mov w8,#0x1
016bd588  str w8,[sp, #0x8]
016bd58c  mov x0,sp
016bd590  bl 0x0174aa04
016bd594  adrp x1,0x5762000
016bd598  adrp x3,0x736d000
016bd59c  add x1,x1,#0x3ee
016bd5a0  add x3,x3,#0x101
016bd5a4  add x0,sp,#0x10
016bd5a8  mov x2,sp
016bd5ac  bl 0x017ef854
016bd5b0  adrp x1,0x5762000
016bd5b4  adrp x2,0x17ef000
016bd5b8  adrp x4,0x17ef000
016bd5bc  add x1,x1,#0x408
016bd5c0  add x2,x2,#0x824
016bd5c4  add x4,x4,#0x82c
016bd5c8  add x0,sp,#0x10
016bd5cc  mov x3,xzr
016bd5d0  mov x5,xzr
016bd5d4  bl 0x017ef63c
016bd5d8  adrp x1,0x5762000
016bd5dc  adrp x2,0x17ef000
016bd5e0  adrp x4,0x17ef000
016bd5e4  add x1,x1,#0x41b
016bd5e8  add x2,x2,#0x834
016bd5ec  add x4,x4,#0x83c
016bd5f0  mov x3,xzr
016bd5f4  mov x5,xzr
016bd5f8  bl 0x017ef63c
016bd5fc  adrp x1,0x5762000
016bd600  adrp x2,0x17ef000
016bd604  adrp x4,0x17ef000
016bd608  add x1,x1,#0x42e
016bd60c  add x2,x2,#0x844
016bd610  add x4,x4,#0x84c
016bd614  mov x3,xzr
016bd618  mov x5,xzr
016bd61c  bl 0x017ef63c
016bd620  mov x19,x0
016bd624  ldr w8,[x19, #0x8]
016bd628  ldr x0,[x19]
016bd62c  sub w8,w8,#0x3
016bd630  str w8,[x19, #0x8]
016bd634  orr w1,wzr,#0xfffffffc
016bd638  bl 0x0124c4d0
016bd63c  ldr w8,[x19, #0x8]
016bd640  ldr x0,[x19]
016bd644  str wzr,[x19, #0x8]
016bd648  cmp w8,#0x1
016bd64c  b.lt 0x016bd658
016bd650  mvn w1,w8
016bd654  bl 0x0124c4d0
016bd658  ldr w8,[sp, #0x18]
016bd65c  cmp w8,#0x1
016bd660  b.lt 0x016bd670
016bd664  ldr x0,[sp, #0x10]
016bd668  mvn w1,w8
016bd66c  bl 0x0124c4d0
016bd670  ldr w8,[sp, #0x8]
016bd674  cmp w8,#0x1
016bd678  b.lt 0x016bd688
016bd67c  ldr x0,[sp]
016bd680  mvn w1,w8
016bd684  bl 0x0124c4d0
016bd688  ldp x29,x30,[sp, #0x30]
016bd68c  ldr x19,[sp, #0x20]
016bd690  add sp,sp,#0x40
016bd694  ret
