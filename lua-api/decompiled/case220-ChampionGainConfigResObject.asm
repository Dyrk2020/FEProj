// ===== case220-ChampionGainConfigResObject @ 016b233c =====
// existing function case220-ChampionGainConfigResObject
016b233c  sub sp,sp,#0x40
016b2340  stp x20,x19,[sp, #0x20]
016b2344  stp x29,x30,[sp, #0x30]
016b2348  add x29,sp,#0x30
016b234c  adrp x1,0x174a000
016b2350  add x1,x1,#0x87c
016b2354  mov x19,x0
016b2358  bl 0x0124ba40
016b235c  adrp x1,0x575d000
016b2360  add x1,x1,#0xa06
016b2364  mov x0,x19
016b2368  str x19,[sp]
016b236c  bl 0x01251aa0
016b2370  mov w8,#0x1
016b2374  str w8,[sp, #0x8]
016b2378  mov x0,sp
016b237c  bl 0x0174aa04
016b2380  adrp x1,0x5761000
016b2384  adrp x3,0x736d000
016b2388  add x1,x1,#0x22
016b238c  add x3,x3,#0x101
016b2390  add x0,sp,#0x10
016b2394  mov x2,sp
016b2398  bl 0x017c5a50
016b239c  ldr x0,[sp, #0x10]
016b23a0  mov w1,#0x10
016b23a4  bl 0x0124cba0
016b23a8  adrp x8,0x17c5000
016b23ac  dup v0.2D,xzr
016b23b0  add x8,x8,#0xa40
016b23b4  mov v0.D[0x0],x8
016b23b8  str q0,[x0]
016b23bc  ldr x0,[sp, #0x10]
016b23c0  adrp x1,0x17c5000
016b23c4  add x1,x1,#0xe14
016b23c8  mov w2,#0x1
016b23cc  bl 0x0124ec90
016b23d0  ldr x0,[sp, #0x10]
016b23d4  mov w1,#0xffffffff
016b23d8  bl 0x0124c0c0
016b23dc  ldr x19,[sp, #0x10]
016b23e0  orr w1,wzr,#0xfffffffb
016b23e4  mov w2,#0x6e7
016b23e8  mov x0,x19
016b23ec  bl 0x0124a650
016b23f0  orr w1,wzr,#0xfffffffe
016b23f4  mov x0,x19
016b23f8  bl 0x0124c0c0
016b23fc  orr w1,wzr,#0xfffffffe
016b2400  mov x0,x19
016b2404  bl 0x0124e920
016b2408  mov w20,w0
016b240c  adrp x1,0x575e000
016b2410  add x1,x1,#0x56d
016b2414  mov x0,x19
016b2418  bl 0x0124f120
016b241c  orr w1,wzr,#0xfffffffe
016b2420  mov w2,#0x1
016b2424  mov x0,x19
016b2428  bl 0x0124cfc0
016b242c  mov x0,x19
016b2430  mov w1,w20
016b2434  bl 0x0124e060
016b2438  orr w1,wzr,#0xfffffffd
016b243c  mov x0,x19
016b2440  bl 0x0124c4d0
016b2444  ldr x19,[sp, #0x10]
016b2448  orr w1,wzr,#0xfffffffd
016b244c  mov w2,#0x6e7
016b2450  mov x0,x19
016b2454  bl 0x0124a650
016b2458  orr w1,wzr,#0xfffffffe
016b245c  mov x0,x19
016b2460  bl 0x0124c0c0
016b2464  orr w1,wzr,#0xfffffffe
016b2468  mov x0,x19
016b246c  bl 0x0124e920
016b2470  mov w20,w0
016b2474  adrp x1,0x575e000
016b2478  add x1,x1,#0x56d
016b247c  mov x0,x19
016b2480  bl 0x0124f120
016b2484  orr w1,wzr,#0xfffffffe
016b2488  mov w2,#0x1
016b248c  mov x0,x19
016b2490  bl 0x0124cfc0
016b2494  mov x0,x19
016b2498  mov w1,w20
016b249c  bl 0x0124e060
016b24a0  orr w1,wzr,#0xfffffffd
016b24a4  mov x0,x19
016b24a8  bl 0x0124c4d0
016b24ac  ldr x0,[sp, #0x10]
016b24b0  mov w1,#0x10
016b24b4  bl 0x0124cba0
016b24b8  adrp x8,0x17c5000
016b24bc  dup v0.2D,xzr
016b24c0  add x8,x8,#0xa48
016b24c4  mov v0.D[0x0],x8
016b24c8  str q0,[x0]
016b24cc  ldr x0,[sp, #0x10]
016b24d0  adrp x1,0x17c5000
016b24d4  add x1,x1,#0xf38
016b24d8  mov w2,#0x1
016b24dc  bl 0x0124ec90
016b24e0  ldr x0,[sp, #0x10]
016b24e4  mov w1,#0xffffffff
016b24e8  bl 0x0124c0c0
016b24ec  ldr x19,[sp, #0x10]
016b24f0  orr w1,wzr,#0xfffffffb
016b24f4  mov w2,#0x6e7
016b24f8  mov x0,x19
016b24fc  bl 0x0124a650
016b2500  orr w1,wzr,#0xfffffffe
016b2504  mov x0,x19
016b2508  bl 0x0124c0c0
016b250c  orr w1,wzr,#0xfffffffe
016b2510  mov x0,x19
016b2514  bl 0x0124e920
016b2518  mov w20,w0
016b251c  adrp x1,0x575e000
016b2520  add x1,x1,#0x578
016b2524  mov x0,x19
016b2528  bl 0x0124f120
016b252c  orr w1,wzr,#0xfffffffe
016b2530  mov w2,#0x1
016b2534  mov x0,x19
016b2538  bl 0x0124cfc0
016b253c  mov x0,x19
016b2540  mov w1,w20
016b2544  bl 0x0124e060
016b2548  orr w1,wzr,#0xfffffffd
016b254c  mov x0,x19
016b2550  bl 0x0124c4d0
016b2554  ldr x19,[sp, #0x10]
016b2558  orr w1,wzr,#0xfffffffd
016b255c  mov w2,#0x6e7
016b2560  mov x0,x19
016b2564  bl 0x0124a650
016b2568  orr w1,wzr,#0xfffffffe
016b256c  mov x0,x19
016b2570  bl 0x0124c0c0
016b2574  orr w1,wzr,#0xfffffffe
016b2578  mov x0,x19
016b257c  bl 0x0124e920
016b2580  mov w20,w0
016b2584  adrp x1,0x575e000
016b2588  add x1,x1,#0x578
016b258c  mov x0,x19
016b2590  bl 0x0124f120
016b2594  orr w1,wzr,#0xfffffffe
016b2598  mov w2,#0x1
016b259c  mov x0,x19
016b25a0  bl 0x0124cfc0
016b25a4  mov x0,x19
016b25a8  mov w1,w20
016b25ac  bl 0x0124e060
016b25b0  orr w1,wzr,#0xfffffffd
016b25b4  mov x0,x19
016b25b8  bl 0x0124c4d0
016b25bc  ldr w8,[sp, #0x18]
016b25c0  ldr x0,[sp, #0x10]
016b25c4  sub w8,w8,#0x3
016b25c8  str w8,[sp, #0x18]
016b25cc  orr w1,wzr,#0xfffffffc
016b25d0  bl 0x0124c4d0
016b25d4  ldr w8,[sp, #0x18]
016b25d8  ldr x0,[sp, #0x10]
016b25dc  str wzr,[sp, #0x18]
016b25e0  cmp w8,#0x1
016b25e4  b.lt 0x016b2608
016b25e8  mvn w1,w8
016b25ec  bl 0x0124c4d0
016b25f0  ldr w8,[sp, #0x18]
016b25f4  cmp w8,#0x1
016b25f8  b.lt 0x016b2608
016b25fc  ldr x0,[sp, #0x10]
016b2600  mvn w1,w8
016b2604  bl 0x0124c4d0
016b2608  ldr w8,[sp, #0x8]
016b260c  cmp w8,#0x1
016b2610  b.lt 0x016b2620
016b2614  ldr x0,[sp]
016b2618  mvn w1,w8
016b261c  bl 0x0124c4d0
016b2620  ldp x29,x30,[sp, #0x30]
016b2624  ldp x20,x19,[sp, #0x20]
016b2628  add sp,sp,#0x40
016b262c  ret
