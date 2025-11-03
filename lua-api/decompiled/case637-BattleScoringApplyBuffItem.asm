// ===== case637-BattleScoringApplyBuffItem @ 0170f7ec =====
// existing function case637-BattleScoringApplyBuffItem
0170f7ec  sub sp,sp,#0x50
0170f7f0  str x21,[sp, #0x20]
0170f7f4  stp x20,x19,[sp, #0x30]
0170f7f8  stp x29,x30,[sp, #0x40]
0170f7fc  add x29,sp,#0x40
0170f800  adrp x1,0x174a000
0170f804  add x1,x1,#0x87c
0170f808  mov x19,x0
0170f80c  bl 0x0124ba40
0170f810  adrp x1,0x575d000
0170f814  add x1,x1,#0xa06
0170f818  mov x0,x19
0170f81c  str x19,[sp]
0170f820  bl 0x01251aa0
0170f824  mov w8,#0x1
0170f828  str w8,[sp, #0x8]
0170f82c  mov x0,sp
0170f830  bl 0x0174aa04
0170f834  adrp x1,0x576a000
0170f838  adrp x3,0x736d000
0170f83c  add x1,x1,#0xbdc
0170f840  add x3,x3,#0x101
0170f844  add x0,sp,#0x10
0170f848  mov x2,sp
0170f84c  bl 0x01910af0
0170f850  adrp x1,0x5768000
0170f854  adrp x2,0x1910000
0170f858  adrp x4,0x1910000
0170f85c  add x1,x1,#0xa4d
0170f860  add x2,x2,#0xac8
0170f864  add x4,x4,#0xad0
0170f868  add x0,sp,#0x10
0170f86c  mov x3,xzr
0170f870  mov x5,xzr
0170f874  bl 0x019108e0
0170f878  adrp x1,0x576a000
0170f87c  adrp x2,0x1910000
0170f880  adrp x4,0x1910000
0170f884  add x1,x1,#0xbf7
0170f888  add x2,x2,#0xad8
0170f88c  add x4,x4,#0xae0
0170f890  mov x3,xzr
0170f894  mov x5,xzr
0170f898  bl 0x019108e0
0170f89c  mov x19,x0
0170f8a0  ldr x0,[x19]
0170f8a4  mov w1,#0x10
0170f8a8  bl 0x0124cba0
0170f8ac  adrp x8,0x1910000
0170f8b0  dup v0.2D,xzr
0170f8b4  add x8,x8,#0xae8
0170f8b8  mov v0.D[0x0],x8
0170f8bc  str q0,[x0]
0170f8c0  ldr x0,[x19]
0170f8c4  adrp x1,0x1911000
0170f8c8  add x1,x1,#0xd4
0170f8cc  mov w2,#0x1
0170f8d0  bl 0x0124ec90
0170f8d4  ldr x0,[x19]
0170f8d8  mov w1,#0xffffffff
0170f8dc  bl 0x0124c0c0
0170f8e0  ldr x20,[x19]
0170f8e4  orr w1,wzr,#0xfffffffb
0170f8e8  mov w2,#0x6e7
0170f8ec  mov x0,x20
0170f8f0  bl 0x0124a650
0170f8f4  orr w1,wzr,#0xfffffffe
0170f8f8  mov x0,x20
0170f8fc  bl 0x0124c0c0
0170f900  orr w1,wzr,#0xfffffffe
0170f904  mov x0,x20
0170f908  bl 0x0124e920
0170f90c  mov w21,w0
0170f910  adrp x1,0x576a000
0170f914  add x1,x1,#0xc05
0170f918  mov x0,x20
0170f91c  bl 0x0124f120
0170f920  orr w1,wzr,#0xfffffffe
0170f924  mov w2,#0x1
0170f928  mov x0,x20
0170f92c  bl 0x0124cfc0
0170f930  mov x0,x20
0170f934  mov w1,w21
0170f938  bl 0x0124e060
0170f93c  orr w1,wzr,#0xfffffffd
0170f940  mov x0,x20
0170f944  bl 0x0124c4d0
0170f948  ldr x20,[x19]
0170f94c  orr w1,wzr,#0xfffffffd
0170f950  mov w2,#0x6e7
0170f954  mov x0,x20
0170f958  bl 0x0124a650
0170f95c  orr w1,wzr,#0xfffffffe
0170f960  mov x0,x20
0170f964  bl 0x0124c0c0
0170f968  orr w1,wzr,#0xfffffffe
0170f96c  mov x0,x20
0170f970  bl 0x0124e920
0170f974  mov w21,w0
0170f978  adrp x1,0x576a000
0170f97c  add x1,x1,#0xc05
0170f980  mov x0,x20
0170f984  bl 0x0124f120
0170f988  orr w1,wzr,#0xfffffffe
0170f98c  mov w2,#0x1
0170f990  mov x0,x20
0170f994  bl 0x0124cfc0
0170f998  mov x0,x20
0170f99c  mov w1,w21
0170f9a0  bl 0x0124e060
0170f9a4  orr w1,wzr,#0xfffffffd
0170f9a8  mov x0,x20
0170f9ac  bl 0x0124c4d0
0170f9b0  ldr w8,[x19, #0x8]
0170f9b4  ldr x0,[x19]
0170f9b8  sub w8,w8,#0x3
0170f9bc  str w8,[x19, #0x8]
0170f9c0  orr w1,wzr,#0xfffffffc
0170f9c4  bl 0x0124c4d0
0170f9c8  ldr w8,[x19, #0x8]
0170f9cc  ldr x0,[x19]
0170f9d0  str wzr,[x19, #0x8]
0170f9d4  cmp w8,#0x1
0170f9d8  b.lt 0x0170f9e4
0170f9dc  mvn w1,w8
0170f9e0  bl 0x0124c4d0
0170f9e4  ldr w8,[sp, #0x18]
0170f9e8  cmp w8,#0x1
0170f9ec  b.lt 0x0170f9fc
0170f9f0  ldr x0,[sp, #0x10]
0170f9f4  mvn w1,w8
0170f9f8  bl 0x0124c4d0
0170f9fc  ldr w8,[sp, #0x8]
0170fa00  cmp w8,#0x1
0170fa04  b.lt 0x0170fa14
0170fa08  ldr x0,[sp]
0170fa0c  mvn w1,w8
0170fa10  bl 0x0124c4d0
0170fa14  ldp x29,x30,[sp, #0x40]
0170fa18  ldp x20,x19,[sp, #0x30]
0170fa1c  ldr x21,[sp, #0x20]
0170fa20  add sp,sp,#0x50
0170fa24  ret
