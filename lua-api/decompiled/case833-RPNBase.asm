// ===== case833-RPNBase @ 0173b620 =====
// existing function case833-RPNBase
0173b620  sub sp,sp,#0x40
0173b624  str x19,[sp, #0x20]
0173b628  stp x29,x30,[sp, #0x30]
0173b62c  add x29,sp,#0x30
0173b630  adrp x1,0x174a000
0173b634  add x1,x1,#0x87c
0173b638  mov x19,x0
0173b63c  bl 0x0124ba40
0173b640  adrp x1,0x575d000
0173b644  add x1,x1,#0xa06
0173b648  mov x0,x19
0173b64c  str x19,[sp]
0173b650  bl 0x01251aa0
0173b654  mov w8,#0x1
0173b658  str w8,[sp, #0x8]
0173b65c  mov x0,sp
0173b660  bl 0x0174aa04
0173b664  adrp x1,0x5772000
0173b668  adrp x3,0x736d000
0173b66c  add x1,x1,#0xc4c
0173b670  add x3,x3,#0x101
0173b674  add x0,sp,#0x10
0173b678  mov x2,sp
0173b67c  bl 0x019d9190
0173b680  adrp x1,0x5772000
0173b684  adrp x2,0x19d9000
0173b688  adrp x4,0x19d9000
0173b68c  add x1,x1,#0xc54
0173b690  add x2,x2,#0x180
0173b694  add x4,x4,#0x188
0173b698  add x0,sp,#0x10
0173b69c  mov x3,xzr
0173b6a0  mov x5,xzr
0173b6a4  bl 0x019d8f98
0173b6a8  mov x19,x0
0173b6ac  ldr w8,[x19, #0x8]
0173b6b0  ldr x0,[x19]
0173b6b4  sub w8,w8,#0x3
0173b6b8  str w8,[x19, #0x8]
0173b6bc  orr w1,wzr,#0xfffffffc
0173b6c0  bl 0x0124c4d0
0173b6c4  ldr w8,[x19, #0x8]
0173b6c8  ldr x0,[x19]
0173b6cc  str wzr,[x19, #0x8]
0173b6d0  cmp w8,#0x1
0173b6d4  b.lt 0x0173b6e0
0173b6d8  mvn w1,w8
0173b6dc  bl 0x0124c4d0
0173b6e0  ldr w8,[sp, #0x18]
0173b6e4  cmp w8,#0x1
0173b6e8  b.lt 0x0173b6f8
0173b6ec  ldr x0,[sp, #0x10]
0173b6f0  mvn w1,w8
0173b6f4  bl 0x0124c4d0
0173b6f8  ldr w8,[sp, #0x8]
0173b6fc  cmp w8,#0x1
0173b700  b.lt 0x0173b710
0173b704  ldr x0,[sp]
0173b708  mvn w1,w8
0173b70c  bl 0x0124c4d0
0173b710  ldp x29,x30,[sp, #0x30]
0173b714  ldr x19,[sp, #0x20]
0173b718  add sp,sp,#0x40
0173b71c  ret
