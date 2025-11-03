// ===== case219-TraitResObject @ 016b216c =====
// existing function case219-TraitResObject
016b216c  sub sp,sp,#0x40
016b2170  str x19,[sp, #0x20]
016b2174  stp x29,x30,[sp, #0x30]
016b2178  add x29,sp,#0x30
016b217c  adrp x1,0x174a000
016b2180  add x1,x1,#0x87c
016b2184  mov x19,x0
016b2188  bl 0x0124ba40
016b218c  adrp x1,0x575d000
016b2190  add x1,x1,#0xa06
016b2194  mov x0,x19
016b2198  str x19,[sp]
016b219c  bl 0x01251aa0
016b21a0  mov w8,#0x1
016b21a4  str w8,[sp, #0x8]
016b21a8  mov x0,sp
016b21ac  bl 0x0174aa04
016b21b0  adrp x1,0x5760000
016b21b4  adrp x3,0x736d000
016b21b8  add x1,x1,#0xfed
016b21bc  add x3,x3,#0x101
016b21c0  add x0,sp,#0x10
016b21c4  mov x2,sp
016b21c8  bl 0x017c523c
016b21cc  adrp x1,0x5760000
016b21d0  adrp x2,0x17c5000
016b21d4  adrp x4,0x17c5000
016b21d8  add x1,x1,#0xf82
016b21dc  add x2,x2,#0x14
016b21e0  add x4,x4,#0x1c
016b21e4  add x0,sp,#0x10
016b21e8  mov x3,xzr
016b21ec  mov x5,xzr
016b21f0  bl 0x017c4e2c
016b21f4  adrp x1,0x5760000
016b21f8  adrp x2,0x17c5000
016b21fc  adrp x4,0x17c5000
016b2200  add x1,x1,#0xffc
016b2204  add x2,x2,#0x24
016b2208  add x4,x4,#0x2c
016b220c  mov x3,xzr
016b2210  mov x5,xzr
016b2214  bl 0x017c4e2c
016b2218  adrp x1,0x5761000
016b221c  adrp x2,0x17c5000
016b2220  adrp x4,0x17c5000
016b2224  add x1,x1,#0xa
016b2228  add x2,x2,#0x21c
016b222c  add x4,x4,#0x224
016b2230  mov x3,xzr
016b2234  mov x5,xzr
016b2238  bl 0x017c5034
016b223c  adrp x1,0x5761000
016b2240  adrp x2,0x17c5000
016b2244  adrp x4,0x17c5000
016b2248  add x1,x1,#0x17
016b224c  add x2,x2,#0x22c
016b2250  add x4,x4,#0x234
016b2254  mov x3,xzr
016b2258  mov x5,xzr
016b225c  bl 0x017c5034
016b2260  mov x19,x0
016b2264  ldr w8,[x19, #0x8]
016b2268  ldr x0,[x19]
016b226c  sub w8,w8,#0x3
016b2270  str w8,[x19, #0x8]
016b2274  orr w1,wzr,#0xfffffffc
016b2278  bl 0x0124c4d0
016b227c  ldr w8,[x19, #0x8]
016b2280  ldr x0,[x19]
016b2284  str wzr,[x19, #0x8]
016b2288  cmp w8,#0x1
016b228c  b.lt 0x016b2298
016b2290  mvn w1,w8
016b2294  bl 0x0124c4d0
016b2298  ldr w8,[sp, #0x18]
016b229c  cmp w8,#0x1
016b22a0  b.lt 0x016b22b0
016b22a4  ldr x0,[sp, #0x10]
016b22a8  mvn w1,w8
016b22ac  bl 0x0124c4d0
016b22b0  ldr w8,[sp, #0x8]
016b22b4  cmp w8,#0x1
016b22b8  b.lt 0x016b22c8
016b22bc  ldr x0,[sp]
016b22c0  mvn w1,w8
016b22c4  bl 0x0124c4d0
016b22c8  ldp x29,x30,[sp, #0x30]
016b22cc  ldr x19,[sp, #0x20]
016b22d0  add sp,sp,#0x40
016b22d4  ret
