// ===== case131-RunePageResObject @ 016a27e8 =====
// existing function case131-RunePageResObject
016a27e8  sub sp,sp,#0x40
016a27ec  stp x20,x19,[sp, #0x20]
016a27f0  stp x29,x30,[sp, #0x30]
016a27f4  add x29,sp,#0x30
016a27f8  adrp x1,0x174a000
016a27fc  add x1,x1,#0x87c
016a2800  mov x19,x0
016a2804  bl 0x0124ba40
016a2808  adrp x1,0x575d000
016a280c  add x1,x1,#0xa06
016a2810  mov x0,x19
016a2814  str x19,[sp]
016a2818  bl 0x01251aa0
016a281c  mov w8,#0x1
016a2820  str w8,[sp, #0x8]
016a2824  mov x0,sp
016a2828  bl 0x0174aa04
016a282c  adrp x1,0x575f000
016a2830  adrp x3,0x736d000
016a2834  add x1,x1,#0xd9a
016a2838  add x3,x3,#0x101
016a283c  add x0,sp,#0x10
016a2840  mov x2,sp
016a2844  bl 0x01796c18
016a2848  ldr x0,[sp, #0x10]
016a284c  mov w1,#0x10
016a2850  bl 0x0124cba0
016a2854  adrp x8,0x1796000
016a2858  dup v0.2D,xzr
016a285c  add x8,x8,#0xc10
016a2860  mov v0.D[0x0],x8
016a2864  str q0,[x0]
016a2868  ldr x0,[sp, #0x10]
016a286c  adrp x1,0x1796000
016a2870  add x1,x1,#0xfdc
016a2874  mov w2,#0x1
016a2878  bl 0x0124ec90
016a287c  ldr x0,[sp, #0x10]
016a2880  mov w1,#0xffffffff
016a2884  bl 0x0124c0c0
016a2888  ldr x19,[sp, #0x10]
016a288c  orr w1,wzr,#0xfffffffb
016a2890  mov w2,#0x6e7
016a2894  mov x0,x19
016a2898  bl 0x0124a650
016a289c  orr w1,wzr,#0xfffffffe
016a28a0  mov x0,x19
016a28a4  bl 0x0124c0c0
016a28a8  orr w1,wzr,#0xfffffffe
016a28ac  mov x0,x19
016a28b0  bl 0x0124e920
016a28b4  mov w20,w0
016a28b8  adrp x1,0x575f000
016a28bc  add x1,x1,#0xdac
016a28c0  mov x0,x19
016a28c4  bl 0x0124f120
016a28c8  orr w1,wzr,#0xfffffffe
016a28cc  mov w2,#0x1
016a28d0  mov x0,x19
016a28d4  bl 0x0124cfc0
016a28d8  mov x0,x19
016a28dc  mov w1,w20
016a28e0  bl 0x0124e060
016a28e4  orr w1,wzr,#0xfffffffd
016a28e8  mov x0,x19
016a28ec  bl 0x0124c4d0
016a28f0  ldr x19,[sp, #0x10]
016a28f4  orr w1,wzr,#0xfffffffd
016a28f8  mov w2,#0x6e7
016a28fc  mov x0,x19
016a2900  bl 0x0124a650
016a2904  orr w1,wzr,#0xfffffffe
016a2908  mov x0,x19
016a290c  bl 0x0124c0c0
016a2910  orr w1,wzr,#0xfffffffe
016a2914  mov x0,x19
016a2918  bl 0x0124e920
016a291c  mov w20,w0
016a2920  adrp x1,0x575f000
016a2924  add x1,x1,#0xdac
016a2928  mov x0,x19
016a292c  bl 0x0124f120
016a2930  orr w1,wzr,#0xfffffffe
016a2934  mov w2,#0x1
016a2938  mov x0,x19
016a293c  bl 0x0124cfc0
016a2940  mov x0,x19
016a2944  mov w1,w20
016a2948  bl 0x0124e060
016a294c  orr w1,wzr,#0xfffffffd
016a2950  mov x0,x19
016a2954  bl 0x0124c4d0
016a2958  ldr w8,[sp, #0x18]
016a295c  ldr x0,[sp, #0x10]
016a2960  sub w8,w8,#0x3
016a2964  str w8,[sp, #0x18]
016a2968  orr w1,wzr,#0xfffffffc
016a296c  bl 0x0124c4d0
016a2970  ldr w8,[sp, #0x18]
016a2974  ldr x0,[sp, #0x10]
016a2978  str wzr,[sp, #0x18]
016a297c  cmp w8,#0x1
016a2980  b.lt 0x016a29a4
016a2984  mvn w1,w8
016a2988  bl 0x0124c4d0
016a298c  ldr w8,[sp, #0x18]
016a2990  cmp w8,#0x1
016a2994  b.lt 0x016a29a4
016a2998  ldr x0,[sp, #0x10]
016a299c  mvn w1,w8
016a29a0  bl 0x0124c4d0
016a29a4  ldr w8,[sp, #0x8]
016a29a8  cmp w8,#0x1
016a29ac  b.lt 0x016a29bc
016a29b0  ldr x0,[sp]
016a29b4  mvn w1,w8
016a29b8  bl 0x0124c4d0
016a29bc  ldp x29,x30,[sp, #0x30]
016a29c0  ldp x20,x19,[sp, #0x20]
016a29c4  add sp,sp,#0x40
016a29c8  ret
