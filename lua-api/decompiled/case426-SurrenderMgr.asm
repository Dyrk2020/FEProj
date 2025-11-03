// ===== case426-SurrenderMgr @ 016e6244 =====
// existing function case426-SurrenderMgr
016e6244  sub sp,sp,#0x40
016e6248  stp x20,x19,[sp, #0x20]
016e624c  stp x29,x30,[sp, #0x30]
016e6250  add x29,sp,#0x30
016e6254  adrp x1,0x174a000
016e6258  add x1,x1,#0x87c
016e625c  mov x19,x0
016e6260  bl 0x0124ba40
016e6264  adrp x1,0x575d000
016e6268  add x1,x1,#0xa06
016e626c  mov x0,x19
016e6270  str x19,[sp]
016e6274  bl 0x01251aa0
016e6278  mov w8,#0x1
016e627c  str w8,[sp, #0x8]
016e6280  mov x0,sp
016e6284  bl 0x0174aa04
016e6288  adrp x1,0x5766000
016e628c  adrp x3,0x736d000
016e6290  add x1,x1,#0x6e4
016e6294  add x3,x3,#0x101
016e6298  add x0,sp,#0x10
016e629c  mov x2,sp
016e62a0  bl 0x01860b6c
016e62a4  ldr x0,[sp, #0x10]
016e62a8  mov w1,#0x10
016e62ac  bl 0x0124cba0
016e62b0  adrp x8,0x1860000
016e62b4  dup v0.2D,xzr
016e62b8  add x8,x8,#0xb64
016e62bc  mov v0.D[0x0],x8
016e62c0  str q0,[x0]
016e62c4  ldr x0,[sp, #0x10]
016e62c8  adrp x1,0x1860000
016e62cc  add x1,x1,#0xf30
016e62d0  mov w2,#0x1
016e62d4  bl 0x0124ec90
016e62d8  ldr x0,[sp, #0x10]
016e62dc  mov w1,#0xffffffff
016e62e0  bl 0x0124c0c0
016e62e4  ldr x19,[sp, #0x10]
016e62e8  orr w1,wzr,#0xfffffffb
016e62ec  mov w2,#0x6e7
016e62f0  mov x0,x19
016e62f4  bl 0x0124a650
016e62f8  orr w1,wzr,#0xfffffffe
016e62fc  mov x0,x19
016e6300  bl 0x0124c0c0
016e6304  orr w1,wzr,#0xfffffffe
016e6308  mov x0,x19
016e630c  bl 0x0124e920
016e6310  mov w20,w0
016e6314  adrp x1,0x5763000
016e6318  add x1,x1,#0x892
016e631c  mov x0,x19
016e6320  bl 0x0124f120
016e6324  orr w1,wzr,#0xfffffffe
016e6328  mov w2,#0x1
016e632c  mov x0,x19
016e6330  bl 0x0124cfc0
016e6334  mov x0,x19
016e6338  mov w1,w20
016e633c  bl 0x0124e060
016e6340  orr w1,wzr,#0xfffffffd
016e6344  mov x0,x19
016e6348  bl 0x0124c4d0
016e634c  ldr x19,[sp, #0x10]
016e6350  orr w1,wzr,#0xfffffffd
016e6354  mov w2,#0x6e7
016e6358  mov x0,x19
016e635c  bl 0x0124a650
016e6360  orr w1,wzr,#0xfffffffe
016e6364  mov x0,x19
016e6368  bl 0x0124c0c0
016e636c  orr w1,wzr,#0xfffffffe
016e6370  mov x0,x19
016e6374  bl 0x0124e920
016e6378  mov w20,w0
016e637c  adrp x1,0x5763000
016e6380  add x1,x1,#0x892
016e6384  mov x0,x19
016e6388  bl 0x0124f120
016e638c  orr w1,wzr,#0xfffffffe
016e6390  mov w2,#0x1
016e6394  mov x0,x19
016e6398  bl 0x0124cfc0
016e639c  mov x0,x19
016e63a0  mov w1,w20
016e63a4  bl 0x0124e060
016e63a8  orr w1,wzr,#0xfffffffd
016e63ac  mov x0,x19
016e63b0  bl 0x0124c4d0
016e63b4  ldr w8,[sp, #0x18]
016e63b8  ldr x0,[sp, #0x10]
016e63bc  sub w8,w8,#0x3
016e63c0  str w8,[sp, #0x18]
016e63c4  orr w1,wzr,#0xfffffffc
016e63c8  bl 0x0124c4d0
016e63cc  ldr w8,[sp, #0x18]
016e63d0  ldr x0,[sp, #0x10]
016e63d4  str wzr,[sp, #0x18]
016e63d8  cmp w8,#0x1
016e63dc  b.lt 0x016e6400
016e63e0  mvn w1,w8
016e63e4  bl 0x0124c4d0
016e63e8  ldr w8,[sp, #0x18]
016e63ec  cmp w8,#0x1
016e63f0  b.lt 0x016e6400
016e63f4  ldr x0,[sp, #0x10]
016e63f8  mvn w1,w8
016e63fc  bl 0x0124c4d0
016e6400  ldr w8,[sp, #0x8]
016e6404  cmp w8,#0x1
016e6408  b.lt 0x016e6418
016e640c  ldr x0,[sp]
016e6410  mvn w1,w8
016e6414  bl 0x0124c4d0
016e6418  ldp x29,x30,[sp, #0x30]
016e641c  ldp x20,x19,[sp, #0x20]
016e6420  add sp,sp,#0x40
016e6424  ret
