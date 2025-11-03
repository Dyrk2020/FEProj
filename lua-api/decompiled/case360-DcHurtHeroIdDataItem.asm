// ===== case360-DcHurtHeroIdDataItem @ 016d2860 =====
// existing function case360-DcHurtHeroIdDataItem
016d2860  sub sp,sp,#0x40
016d2864  str x19,[sp, #0x20]
016d2868  stp x29,x30,[sp, #0x30]
016d286c  add x29,sp,#0x30
016d2870  adrp x1,0x174a000
016d2874  add x1,x1,#0x87c
016d2878  mov x19,x0
016d287c  bl 0x0124ba40
016d2880  adrp x1,0x575d000
016d2884  add x1,x1,#0xa06
016d2888  mov x0,x19
016d288c  str x19,[sp]
016d2890  bl 0x01251aa0
016d2894  mov w8,#0x1
016d2898  str w8,[sp, #0x8]
016d289c  mov x0,sp
016d28a0  bl 0x0174aa04
016d28a4  adrp x1,0x5763000
016d28a8  adrp x3,0x736d000
016d28ac  add x1,x1,#0xf9a
016d28b0  add x3,x3,#0x101
016d28b4  add x0,sp,#0x10
016d28b8  mov x2,sp
016d28bc  bl 0x01822ed0
016d28c0  adrp x1,0x5763000
016d28c4  adrp x2,0x1822000
016d28c8  adrp x4,0x1822000
016d28cc  add x1,x1,#0xcff
016d28d0  add x2,x2,#0xec0
016d28d4  add x4,x4,#0xec8
016d28d8  add x0,sp,#0x10
016d28dc  mov x3,xzr
016d28e0  mov x5,xzr
016d28e4  bl 0x01822cd8
016d28e8  mov x19,x0
016d28ec  ldr w8,[x19, #0x8]
016d28f0  ldr x0,[x19]
016d28f4  sub w8,w8,#0x3
016d28f8  str w8,[x19, #0x8]
016d28fc  orr w1,wzr,#0xfffffffc
016d2900  bl 0x0124c4d0
016d2904  ldr w8,[x19, #0x8]
016d2908  ldr x0,[x19]
016d290c  str wzr,[x19, #0x8]
016d2910  cmp w8,#0x1
016d2914  b.lt 0x016d2920
016d2918  mvn w1,w8
016d291c  bl 0x0124c4d0
016d2920  ldr w8,[sp, #0x18]
016d2924  cmp w8,#0x1
016d2928  b.lt 0x016d2938
016d292c  ldr x0,[sp, #0x10]
016d2930  mvn w1,w8
016d2934  bl 0x0124c4d0
016d2938  ldr w8,[sp, #0x8]
016d293c  cmp w8,#0x1
016d2940  b.lt 0x016d2950
016d2944  ldr x0,[sp]
016d2948  mvn w1,w8
016d294c  bl 0x0124c4d0
016d2950  ldp x29,x30,[sp, #0x30]
016d2954  ldr x19,[sp, #0x20]
016d2958  add sp,sp,#0x40
016d295c  ret
