// ===== case97-BuffTypeGroupResObject @ 0169c444 =====
// existing function case97-BuffTypeGroupResObject
0169c444  sub sp,sp,#0x40
0169c448  str x19,[sp, #0x20]
0169c44c  stp x29,x30,[sp, #0x30]
0169c450  add x29,sp,#0x30
0169c454  adrp x1,0x174a000
0169c458  add x1,x1,#0x87c
0169c45c  mov x19,x0
0169c460  bl 0x0124ba40
0169c464  adrp x1,0x575d000
0169c468  add x1,x1,#0xa06
0169c46c  mov x0,x19
0169c470  str x19,[sp]
0169c474  bl 0x01251aa0
0169c478  mov w8,#0x1
0169c47c  str w8,[sp, #0x8]
0169c480  mov x0,sp
0169c484  bl 0x0174aa04
0169c488  adrp x1,0x575f000
0169c48c  adrp x3,0x736d000
0169c490  add x1,x1,#0x1c7
0169c494  add x3,x3,#0x101
0169c498  add x0,sp,#0x10
0169c49c  mov x2,sp
0169c4a0  bl 0x017862c4
0169c4a4  adrp x1,0x575f000
0169c4a8  adrp x2,0x1786000
0169c4ac  adrp x4,0x1786000
0169c4b0  add x1,x1,#0x1de
0169c4b4  add x2,x2,#0x2b4
0169c4b8  add x4,x4,#0x2bc
0169c4bc  add x0,sp,#0x10
0169c4c0  mov x3,xzr
0169c4c4  mov x5,xzr
0169c4c8  bl 0x017860cc
0169c4cc  mov x19,x0
0169c4d0  ldr w8,[x19, #0x8]
0169c4d4  ldr x0,[x19]
0169c4d8  sub w8,w8,#0x3
0169c4dc  str w8,[x19, #0x8]
0169c4e0  orr w1,wzr,#0xfffffffc
0169c4e4  bl 0x0124c4d0
0169c4e8  ldr w8,[x19, #0x8]
0169c4ec  ldr x0,[x19]
0169c4f0  str wzr,[x19, #0x8]
0169c4f4  cmp w8,#0x1
0169c4f8  b.lt 0x0169c504
0169c4fc  mvn w1,w8
0169c500  bl 0x0124c4d0
0169c504  ldr w8,[sp, #0x18]
0169c508  cmp w8,#0x1
0169c50c  b.lt 0x0169c51c
0169c510  ldr x0,[sp, #0x10]
0169c514  mvn w1,w8
0169c518  bl 0x0124c4d0
0169c51c  ldr w8,[sp, #0x8]
0169c520  cmp w8,#0x1
0169c524  b.lt 0x0169c534
0169c528  ldr x0,[sp]
0169c52c  mvn w1,w8
0169c530  bl 0x0124c4d0
0169c534  ldp x29,x30,[sp, #0x30]
0169c538  ldr x19,[sp, #0x20]
0169c53c  add sp,sp,#0x40
0169c540  ret
