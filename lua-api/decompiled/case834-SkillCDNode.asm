// ===== case834-SkillCDNode @ 0173b778 =====
// existing function case834-SkillCDNode
0173b778  sub sp,sp,#0x40
0173b77c  str x19,[sp, #0x20]
0173b780  stp x29,x30,[sp, #0x30]
0173b784  add x29,sp,#0x30
0173b788  adrp x1,0x174a000
0173b78c  add x1,x1,#0x87c
0173b790  mov x19,x0
0173b794  bl 0x0124ba40
0173b798  adrp x1,0x575d000
0173b79c  add x1,x1,#0xa06
0173b7a0  mov x0,x19
0173b7a4  str x19,[sp]
0173b7a8  bl 0x01251aa0
0173b7ac  mov w8,#0x1
0173b7b0  str w8,[sp, #0x8]
0173b7b4  mov x0,sp
0173b7b8  bl 0x0174aa04
0173b7bc  adrp x1,0x5772000
0173b7c0  adrp x3,0x736d000
0173b7c4  add x1,x1,#0xc5c
0173b7c8  add x3,x3,#0x101
0173b7cc  add x0,sp,#0x10
0173b7d0  mov x2,sp
0173b7d4  bl 0x019d996c
0173b7d8  adrp x1,0x5772000
0173b7dc  adrp x2,0x19d9000
0173b7e0  adrp x4,0x19d9000
0173b7e4  add x1,x1,#0xc68
0173b7e8  add x2,x2,#0x95c
0173b7ec  add x4,x4,#0x964
0173b7f0  add x0,sp,#0x10
0173b7f4  mov x3,xzr
0173b7f8  mov x5,xzr
0173b7fc  bl 0x019d9774
0173b800  mov x19,x0
0173b804  ldr w8,[x19, #0x8]
0173b808  ldr x0,[x19]
0173b80c  sub w8,w8,#0x3
0173b810  str w8,[x19, #0x8]
0173b814  orr w1,wzr,#0xfffffffc
0173b818  bl 0x0124c4d0
0173b81c  ldr w8,[x19, #0x8]
0173b820  ldr x0,[x19]
0173b824  str wzr,[x19, #0x8]
0173b828  cmp w8,#0x1
0173b82c  b.lt 0x0173b838
0173b830  mvn w1,w8
0173b834  bl 0x0124c4d0
0173b838  ldr w8,[sp, #0x18]
0173b83c  cmp w8,#0x1
0173b840  b.lt 0x0173b850
0173b844  ldr x0,[sp, #0x10]
0173b848  mvn w1,w8
0173b84c  bl 0x0124c4d0
0173b850  ldr w8,[sp, #0x8]
0173b854  cmp w8,#0x1
0173b858  b.lt 0x0173b868
0173b85c  ldr x0,[sp]
0173b860  mvn w1,w8
0173b864  bl 0x0124c4d0
0173b868  ldp x29,x30,[sp, #0x30]
0173b86c  ldr x19,[sp, #0x20]
0173b870  add sp,sp,#0x40
0173b874  ret
