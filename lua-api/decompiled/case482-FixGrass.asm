// ===== case482-FixGrass @ 016f084c =====
// existing function case482-FixGrass
016f084c  sub sp,sp,#0x40
016f0850  str x19,[sp, #0x20]
016f0854  stp x29,x30,[sp, #0x30]
016f0858  add x29,sp,#0x30
016f085c  adrp x1,0x174a000
016f0860  add x1,x1,#0x87c
016f0864  mov x19,x0
016f0868  bl 0x0124ba40
016f086c  adrp x1,0x575d000
016f0870  add x1,x1,#0xa06
016f0874  mov x0,x19
016f0878  str x19,[sp]
016f087c  bl 0x01251aa0
016f0880  mov w8,#0x1
016f0884  str w8,[sp, #0x8]
016f0888  mov x0,sp
016f088c  bl 0x0174aa04
016f0890  adrp x1,0x5767000
016f0894  adrp x3,0x736d000
016f0898  add x1,x1,#0xbe6
016f089c  add x3,x3,#0x101
016f08a0  add x0,sp,#0x10
016f08a4  mov x2,sp
016f08a8  bl 0x018819c8
016f08ac  adrp x1,0x5766000
016f08b0  adrp x2,0x1881000
016f08b4  adrp x4,0x1881000
016f08b8  add x1,x1,#0xa90
016f08bc  add x2,x2,#0x9b8
016f08c0  add x4,x4,#0x9c0
016f08c4  add x0,sp,#0x10
016f08c8  mov x3,xzr
016f08cc  mov x5,xzr
016f08d0  bl 0x018817d0
016f08d4  mov x19,x0
016f08d8  ldr w8,[x19, #0x8]
016f08dc  ldr x0,[x19]
016f08e0  sub w8,w8,#0x3
016f08e4  str w8,[x19, #0x8]
016f08e8  orr w1,wzr,#0xfffffffc
016f08ec  bl 0x0124c4d0
016f08f0  ldr w8,[x19, #0x8]
016f08f4  ldr x0,[x19]
016f08f8  str wzr,[x19, #0x8]
016f08fc  cmp w8,#0x1
016f0900  b.lt 0x016f090c
016f0904  mvn w1,w8
016f0908  bl 0x0124c4d0
016f090c  ldr w8,[sp, #0x18]
016f0910  cmp w8,#0x1
016f0914  b.lt 0x016f0924
016f0918  ldr x0,[sp, #0x10]
016f091c  mvn w1,w8
016f0920  bl 0x0124c4d0
016f0924  ldr w8,[sp, #0x8]
016f0928  cmp w8,#0x1
016f092c  b.lt 0x016f093c
016f0930  ldr x0,[sp]
016f0934  mvn w1,w8
016f0938  bl 0x0124c4d0
016f093c  ldp x29,x30,[sp, #0x30]
016f0940  ldr x19,[sp, #0x20]
016f0944  add sp,sp,#0x40
016f0948  ret
