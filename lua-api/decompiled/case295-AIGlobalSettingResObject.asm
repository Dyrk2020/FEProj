// ===== case295-AIGlobalSettingResObject @ 016be3b8 =====
// existing function case295-AIGlobalSettingResObject
016be3b8  sub sp,sp,#0x40
016be3bc  str x19,[sp, #0x20]
016be3c0  stp x29,x30,[sp, #0x30]
016be3c4  add x29,sp,#0x30
016be3c8  adrp x1,0x174a000
016be3cc  add x1,x1,#0x87c
016be3d0  mov x19,x0
016be3d4  bl 0x0124ba40
016be3d8  adrp x1,0x575d000
016be3dc  add x1,x1,#0xa06
016be3e0  mov x0,x19
016be3e4  str x19,[sp]
016be3e8  bl 0x01251aa0
016be3ec  mov w8,#0x1
016be3f0  str w8,[sp, #0x8]
016be3f4  mov x0,sp
016be3f8  bl 0x0174aa04
016be3fc  adrp x1,0x5762000
016be400  adrp x3,0x736d000
016be404  add x1,x1,#0x5a8
016be408  add x3,x3,#0x101
016be40c  add x0,sp,#0x10
016be410  mov x2,sp
016be414  bl 0x017f2fec
016be418  adrp x1,0x5762000
016be41c  adrp x2,0x17f2000
016be420  adrp x4,0x17f2000
016be424  add x1,x1,#0x5c1
016be428  add x2,x2,#0xfac
016be42c  add x4,x4,#0xfb4
016be430  add x0,sp,#0x10
016be434  mov x3,xzr
016be438  mov x5,xzr
016be43c  bl 0x017f2dc4
016be440  adrp x1,0x5762000
016be444  adrp x2,0x17f2000
016be448  adrp x4,0x17f2000
016be44c  add x1,x1,#0x5cc
016be450  add x2,x2,#0xfbc
016be454  add x4,x4,#0xfc4
016be458  mov x3,xzr
016be45c  mov x5,xzr
016be460  bl 0x017f2dc4
016be464  adrp x1,0x5762000
016be468  adrp x2,0x17f2000
016be46c  adrp x4,0x17f2000
016be470  add x1,x1,#0x5e5
016be474  add x2,x2,#0xfcc
016be478  add x4,x4,#0xfd4
016be47c  mov x3,xzr
016be480  mov x5,xzr
016be484  bl 0x017f2dc4
016be488  adrp x1,0x5762000
016be48c  adrp x2,0x17f2000
016be490  adrp x4,0x17f2000
016be494  add x1,x1,#0x603
016be498  add x2,x2,#0xfdc
016be49c  add x4,x4,#0xfe4
016be4a0  mov x3,xzr
016be4a4  mov x5,xzr
016be4a8  bl 0x017f2dc4
016be4ac  mov x19,x0
016be4b0  ldr w8,[x19, #0x8]
016be4b4  ldr x0,[x19]
016be4b8  sub w8,w8,#0x3
016be4bc  str w8,[x19, #0x8]
016be4c0  orr w1,wzr,#0xfffffffc
016be4c4  bl 0x0124c4d0
016be4c8  ldr w8,[x19, #0x8]
016be4cc  ldr x0,[x19]
016be4d0  str wzr,[x19, #0x8]
016be4d4  cmp w8,#0x1
016be4d8  b.lt 0x016be4e4
016be4dc  mvn w1,w8
016be4e0  bl 0x0124c4d0
016be4e4  ldr w8,[sp, #0x18]
016be4e8  cmp w8,#0x1
016be4ec  b.lt 0x016be4fc
016be4f0  ldr x0,[sp, #0x10]
016be4f4  mvn w1,w8
016be4f8  bl 0x0124c4d0
016be4fc  ldr w8,[sp, #0x8]
016be500  cmp w8,#0x1
016be504  b.lt 0x016be514
016be508  ldr x0,[sp]
016be50c  mvn w1,w8
016be510  bl 0x0124c4d0
016be514  ldp x29,x30,[sp, #0x30]
016be518  ldr x19,[sp, #0x20]
016be51c  add sp,sp,#0x40
016be520  ret
