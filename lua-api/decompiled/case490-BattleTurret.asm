// ===== case490-BattleTurret @ 016f2738 =====
// existing function case490-BattleTurret
016f2738  sub sp,sp,#0x40
016f273c  stp x20,x19,[sp, #0x20]
016f2740  stp x29,x30,[sp, #0x30]
016f2744  add x29,sp,#0x30
016f2748  adrp x1,0x174a000
016f274c  add x1,x1,#0x87c
016f2750  mov x19,x0
016f2754  bl 0x0124ba40
016f2758  adrp x1,0x575d000
016f275c  add x1,x1,#0xa06
016f2760  mov x0,x19
016f2764  str x19,[sp]
016f2768  bl 0x01251aa0
016f276c  mov w8,#0x1
016f2770  str w8,[sp, #0x8]
016f2774  mov x0,sp
016f2778  bl 0x0174aa04
016f277c  adrp x1,0x5767000
016f2780  adrp x3,0x736d000
016f2784  add x1,x1,#0xe12
016f2788  add x3,x3,#0x101
016f278c  add x0,sp,#0x10
016f2790  mov x2,sp
016f2794  bl 0x01889440
016f2798  ldr x0,[sp, #0x10]
016f279c  mov w1,#0x10
016f27a0  bl 0x0124cba0
016f27a4  adrp x8,0x1889000
016f27a8  dup v0.2D,xzr
016f27ac  add x8,x8,#0x430
016f27b0  mov v0.D[0x0],x8
016f27b4  str q0,[x0]
016f27b8  ldr x0,[sp, #0x10]
016f27bc  adrp x1,0x1889000
016f27c0  add x1,x1,#0x804
016f27c4  mov w2,#0x1
016f27c8  bl 0x0124ec90
016f27cc  ldr x0,[sp, #0x10]
016f27d0  mov w1,#0xffffffff
016f27d4  bl 0x0124c0c0
016f27d8  ldr x19,[sp, #0x10]
016f27dc  orr w1,wzr,#0xfffffffb
016f27e0  mov w2,#0x6e7
016f27e4  mov x0,x19
016f27e8  bl 0x0124a650
016f27ec  orr w1,wzr,#0xfffffffe
016f27f0  mov x0,x19
016f27f4  bl 0x0124c0c0
016f27f8  orr w1,wzr,#0xfffffffe
016f27fc  mov x0,x19
016f2800  bl 0x0124e920
016f2804  mov w20,w0
016f2808  adrp x1,0x5767000
016f280c  add x1,x1,#0xdfd
016f2810  mov x0,x19
016f2814  bl 0x0124f120
016f2818  orr w1,wzr,#0xfffffffe
016f281c  mov w2,#0x1
016f2820  mov x0,x19
016f2824  bl 0x0124cfc0
016f2828  mov x0,x19
016f282c  mov w1,w20
016f2830  bl 0x0124e060
016f2834  orr w1,wzr,#0xfffffffd
016f2838  mov x0,x19
016f283c  bl 0x0124c4d0
016f2840  ldr x19,[sp, #0x10]
016f2844  orr w1,wzr,#0xfffffffd
016f2848  mov w2,#0x6e7
016f284c  mov x0,x19
016f2850  bl 0x0124a650
016f2854  orr w1,wzr,#0xfffffffe
016f2858  mov x0,x19
016f285c  bl 0x0124c0c0
016f2860  orr w1,wzr,#0xfffffffe
016f2864  mov x0,x19
016f2868  bl 0x0124e920
016f286c  mov w20,w0
016f2870  adrp x1,0x5767000
016f2874  add x1,x1,#0xdfd
016f2878  mov x0,x19
016f287c  bl 0x0124f120
016f2880  orr w1,wzr,#0xfffffffe
016f2884  mov w2,#0x1
016f2888  mov x0,x19
016f288c  bl 0x0124cfc0
016f2890  mov x0,x19
016f2894  mov w1,w20
016f2898  bl 0x0124e060
016f289c  orr w1,wzr,#0xfffffffd
016f28a0  mov x0,x19
016f28a4  bl 0x0124c4d0
016f28a8  ldr x0,[sp, #0x10]
016f28ac  mov w1,#0x10
016f28b0  bl 0x0124cba0
016f28b4  adrp x8,0x1889000
016f28b8  dup v0.2D,xzr
016f28bc  add x8,x8,#0x438
016f28c0  mov v0.D[0x0],x8
016f28c4  str q0,[x0]
016f28c8  ldr x0,[sp, #0x10]
016f28cc  adrp x1,0x1889000
016f28d0  add x1,x1,#0x928
016f28d4  mov w2,#0x1
016f28d8  bl 0x0124ec90
016f28dc  ldr x0,[sp, #0x10]
016f28e0  mov w1,#0xffffffff
016f28e4  bl 0x0124c0c0
016f28e8  ldr x19,[sp, #0x10]
016f28ec  orr w1,wzr,#0xfffffffb
016f28f0  mov w2,#0x6e7
016f28f4  mov x0,x19
016f28f8  bl 0x0124a650
016f28fc  orr w1,wzr,#0xfffffffe
016f2900  mov x0,x19
016f2904  bl 0x0124c0c0
016f2908  orr w1,wzr,#0xfffffffe
016f290c  mov x0,x19
016f2910  bl 0x0124e920
016f2914  mov w20,w0
016f2918  adrp x1,0x5767000
016f291c  add x1,x1,#0xd21
016f2920  mov x0,x19
016f2924  bl 0x0124f120
016f2928  orr w1,wzr,#0xfffffffe
016f292c  mov w2,#0x1
016f2930  mov x0,x19
016f2934  bl 0x0124cfc0
016f2938  mov x0,x19
016f293c  mov w1,w20
016f2940  bl 0x0124e060
016f2944  orr w1,wzr,#0xfffffffd
016f2948  mov x0,x19
016f294c  bl 0x0124c4d0
016f2950  ldr x19,[sp, #0x10]
016f2954  orr w1,wzr,#0xfffffffd
016f2958  mov w2,#0x6e7
016f295c  mov x0,x19
016f2960  bl 0x0124a650
016f2964  orr w1,wzr,#0xfffffffe
016f2968  mov x0,x19
016f296c  bl 0x0124c0c0
016f2970  orr w1,wzr,#0xfffffffe
016f2974  mov x0,x19
016f2978  bl 0x0124e920
016f297c  mov w20,w0
016f2980  adrp x1,0x5767000
016f2984  add x1,x1,#0xd21
016f2988  mov x0,x19
016f298c  bl 0x0124f120
016f2990  orr w1,wzr,#0xfffffffe
016f2994  mov w2,#0x1
016f2998  mov x0,x19
016f299c  bl 0x0124cfc0
016f29a0  mov x0,x19
016f29a4  mov w1,w20
016f29a8  bl 0x0124e060
016f29ac  orr w1,wzr,#0xfffffffd
016f29b0  mov x0,x19
016f29b4  bl 0x0124c4d0
016f29b8  ldr w8,[sp, #0x18]
016f29bc  ldr x0,[sp, #0x10]
016f29c0  sub w8,w8,#0x3
016f29c4  str w8,[sp, #0x18]
016f29c8  orr w1,wzr,#0xfffffffc
016f29cc  bl 0x0124c4d0
016f29d0  ldr w8,[sp, #0x18]
016f29d4  ldr x0,[sp, #0x10]
016f29d8  str wzr,[sp, #0x18]
016f29dc  cmp w8,#0x1
016f29e0  b.lt 0x016f2a04
016f29e4  mvn w1,w8
016f29e8  bl 0x0124c4d0
016f29ec  ldr w8,[sp, #0x18]
016f29f0  cmp w8,#0x1
016f29f4  b.lt 0x016f2a04
016f29f8  ldr x0,[sp, #0x10]
016f29fc  mvn w1,w8
016f2a00  bl 0x0124c4d0
016f2a04  ldr w8,[sp, #0x8]
016f2a08  cmp w8,#0x1
016f2a0c  b.lt 0x016f2a1c
016f2a10  ldr x0,[sp]
016f2a14  mvn w1,w8
016f2a18  bl 0x0124c4d0
016f2a1c  ldp x29,x30,[sp, #0x30]
016f2a20  ldp x20,x19,[sp, #0x20]
016f2a24  add sp,sp,#0x40
016f2a28  ret
