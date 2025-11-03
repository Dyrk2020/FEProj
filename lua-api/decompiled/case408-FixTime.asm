// ===== case408-FixTime @ 016e290c =====
// existing function case408-FixTime
016e290c  sub sp,sp,#0x40
016e2910  str x19,[sp, #0x20]
016e2914  stp x29,x30,[sp, #0x30]
016e2918  add x29,sp,#0x30
016e291c  adrp x1,0x174a000
016e2920  add x1,x1,#0x87c
016e2924  mov x19,x0
016e2928  bl 0x0124ba40
016e292c  adrp x1,0x575d000
016e2930  add x1,x1,#0xa06
016e2934  mov x0,x19
016e2938  str x19,[sp]
016e293c  bl 0x01251aa0
016e2940  mov w8,#0x1
016e2944  str w8,[sp, #0x8]
016e2948  mov x0,sp
016e294c  bl 0x0174aa04
016e2950  adrp x1,0x5768000
016e2954  adrp x3,0x736d000
016e2958  add x1,x1,#0x142
016e295c  add x3,x3,#0x101
016e2960  add x0,sp,#0x10
016e2964  mov x2,sp
016e2968  bl 0x018523e8
016e296c  adrp x1,0x5773000
016e2970  adrp x2,0x1852000
016e2974  adrp x4,0x1852000
016e2978  add x1,x1,#0xcf6
016e297c  add x2,x2,#0x18
016e2980  add x4,x4,#0x20
016e2984  add x0,sp,#0x10
016e2988  mov x3,xzr
016e298c  mov x5,xzr
016e2990  bl 0x01851e30
016e2994  adrp x1,0x5766000
016e2998  adrp x2,0x1852000
016e299c  adrp x4,0x1852000
016e29a0  add x1,x1,#0x47
016e29a4  add x2,x2,#0xb0
016e29a8  add x4,x4,#0xb8
016e29ac  mov x3,xzr
016e29b0  mov x5,xzr
016e29b4  bl 0x01851e30
016e29b8  adrp x1,0x576b000
016e29bc  adrp x2,0x1852000
016e29c0  adrp x4,0x1852000
016e29c4  add x1,x1,#0xebd
016e29c8  add x2,x2,#0x2a8
016e29cc  add x4,x4,#0x2b0
016e29d0  mov x3,xzr
016e29d4  mov x5,xzr
016e29d8  bl 0x018520c0
016e29dc  adrp x1,0x576f000
016e29e0  adrp x2,0x1852000
016e29e4  adrp x4,0x1852000
016e29e8  add x1,x1,#0x90a
016e29ec  add x2,x2,#0x340
016e29f0  add x4,x4,#0x348
016e29f4  mov x3,xzr
016e29f8  mov x5,xzr
016e29fc  bl 0x01851e30
016e2a00  adrp x1,0x5771000
016e2a04  adrp x2,0x1852000
016e2a08  adrp x4,0x1852000
016e2a0c  add x1,x1,#0x2a8
016e2a10  add x2,x2,#0x3d8
016e2a14  add x4,x4,#0x3e0
016e2a18  mov x3,xzr
016e2a1c  mov x5,xzr
016e2a20  bl 0x018520c0
016e2a24  mov x19,x0
016e2a28  ldr w8,[x19, #0x8]
016e2a2c  ldr x0,[x19]
016e2a30  sub w8,w8,#0x3
016e2a34  str w8,[x19, #0x8]
016e2a38  orr w1,wzr,#0xfffffffc
016e2a3c  bl 0x0124c4d0
016e2a40  ldr w8,[x19, #0x8]
016e2a44  ldr x0,[x19]
016e2a48  str wzr,[x19, #0x8]
016e2a4c  cmp w8,#0x1
016e2a50  b.lt 0x016e2a5c
016e2a54  mvn w1,w8
016e2a58  bl 0x0124c4d0
016e2a5c  ldr w8,[sp, #0x18]
016e2a60  cmp w8,#0x1
016e2a64  b.lt 0x016e2a74
016e2a68  ldr x0,[sp, #0x10]
016e2a6c  mvn w1,w8
016e2a70  bl 0x0124c4d0
016e2a74  ldr w8,[sp, #0x8]
016e2a78  cmp w8,#0x1
016e2a7c  b.lt 0x016e2a8c
016e2a80  ldr x0,[sp]
016e2a84  mvn w1,w8
016e2a88  bl 0x0124c4d0
016e2a8c  ldp x29,x30,[sp, #0x30]
016e2a90  ldr x19,[sp, #0x20]
016e2a94  add sp,sp,#0x40
016e2a98  ret
