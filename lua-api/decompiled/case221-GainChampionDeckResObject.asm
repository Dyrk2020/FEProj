// ===== case221-GainChampionDeckResObject @ 016b2694 =====
// existing function case221-GainChampionDeckResObject
016b2694  sub sp,sp,#0x40
016b2698  stp x20,x19,[sp, #0x20]
016b269c  stp x29,x30,[sp, #0x30]
016b26a0  add x29,sp,#0x30
016b26a4  adrp x1,0x174a000
016b26a8  add x1,x1,#0x87c
016b26ac  mov x19,x0
016b26b0  bl 0x0124ba40
016b26b4  adrp x1,0x575d000
016b26b8  add x1,x1,#0xa06
016b26bc  mov x0,x19
016b26c0  str x19,[sp]
016b26c4  bl 0x01251aa0
016b26c8  mov w8,#0x1
016b26cc  str w8,[sp, #0x8]
016b26d0  mov x0,sp
016b26d4  bl 0x0174aa04
016b26d8  adrp x1,0x5761000
016b26dc  adrp x3,0x736d000
016b26e0  add x1,x1,#0x41
016b26e4  add x3,x3,#0x101
016b26e8  add x0,sp,#0x10
016b26ec  mov x2,sp
016b26f0  bl 0x017c606c
016b26f4  ldr x0,[sp, #0x10]
016b26f8  mov w1,#0x10
016b26fc  bl 0x0124cba0
016b2700  adrp x8,0x17c6000
016b2704  dup v0.2D,xzr
016b2708  add x8,x8,#0x5c
016b270c  mov v0.D[0x0],x8
016b2710  str q0,[x0]
016b2714  ldr x0,[sp, #0x10]
016b2718  adrp x1,0x17c6000
016b271c  add x1,x1,#0x430
016b2720  mov w2,#0x1
016b2724  bl 0x0124ec90
016b2728  ldr x0,[sp, #0x10]
016b272c  mov w1,#0xffffffff
016b2730  bl 0x0124c0c0
016b2734  ldr x19,[sp, #0x10]
016b2738  orr w1,wzr,#0xfffffffb
016b273c  mov w2,#0x6e7
016b2740  mov x0,x19
016b2744  bl 0x0124a650
016b2748  orr w1,wzr,#0xfffffffe
016b274c  mov x0,x19
016b2750  bl 0x0124c0c0
016b2754  orr w1,wzr,#0xfffffffe
016b2758  mov x0,x19
016b275c  bl 0x0124e920
016b2760  mov w20,w0
016b2764  adrp x1,0x575e000
016b2768  add x1,x1,#0x56d
016b276c  mov x0,x19
016b2770  bl 0x0124f120
016b2774  orr w1,wzr,#0xfffffffe
016b2778  mov w2,#0x1
016b277c  mov x0,x19
016b2780  bl 0x0124cfc0
016b2784  mov x0,x19
016b2788  mov w1,w20
016b278c  bl 0x0124e060
016b2790  orr w1,wzr,#0xfffffffd
016b2794  mov x0,x19
016b2798  bl 0x0124c4d0
016b279c  ldr x19,[sp, #0x10]
016b27a0  orr w1,wzr,#0xfffffffd
016b27a4  mov w2,#0x6e7
016b27a8  mov x0,x19
016b27ac  bl 0x0124a650
016b27b0  orr w1,wzr,#0xfffffffe
016b27b4  mov x0,x19
016b27b8  bl 0x0124c0c0
016b27bc  orr w1,wzr,#0xfffffffe
016b27c0  mov x0,x19
016b27c4  bl 0x0124e920
016b27c8  mov w20,w0
016b27cc  adrp x1,0x575e000
016b27d0  add x1,x1,#0x56d
016b27d4  mov x0,x19
016b27d8  bl 0x0124f120
016b27dc  orr w1,wzr,#0xfffffffe
016b27e0  mov w2,#0x1
016b27e4  mov x0,x19
016b27e8  bl 0x0124cfc0
016b27ec  mov x0,x19
016b27f0  mov w1,w20
016b27f4  bl 0x0124e060
016b27f8  orr w1,wzr,#0xfffffffd
016b27fc  mov x0,x19
016b2800  bl 0x0124c4d0
016b2804  ldr x0,[sp, #0x10]
016b2808  mov w1,#0x10
016b280c  bl 0x0124cba0
016b2810  adrp x8,0x17c6000
016b2814  dup v0.2D,xzr
016b2818  add x8,x8,#0x64
016b281c  mov v0.D[0x0],x8
016b2820  str q0,[x0]
016b2824  ldr x0,[sp, #0x10]
016b2828  adrp x1,0x17c6000
016b282c  add x1,x1,#0x554
016b2830  mov w2,#0x1
016b2834  bl 0x0124ec90
016b2838  ldr x0,[sp, #0x10]
016b283c  mov w1,#0xffffffff
016b2840  bl 0x0124c0c0
016b2844  ldr x19,[sp, #0x10]
016b2848  orr w1,wzr,#0xfffffffb
016b284c  mov w2,#0x6e7
016b2850  mov x0,x19
016b2854  bl 0x0124a650
016b2858  orr w1,wzr,#0xfffffffe
016b285c  mov x0,x19
016b2860  bl 0x0124c0c0
016b2864  orr w1,wzr,#0xfffffffe
016b2868  mov x0,x19
016b286c  bl 0x0124e920
016b2870  mov w20,w0
016b2874  adrp x1,0x575e000
016b2878  add x1,x1,#0x578
016b287c  mov x0,x19
016b2880  bl 0x0124f120
016b2884  orr w1,wzr,#0xfffffffe
016b2888  mov w2,#0x1
016b288c  mov x0,x19
016b2890  bl 0x0124cfc0
016b2894  mov x0,x19
016b2898  mov w1,w20
016b289c  bl 0x0124e060
016b28a0  orr w1,wzr,#0xfffffffd
016b28a4  mov x0,x19
016b28a8  bl 0x0124c4d0
016b28ac  ldr x19,[sp, #0x10]
016b28b0  orr w1,wzr,#0xfffffffd
016b28b4  mov w2,#0x6e7
016b28b8  mov x0,x19
016b28bc  bl 0x0124a650
016b28c0  orr w1,wzr,#0xfffffffe
016b28c4  mov x0,x19
016b28c8  bl 0x0124c0c0
016b28cc  orr w1,wzr,#0xfffffffe
016b28d0  mov x0,x19
016b28d4  bl 0x0124e920
016b28d8  mov w20,w0
016b28dc  adrp x1,0x575e000
016b28e0  add x1,x1,#0x578
016b28e4  mov x0,x19
016b28e8  bl 0x0124f120
016b28ec  orr w1,wzr,#0xfffffffe
016b28f0  mov w2,#0x1
016b28f4  mov x0,x19
016b28f8  bl 0x0124cfc0
016b28fc  mov x0,x19
016b2900  mov w1,w20
016b2904  bl 0x0124e060
016b2908  orr w1,wzr,#0xfffffffd
016b290c  mov x0,x19
016b2910  bl 0x0124c4d0
016b2914  ldr w8,[sp, #0x18]
016b2918  ldr x0,[sp, #0x10]
016b291c  sub w8,w8,#0x3
016b2920  str w8,[sp, #0x18]
016b2924  orr w1,wzr,#0xfffffffc
016b2928  bl 0x0124c4d0
016b292c  ldr w8,[sp, #0x18]
016b2930  ldr x0,[sp, #0x10]
016b2934  str wzr,[sp, #0x18]
016b2938  cmp w8,#0x1
016b293c  b.lt 0x016b2960
016b2940  mvn w1,w8
016b2944  bl 0x0124c4d0
016b2948  ldr w8,[sp, #0x18]
016b294c  cmp w8,#0x1
016b2950  b.lt 0x016b2960
016b2954  ldr x0,[sp, #0x10]
016b2958  mvn w1,w8
016b295c  bl 0x0124c4d0
016b2960  ldr w8,[sp, #0x8]
016b2964  cmp w8,#0x1
016b2968  b.lt 0x016b2978
016b296c  ldr x0,[sp]
016b2970  mvn w1,w8
016b2974  bl 0x0124c4d0
016b2978  ldp x29,x30,[sp, #0x30]
016b297c  ldp x20,x19,[sp, #0x20]
016b2980  add sp,sp,#0x40
016b2984  ret
