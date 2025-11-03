// ===== case111-UnitSelectorData @ 0169e948 =====
// existing function case111-UnitSelectorData
0169e948  sub sp,sp,#0x40
0169e94c  str x19,[sp, #0x20]
0169e950  stp x29,x30,[sp, #0x30]
0169e954  add x29,sp,#0x30
0169e958  adrp x1,0x174a000
0169e95c  add x1,x1,#0x87c
0169e960  mov x19,x0
0169e964  bl 0x0124ba40
0169e968  adrp x1,0x575d000
0169e96c  add x1,x1,#0xa06
0169e970  mov x0,x19
0169e974  str x19,[sp]
0169e978  bl 0x01251aa0
0169e97c  mov w8,#0x1
0169e980  str w8,[sp, #0x8]
0169e984  mov x0,sp
0169e988  bl 0x0174aa04
0169e98c  adrp x1,0x575f000
0169e990  adrp x3,0x736d000
0169e994  add x1,x1,#0x499
0169e998  add x3,x3,#0x101
0169e99c  add x0,sp,#0x10
0169e9a0  mov x2,sp
0169e9a4  bl 0x0178c7e8
0169e9a8  adrp x1,0x5792000
0169e9ac  adrp x2,0x178c000
0169e9b0  adrp x4,0x178c000
0169e9b4  add x1,x1,#0x8c3
0169e9b8  add x2,x2,#0x3d0
0169e9bc  add x4,x4,#0x3d8
0169e9c0  add x0,sp,#0x10
0169e9c4  mov x3,xzr
0169e9c8  mov x5,xzr
0169e9cc  bl 0x0178c1e8
0169e9d0  adrp x1,0x575f000
0169e9d4  adrp x2,0x178c000
0169e9d8  add x1,x1,#0x4aa
0169e9dc  add x2,x2,#0x5c8
0169e9e0  mov x3,xzr
0169e9e4  mov x4,xzr
0169e9e8  mov x5,xzr
0169e9ec  bl 0x0178c3e0
0169e9f0  adrp x1,0x575f000
0169e9f4  adrp x2,0x178c000
0169e9f8  add x1,x1,#0x4b7
0169e9fc  add x2,x2,#0x5d0
0169ea00  mov x3,xzr
0169ea04  mov x4,xzr
0169ea08  mov x5,xzr
0169ea0c  bl 0x0178c3e0
0169ea10  adrp x1,0x575f000
0169ea14  adrp x2,0x178c000
0169ea18  add x1,x1,#0x4c4
0169ea1c  add x2,x2,#0x5d8
0169ea20  mov x3,xzr
0169ea24  mov x4,xzr
0169ea28  mov x5,xzr
0169ea2c  bl 0x0178c3e0
0169ea30  adrp x1,0x575f000
0169ea34  adrp x2,0x178c000
0169ea38  add x1,x1,#0x4d1
0169ea3c  add x2,x2,#0x5e0
0169ea40  mov x3,xzr
0169ea44  mov x4,xzr
0169ea48  mov x5,xzr
0169ea4c  bl 0x0178c3e0
0169ea50  adrp x1,0x575f000
0169ea54  adrp x2,0x178c000
0169ea58  add x1,x1,#0x4de
0169ea5c  add x2,x2,#0x5e8
0169ea60  mov x3,xzr
0169ea64  mov x4,xzr
0169ea68  mov x5,xzr
0169ea6c  bl 0x0178c3e0
0169ea70  adrp x1,0x575f000
0169ea74  adrp x2,0x178c000
0169ea78  adrp x4,0x178c000
0169ea7c  add x1,x1,#0x4eb
0169ea80  add x2,x2,#0x7d8
0169ea84  add x4,x4,#0x7e0
0169ea88  mov x3,xzr
0169ea8c  mov x5,xzr
0169ea90  bl 0x0178c5f0
0169ea94  mov x19,x0
0169ea98  ldr w8,[x19, #0x8]
0169ea9c  ldr x0,[x19]
0169eaa0  sub w8,w8,#0x3
0169eaa4  str w8,[x19, #0x8]
0169eaa8  orr w1,wzr,#0xfffffffc
0169eaac  bl 0x0124c4d0
0169eab0  ldr w8,[x19, #0x8]
0169eab4  ldr x0,[x19]
0169eab8  str wzr,[x19, #0x8]
0169eabc  cmp w8,#0x1
0169eac0  b.lt 0x0169eacc
0169eac4  mvn w1,w8
0169eac8  bl 0x0124c4d0
0169eacc  ldr w8,[sp, #0x18]
0169ead0  cmp w8,#0x1
0169ead4  b.lt 0x0169eae4
0169ead8  ldr x0,[sp, #0x10]
0169eadc  mvn w1,w8
0169eae0  bl 0x0124c4d0
0169eae4  ldr w8,[sp, #0x8]
0169eae8  cmp w8,#0x1
0169eaec  b.lt 0x0169eafc
0169eaf0  ldr x0,[sp]
0169eaf4  mvn w1,w8
0169eaf8  bl 0x0124c4d0
0169eafc  ldp x29,x30,[sp, #0x30]
0169eb00  ldr x19,[sp, #0x20]
0169eb04  add sp,sp,#0x40
0169eb08  ret
