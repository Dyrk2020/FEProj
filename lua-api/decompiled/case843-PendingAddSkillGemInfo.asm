// ===== case843-PendingAddSkillGemInfo @ 0173d360 =====
// existing function case843-PendingAddSkillGemInfo
0173d360  sub sp,sp,#0x40
0173d364  str x19,[sp, #0x20]
0173d368  stp x29,x30,[sp, #0x30]
0173d36c  add x29,sp,#0x30
0173d370  adrp x1,0x174a000
0173d374  add x1,x1,#0x87c
0173d378  mov x19,x0
0173d37c  bl 0x0124ba40
0173d380  adrp x1,0x575d000
0173d384  add x1,x1,#0xa06
0173d388  mov x0,x19
0173d38c  str x19,[sp]
0173d390  bl 0x01251aa0
0173d394  mov w8,#0x1
0173d398  str w8,[sp, #0x8]
0173d39c  mov x0,sp
0173d3a0  bl 0x0174aa04
0173d3a4  adrp x1,0x5772000
0173d3a8  adrp x3,0x736d000
0173d3ac  add x1,x1,#0xfa1
0173d3b0  add x3,x3,#0x101
0173d3b4  add x0,sp,#0x10
0173d3b8  mov x2,sp
0173d3bc  bl 0x019e1544
0173d3c0  adrp x1,0x5772000
0173d3c4  adrp x2,0x19e1000
0173d3c8  adrp x4,0x19e1000
0173d3cc  add x1,x1,#0xfb8
0173d3d0  add x2,x2,#0x2fc
0173d3d4  add x4,x4,#0x304
0173d3d8  add x0,sp,#0x10
0173d3dc  mov x3,xzr
0173d3e0  mov x5,xzr
0173d3e4  bl 0x019e1114
0173d3e8  adrp x1,0x575f000
0173d3ec  adrp x2,0x19e1000
0173d3f0  adrp x4,0x19e1000
0173d3f4  add x1,x1,#0x98
0173d3f8  add x2,x2,#0x30c
0173d3fc  add x4,x4,#0x314
0173d400  mov x3,xzr
0173d404  mov x5,xzr
0173d408  bl 0x019e1114
0173d40c  adrp x1,0x575b000
0173d410  adrp x2,0x19e1000
0173d414  adrp x4,0x19e1000
0173d418  add x1,x1,#0x37b
0173d41c  add x2,x2,#0x31c
0173d420  add x4,x4,#0x324
0173d424  mov x3,xzr
0173d428  mov x5,xzr
0173d42c  bl 0x019e1114
0173d430  adrp x1,0x5772000
0173d434  adrp x2,0x19e1000
0173d438  adrp x4,0x19e1000
0173d43c  add x1,x1,#0xfc3
0173d440  add x2,x2,#0x514
0173d444  add x4,x4,#0x51c
0173d448  mov x3,xzr
0173d44c  mov x5,xzr
0173d450  bl 0x019e132c
0173d454  adrp x1,0x5772000
0173d458  adrp x2,0x19e1000
0173d45c  adrp x4,0x19e1000
0173d460  add x1,x1,#0xfd2
0173d464  add x2,x2,#0x524
0173d468  add x4,x4,#0x52c
0173d46c  mov x3,xzr
0173d470  mov x5,xzr
0173d474  bl 0x019e132c
0173d478  adrp x1,0x5760000
0173d47c  adrp x2,0x19e1000
0173d480  adrp x4,0x19e1000
0173d484  add x1,x1,#0xc86
0173d488  add x2,x2,#0x534
0173d48c  add x4,x4,#0x53c
0173d490  mov x3,xzr
0173d494  mov x5,xzr
0173d498  bl 0x019e1114
0173d49c  mov x19,x0
0173d4a0  ldr w8,[x19, #0x8]
0173d4a4  ldr x0,[x19]
0173d4a8  sub w8,w8,#0x3
0173d4ac  str w8,[x19, #0x8]
0173d4b0  orr w1,wzr,#0xfffffffc
0173d4b4  bl 0x0124c4d0
0173d4b8  ldr w8,[x19, #0x8]
0173d4bc  ldr x0,[x19]
0173d4c0  str wzr,[x19, #0x8]
0173d4c4  cmp w8,#0x1
0173d4c8  b.lt 0x0173d4d4
0173d4cc  mvn w1,w8
0173d4d0  bl 0x0124c4d0
0173d4d4  ldr w8,[sp, #0x18]
0173d4d8  cmp w8,#0x1
0173d4dc  b.lt 0x0173d4ec
0173d4e0  ldr x0,[sp, #0x10]
0173d4e4  mvn w1,w8
0173d4e8  bl 0x0124c4d0
0173d4ec  ldr w8,[sp, #0x8]
0173d4f0  cmp w8,#0x1
0173d4f4  b.lt 0x0173d504
0173d4f8  ldr x0,[sp]
0173d4fc  mvn w1,w8
0173d500  bl 0x0124c4d0
0173d504  ldp x29,x30,[sp, #0x30]
0173d508  ldr x19,[sp, #0x20]
0173d50c  add sp,sp,#0x40
0173d510  ret
