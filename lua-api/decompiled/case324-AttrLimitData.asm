// ===== case324-AttrLimitData @ 016c25d8 =====
// existing function case324-AttrLimitData
016c25d8  sub sp,sp,#0x40
016c25dc  str x19,[sp, #0x20]
016c25e0  stp x29,x30,[sp, #0x30]
016c25e4  add x29,sp,#0x30
016c25e8  adrp x1,0x174a000
016c25ec  add x1,x1,#0x87c
016c25f0  mov x19,x0
016c25f4  bl 0x0124ba40
016c25f8  adrp x1,0x575d000
016c25fc  add x1,x1,#0xa06
016c2600  mov x0,x19
016c2604  str x19,[sp]
016c2608  bl 0x01251aa0
016c260c  mov w8,#0x1
016c2610  str w8,[sp, #0x8]
016c2614  mov x0,sp
016c2618  bl 0x0174aa04
016c261c  adrp x1,0x5762000
016c2620  adrp x3,0x736d000
016c2624  add x1,x1,#0xc14
016c2628  add x3,x3,#0x101
016c262c  add x0,sp,#0x10
016c2630  mov x2,sp
016c2634  bl 0x018003dc
016c2638  adrp x1,0x58a2000
016c263c  adrp x2,0x1800000
016c2640  adrp x4,0x1800000
016c2644  add x1,x1,#0x16
016c2648  add x2,x2,#0x3bc
016c264c  add x4,x4,#0x3c4
016c2650  add x0,sp,#0x10
016c2654  mov x3,xzr
016c2658  mov x5,xzr
016c265c  bl 0x018001d4
016c2660  adrp x1,0x58a2000
016c2664  adrp x2,0x1800000
016c2668  adrp x4,0x1800000
016c266c  add x1,x1,#0x1f
016c2670  add x2,x2,#0x3cc
016c2674  add x4,x4,#0x3d4
016c2678  mov x3,xzr
016c267c  mov x5,xzr
016c2680  bl 0x018001d4
016c2684  mov x19,x0
016c2688  ldr w8,[x19, #0x8]
016c268c  ldr x0,[x19]
016c2690  sub w8,w8,#0x3
016c2694  str w8,[x19, #0x8]
016c2698  orr w1,wzr,#0xfffffffc
016c269c  bl 0x0124c4d0
016c26a0  ldr w8,[x19, #0x8]
016c26a4  ldr x0,[x19]
016c26a8  str wzr,[x19, #0x8]
016c26ac  cmp w8,#0x1
016c26b0  b.lt 0x016c26bc
016c26b4  mvn w1,w8
016c26b8  bl 0x0124c4d0
016c26bc  ldr w8,[sp, #0x18]
016c26c0  cmp w8,#0x1
016c26c4  b.lt 0x016c26d4
016c26c8  ldr x0,[sp, #0x10]
016c26cc  mvn w1,w8
016c26d0  bl 0x0124c4d0
016c26d4  ldr w8,[sp, #0x8]
016c26d8  cmp w8,#0x1
016c26dc  b.lt 0x016c26ec
016c26e0  ldr x0,[sp]
016c26e4  mvn w1,w8
016c26e8  bl 0x0124c4d0
016c26ec  ldp x29,x30,[sp, #0x30]
016c26f0  ldr x19,[sp, #0x20]
016c26f4  add sp,sp,#0x40
016c26f8  ret
