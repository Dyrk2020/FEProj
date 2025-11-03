// ===== case107-UnitHeroOperateSetting @ 0169e0b8 =====
// existing function case107-UnitHeroOperateSetting
0169e0b8  sub sp,sp,#0x40
0169e0bc  str x19,[sp, #0x20]
0169e0c0  stp x29,x30,[sp, #0x30]
0169e0c4  add x29,sp,#0x30
0169e0c8  adrp x1,0x174a000
0169e0cc  add x1,x1,#0x87c
0169e0d0  mov x19,x0
0169e0d4  bl 0x0124ba40
0169e0d8  adrp x1,0x575d000
0169e0dc  add x1,x1,#0xa06
0169e0e0  mov x0,x19
0169e0e4  str x19,[sp]
0169e0e8  bl 0x01251aa0
0169e0ec  mov w8,#0x1
0169e0f0  str w8,[sp, #0x8]
0169e0f4  mov x0,sp
0169e0f8  bl 0x0174aa04
0169e0fc  adrp x1,0x575f000
0169e100  adrp x3,0x736d000
0169e104  add x1,x1,#0x382
0169e108  add x3,x3,#0x101
0169e10c  add x0,sp,#0x10
0169e110  mov x2,sp
0169e114  bl 0x0178a9b8
0169e118  adrp x1,0x575f000
0169e11c  adrp x2,0x178a000
0169e120  adrp x4,0x178a000
0169e124  add x1,x1,#0x399
0169e128  add x2,x2,#0x9a8
0169e12c  add x4,x4,#0x9b0
0169e130  add x0,sp,#0x10
0169e134  mov x3,xzr
0169e138  mov x5,xzr
0169e13c  bl 0x0178a7c0
0169e140  mov x19,x0
0169e144  ldr w8,[x19, #0x8]
0169e148  ldr x0,[x19]
0169e14c  sub w8,w8,#0x3
0169e150  str w8,[x19, #0x8]
0169e154  orr w1,wzr,#0xfffffffc
0169e158  bl 0x0124c4d0
0169e15c  ldr w8,[x19, #0x8]
0169e160  ldr x0,[x19]
0169e164  str wzr,[x19, #0x8]
0169e168  cmp w8,#0x1
0169e16c  b.lt 0x0169e178
0169e170  mvn w1,w8
0169e174  bl 0x0124c4d0
0169e178  ldr w8,[sp, #0x18]
0169e17c  cmp w8,#0x1
0169e180  b.lt 0x0169e190
0169e184  ldr x0,[sp, #0x10]
0169e188  mvn w1,w8
0169e18c  bl 0x0124c4d0
0169e190  ldr w8,[sp, #0x8]
0169e194  cmp w8,#0x1
0169e198  b.lt 0x0169e1a8
0169e19c  ldr x0,[sp]
0169e1a0  mvn w1,w8
0169e1a4  bl 0x0124c4d0
0169e1a8  ldp x29,x30,[sp, #0x30]
0169e1ac  ldr x19,[sp, #0x20]
0169e1b0  add sp,sp,#0x40
0169e1b4  ret
