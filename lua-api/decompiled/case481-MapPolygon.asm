// ===== case481-MapPolygon @ 016f05b4 =====
// existing function case481-MapPolygon
016f05b4  sub sp,sp,#0x40
016f05b8  stp x20,x19,[sp, #0x20]
016f05bc  stp x29,x30,[sp, #0x30]
016f05c0  add x29,sp,#0x30
016f05c4  adrp x1,0x174a000
016f05c8  add x1,x1,#0x87c
016f05cc  mov x19,x0
016f05d0  bl 0x0124ba40
016f05d4  adrp x1,0x575d000
016f05d8  add x1,x1,#0xa06
016f05dc  mov x0,x19
016f05e0  str x19,[sp]
016f05e4  bl 0x01251aa0
016f05e8  mov w8,#0x1
016f05ec  str w8,[sp, #0x8]
016f05f0  mov x0,sp
016f05f4  bl 0x0174aa04
016f05f8  adrp x1,0x5767000
016f05fc  adrp x3,0x736d000
016f0600  add x1,x1,#0xbc0
016f0604  add x3,x3,#0x101
016f0608  add x0,sp,#0x10
016f060c  mov x2,sp
016f0610  bl 0x01880cbc
016f0614  ldr x0,[sp, #0x10]
016f0618  mov w1,#0x10
016f061c  bl 0x0124cba0
016f0620  adrp x8,0x1880000
016f0624  dup v0.2D,xzr
016f0628  add x8,x8,#0x89c
016f062c  mov v0.D[0x0],x8
016f0630  str q0,[x0]
016f0634  ldr x0,[sp, #0x10]
016f0638  adrp x1,0x1881000
016f063c  add x1,x1,#0x80
016f0640  mov w2,#0x1
016f0644  bl 0x0124ec90
016f0648  ldr x0,[sp, #0x10]
016f064c  mov w1,#0xffffffff
016f0650  bl 0x0124c0c0
016f0654  ldr x19,[sp, #0x10]
016f0658  orr w1,wzr,#0xfffffffb
016f065c  mov w2,#0x6e7
016f0660  mov x0,x19
016f0664  bl 0x0124a650
016f0668  orr w1,wzr,#0xfffffffe
016f066c  mov x0,x19
016f0670  bl 0x0124c0c0
016f0674  orr w1,wzr,#0xfffffffe
016f0678  mov x0,x19
016f067c  bl 0x0124e920
016f0680  mov w20,w0
016f0684  adrp x1,0x5767000
016f0688  add x1,x1,#0xbcb
016f068c  mov x0,x19
016f0690  bl 0x0124f120
016f0694  orr w1,wzr,#0xfffffffe
016f0698  mov w2,#0x1
016f069c  mov x0,x19
016f06a0  bl 0x0124cfc0
016f06a4  mov x0,x19
016f06a8  mov w1,w20
016f06ac  bl 0x0124e060
016f06b0  orr w1,wzr,#0xfffffffd
016f06b4  mov x0,x19
016f06b8  bl 0x0124c4d0
016f06bc  ldr x19,[sp, #0x10]
016f06c0  orr w1,wzr,#0xfffffffd
016f06c4  mov w2,#0x6e7
016f06c8  mov x0,x19
016f06cc  bl 0x0124a650
016f06d0  orr w1,wzr,#0xfffffffe
016f06d4  mov x0,x19
016f06d8  bl 0x0124c0c0
016f06dc  orr w1,wzr,#0xfffffffe
016f06e0  mov x0,x19
016f06e4  bl 0x0124e920
016f06e8  mov w20,w0
016f06ec  adrp x1,0x5767000
016f06f0  add x1,x1,#0xbcb
016f06f4  mov x0,x19
016f06f8  bl 0x0124f120
016f06fc  orr w1,wzr,#0xfffffffe
016f0700  mov w2,#0x1
016f0704  mov x0,x19
016f0708  bl 0x0124cfc0
016f070c  mov x0,x19
016f0710  mov w1,w20
016f0714  bl 0x0124e060
016f0718  orr w1,wzr,#0xfffffffd
016f071c  mov x0,x19
016f0720  bl 0x0124c4d0
016f0724  adrp x1,0x5767000
016f0728  adrp x2,0x1880000
016f072c  adrp x4,0x1880000
016f0730  add x1,x1,#0xbd4
016f0734  add x2,x2,#0xa8c
016f0738  add x4,x4,#0xaa0
016f073c  add x0,sp,#0x10
016f0740  mov x3,xzr
016f0744  mov x5,xzr
016f0748  bl 0x018808a4
016f074c  adrp x1,0x5767000
016f0750  adrp x2,0x1880000
016f0754  adrp x4,0x1880000
016f0758  add x1,x1,#0xbd9
016f075c  add x2,x2,#0xcac
016f0760  add x4,x4,#0xcb4
016f0764  mov x3,xzr
016f0768  mov x5,xzr
016f076c  bl 0x01880ac4
016f0770  mov x19,x0
016f0774  ldr w8,[x19, #0x8]
016f0778  ldr x0,[x19]
016f077c  sub w8,w8,#0x3
016f0780  str w8,[x19, #0x8]
016f0784  orr w1,wzr,#0xfffffffc
016f0788  bl 0x0124c4d0
016f078c  ldr w8,[x19, #0x8]
016f0790  ldr x0,[x19]
016f0794  str wzr,[x19, #0x8]
016f0798  cmp w8,#0x1
016f079c  b.lt 0x016f07a8
016f07a0  mvn w1,w8
016f07a4  bl 0x0124c4d0
016f07a8  ldr w8,[sp, #0x18]
016f07ac  cmp w8,#0x1
016f07b0  b.lt 0x016f07c0
016f07b4  ldr x0,[sp, #0x10]
016f07b8  mvn w1,w8
016f07bc  bl 0x0124c4d0
016f07c0  ldr w8,[sp, #0x8]
016f07c4  cmp w8,#0x1
016f07c8  b.lt 0x016f07d8
016f07cc  ldr x0,[sp]
016f07d0  mvn w1,w8
016f07d4  bl 0x0124c4d0
016f07d8  ldp x29,x30,[sp, #0x30]
016f07dc  ldp x20,x19,[sp, #0x20]
016f07e0  add sp,sp,#0x40
016f07e4  ret
