// ===== case848-SkillSlotForbidInfo @ 0173e150 =====
// existing function case848-SkillSlotForbidInfo
0173e150  sub sp,sp,#0x40
0173e154  str x19,[sp, #0x20]
0173e158  stp x29,x30,[sp, #0x30]
0173e15c  add x29,sp,#0x30
0173e160  adrp x1,0x174a000
0173e164  add x1,x1,#0x87c
0173e168  mov x19,x0
0173e16c  bl 0x0124ba40
0173e170  adrp x1,0x575d000
0173e174  add x1,x1,#0xa06
0173e178  mov x0,x19
0173e17c  str x19,[sp]
0173e180  bl 0x01251aa0
0173e184  mov w8,#0x1
0173e188  str w8,[sp, #0x8]
0173e18c  mov x0,sp
0173e190  bl 0x0174aa04
0173e194  adrp x1,0x5773000
0173e198  adrp x3,0x736d000
0173e19c  add x1,x1,#0xd4
0173e1a0  add x3,x3,#0x101
0173e1a4  add x0,sp,#0x10
0173e1a8  mov x2,sp
0173e1ac  bl 0x019e5e40
0173e1b0  adrp x1,0x5773000
0173e1b4  adrp x2,0x19e5000
0173e1b8  adrp x4,0x19e5000
0173e1bc  add x1,x1,#0xe8
0173e1c0  add x2,x2,#0xc10
0173e1c4  add x4,x4,#0xc18
0173e1c8  add x0,sp,#0x10
0173e1cc  mov x3,xzr
0173e1d0  mov x5,xzr
0173e1d4  bl 0x019e5a28
0173e1d8  adrp x1,0x5773000
0173e1dc  adrp x2,0x19e5000
0173e1e0  adrp x4,0x19e5000
0173e1e4  add x1,x1,#0xf3
0173e1e8  add x2,x2,#0xe1c
0173e1ec  add x4,x4,#0xe24
0173e1f0  mov x3,xzr
0173e1f4  mov x5,xzr
0173e1f8  bl 0x019e5c34
0173e1fc  mov x19,x0
0173e200  ldr w8,[x19, #0x8]
0173e204  ldr x0,[x19]
0173e208  sub w8,w8,#0x3
0173e20c  str w8,[x19, #0x8]
0173e210  orr w1,wzr,#0xfffffffc
0173e214  bl 0x0124c4d0
0173e218  ldr w8,[x19, #0x8]
0173e21c  ldr x0,[x19]
0173e220  str wzr,[x19, #0x8]
0173e224  cmp w8,#0x1
0173e228  b.lt 0x0173e234
0173e22c  mvn w1,w8
0173e230  bl 0x0124c4d0
0173e234  ldr w8,[sp, #0x18]
0173e238  cmp w8,#0x1
0173e23c  b.lt 0x0173e24c
0173e240  ldr x0,[sp, #0x10]
0173e244  mvn w1,w8
0173e248  bl 0x0124c4d0
0173e24c  ldr w8,[sp, #0x8]
0173e250  cmp w8,#0x1
0173e254  b.lt 0x0173e264
0173e258  ldr x0,[sp]
0173e25c  mvn w1,w8
0173e260  bl 0x0124c4d0
0173e264  ldp x29,x30,[sp, #0x30]
0173e268  ldr x19,[sp, #0x20]
0173e26c  add sp,sp,#0x40
0173e270  ret
