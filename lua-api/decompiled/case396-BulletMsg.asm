// ===== case396-BulletMsg @ 016de3e8 =====
// existing function case396-BulletMsg
016de3e8  sub sp,sp,#0x40
016de3ec  str x19,[sp, #0x20]
016de3f0  stp x29,x30,[sp, #0x30]
016de3f4  add x29,sp,#0x30
016de3f8  adrp x1,0x174a000
016de3fc  add x1,x1,#0x87c
016de400  mov x19,x0
016de404  bl 0x0124ba40
016de408  adrp x1,0x575d000
016de40c  add x1,x1,#0xa06
016de410  mov x0,x19
016de414  str x19,[sp]
016de418  bl 0x01251aa0
016de41c  mov w8,#0x1
016de420  str w8,[sp, #0x8]
016de424  mov x0,sp
016de428  bl 0x0174aa04
016de42c  adrp x1,0x5765000
016de430  adrp x3,0x736d000
016de434  add x1,x1,#0x68a
016de438  add x3,x3,#0x101
016de43c  add x0,sp,#0x10
016de440  mov x2,sp
016de444  bl 0x01845f3c
016de448  adrp x1,0x5765000
016de44c  adrp x2,0x1845000
016de450  adrp x4,0x1845000
016de454  add x1,x1,#0x680
016de458  add x2,x2,#0xf2c
016de45c  add x4,x4,#0xf34
016de460  add x0,sp,#0x10
016de464  mov x3,xzr
016de468  mov x5,xzr
016de46c  bl 0x01845d44
016de470  mov x19,x0
016de474  ldr w8,[x19, #0x8]
016de478  ldr x0,[x19]
016de47c  sub w8,w8,#0x3
016de480  str w8,[x19, #0x8]
016de484  orr w1,wzr,#0xfffffffc
016de488  bl 0x0124c4d0
016de48c  ldr w8,[x19, #0x8]
016de490  ldr x0,[x19]
016de494  str wzr,[x19, #0x8]
016de498  cmp w8,#0x1
016de49c  b.lt 0x016de4a8
016de4a0  mvn w1,w8
016de4a4  bl 0x0124c4d0
016de4a8  ldr w8,[sp, #0x18]
016de4ac  cmp w8,#0x1
016de4b0  b.lt 0x016de4c0
016de4b4  ldr x0,[sp, #0x10]
016de4b8  mvn w1,w8
016de4bc  bl 0x0124c4d0
016de4c0  ldr w8,[sp, #0x8]
016de4c4  cmp w8,#0x1
016de4c8  b.lt 0x016de4d8
016de4cc  ldr x0,[sp]
016de4d0  mvn w1,w8
016de4d4  bl 0x0124c4d0
016de4d8  ldp x29,x30,[sp, #0x30]
016de4dc  ldr x19,[sp, #0x20]
016de4e0  add sp,sp,#0x40
016de4e4  ret
