// ===== case246-VehicleResObject @ 016b62c0 =====
// existing function case246-VehicleResObject
016b62c0  sub sp,sp,#0x40
016b62c4  stp x20,x19,[sp, #0x20]
016b62c8  stp x29,x30,[sp, #0x30]
016b62cc  add x29,sp,#0x30
016b62d0  adrp x1,0x174a000
016b62d4  add x1,x1,#0x87c
016b62d8  mov x19,x0
016b62dc  bl 0x0124ba40
016b62e0  adrp x1,0x575d000
016b62e4  add x1,x1,#0xa06
016b62e8  mov x0,x19
016b62ec  str x19,[sp]
016b62f0  bl 0x01251aa0
016b62f4  mov w8,#0x1
016b62f8  str w8,[sp, #0x8]
016b62fc  mov x0,sp
016b6300  bl 0x0174aa04
016b6304  adrp x1,0x5761000
016b6308  adrp x3,0x736d000
016b630c  add x1,x1,#0x3fd
016b6310  add x3,x3,#0x101
016b6314  add x0,sp,#0x10
016b6318  mov x2,sp
016b631c  bl 0x017d4848
016b6320  ldr x0,[sp, #0x10]
016b6324  mov w1,#0x10
016b6328  bl 0x0124cba0
016b632c  adrp x8,0x17d4000
016b6330  dup v0.2D,xzr
016b6334  add x8,x8,#0x838
016b6338  mov v0.D[0x0],x8
016b633c  str q0,[x0]
016b6340  ldr x0,[sp, #0x10]
016b6344  adrp x1,0x17d4000
016b6348  add x1,x1,#0xc0c
016b634c  mov w2,#0x1
016b6350  bl 0x0124ec90
016b6354  ldr x0,[sp, #0x10]
016b6358  mov w1,#0xffffffff
016b635c  bl 0x0124c0c0
016b6360  ldr x19,[sp, #0x10]
016b6364  orr w1,wzr,#0xfffffffb
016b6368  mov w2,#0x6e7
016b636c  mov x0,x19
016b6370  bl 0x0124a650
016b6374  orr w1,wzr,#0xfffffffe
016b6378  mov x0,x19
016b637c  bl 0x0124c0c0
016b6380  orr w1,wzr,#0xfffffffe
016b6384  mov x0,x19
016b6388  bl 0x0124e920
016b638c  mov w20,w0
016b6390  adrp x1,0x575e000
016b6394  add x1,x1,#0x56d
016b6398  mov x0,x19
016b639c  bl 0x0124f120
016b63a0  orr w1,wzr,#0xfffffffe
016b63a4  mov w2,#0x1
016b63a8  mov x0,x19
016b63ac  bl 0x0124cfc0
016b63b0  mov x0,x19
016b63b4  mov w1,w20
016b63b8  bl 0x0124e060
016b63bc  orr w1,wzr,#0xfffffffd
016b63c0  mov x0,x19
016b63c4  bl 0x0124c4d0
016b63c8  ldr x19,[sp, #0x10]
016b63cc  orr w1,wzr,#0xfffffffd
016b63d0  mov w2,#0x6e7
016b63d4  mov x0,x19
016b63d8  bl 0x0124a650
016b63dc  orr w1,wzr,#0xfffffffe
016b63e0  mov x0,x19
016b63e4  bl 0x0124c0c0
016b63e8  orr w1,wzr,#0xfffffffe
016b63ec  mov x0,x19
016b63f0  bl 0x0124e920
016b63f4  mov w20,w0
016b63f8  adrp x1,0x575e000
016b63fc  add x1,x1,#0x56d
016b6400  mov x0,x19
016b6404  bl 0x0124f120
016b6408  orr w1,wzr,#0xfffffffe
016b640c  mov w2,#0x1
016b6410  mov x0,x19
016b6414  bl 0x0124cfc0
016b6418  mov x0,x19
016b641c  mov w1,w20
016b6420  bl 0x0124e060
016b6424  orr w1,wzr,#0xfffffffd
016b6428  mov x0,x19
016b642c  bl 0x0124c4d0
016b6430  ldr x0,[sp, #0x10]
016b6434  mov w1,#0x10
016b6438  bl 0x0124cba0
016b643c  adrp x8,0x17d4000
016b6440  dup v0.2D,xzr
016b6444  add x8,x8,#0x840
016b6448  mov v0.D[0x0],x8
016b644c  str q0,[x0]
016b6450  ldr x0,[sp, #0x10]
016b6454  adrp x1,0x17d4000
016b6458  add x1,x1,#0xd30
016b645c  mov w2,#0x1
016b6460  bl 0x0124ec90
016b6464  ldr x0,[sp, #0x10]
016b6468  mov w1,#0xffffffff
016b646c  bl 0x0124c0c0
016b6470  ldr x19,[sp, #0x10]
016b6474  orr w1,wzr,#0xfffffffb
016b6478  mov w2,#0x6e7
016b647c  mov x0,x19
016b6480  bl 0x0124a650
016b6484  orr w1,wzr,#0xfffffffe
016b6488  mov x0,x19
016b648c  bl 0x0124c0c0
016b6490  orr w1,wzr,#0xfffffffe
016b6494  mov x0,x19
016b6498  bl 0x0124e920
016b649c  mov w20,w0
016b64a0  adrp x1,0x575e000
016b64a4  add x1,x1,#0x578
016b64a8  mov x0,x19
016b64ac  bl 0x0124f120
016b64b0  orr w1,wzr,#0xfffffffe
016b64b4  mov w2,#0x1
016b64b8  mov x0,x19
016b64bc  bl 0x0124cfc0
016b64c0  mov x0,x19
016b64c4  mov w1,w20
016b64c8  bl 0x0124e060
016b64cc  orr w1,wzr,#0xfffffffd
016b64d0  mov x0,x19
016b64d4  bl 0x0124c4d0
016b64d8  ldr x19,[sp, #0x10]
016b64dc  orr w1,wzr,#0xfffffffd
016b64e0  mov w2,#0x6e7
016b64e4  mov x0,x19
016b64e8  bl 0x0124a650
016b64ec  orr w1,wzr,#0xfffffffe
016b64f0  mov x0,x19
016b64f4  bl 0x0124c0c0
016b64f8  orr w1,wzr,#0xfffffffe
016b64fc  mov x0,x19
016b6500  bl 0x0124e920
016b6504  mov w20,w0
016b6508  adrp x1,0x575e000
016b650c  add x1,x1,#0x578
016b6510  mov x0,x19
016b6514  bl 0x0124f120
016b6518  orr w1,wzr,#0xfffffffe
016b651c  mov w2,#0x1
016b6520  mov x0,x19
016b6524  bl 0x0124cfc0
016b6528  mov x0,x19
016b652c  mov w1,w20
016b6530  bl 0x0124e060
016b6534  orr w1,wzr,#0xfffffffd
016b6538  mov x0,x19
016b653c  bl 0x0124c4d0
016b6540  ldr w8,[sp, #0x18]
016b6544  ldr x0,[sp, #0x10]
016b6548  sub w8,w8,#0x3
016b654c  str w8,[sp, #0x18]
016b6550  orr w1,wzr,#0xfffffffc
016b6554  bl 0x0124c4d0
016b6558  ldr w8,[sp, #0x18]
016b655c  ldr x0,[sp, #0x10]
016b6560  str wzr,[sp, #0x18]
016b6564  cmp w8,#0x1
016b6568  b.lt 0x016b658c
016b656c  mvn w1,w8
016b6570  bl 0x0124c4d0
016b6574  ldr w8,[sp, #0x18]
016b6578  cmp w8,#0x1
016b657c  b.lt 0x016b658c
016b6580  ldr x0,[sp, #0x10]
016b6584  mvn w1,w8
016b6588  bl 0x0124c4d0
016b658c  ldr w8,[sp, #0x8]
016b6590  cmp w8,#0x1
016b6594  b.lt 0x016b65a4
016b6598  ldr x0,[sp]
016b659c  mvn w1,w8
016b65a0  bl 0x0124c4d0
016b65a4  ldp x29,x30,[sp, #0x30]
016b65a8  ldp x20,x19,[sp, #0x20]
016b65ac  add sp,sp,#0x40
016b65b0  ret
