// ===== case712-ActorCfgData_ActorJointNode @ 01722f18 =====
// existing function case712-ActorCfgData_ActorJointNode
01722f18  sub sp,sp,#0x40
01722f1c  str x19,[sp, #0x20]
01722f20  stp x29,x30,[sp, #0x30]
01722f24  add x29,sp,#0x30
01722f28  adrp x1,0x174a000
01722f2c  add x1,x1,#0x87c
01722f30  mov x19,x0
01722f34  bl 0x0124ba40
01722f38  adrp x1,0x575d000
01722f3c  add x1,x1,#0xa06
01722f40  mov x0,x19
01722f44  str x19,[sp]
01722f48  bl 0x01251aa0
01722f4c  mov w8,#0x1
01722f50  str w8,[sp, #0x8]
01722f54  mov x0,sp
01722f58  bl 0x0174aa04
01722f5c  adrp x1,0x576f000
01722f60  adrp x3,0x736d000
01722f64  add x1,x1,#0x94b
01722f68  add x3,x3,#0x101
01722f6c  add x0,sp,#0x10
01722f70  mov x2,sp
01722f74  bl 0x0196ce78
01722f78  adrp x1,0x576f000
01722f7c  adrp x2,0x196c000
01722f80  adrp x4,0x196c000
01722f84  add x1,x1,#0x967
01722f88  add x2,x2,#0xc28
01722f8c  add x4,x4,#0xc3c
01722f90  add x0,sp,#0x10
01722f94  mov x3,xzr
01722f98  mov x5,xzr
01722f9c  bl 0x0196ca40
01722fa0  adrp x1,0x576f000
01722fa4  adrp x2,0x196c000
01722fa8  adrp x4,0x196c000
01722fac  add x1,x1,#0x973
01722fb0  add x2,x2,#0xe40
01722fb4  add x4,x4,#0xe54
01722fb8  mov x3,xzr
01722fbc  mov x5,xzr
01722fc0  bl 0x0196cc58
01722fc4  mov x19,x0
01722fc8  ldr w8,[x19, #0x8]
01722fcc  ldr x0,[x19]
01722fd0  sub w8,w8,#0x3
01722fd4  str w8,[x19, #0x8]
01722fd8  orr w1,wzr,#0xfffffffc
01722fdc  bl 0x0124c4d0
01722fe0  ldr w8,[x19, #0x8]
01722fe4  ldr x0,[x19]
01722fe8  str wzr,[x19, #0x8]
01722fec  cmp w8,#0x1
01722ff0  b.lt 0x01722ffc
01722ff4  mvn w1,w8
01722ff8  bl 0x0124c4d0
01722ffc  ldr w8,[sp, #0x18]
01723000  cmp w8,#0x1
01723004  b.lt 0x01723014
01723008  ldr x0,[sp, #0x10]
0172300c  mvn w1,w8
01723010  bl 0x0124c4d0
01723014  ldr w8,[sp, #0x8]
01723018  cmp w8,#0x1
0172301c  b.lt 0x0172302c
01723020  ldr x0,[sp]
01723024  mvn w1,w8
01723028  bl 0x0124c4d0
0172302c  ldp x29,x30,[sp, #0x30]
01723030  ldr x19,[sp, #0x20]
01723034  add sp,sp,#0x40
01723038  ret
