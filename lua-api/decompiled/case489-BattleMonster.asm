// ===== case489-BattleMonster @ 016f22d0 =====
// existing function case489-BattleMonster
016f22d0  sub sp,sp,#0x40
016f22d4  stp x20,x19,[sp, #0x20]
016f22d8  stp x29,x30,[sp, #0x30]
016f22dc  add x29,sp,#0x30
016f22e0  adrp x1,0x174a000
016f22e4  add x1,x1,#0x87c
016f22e8  mov x19,x0
016f22ec  bl 0x0124ba40
016f22f0  adrp x1,0x575d000
016f22f4  add x1,x1,#0xa06
016f22f8  mov x0,x19
016f22fc  str x19,[sp]
016f2300  bl 0x01251aa0
016f2304  mov w8,#0x1
016f2308  str w8,[sp, #0x8]
016f230c  mov x0,sp
016f2310  bl 0x0174aa04
016f2314  adrp x1,0x5767000
016f2318  adrp x3,0x736d000
016f231c  add x1,x1,#0xdef
016f2320  add x3,x3,#0x101
016f2324  add x0,sp,#0x10
016f2328  mov x2,sp
016f232c  bl 0x01888d00
016f2330  ldr x0,[sp, #0x10]
016f2334  mov w1,#0x10
016f2338  bl 0x0124cba0
016f233c  adrp x8,0x1888000
016f2340  dup v0.2D,xzr
016f2344  add x8,x8,#0xce8
016f2348  mov v0.D[0x0],x8
016f234c  str q0,[x0]
016f2350  ldr x0,[sp, #0x10]
016f2354  adrp x1,0x1889000
016f2358  add x1,x1,#0xc4
016f235c  mov w2,#0x1
016f2360  bl 0x0124ec90
016f2364  ldr x0,[sp, #0x10]
016f2368  mov w1,#0xffffffff
016f236c  bl 0x0124c0c0
016f2370  ldr x19,[sp, #0x10]
016f2374  orr w1,wzr,#0xfffffffb
016f2378  mov w2,#0x6e7
016f237c  mov x0,x19
016f2380  bl 0x0124a650
016f2384  orr w1,wzr,#0xfffffffe
016f2388  mov x0,x19
016f238c  bl 0x0124c0c0
016f2390  orr w1,wzr,#0xfffffffe
016f2394  mov x0,x19
016f2398  bl 0x0124e920
016f239c  mov w20,w0
016f23a0  adrp x1,0x5767000
016f23a4  add x1,x1,#0xdfd
016f23a8  mov x0,x19
016f23ac  bl 0x0124f120
016f23b0  orr w1,wzr,#0xfffffffe
016f23b4  mov w2,#0x1
016f23b8  mov x0,x19
016f23bc  bl 0x0124cfc0
016f23c0  mov x0,x19
016f23c4  mov w1,w20
016f23c8  bl 0x0124e060
016f23cc  orr w1,wzr,#0xfffffffd
016f23d0  mov x0,x19
016f23d4  bl 0x0124c4d0
016f23d8  ldr x19,[sp, #0x10]
016f23dc  orr w1,wzr,#0xfffffffd
016f23e0  mov w2,#0x6e7
016f23e4  mov x0,x19
016f23e8  bl 0x0124a650
016f23ec  orr w1,wzr,#0xfffffffe
016f23f0  mov x0,x19
016f23f4  bl 0x0124c0c0
016f23f8  orr w1,wzr,#0xfffffffe
016f23fc  mov x0,x19
016f2400  bl 0x0124e920
016f2404  mov w20,w0
016f2408  adrp x1,0x5767000
016f240c  add x1,x1,#0xdfd
016f2410  mov x0,x19
016f2414  bl 0x0124f120
016f2418  orr w1,wzr,#0xfffffffe
016f241c  mov w2,#0x1
016f2420  mov x0,x19
016f2424  bl 0x0124cfc0
016f2428  mov x0,x19
016f242c  mov w1,w20
016f2430  bl 0x0124e060
016f2434  orr w1,wzr,#0xfffffffd
016f2438  mov x0,x19
016f243c  bl 0x0124c4d0
016f2440  ldr x0,[sp, #0x10]
016f2444  mov w1,#0x10
016f2448  bl 0x0124cba0
016f244c  adrp x8,0x1888000
016f2450  dup v0.2D,xzr
016f2454  add x8,x8,#0xcf0
016f2458  mov v0.D[0x0],x8
016f245c  str q0,[x0]
016f2460  ldr x0,[sp, #0x10]
016f2464  adrp x1,0x1889000
016f2468  add x1,x1,#0x1e8
016f246c  mov w2,#0x1
016f2470  bl 0x0124ec90
016f2474  ldr x0,[sp, #0x10]
016f2478  mov w1,#0xffffffff
016f247c  bl 0x0124c0c0
016f2480  ldr x19,[sp, #0x10]
016f2484  orr w1,wzr,#0xfffffffb
016f2488  mov w2,#0x6e7
016f248c  mov x0,x19
016f2490  bl 0x0124a650
016f2494  orr w1,wzr,#0xfffffffe
016f2498  mov x0,x19
016f249c  bl 0x0124c0c0
016f24a0  orr w1,wzr,#0xfffffffe
016f24a4  mov x0,x19
016f24a8  bl 0x0124e920
016f24ac  mov w20,w0
016f24b0  adrp x1,0x5767000
016f24b4  add x1,x1,#0xd21
016f24b8  mov x0,x19
016f24bc  bl 0x0124f120
016f24c0  orr w1,wzr,#0xfffffffe
016f24c4  mov w2,#0x1
016f24c8  mov x0,x19
016f24cc  bl 0x0124cfc0
016f24d0  mov x0,x19
016f24d4  mov w1,w20
016f24d8  bl 0x0124e060
016f24dc  orr w1,wzr,#0xfffffffd
016f24e0  mov x0,x19
016f24e4  bl 0x0124c4d0
016f24e8  ldr x19,[sp, #0x10]
016f24ec  orr w1,wzr,#0xfffffffd
016f24f0  mov w2,#0x6e7
016f24f4  mov x0,x19
016f24f8  bl 0x0124a650
016f24fc  orr w1,wzr,#0xfffffffe
016f2500  mov x0,x19
016f2504  bl 0x0124c0c0
016f2508  orr w1,wzr,#0xfffffffe
016f250c  mov x0,x19
016f2510  bl 0x0124e920
016f2514  mov w20,w0
016f2518  adrp x1,0x5767000
016f251c  add x1,x1,#0xd21
016f2520  mov x0,x19
016f2524  bl 0x0124f120
016f2528  orr w1,wzr,#0xfffffffe
016f252c  mov w2,#0x1
016f2530  mov x0,x19
016f2534  bl 0x0124cfc0
016f2538  mov x0,x19
016f253c  mov w1,w20
016f2540  bl 0x0124e060
016f2544  orr w1,wzr,#0xfffffffd
016f2548  mov x0,x19
016f254c  bl 0x0124c4d0
016f2550  ldr x0,[sp, #0x10]
016f2554  mov w1,#0x10
016f2558  bl 0x0124cba0
016f255c  adrp x8,0x1888000
016f2560  dup v0.2D,xzr
016f2564  add x8,x8,#0xcf8
016f2568  mov v0.D[0x0],x8
016f256c  str q0,[x0]
016f2570  ldr x0,[sp, #0x10]
016f2574  adrp x1,0x1889000
016f2578  add x1,x1,#0x30c
016f257c  mov w2,#0x1
016f2580  bl 0x0124ec90
016f2584  ldr x0,[sp, #0x10]
016f2588  mov w1,#0xffffffff
016f258c  bl 0x0124c0c0
016f2590  ldr x19,[sp, #0x10]
016f2594  orr w1,wzr,#0xfffffffb
016f2598  mov w2,#0x6e7
016f259c  mov x0,x19
016f25a0  bl 0x0124a650
016f25a4  orr w1,wzr,#0xfffffffe
016f25a8  mov x0,x19
016f25ac  bl 0x0124c0c0
016f25b0  orr w1,wzr,#0xfffffffe
016f25b4  mov x0,x19
016f25b8  bl 0x0124e920
016f25bc  mov w20,w0
016f25c0  adrp x1,0x5767000
016f25c4  add x1,x1,#0xe08
016f25c8  mov x0,x19
016f25cc  bl 0x0124f120
016f25d0  orr w1,wzr,#0xfffffffe
016f25d4  mov w2,#0x1
016f25d8  mov x0,x19
016f25dc  bl 0x0124cfc0
016f25e0  mov x0,x19
016f25e4  mov w1,w20
016f25e8  bl 0x0124e060
016f25ec  orr w1,wzr,#0xfffffffd
016f25f0  mov x0,x19
016f25f4  bl 0x0124c4d0
016f25f8  ldr x19,[sp, #0x10]
016f25fc  orr w1,wzr,#0xfffffffd
016f2600  mov w2,#0x6e7
016f2604  mov x0,x19
016f2608  bl 0x0124a650
016f260c  orr w1,wzr,#0xfffffffe
016f2610  mov x0,x19
016f2614  bl 0x0124c0c0
016f2618  orr w1,wzr,#0xfffffffe
016f261c  mov x0,x19
016f2620  bl 0x0124e920
016f2624  mov w20,w0
016f2628  adrp x1,0x5767000
016f262c  add x1,x1,#0xe08
016f2630  mov x0,x19
016f2634  bl 0x0124f120
016f2638  orr w1,wzr,#0xfffffffe
016f263c  mov w2,#0x1
016f2640  mov x0,x19
016f2644  bl 0x0124cfc0
016f2648  mov x0,x19
016f264c  mov w1,w20
016f2650  bl 0x0124e060
016f2654  orr w1,wzr,#0xfffffffd
016f2658  mov x0,x19
016f265c  bl 0x0124c4d0
016f2660  ldr w8,[sp, #0x18]
016f2664  ldr x0,[sp, #0x10]
016f2668  sub w8,w8,#0x3
016f266c  str w8,[sp, #0x18]
016f2670  orr w1,wzr,#0xfffffffc
016f2674  bl 0x0124c4d0
016f2678  ldr w8,[sp, #0x18]
016f267c  ldr x0,[sp, #0x10]
016f2680  str wzr,[sp, #0x18]
016f2684  cmp w8,#0x1
016f2688  b.lt 0x016f26ac
016f268c  mvn w1,w8
016f2690  bl 0x0124c4d0
016f2694  ldr w8,[sp, #0x18]
016f2698  cmp w8,#0x1
016f269c  b.lt 0x016f26ac
016f26a0  ldr x0,[sp, #0x10]
016f26a4  mvn w1,w8
016f26a8  bl 0x0124c4d0
016f26ac  ldr w8,[sp, #0x8]
016f26b0  cmp w8,#0x1
016f26b4  b.lt 0x016f26c4
016f26b8  ldr x0,[sp]
016f26bc  mvn w1,w8
016f26c0  bl 0x0124c4d0
016f26c4  ldp x29,x30,[sp, #0x30]
016f26c8  ldp x20,x19,[sp, #0x20]
016f26cc  add sp,sp,#0x40
016f26d0  ret
