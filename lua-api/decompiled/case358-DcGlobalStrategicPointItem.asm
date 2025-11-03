// ===== case358-DcGlobalStrategicPointItem @ 016d2158 =====
// existing function case358-DcGlobalStrategicPointItem
016d2158  sub sp,sp,#0x50
016d215c  str x21,[sp, #0x20]
016d2160  stp x20,x19,[sp, #0x30]
016d2164  stp x29,x30,[sp, #0x40]
016d2168  add x29,sp,#0x40
016d216c  adrp x1,0x174a000
016d2170  add x1,x1,#0x87c
016d2174  mov x19,x0
016d2178  bl 0x0124ba40
016d217c  adrp x1,0x575d000
016d2180  add x1,x1,#0xa06
016d2184  mov x0,x19
016d2188  str x19,[sp]
016d218c  bl 0x01251aa0
016d2190  mov w8,#0x1
016d2194  str w8,[sp, #0x8]
016d2198  mov x0,sp
016d219c  bl 0x0174aa04
016d21a0  adrp x1,0x5763000
016d21a4  adrp x3,0x736d000
016d21a8  add x1,x1,#0xf20
016d21ac  add x3,x3,#0x101
016d21b0  add x0,sp,#0x10
016d21b4  mov x2,sp
016d21b8  bl 0x01821e88
016d21bc  adrp x1,0x5972000
016d21c0  adrp x2,0x1821000
016d21c4  adrp x4,0x1821000
016d21c8  add x1,x1,#0xaa5
016d21cc  add x2,x2,#0xe60
016d21d0  add x4,x4,#0xe68
016d21d4  add x0,sp,#0x10
016d21d8  mov x3,xzr
016d21dc  mov x5,xzr
016d21e0  bl 0x01821c78
016d21e4  adrp x1,0x5769000
016d21e8  adrp x2,0x1821000
016d21ec  adrp x4,0x1821000
016d21f0  add x1,x1,#0x6a1
016d21f4  add x2,x2,#0xe70
016d21f8  add x4,x4,#0xe78
016d21fc  mov x3,xzr
016d2200  mov x5,xzr
016d2204  bl 0x01821c78
016d2208  mov x19,x0
016d220c  ldr x0,[x19]
016d2210  mov w1,#0x10
016d2214  bl 0x0124cba0
016d2218  adrp x8,0x1821000
016d221c  dup v0.2D,xzr
016d2220  add x8,x8,#0xe80
016d2224  mov v0.D[0x0],x8
016d2228  str q0,[x0]
016d222c  ldr x0,[x19]
016d2230  adrp x1,0x1822000
016d2234  add x1,x1,#0x46c
016d2238  mov w2,#0x1
016d223c  bl 0x0124ec90
016d2240  ldr x0,[x19]
016d2244  mov w1,#0xffffffff
016d2248  bl 0x0124c0c0
016d224c  ldr x20,[x19]
016d2250  orr w1,wzr,#0xfffffffb
016d2254  mov w2,#0x6e7
016d2258  mov x0,x20
016d225c  bl 0x0124a650
016d2260  orr w1,wzr,#0xfffffffe
016d2264  mov x0,x20
016d2268  bl 0x0124c0c0
016d226c  orr w1,wzr,#0xfffffffe
016d2270  mov x0,x20
016d2274  bl 0x0124e920
016d2278  mov w21,w0
016d227c  adrp x1,0x5763000
016d2280  add x1,x1,#0xf3b
016d2284  mov x0,x20
016d2288  bl 0x0124f120
016d228c  orr w1,wzr,#0xfffffffe
016d2290  mov w2,#0x1
016d2294  mov x0,x20
016d2298  bl 0x0124cfc0
016d229c  mov x0,x20
016d22a0  mov w1,w21
016d22a4  bl 0x0124e060
016d22a8  orr w1,wzr,#0xfffffffd
016d22ac  mov x0,x20
016d22b0  bl 0x0124c4d0
016d22b4  ldr x20,[x19]
016d22b8  orr w1,wzr,#0xfffffffd
016d22bc  mov w2,#0x6e7
016d22c0  mov x0,x20
016d22c4  bl 0x0124a650
016d22c8  orr w1,wzr,#0xfffffffe
016d22cc  mov x0,x20
016d22d0  bl 0x0124c0c0
016d22d4  orr w1,wzr,#0xfffffffe
016d22d8  mov x0,x20
016d22dc  bl 0x0124e920
016d22e0  mov w21,w0
016d22e4  adrp x1,0x5763000
016d22e8  add x1,x1,#0xf3b
016d22ec  mov x0,x20
016d22f0  bl 0x0124f120
016d22f4  orr w1,wzr,#0xfffffffe
016d22f8  mov w2,#0x1
016d22fc  mov x0,x20
016d2300  bl 0x0124cfc0
016d2304  mov x0,x20
016d2308  mov w1,w21
016d230c  bl 0x0124e060
016d2310  orr w1,wzr,#0xfffffffd
016d2314  mov x0,x20
016d2318  bl 0x0124c4d0
016d231c  ldr w8,[x19, #0x8]
016d2320  ldr x0,[x19]
016d2324  sub w8,w8,#0x3
016d2328  str w8,[x19, #0x8]
016d232c  orr w1,wzr,#0xfffffffc
016d2330  bl 0x0124c4d0
016d2334  ldr w8,[x19, #0x8]
016d2338  ldr x0,[x19]
016d233c  str wzr,[x19, #0x8]
016d2340  cmp w8,#0x1
016d2344  b.lt 0x016d2350
016d2348  mvn w1,w8
016d234c  bl 0x0124c4d0
016d2350  ldr w8,[sp, #0x18]
016d2354  cmp w8,#0x1
016d2358  b.lt 0x016d2368
016d235c  ldr x0,[sp, #0x10]
016d2360  mvn w1,w8
016d2364  bl 0x0124c4d0
016d2368  ldr w8,[sp, #0x8]
016d236c  cmp w8,#0x1
016d2370  b.lt 0x016d2380
016d2374  ldr x0,[sp]
016d2378  mvn w1,w8
016d237c  bl 0x0124c4d0
016d2380  ldp x29,x30,[sp, #0x40]
016d2384  ldp x20,x19,[sp, #0x30]
016d2388  ldr x21,[sp, #0x20]
016d238c  add sp,sp,#0x50
016d2390  ret
