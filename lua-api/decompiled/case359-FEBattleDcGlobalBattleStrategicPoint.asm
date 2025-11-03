// ===== case359-FEBattleDcGlobalBattleStrategicPoint @ 016d23f8 =====
// existing function case359-FEBattleDcGlobalBattleStrategicPoint
016d23f8  sub sp,sp,#0x40
016d23fc  stp x20,x19,[sp, #0x20]
016d2400  stp x29,x30,[sp, #0x30]
016d2404  add x29,sp,#0x30
016d2408  adrp x1,0x174a000
016d240c  add x1,x1,#0x87c
016d2410  mov x19,x0
016d2414  bl 0x0124ba40
016d2418  adrp x1,0x575d000
016d241c  add x1,x1,#0xa06
016d2420  mov x0,x19
016d2424  str x19,[sp]
016d2428  bl 0x01251aa0
016d242c  mov w8,#0x1
016d2430  str w8,[sp, #0x8]
016d2434  mov x0,sp
016d2438  bl 0x0174aa04
016d243c  adrp x1,0x5763000
016d2440  adrp x3,0x736d000
016d2444  add x1,x1,#0xf47
016d2448  add x3,x3,#0x101
016d244c  add x0,sp,#0x10
016d2450  mov x2,sp
016d2454  bl 0x018225a8
016d2458  ldr x0,[sp, #0x10]
016d245c  mov w1,#0x10
016d2460  bl 0x0124cba0
016d2464  adrp x8,0x1822000
016d2468  dup v0.2D,xzr
016d246c  add x8,x8,#0x590
016d2470  mov v0.D[0x0],x8
016d2474  str q0,[x0]
016d2478  ldr x0,[sp, #0x10]
016d247c  adrp x1,0x1822000
016d2480  add x1,x1,#0x96c
016d2484  mov w2,#0x1
016d2488  bl 0x0124ec90
016d248c  ldr x0,[sp, #0x10]
016d2490  mov w1,#0xffffffff
016d2494  bl 0x0124c0c0
016d2498  ldr x19,[sp, #0x10]
016d249c  orr w1,wzr,#0xfffffffb
016d24a0  mov w2,#0x6e7
016d24a4  mov x0,x19
016d24a8  bl 0x0124a650
016d24ac  orr w1,wzr,#0xfffffffe
016d24b0  mov x0,x19
016d24b4  bl 0x0124c0c0
016d24b8  orr w1,wzr,#0xfffffffe
016d24bc  mov x0,x19
016d24c0  bl 0x0124e920
016d24c4  mov w20,w0
016d24c8  adrp x1,0x5763000
016d24cc  add x1,x1,#0xf6c
016d24d0  mov x0,x19
016d24d4  bl 0x0124f120
016d24d8  orr w1,wzr,#0xfffffffe
016d24dc  mov w2,#0x1
016d24e0  mov x0,x19
016d24e4  bl 0x0124cfc0
016d24e8  mov x0,x19
016d24ec  mov w1,w20
016d24f0  bl 0x0124e060
016d24f4  orr w1,wzr,#0xfffffffd
016d24f8  mov x0,x19
016d24fc  bl 0x0124c4d0
016d2500  ldr x19,[sp, #0x10]
016d2504  orr w1,wzr,#0xfffffffd
016d2508  mov w2,#0x6e7
016d250c  mov x0,x19
016d2510  bl 0x0124a650
016d2514  orr w1,wzr,#0xfffffffe
016d2518  mov x0,x19
016d251c  bl 0x0124c0c0
016d2520  orr w1,wzr,#0xfffffffe
016d2524  mov x0,x19
016d2528  bl 0x0124e920
016d252c  mov w20,w0
016d2530  adrp x1,0x5763000
016d2534  add x1,x1,#0xf6c
016d2538  mov x0,x19
016d253c  bl 0x0124f120
016d2540  orr w1,wzr,#0xfffffffe
016d2544  mov w2,#0x1
016d2548  mov x0,x19
016d254c  bl 0x0124cfc0
016d2550  mov x0,x19
016d2554  mov w1,w20
016d2558  bl 0x0124e060
016d255c  orr w1,wzr,#0xfffffffd
016d2560  mov x0,x19
016d2564  bl 0x0124c4d0
016d2568  ldr x0,[sp, #0x10]
016d256c  mov w1,#0x10
016d2570  bl 0x0124cba0
016d2574  adrp x8,0x1822000
016d2578  dup v0.2D,xzr
016d257c  add x8,x8,#0x598
016d2580  mov v0.D[0x0],x8
016d2584  str q0,[x0]
016d2588  ldr x0,[sp, #0x10]
016d258c  adrp x1,0x1822000
016d2590  add x1,x1,#0xa90
016d2594  mov w2,#0x1
016d2598  bl 0x0124ec90
016d259c  ldr x0,[sp, #0x10]
016d25a0  mov w1,#0xffffffff
016d25a4  bl 0x0124c0c0
016d25a8  ldr x19,[sp, #0x10]
016d25ac  orr w1,wzr,#0xfffffffb
016d25b0  mov w2,#0x6e7
016d25b4  mov x0,x19
016d25b8  bl 0x0124a650
016d25bc  orr w1,wzr,#0xfffffffe
016d25c0  mov x0,x19
016d25c4  bl 0x0124c0c0
016d25c8  orr w1,wzr,#0xfffffffe
016d25cc  mov x0,x19
016d25d0  bl 0x0124e920
016d25d4  mov w20,w0
016d25d8  adrp x1,0x5763000
016d25dc  add x1,x1,#0xf80
016d25e0  mov x0,x19
016d25e4  bl 0x0124f120
016d25e8  orr w1,wzr,#0xfffffffe
016d25ec  mov w2,#0x1
016d25f0  mov x0,x19
016d25f4  bl 0x0124cfc0
016d25f8  mov x0,x19
016d25fc  mov w1,w20
016d2600  bl 0x0124e060
016d2604  orr w1,wzr,#0xfffffffd
016d2608  mov x0,x19
016d260c  bl 0x0124c4d0
016d2610  ldr x19,[sp, #0x10]
016d2614  orr w1,wzr,#0xfffffffd
016d2618  mov w2,#0x6e7
016d261c  mov x0,x19
016d2620  bl 0x0124a650
016d2624  orr w1,wzr,#0xfffffffe
016d2628  mov x0,x19
016d262c  bl 0x0124c0c0
016d2630  orr w1,wzr,#0xfffffffe
016d2634  mov x0,x19
016d2638  bl 0x0124e920
016d263c  mov w20,w0
016d2640  adrp x1,0x5763000
016d2644  add x1,x1,#0xf80
016d2648  mov x0,x19
016d264c  bl 0x0124f120
016d2650  orr w1,wzr,#0xfffffffe
016d2654  mov w2,#0x1
016d2658  mov x0,x19
016d265c  bl 0x0124cfc0
016d2660  mov x0,x19
016d2664  mov w1,w20
016d2668  bl 0x0124e060
016d266c  orr w1,wzr,#0xfffffffd
016d2670  mov x0,x19
016d2674  bl 0x0124c4d0
016d2678  ldr x0,[sp, #0x10]
016d267c  mov w1,#0x10
016d2680  bl 0x0124cba0
016d2684  adrp x8,0x1822000
016d2688  dup v0.2D,xzr
016d268c  add x8,x8,#0x5a0
016d2690  mov v0.D[0x0],x8
016d2694  str q0,[x0]
016d2698  ldr x0,[sp, #0x10]
016d269c  adrp x1,0x1822000
016d26a0  add x1,x1,#0xbb4
016d26a4  mov w2,#0x1
016d26a8  bl 0x0124ec90
016d26ac  ldr x0,[sp, #0x10]
016d26b0  mov w1,#0xffffffff
016d26b4  bl 0x0124c0c0
016d26b8  ldr x19,[sp, #0x10]
016d26bc  orr w1,wzr,#0xfffffffb
016d26c0  mov w2,#0x6e7
016d26c4  mov x0,x19
016d26c8  bl 0x0124a650
016d26cc  orr w1,wzr,#0xfffffffe
016d26d0  mov x0,x19
016d26d4  bl 0x0124c0c0
016d26d8  orr w1,wzr,#0xfffffffe
016d26dc  mov x0,x19
016d26e0  bl 0x0124e920
016d26e4  mov w20,w0
016d26e8  adrp x1,0x5763000
016d26ec  add x1,x1,#0xf93
016d26f0  mov x0,x19
016d26f4  bl 0x0124f120
016d26f8  orr w1,wzr,#0xfffffffe
016d26fc  mov w2,#0x1
016d2700  mov x0,x19
016d2704  bl 0x0124cfc0
016d2708  mov x0,x19
016d270c  mov w1,w20
016d2710  bl 0x0124e060
016d2714  orr w1,wzr,#0xfffffffd
016d2718  mov x0,x19
016d271c  bl 0x0124c4d0
016d2720  ldr x19,[sp, #0x10]
016d2724  orr w1,wzr,#0xfffffffd
016d2728  mov w2,#0x6e7
016d272c  mov x0,x19
016d2730  bl 0x0124a650
016d2734  orr w1,wzr,#0xfffffffe
016d2738  mov x0,x19
016d273c  bl 0x0124c0c0
016d2740  orr w1,wzr,#0xfffffffe
016d2744  mov x0,x19
016d2748  bl 0x0124e920
016d274c  mov w20,w0
016d2750  adrp x1,0x5763000
016d2754  add x1,x1,#0xf93
016d2758  mov x0,x19
016d275c  bl 0x0124f120
016d2760  orr w1,wzr,#0xfffffffe
016d2764  mov w2,#0x1
016d2768  mov x0,x19
016d276c  bl 0x0124cfc0
016d2770  mov x0,x19
016d2774  mov w1,w20
016d2778  bl 0x0124e060
016d277c  orr w1,wzr,#0xfffffffd
016d2780  mov x0,x19
016d2784  bl 0x0124c4d0
016d2788  ldr w8,[sp, #0x18]
016d278c  ldr x0,[sp, #0x10]
016d2790  sub w8,w8,#0x3
016d2794  str w8,[sp, #0x18]
016d2798  orr w1,wzr,#0xfffffffc
016d279c  bl 0x0124c4d0
016d27a0  ldr w8,[sp, #0x18]
016d27a4  ldr x0,[sp, #0x10]
016d27a8  str wzr,[sp, #0x18]
016d27ac  cmp w8,#0x1
016d27b0  b.lt 0x016d27d4
016d27b4  mvn w1,w8
016d27b8  bl 0x0124c4d0
016d27bc  ldr w8,[sp, #0x18]
016d27c0  cmp w8,#0x1
016d27c4  b.lt 0x016d27d4
016d27c8  ldr x0,[sp, #0x10]
016d27cc  mvn w1,w8
016d27d0  bl 0x0124c4d0
016d27d4  ldr w8,[sp, #0x8]
016d27d8  cmp w8,#0x1
016d27dc  b.lt 0x016d27ec
016d27e0  ldr x0,[sp]
016d27e4  mvn w1,w8
016d27e8  bl 0x0124c4d0
016d27ec  ldp x29,x30,[sp, #0x30]
016d27f0  ldp x20,x19,[sp, #0x20]
016d27f4  add sp,sp,#0x40
016d27f8  ret
