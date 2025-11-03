// ===== case129-RuneRecommendResObject @ 016a2138 =====
// existing function case129-RuneRecommendResObject
016a2138  sub sp,sp,#0x40
016a213c  stp x20,x19,[sp, #0x20]
016a2140  stp x29,x30,[sp, #0x30]
016a2144  add x29,sp,#0x30
016a2148  adrp x1,0x174a000
016a214c  add x1,x1,#0x87c
016a2150  mov x19,x0
016a2154  bl 0x0124ba40
016a2158  adrp x1,0x575d000
016a215c  add x1,x1,#0xa06
016a2160  mov x0,x19
016a2164  str x19,[sp]
016a2168  bl 0x01251aa0
016a216c  mov w8,#0x1
016a2170  str w8,[sp, #0x8]
016a2174  mov x0,sp
016a2178  bl 0x0174aa04
016a217c  adrp x1,0x575f000
016a2180  adrp x3,0x736d000
016a2184  add x1,x1,#0xd6b
016a2188  add x3,x3,#0x101
016a218c  add x0,sp,#0x10
016a2190  mov x2,sp
016a2194  bl 0x01795fe8
016a2198  ldr x0,[sp, #0x10]
016a219c  mov w1,#0x10
016a21a0  bl 0x0124cba0
016a21a4  adrp x8,0x1795000
016a21a8  dup v0.2D,xzr
016a21ac  add x8,x8,#0xfd8
016a21b0  mov v0.D[0x0],x8
016a21b4  str q0,[x0]
016a21b8  ldr x0,[sp, #0x10]
016a21bc  adrp x1,0x1796000
016a21c0  add x1,x1,#0x3ac
016a21c4  mov w2,#0x1
016a21c8  bl 0x0124ec90
016a21cc  ldr x0,[sp, #0x10]
016a21d0  mov w1,#0xffffffff
016a21d4  bl 0x0124c0c0
016a21d8  ldr x19,[sp, #0x10]
016a21dc  orr w1,wzr,#0xfffffffb
016a21e0  mov w2,#0x6e7
016a21e4  mov x0,x19
016a21e8  bl 0x0124a650
016a21ec  orr w1,wzr,#0xfffffffe
016a21f0  mov x0,x19
016a21f4  bl 0x0124c0c0
016a21f8  orr w1,wzr,#0xfffffffe
016a21fc  mov x0,x19
016a2200  bl 0x0124e920
016a2204  mov w20,w0
016a2208  adrp x1,0x575e000
016a220c  add x1,x1,#0x56d
016a2210  mov x0,x19
016a2214  bl 0x0124f120
016a2218  orr w1,wzr,#0xfffffffe
016a221c  mov w2,#0x1
016a2220  mov x0,x19
016a2224  bl 0x0124cfc0
016a2228  mov x0,x19
016a222c  mov w1,w20
016a2230  bl 0x0124e060
016a2234  orr w1,wzr,#0xfffffffd
016a2238  mov x0,x19
016a223c  bl 0x0124c4d0
016a2240  ldr x19,[sp, #0x10]
016a2244  orr w1,wzr,#0xfffffffd
016a2248  mov w2,#0x6e7
016a224c  mov x0,x19
016a2250  bl 0x0124a650
016a2254  orr w1,wzr,#0xfffffffe
016a2258  mov x0,x19
016a225c  bl 0x0124c0c0
016a2260  orr w1,wzr,#0xfffffffe
016a2264  mov x0,x19
016a2268  bl 0x0124e920
016a226c  mov w20,w0
016a2270  adrp x1,0x575e000
016a2274  add x1,x1,#0x56d
016a2278  mov x0,x19
016a227c  bl 0x0124f120
016a2280  orr w1,wzr,#0xfffffffe
016a2284  mov w2,#0x1
016a2288  mov x0,x19
016a228c  bl 0x0124cfc0
016a2290  mov x0,x19
016a2294  mov w1,w20
016a2298  bl 0x0124e060
016a229c  orr w1,wzr,#0xfffffffd
016a22a0  mov x0,x19
016a22a4  bl 0x0124c4d0
016a22a8  ldr x0,[sp, #0x10]
016a22ac  mov w1,#0x10
016a22b0  bl 0x0124cba0
016a22b4  adrp x8,0x1795000
016a22b8  dup v0.2D,xzr
016a22bc  add x8,x8,#0xfe0
016a22c0  mov v0.D[0x0],x8
016a22c4  str q0,[x0]
016a22c8  ldr x0,[sp, #0x10]
016a22cc  adrp x1,0x1796000
016a22d0  add x1,x1,#0x4d0
016a22d4  mov w2,#0x1
016a22d8  bl 0x0124ec90
016a22dc  ldr x0,[sp, #0x10]
016a22e0  mov w1,#0xffffffff
016a22e4  bl 0x0124c0c0
016a22e8  ldr x19,[sp, #0x10]
016a22ec  orr w1,wzr,#0xfffffffb
016a22f0  mov w2,#0x6e7
016a22f4  mov x0,x19
016a22f8  bl 0x0124a650
016a22fc  orr w1,wzr,#0xfffffffe
016a2300  mov x0,x19
016a2304  bl 0x0124c0c0
016a2308  orr w1,wzr,#0xfffffffe
016a230c  mov x0,x19
016a2310  bl 0x0124e920
016a2314  mov w20,w0
016a2318  adrp x1,0x575e000
016a231c  add x1,x1,#0x578
016a2320  mov x0,x19
016a2324  bl 0x0124f120
016a2328  orr w1,wzr,#0xfffffffe
016a232c  mov w2,#0x1
016a2330  mov x0,x19
016a2334  bl 0x0124cfc0
016a2338  mov x0,x19
016a233c  mov w1,w20
016a2340  bl 0x0124e060
016a2344  orr w1,wzr,#0xfffffffd
016a2348  mov x0,x19
016a234c  bl 0x0124c4d0
016a2350  ldr x19,[sp, #0x10]
016a2354  orr w1,wzr,#0xfffffffd
016a2358  mov w2,#0x6e7
016a235c  mov x0,x19
016a2360  bl 0x0124a650
016a2364  orr w1,wzr,#0xfffffffe
016a2368  mov x0,x19
016a236c  bl 0x0124c0c0
016a2370  orr w1,wzr,#0xfffffffe
016a2374  mov x0,x19
016a2378  bl 0x0124e920
016a237c  mov w20,w0
016a2380  adrp x1,0x575e000
016a2384  add x1,x1,#0x578
016a2388  mov x0,x19
016a238c  bl 0x0124f120
016a2390  orr w1,wzr,#0xfffffffe
016a2394  mov w2,#0x1
016a2398  mov x0,x19
016a239c  bl 0x0124cfc0
016a23a0  mov x0,x19
016a23a4  mov w1,w20
016a23a8  bl 0x0124e060
016a23ac  orr w1,wzr,#0xfffffffd
016a23b0  mov x0,x19
016a23b4  bl 0x0124c4d0
016a23b8  ldr w8,[sp, #0x18]
016a23bc  ldr x0,[sp, #0x10]
016a23c0  sub w8,w8,#0x3
016a23c4  str w8,[sp, #0x18]
016a23c8  orr w1,wzr,#0xfffffffc
016a23cc  bl 0x0124c4d0
016a23d0  ldr w8,[sp, #0x18]
016a23d4  ldr x0,[sp, #0x10]
016a23d8  str wzr,[sp, #0x18]
016a23dc  cmp w8,#0x1
016a23e0  b.lt 0x016a2404
016a23e4  mvn w1,w8
016a23e8  bl 0x0124c4d0
016a23ec  ldr w8,[sp, #0x18]
016a23f0  cmp w8,#0x1
016a23f4  b.lt 0x016a2404
016a23f8  ldr x0,[sp, #0x10]
016a23fc  mvn w1,w8
016a2400  bl 0x0124c4d0
016a2404  ldr w8,[sp, #0x8]
016a2408  cmp w8,#0x1
016a240c  b.lt 0x016a241c
016a2410  ldr x0,[sp]
016a2414  mvn w1,w8
016a2418  bl 0x0124c4d0
016a241c  ldp x29,x30,[sp, #0x30]
016a2420  ldp x20,x19,[sp, #0x20]
016a2424  add sp,sp,#0x40
016a2428  ret
