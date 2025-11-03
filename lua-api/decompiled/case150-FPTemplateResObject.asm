// ===== case150-FPTemplateResObject @ 016a600c =====
// existing function case150-FPTemplateResObject
016a600c  sub sp,sp,#0x40
016a6010  str x19,[sp, #0x20]
016a6014  stp x29,x30,[sp, #0x30]
016a6018  add x29,sp,#0x30
016a601c  adrp x1,0x174a000
016a6020  add x1,x1,#0x87c
016a6024  mov x19,x0
016a6028  bl 0x0124ba40
016a602c  adrp x1,0x575d000
016a6030  add x1,x1,#0xa06
016a6034  mov x0,x19
016a6038  str x19,[sp]
016a603c  bl 0x01251aa0
016a6040  mov w8,#0x1
016a6044  str w8,[sp, #0x8]
016a6048  mov x0,sp
016a604c  bl 0x0174aa04
016a6050  adrp x1,0x5760000
016a6054  adrp x3,0x736d000
016a6058  add x1,x1,#0x9e
016a605c  add x3,x3,#0x101
016a6060  add x0,sp,#0x10
016a6064  mov x2,sp
016a6068  bl 0x017a015c
016a606c  adrp x1,0x5760000
016a6070  adrp x2,0x17a0000
016a6074  adrp x4,0x17a0000
016a6078  add x1,x1,#0xb2
016a607c  add x2,x2,#0x10c
016a6080  add x4,x4,#0x114
016a6084  add x0,sp,#0x10
016a6088  mov x3,xzr
016a608c  mov x5,xzr
016a6090  bl 0x0179ff24
016a6094  adrp x1,0x5760000
016a6098  adrp x2,0x17a0000
016a609c  adrp x4,0x17a0000
016a60a0  add x1,x1,#0xc2
016a60a4  add x2,x2,#0x11c
016a60a8  add x4,x4,#0x124
016a60ac  mov x3,xzr
016a60b0  mov x5,xzr
016a60b4  bl 0x0179ff24
016a60b8  adrp x1,0x5760000
016a60bc  adrp x2,0x17a0000
016a60c0  adrp x4,0x17a0000
016a60c4  add x1,x1,#0xd1
016a60c8  add x2,x2,#0x12c
016a60cc  add x4,x4,#0x134
016a60d0  mov x3,xzr
016a60d4  mov x5,xzr
016a60d8  bl 0x0179ff24
016a60dc  adrp x1,0x5760000
016a60e0  adrp x2,0x17a0000
016a60e4  adrp x4,0x17a0000
016a60e8  add x1,x1,#0xe4
016a60ec  add x2,x2,#0x13c
016a60f0  add x4,x4,#0x144
016a60f4  mov x3,xzr
016a60f8  mov x5,xzr
016a60fc  bl 0x0179ff24
016a6100  adrp x1,0x5760000
016a6104  adrp x2,0x17a0000
016a6108  adrp x4,0x17a0000
016a610c  add x1,x1,#0xf3
016a6110  add x2,x2,#0x14c
016a6114  add x4,x4,#0x154
016a6118  mov x3,xzr
016a611c  mov x5,xzr
016a6120  bl 0x0179ff24
016a6124  mov x19,x0
016a6128  ldr w8,[x19, #0x8]
016a612c  ldr x0,[x19]
016a6130  sub w8,w8,#0x3
016a6134  str w8,[x19, #0x8]
016a6138  orr w1,wzr,#0xfffffffc
016a613c  bl 0x0124c4d0
016a6140  ldr w8,[x19, #0x8]
016a6144  ldr x0,[x19]
016a6148  str wzr,[x19, #0x8]
016a614c  cmp w8,#0x1
016a6150  b.lt 0x016a615c
016a6154  mvn w1,w8
016a6158  bl 0x0124c4d0
016a615c  ldr w8,[sp, #0x18]
016a6160  cmp w8,#0x1
016a6164  b.lt 0x016a6174
016a6168  ldr x0,[sp, #0x10]
016a616c  mvn w1,w8
016a6170  bl 0x0124c4d0
016a6174  ldr w8,[sp, #0x8]
016a6178  cmp w8,#0x1
016a617c  b.lt 0x016a618c
016a6180  ldr x0,[sp]
016a6184  mvn w1,w8
016a6188  bl 0x0124c4d0
016a618c  ldp x29,x30,[sp, #0x30]
016a6190  ldr x19,[sp, #0x20]
016a6194  add sp,sp,#0x40
016a6198  ret
