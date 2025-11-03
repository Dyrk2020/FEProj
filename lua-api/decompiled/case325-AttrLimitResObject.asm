// ===== case325-AttrLimitResObject @ 016c2760 =====
// existing function case325-AttrLimitResObject
016c2760  sub sp,sp,#0x40
016c2764  stp x20,x19,[sp, #0x20]
016c2768  stp x29,x30,[sp, #0x30]
016c276c  add x29,sp,#0x30
016c2770  adrp x1,0x174a000
016c2774  add x1,x1,#0x87c
016c2778  mov x19,x0
016c277c  bl 0x0124ba40
016c2780  adrp x1,0x575d000
016c2784  add x1,x1,#0xa06
016c2788  mov x0,x19
016c278c  str x19,[sp]
016c2790  bl 0x01251aa0
016c2794  mov w8,#0x1
016c2798  str w8,[sp, #0x8]
016c279c  mov x0,sp
016c27a0  bl 0x0174aa04
016c27a4  adrp x1,0x5762000
016c27a8  adrp x3,0x736d000
016c27ac  add x1,x1,#0xbf6
016c27b0  add x3,x3,#0x101
016c27b4  add x0,sp,#0x10
016c27b8  mov x2,sp
016c27bc  bl 0x018009f4
016c27c0  ldr x0,[sp, #0x10]
016c27c4  mov w1,#0x10
016c27c8  bl 0x0124cba0
016c27cc  adrp x8,0x1800000
016c27d0  dup v0.2D,xzr
016c27d4  add x8,x8,#0x9ec
016c27d8  mov v0.D[0x0],x8
016c27dc  str q0,[x0]
016c27e0  ldr x0,[sp, #0x10]
016c27e4  adrp x1,0x1800000
016c27e8  add x1,x1,#0xdb8
016c27ec  mov w2,#0x1
016c27f0  bl 0x0124ec90
016c27f4  ldr x0,[sp, #0x10]
016c27f8  mov w1,#0xffffffff
016c27fc  bl 0x0124c0c0
016c2800  ldr x19,[sp, #0x10]
016c2804  orr w1,wzr,#0xfffffffb
016c2808  mov w2,#0x6e7
016c280c  mov x0,x19
016c2810  bl 0x0124a650
016c2814  orr w1,wzr,#0xfffffffe
016c2818  mov x0,x19
016c281c  bl 0x0124c0c0
016c2820  orr w1,wzr,#0xfffffffe
016c2824  mov x0,x19
016c2828  bl 0x0124e920
016c282c  mov w20,w0
016c2830  adrp x1,0x5762000
016c2834  add x1,x1,#0xc09
016c2838  mov x0,x19
016c283c  bl 0x0124f120
016c2840  orr w1,wzr,#0xfffffffe
016c2844  mov w2,#0x1
016c2848  mov x0,x19
016c284c  bl 0x0124cfc0
016c2850  mov x0,x19
016c2854  mov w1,w20
016c2858  bl 0x0124e060
016c285c  orr w1,wzr,#0xfffffffd
016c2860  mov x0,x19
016c2864  bl 0x0124c4d0
016c2868  ldr x19,[sp, #0x10]
016c286c  orr w1,wzr,#0xfffffffd
016c2870  mov w2,#0x6e7
016c2874  mov x0,x19
016c2878  bl 0x0124a650
016c287c  orr w1,wzr,#0xfffffffe
016c2880  mov x0,x19
016c2884  bl 0x0124c0c0
016c2888  orr w1,wzr,#0xfffffffe
016c288c  mov x0,x19
016c2890  bl 0x0124e920
016c2894  mov w20,w0
016c2898  adrp x1,0x5762000
016c289c  add x1,x1,#0xc09
016c28a0  mov x0,x19
016c28a4  bl 0x0124f120
016c28a8  orr w1,wzr,#0xfffffffe
016c28ac  mov w2,#0x1
016c28b0  mov x0,x19
016c28b4  bl 0x0124cfc0
016c28b8  mov x0,x19
016c28bc  mov w1,w20
016c28c0  bl 0x0124e060
016c28c4  orr w1,wzr,#0xfffffffd
016c28c8  mov x0,x19
016c28cc  bl 0x0124c4d0
016c28d0  ldr w8,[sp, #0x18]
016c28d4  ldr x0,[sp, #0x10]
016c28d8  sub w8,w8,#0x3
016c28dc  str w8,[sp, #0x18]
016c28e0  orr w1,wzr,#0xfffffffc
016c28e4  bl 0x0124c4d0
016c28e8  ldr w8,[sp, #0x18]
016c28ec  ldr x0,[sp, #0x10]
016c28f0  str wzr,[sp, #0x18]
016c28f4  cmp w8,#0x1
016c28f8  b.lt 0x016c291c
016c28fc  mvn w1,w8
016c2900  bl 0x0124c4d0
016c2904  ldr w8,[sp, #0x18]
016c2908  cmp w8,#0x1
016c290c  b.lt 0x016c291c
016c2910  ldr x0,[sp, #0x10]
016c2914  mvn w1,w8
016c2918  bl 0x0124c4d0
016c291c  ldr w8,[sp, #0x8]
016c2920  cmp w8,#0x1
016c2924  b.lt 0x016c2934
016c2928  ldr x0,[sp]
016c292c  mvn w1,w8
016c2930  bl 0x0124c4d0
016c2934  ldp x29,x30,[sp, #0x30]
016c2938  ldp x20,x19,[sp, #0x20]
016c293c  add sp,sp,#0x40
016c2940  ret
