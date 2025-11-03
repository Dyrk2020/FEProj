// ===== case850_ActorSkill_sub19ebaec_lv2_19f1fe4 @ 019f1fe4 (DecompileAt3: cleared stale instructions at entry) =====
019f1fe4  str x25,[sp, #-0x50]!
019f1fe8  stp x24,x23,[sp, #0x10]
019f1fec  stp x22,x21,[sp, #0x20]
019f1ff0  stp x20,x19,[sp, #0x30]
019f1ff4  stp x29,x30,[sp, #0x40]
019f1ff8  add x29,sp,#0x40
019f1ffc  adrp x25,0x7319000
019f2000  ldr x25,[x25, #0x548]
019f2004  mov x23,x30
019f2008  mov x21,x1
019f200c  mov x20,x0
019f2010  ldr x9,[x25]
019f2014  mov x19,x8
019f2018  cbz x9,0x019f2068
019f201c  ldr x1,[x21]
019f2020  mov x0,x20
019f2024  mov w2,wzr
019f2028  bl 0x019f211c
019f202c  ldr x8,[x25]
019f2030  add x22,x20,#0x8
019f2034  cbz x8,0x019f2094
019f2038  ldr x1,[x21, #0x8]
019f203c  mov x0,x22
019f2040  mov w2,wzr
019f2044  bl 0x019f222c
019f2048  ldr x8,[x25]
019f204c  add x24,x20,#0x10
019f2050  cbz x8,0x019f20c0
019f2054  ldr x1,[x21, #0x10]
019f2058  mov x0,x24
019f205c  mov w2,wzr
019f2060  bl 0x019f233c
019f2064  b 0x019f20e8
019f2068  str x23,[x25]
019f206c  adrp x22,0x7317000
019f2070  ldr x22,[x22, #0xd28]
019f2074  mov x0,x20
019f2078  mov w2,wzr
019f207c  strb wzr,[x22]
019f2080  ldr x1,[x21]
019f2084  bl 0x019f211c
019f2088  strb wzr,[x22]
019f208c  str xzr,[x25]
019f2090  add x22,x20,#0x8
019f2094  str x23,[x25]
019f2098  adrp x24,0x7317000
019f209c  ldr x24,[x24, #0xd28]
019f20a0  add x0,x20,#0x8
019f20a4  mov w2,wzr
019f20a8  strb wzr,[x24]
019f20ac  ldr x1,[x21, #0x8]
019f20b0  bl 0x019f222c
019f20b4  strb wzr,[x24]
019f20b8  str xzr,[x25]
019f20bc  add x24,x20,#0x10
019f20c0  str x23,[x25]
019f20c4  adrp x23,0x7317000
019f20c8  ldr x23,[x23, #0xd28]
019f20cc  add x0,x20,#0x10
019f20d0  mov w2,wzr
019f20d4  strb wzr,[x23]
019f20d8  ldr x1,[x21, #0x10]
019f20dc  bl 0x019f233c
019f20e0  strb wzr,[x23]
019f20e4  str xzr,[x25]
019f20e8  stp xzr,xzr,[x19, #0x8]
019f20ec  ldr x8,[x20]
019f20f0  ldp x29,x30,[sp, #0x40]
019f20f4  str x8,[x19]
019f20f8  ldr x8,[x22]
019f20fc  ldp x22,x21,[sp, #0x20]
019f2100  str x8,[x19, #0x8]
019f2104  ldr x8,[x24]
019f2108  ldp x24,x23,[sp, #0x10]
019f210c  str x8,[x19, #0x10]
019f2110  ldp x20,x19,[sp, #0x30]
019f2114  ldr x25,[sp], #0x50
019f2118  ret
019f211c  str x23,[sp, #-0x40]!
019f2120  stp x22,x21,[sp, #0x10]
019f2124  stp x20,x19,[sp, #0x20]
019f2128  stp x29,x30,[sp, #0x30]
019f212c  add x29,sp,#0x30
019f2130  mov x19,x0
019f2134  ldr x8,[x19]
019f2138  mov x20,x1
019f213c  cmp x8,x20
019f2140  b.eq 0x019f2214
019f2144  adrp x21,0x7319000
019f2148  ldr x21,[x21, #0x548]
019f214c  ldr x8,[x21]
019f2150  cbz x8,0x019f21a8
019f2154  mov x0,xzr
019f2158  bl 0x01b4868c
019f215c  tst w0,#0xff
019f2160  b.eq 0x019f2210
019f2164  ldr x8,[x19]
019f2168  cmp x8,x20
019f216c  b.eq 0x019f2210
019f2170  sub x8,x19,#0x6dc
019f2174  ldr w8,[x8]
019f2178  cmp w8,#0x1
019f217c  b.lt 0x019f2210
019f2180  sub x21,x19,#0x6e8
019f2184  bl 0x01b4635c
019f2188  ldr w8,[x21, #0xc]
019f218c  ldr x0,[x0, #0x38]
019f2190  mov w2,#0x897
019f2194  mov x1,x20
019f2198  add w8,w8,#0x166
019f219c  str w8,[x0, #0x10]
019f21a0  bl 0x01b490bc
019f21a4  b 0x019f2210
019f21a8  str x30,[x21]
019f21ac  adrp x22,0x7317000
019f21b0  ldr x22,[x22, #0xd28]
019f21b4  mov x0,xzr
019f21b8  strb wzr,[x22]
019f21bc  bl 0x01b4868c
019f21c0  tst w0,#0xff
019f21c4  b.eq 0x019f2208
019f21c8  ldr x8,[x19]
019f21cc  cmp x8,x20
019f21d0  b.eq 0x019f2208
019f21d4  sub x8,x19,#0x6dc
019f21d8  ldr w8,[x8]
019f21dc  cmp w8,#0x1
019f21e0  b.lt 0x019f2208
019f21e4  sub x23,x19,#0x6e8
019f21e8  bl 0x01b4635c
019f21ec  ldr w8,[x23, #0xc]
019f21f0  ldr x0,[x0, #0x38]
019f21f4  mov w2,#0x897
019f21f8  mov x1,x20
019f21fc  add w8,w8,#0x166
019f2200  str w8,[x0, #0x10]
019f2204  bl 0x01b490bc
019f2208  strb wzr,[x22]
019f220c  str xzr,[x21]
019f2210  str x20,[x19]
019f2214  mov x0,x19
019f2218  ldp x29,x30,[sp, #0x30]
019f221c  ldp x20,x19,[sp, #0x20]
019f2220  ldp x22,x21,[sp, #0x10]
019f2224  ldr x23,[sp], #0x40
019f2228  ret
019f222c  str x23,[sp, #-0x40]!
019f2230  stp x22,x21,[sp, #0x10]
019f2234  stp x20,x19,[sp, #0x20]
019f2238  stp x29,x30,[sp, #0x30]
019f223c  add x29,sp,#0x30
019f2240  mov x19,x0
019f2244  ldr x8,[x19]
019f2248  mov x20,x1
019f224c  cmp x8,x20
019f2250  b.eq 0x019f2324
019f2254  adrp x21,0x7319000
019f2258  ldr x21,[x21, #0x548]
019f225c  ldr x8,[x21]
019f2260  cbz x8,0x019f22b8
019f2264  mov x0,xzr
019f2268  bl 0x01b4868c
019f226c  tst w0,#0xff
019f2270  b.eq 0x019f2320
019f2274  ldr x8,[x19]
019f2278  cmp x8,x20
019f227c  b.eq 0x019f2320
019f2280  sub x8,x19,#0x6e4
019f2284  ldr w8,[x8]
019f2288  cmp w8,#0x1
019f228c  b.lt 0x019f2320
019f2290  sub x21,x19,#0x6f0
019f2294  bl 0x01b4635c
019f2298  ldr w8,[x21, #0xc]
019f229c  ldr x0,[x0, #0x38]
019f22a0  mov w2,#0x898
019f22a4  mov x1,x20
019f22a8  add w8,w8,#0x16e
019f22ac  str w8,[x0, #0x10]
019f22b0  bl 0x01b490bc
019f22b4  b 0x019f2320
019f22b8  str x30,[x21]
019f22bc  adrp x22,0x7317000
019f22c0  ldr x22,[x22, #0xd28]
019f22c4  mov x0,xzr
019f22c8  strb wzr,[x22]
019f22cc  bl 0x01b4868c
019f22d0  tst w0,#0xff
019f22d4  b.eq 0x019f2318
019f22d8  ldr x8,[x19]
019f22dc  cmp x8,x20
019f22e0  b.eq 0x019f2318
019f22e4  sub x8,x19,#0x6e4
019f22e8  ldr w8,[x8]
019f22ec  cmp w8,#0x1
019f22f0  b.lt 0x019f2318
019f22f4  sub x23,x19,#0x6f0
019f22f8  bl 0x01b4635c
019f22fc  ldr w8,[x23, #0xc]
019f2300  ldr x0,[x0, #0x38]
019f2304  mov w2,#0x898
019f2308  mov x1,x20
019f230c  add w8,w8,#0x16e
019f2310  str w8,[x0, #0x10]
019f2314  bl 0x01b490bc
019f2318  strb wzr,[x22]
019f231c  str xzr,[x21]
019f2320  str x20,[x19]
019f2324  mov x0,x19
019f2328  ldp x29,x30,[sp, #0x30]
019f232c  ldp x20,x19,[sp, #0x20]
019f2330  ldp x22,x21,[sp, #0x10]
019f2334  ldr x23,[sp], #0x40
019f2338  ret
019f233c  str x23,[sp, #-0x40]!
019f2340  stp x22,x21,[sp, #0x10]
019f2344  stp x20,x19,[sp, #0x20]
019f2348  stp x29,x30,[sp, #0x30]
019f234c  add x29,sp,#0x30
019f2350  mov x19,x0
019f2354  ldr x8,[x19]
019f2358  mov x20,x1
019f235c  cmp x8,x20
019f2360  b.eq 0x019f2434
019f2364  adrp x21,0x7319000
019f2368  ldr x21,[x21, #0x548]
019f236c  ldr x8,[x21]
019f2370  cbz x8,0x019f23c8
019f2374  mov x0,xzr
019f2378  bl 0x01b4868c
019f237c  tst w0,#0xff
019f2380  b.eq 0x019f2430
019f2384  ldr x8,[x19]
019f2388  cmp x8,x20
019f238c  b.eq 0x019f2430
019f2390  sub x8,x19,#0x6ec
019f2394  ldr w8,[x8]
019f2398  cmp w8,#0x1
019f239c  b.lt 0x019f2430
019f23a0  sub x21,x19,#0x6f8
019f23a4  bl 0x01b4635c
019f23a8  ldr w8,[x21, #0xc]
019f23ac  ldr x0,[x0, #0x38]
019f23b0  mov w2,#0x899
019f23b4  mov x1,x20
019f23b8  add w8,w8,#0x176
019f23bc  str w8,[x0, #0x10]
019f23c0  bl 0x01b490bc
019f23c4  b 0x019f2430
019f23c8  str x30,[x21]
019f23cc  adrp x22,0x7317000
019f23d0  ldr x22,[x22, #0xd28]
019f23d4  mov x0,xzr
019f23d8  strb wzr,[x22]
019f23dc  bl 0x01b4868c
019f23e0  tst w0,#0xff
019f23e4  b.eq 0x019f2428
019f23e8  ldr x8,[x19]
019f23ec  cmp x8,x20
019f23f0  b.eq 0x019f2428
019f23f4  sub x8,x19,#0x6ec
019f23f8  ldr w8,[x8]
019f23fc  cmp w8,#0x1
019f2400  b.lt 0x019f2428
019f2404  sub x23,x19,#0x6f8
019f2408  bl 0x01b4635c
019f240c  ldr w8,[x23, #0xc]
019f2410  ldr x0,[x0, #0x38]
019f2414  mov w2,#0x899
019f2418  mov x1,x20
019f241c  add w8,w8,#0x176
019f2420  str w8,[x0, #0x10]
019f2424  bl 0x01b490bc
019f2428  strb wzr,[x22]
019f242c  str xzr,[x21]
019f2430  str x20,[x19]
019f2434  mov x0,x19
019f2438  ldp x29,x30,[sp, #0x30]
019f243c  ldp x20,x19,[sp, #0x20]
019f2440  ldp x22,x21,[sp, #0x10]
019f2444  ldr x23,[sp], #0x40
019f2448  ret
