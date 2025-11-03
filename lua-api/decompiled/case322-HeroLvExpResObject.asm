// ===== case322-HeroLvExpResObject @ 016c2148 =====
// existing function case322-HeroLvExpResObject
016c2148  sub sp,sp,#0x40
016c214c  stp x20,x19,[sp, #0x20]
016c2150  stp x29,x30,[sp, #0x30]
016c2154  add x29,sp,#0x30
016c2158  adrp x1,0x174a000
016c215c  add x1,x1,#0x87c
016c2160  mov x19,x0
016c2164  bl 0x0124ba40
016c2168  adrp x1,0x575d000
016c216c  add x1,x1,#0xa06
016c2170  mov x0,x19
016c2174  str x19,[sp]
016c2178  bl 0x01251aa0
016c217c  mov w8,#0x1
016c2180  str w8,[sp, #0x8]
016c2184  mov x0,sp
016c2188  bl 0x0174aa04
016c218c  adrp x1,0x5762000
016c2190  adrp x3,0x736d000
016c2194  add x1,x1,#0xbd2
016c2198  add x3,x3,#0x101
016c219c  add x0,sp,#0x10
016c21a0  mov x2,sp
016c21a4  bl 0x017ff7fc
016c21a8  ldr x0,[sp, #0x10]
016c21ac  mov w1,#0x10
016c21b0  bl 0x0124cba0
016c21b4  adrp x8,0x17ff000
016c21b8  dup v0.2D,xzr
016c21bc  add x8,x8,#0x7f4
016c21c0  mov v0.D[0x0],x8
016c21c4  str q0,[x0]
016c21c8  ldr x0,[sp, #0x10]
016c21cc  adrp x1,0x17ff000
016c21d0  add x1,x1,#0xbc0
016c21d4  mov w2,#0x1
016c21d8  bl 0x0124ec90
016c21dc  ldr x0,[sp, #0x10]
016c21e0  mov w1,#0xffffffff
016c21e4  bl 0x0124c0c0
016c21e8  ldr x19,[sp, #0x10]
016c21ec  orr w1,wzr,#0xfffffffb
016c21f0  mov w2,#0x6e7
016c21f4  mov x0,x19
016c21f8  bl 0x0124a650
016c21fc  orr w1,wzr,#0xfffffffe
016c2200  mov x0,x19
016c2204  bl 0x0124c0c0
016c2208  orr w1,wzr,#0xfffffffe
016c220c  mov x0,x19
016c2210  bl 0x0124e920
016c2214  mov w20,w0
016c2218  adrp x1,0x5762000
016c221c  add x1,x1,#0xbe5
016c2220  mov x0,x19
016c2224  bl 0x0124f120
016c2228  orr w1,wzr,#0xfffffffe
016c222c  mov w2,#0x1
016c2230  mov x0,x19
016c2234  bl 0x0124cfc0
016c2238  mov x0,x19
016c223c  mov w1,w20
016c2240  bl 0x0124e060
016c2244  orr w1,wzr,#0xfffffffd
016c2248  mov x0,x19
016c224c  bl 0x0124c4d0
016c2250  ldr x19,[sp, #0x10]
016c2254  orr w1,wzr,#0xfffffffd
016c2258  mov w2,#0x6e7
016c225c  mov x0,x19
016c2260  bl 0x0124a650
016c2264  orr w1,wzr,#0xfffffffe
016c2268  mov x0,x19
016c226c  bl 0x0124c0c0
016c2270  orr w1,wzr,#0xfffffffe
016c2274  mov x0,x19
016c2278  bl 0x0124e920
016c227c  mov w20,w0
016c2280  adrp x1,0x5762000
016c2284  add x1,x1,#0xbe5
016c2288  mov x0,x19
016c228c  bl 0x0124f120
016c2290  orr w1,wzr,#0xfffffffe
016c2294  mov w2,#0x1
016c2298  mov x0,x19
016c229c  bl 0x0124cfc0
016c22a0  mov x0,x19
016c22a4  mov w1,w20
016c22a8  bl 0x0124e060
016c22ac  orr w1,wzr,#0xfffffffd
016c22b0  mov x0,x19
016c22b4  bl 0x0124c4d0
016c22b8  ldr w8,[sp, #0x18]
016c22bc  ldr x0,[sp, #0x10]
016c22c0  sub w8,w8,#0x3
016c22c4  str w8,[sp, #0x18]
016c22c8  orr w1,wzr,#0xfffffffc
016c22cc  bl 0x0124c4d0
016c22d0  ldr w8,[sp, #0x18]
016c22d4  ldr x0,[sp, #0x10]
016c22d8  str wzr,[sp, #0x18]
016c22dc  cmp w8,#0x1
016c22e0  b.lt 0x016c2304
016c22e4  mvn w1,w8
016c22e8  bl 0x0124c4d0
016c22ec  ldr w8,[sp, #0x18]
016c22f0  cmp w8,#0x1
016c22f4  b.lt 0x016c2304
016c22f8  ldr x0,[sp, #0x10]
016c22fc  mvn w1,w8
016c2300  bl 0x0124c4d0
016c2304  ldr w8,[sp, #0x8]
016c2308  cmp w8,#0x1
016c230c  b.lt 0x016c231c
016c2310  ldr x0,[sp]
016c2314  mvn w1,w8
016c2318  bl 0x0124c4d0
016c231c  ldp x29,x30,[sp, #0x30]
016c2320  ldp x20,x19,[sp, #0x20]
016c2324  add sp,sp,#0x40
016c2328  ret
