// ===== case850_ActorSkill_sub19ebb18_lv2_19f244c @ 019f244c (DecompileAt3: cleared stale instructions at entry) =====
019f244c  str x23,[sp, #-0x40]!
019f2450  stp x22,x21,[sp, #0x10]
019f2454  stp x20,x19,[sp, #0x20]
019f2458  stp x29,x30,[sp, #0x30]
019f245c  add x29,sp,#0x30
019f2460  mov x19,x0
019f2464  ldr w8,[x19]
019f2468  mov w20,w1
019f246c  cmp w8,w20
019f2470  b.eq 0x019f25a8
019f2474  adrp x21,0x7319000
019f2478  ldr x21,[x21, #0x548]
019f247c  ldr x8,[x21]
019f2480  cbz x8,0x019f24d4
019f2484  mov x0,xzr
019f2488  bl 0x01b4868c
019f248c  tst w0,#0xff
019f2490  b.eq 0x019f2538
019f2494  ldr w8,[x19]
019f2498  cmp w8,w20
019f249c  b.eq 0x019f2538
019f24a0  sub x21,x19,#0x724
019f24a4  ldr w8,[x21]
019f24a8  cmp w8,#0x1
019f24ac  b.lt 0x019f2538
019f24b0  bl 0x01b4635c
019f24b4  ldr w8,[x21]
019f24b8  ldr x0,[x0, #0x38]
019f24bc  mov w2,#0x89d
019f24c0  mov w1,w20
019f24c4  add w8,w8,#0x17e
019f24c8  str w8,[x0, #0x10]
019f24cc  bl 0x01b490fc
019f24d0  b 0x019f2538
019f24d4  str x30,[x21]
019f24d8  adrp x22,0x7317000
019f24dc  ldr x22,[x22, #0xd28]
019f24e0  mov x0,xzr
019f24e4  strb wzr,[x22]
019f24e8  bl 0x01b4868c
019f24ec  tst w0,#0xff
019f24f0  b.eq 0x019f2530
019f24f4  ldr w8,[x19]
019f24f8  cmp w8,w20
019f24fc  b.eq 0x019f2530
019f2500  sub x23,x19,#0x724
019f2504  ldr w8,[x23]
019f2508  cmp w8,#0x1
019f250c  b.lt 0x019f2530
019f2510  bl 0x01b4635c
019f2514  ldr w8,[x23]
019f2518  ldr x0,[x0, #0x38]
019f251c  mov w2,#0x89d
019f2520  mov w1,w20
019f2524  add w8,w8,#0x17e
019f2528  str w8,[x0, #0x10]
019f252c  bl 0x01b490fc
019f2530  strb wzr,[x22]
019f2534  str xzr,[x21]
019f2538  str w20,[x19]
019f253c  sub x8,x19,#0x728
019f2540  ldr w9,[x8]
019f2544  mov w8,w9
019f2548  tbz w9,#0x1f,0x019f2558
019f254c  sub x8,x19,#0x730
019f2550  sub x8,x8,w9, SXTH 
019f2554  ldr w8,[x8]
019f2558  ubfx w10,w9,#0x10,#0xf
019f255c  cmp w9,#0x0
019f2560  csel w1,wzr,w10,ge
019f2564  str w20,[sp, #0xc]
019f2568  tbnz w8,#0x1f,0x019f2584
019f256c  cbz w8,0x019f25a8
019f2570  mov w2,#0x33
019f2574  add x3,sp,#0xc
019f2578  mov w0,w8
019f257c  bl 0x01b1d8c0
019f2580  b 0x019f25a8
019f2584  mov x3,#0x6472
019f2588  adrp x2,0x574b000
019f258c  movk x3,#0x7474, LSL #16
019f2590  add x2,x2,#0x398
019f2594  mov w1,#0x1
019f2598  movk x3,#0x100, LSL #48
019f259c  mov w0,wzr
019f25a0  mov w4,w8
019f25a4  bl 0x01b83618
019f25a8  mov x0,x19
019f25ac  ldp x29,x30,[sp, #0x30]
019f25b0  ldp x20,x19,[sp, #0x20]
019f25b4  ldp x22,x21,[sp, #0x10]
019f25b8  ldr x23,[sp], #0x40
019f25bc  ret
019f25c0  stp x20,x19,[sp, #-0x20]!
019f25c4  stp x29,x30,[sp, #0x10]
019f25c8  add x29,sp,#0x10
019f25cc  mov w1,#0x1
019f25d0  mov x19,x0
019f25d4  bl 0x0124ff50
019f25d8  cbz w0,0x019f2604
019f25dc  adrp x2,0x736d000
019f25e0  adrp x3,0x736d000
019f25e4  add x2,x2,#0x208
019f25e8  add x3,x3,#0x207
019f25ec  mov w1,#0x1
019f25f0  mov w4,#0x1
019f25f4  mov x0,x19
019f25f8  bl 0x0174b938
019f25fc  ldr x20,[x0, #0x8]
019f2600  b 0x019f2608
019f2604  mov x20,xzr
019f2608  mov w1,#0xb9d7
019f260c  movk w1,#0xfff0, LSL #16
019f2610  mov x0,x19
019f2614  bl 0x0124e990
019f2618  mov x2,x0
019f261c  mov x0,x19
019f2620  mov x1,x20
019f2624  bl 0x019f2634
019f2628  ldp x29,x30,[sp, #0x10]
019f262c  ldp x20,x19,[sp], #0x20
019f2630  ret
