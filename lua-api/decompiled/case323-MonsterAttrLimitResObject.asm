// ===== case323-MonsterAttrLimitResObject @ 016c2390 =====
// existing function case323-MonsterAttrLimitResObject
016c2390  sub sp,sp,#0x40
016c2394  stp x20,x19,[sp, #0x20]
016c2398  stp x29,x30,[sp, #0x30]
016c239c  add x29,sp,#0x30
016c23a0  adrp x1,0x174a000
016c23a4  add x1,x1,#0x87c
016c23a8  mov x19,x0
016c23ac  bl 0x0124ba40
016c23b0  adrp x1,0x575d000
016c23b4  add x1,x1,#0xa06
016c23b8  mov x0,x19
016c23bc  str x19,[sp]
016c23c0  bl 0x01251aa0
016c23c4  mov w8,#0x1
016c23c8  str w8,[sp, #0x8]
016c23cc  mov x0,sp
016c23d0  bl 0x0174aa04
016c23d4  adrp x1,0x5762000
016c23d8  adrp x3,0x736d000
016c23dc  add x1,x1,#0xbef
016c23e0  add x3,x3,#0x101
016c23e4  add x0,sp,#0x10
016c23e8  mov x2,sp
016c23ec  bl 0x017ffcec
016c23f0  ldr x0,[sp, #0x10]
016c23f4  mov w1,#0x10
016c23f8  bl 0x0124cba0
016c23fc  adrp x8,0x17ff000
016c2400  dup v0.2D,xzr
016c2404  add x8,x8,#0xce4
016c2408  mov v0.D[0x0],x8
016c240c  str q0,[x0]
016c2410  ldr x0,[sp, #0x10]
016c2414  adrp x1,0x1800000
016c2418  add x1,x1,#0xb0
016c241c  mov w2,#0x1
016c2420  bl 0x0124ec90
016c2424  ldr x0,[sp, #0x10]
016c2428  mov w1,#0xffffffff
016c242c  bl 0x0124c0c0
016c2430  ldr x19,[sp, #0x10]
016c2434  orr w1,wzr,#0xfffffffb
016c2438  mov w2,#0x6e7
016c243c  mov x0,x19
016c2440  bl 0x0124a650
016c2444  orr w1,wzr,#0xfffffffe
016c2448  mov x0,x19
016c244c  bl 0x0124c0c0
016c2450  orr w1,wzr,#0xfffffffe
016c2454  mov x0,x19
016c2458  bl 0x0124e920
016c245c  mov w20,w0
016c2460  adrp x1,0x5762000
016c2464  add x1,x1,#0xc09
016c2468  mov x0,x19
016c246c  bl 0x0124f120
016c2470  orr w1,wzr,#0xfffffffe
016c2474  mov w2,#0x1
016c2478  mov x0,x19
016c247c  bl 0x0124cfc0
016c2480  mov x0,x19
016c2484  mov w1,w20
016c2488  bl 0x0124e060
016c248c  orr w1,wzr,#0xfffffffd
016c2490  mov x0,x19
016c2494  bl 0x0124c4d0
016c2498  ldr x19,[sp, #0x10]
016c249c  orr w1,wzr,#0xfffffffd
016c24a0  mov w2,#0x6e7
016c24a4  mov x0,x19
016c24a8  bl 0x0124a650
016c24ac  orr w1,wzr,#0xfffffffe
016c24b0  mov x0,x19
016c24b4  bl 0x0124c0c0
016c24b8  orr w1,wzr,#0xfffffffe
016c24bc  mov x0,x19
016c24c0  bl 0x0124e920
016c24c4  mov w20,w0
016c24c8  adrp x1,0x5762000
016c24cc  add x1,x1,#0xc09
016c24d0  mov x0,x19
016c24d4  bl 0x0124f120
016c24d8  orr w1,wzr,#0xfffffffe
016c24dc  mov w2,#0x1
016c24e0  mov x0,x19
016c24e4  bl 0x0124cfc0
016c24e8  mov x0,x19
016c24ec  mov w1,w20
016c24f0  bl 0x0124e060
016c24f4  orr w1,wzr,#0xfffffffd
016c24f8  mov x0,x19
016c24fc  bl 0x0124c4d0
016c2500  ldr w8,[sp, #0x18]
016c2504  ldr x0,[sp, #0x10]
016c2508  sub w8,w8,#0x3
016c250c  str w8,[sp, #0x18]
016c2510  orr w1,wzr,#0xfffffffc
016c2514  bl 0x0124c4d0
016c2518  ldr w8,[sp, #0x18]
016c251c  ldr x0,[sp, #0x10]
016c2520  str wzr,[sp, #0x18]
016c2524  cmp w8,#0x1
016c2528  b.lt 0x016c254c
016c252c  mvn w1,w8
016c2530  bl 0x0124c4d0
016c2534  ldr w8,[sp, #0x18]
016c2538  cmp w8,#0x1
016c253c  b.lt 0x016c254c
016c2540  ldr x0,[sp, #0x10]
016c2544  mvn w1,w8
016c2548  bl 0x0124c4d0
016c254c  ldr w8,[sp, #0x8]
016c2550  cmp w8,#0x1
016c2554  b.lt 0x016c2564
016c2558  ldr x0,[sp]
016c255c  mvn w1,w8
016c2560  bl 0x0124c4d0
016c2564  ldp x29,x30,[sp, #0x30]
016c2568  ldp x20,x19,[sp, #0x20]
016c256c  add sp,sp,#0x40
016c2570  ret
