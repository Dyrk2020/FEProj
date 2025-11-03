// ===== case371-DistributedLocationBuffInfo @ 016d6344 =====
// existing function case371-DistributedLocationBuffInfo
016d6344  sub sp,sp,#0x40
016d6348  str x19,[sp, #0x20]
016d634c  stp x29,x30,[sp, #0x30]
016d6350  add x29,sp,#0x30
016d6354  adrp x1,0x174a000
016d6358  add x1,x1,#0x87c
016d635c  mov x19,x0
016d6360  bl 0x0124ba40
016d6364  adrp x1,0x575d000
016d6368  add x1,x1,#0xa06
016d636c  mov x0,x19
016d6370  str x19,[sp]
016d6374  bl 0x01251aa0
016d6378  mov w8,#0x1
016d637c  str w8,[sp, #0x8]
016d6380  mov x0,sp
016d6384  bl 0x0174aa04
016d6388  adrp x1,0x5764000
016d638c  adrp x3,0x736d000
016d6390  add x1,x1,#0x991
016d6394  add x3,x3,#0x101
016d6398  add x0,sp,#0x10
016d639c  mov x2,sp
016d63a0  bl 0x0182e434
016d63a4  adrp x1,0x5764000
016d63a8  adrp x2,0x182e000
016d63ac  adrp x4,0x182e000
016d63b0  add x1,x1,#0x944
016d63b4  add x2,x2,#0x1bc
016d63b8  add x4,x4,#0x1c4
016d63bc  add x0,sp,#0x10
016d63c0  mov x3,xzr
016d63c4  mov x5,xzr
016d63c8  bl 0x0182dfd4
016d63cc  adrp x1,0x5763000
016d63d0  adrp x2,0x182e000
016d63d4  adrp x4,0x182e000
016d63d8  add x1,x1,#0xcff
016d63dc  add x2,x2,#0x1cc
016d63e0  add x4,x4,#0x1d4
016d63e4  mov x3,xzr
016d63e8  mov x5,xzr
016d63ec  bl 0x0182dfd4
016d63f0  adrp x1,0x575e000
016d63f4  adrp x2,0x182e000
016d63f8  adrp x4,0x182e000
016d63fc  add x1,x1,#0x398
016d6400  add x2,x2,#0x3c4
016d6404  add x4,x4,#0x3cc
016d6408  mov x3,xzr
016d640c  mov x5,xzr
016d6410  bl 0x0182e1dc
016d6414  adrp x1,0x5761000
016d6418  adrp x2,0x182e000
016d641c  adrp x4,0x182e000
016d6420  add x1,x1,#0x85a
016d6424  add x2,x2,#0x3d4
016d6428  add x4,x4,#0x3dc
016d642c  mov x3,xzr
016d6430  mov x5,xzr
016d6434  bl 0x0182e1dc
016d6438  adrp x1,0x5764000
016d643c  adrp x2,0x182e000
016d6440  adrp x4,0x182e000
016d6444  add x1,x1,#0x9ad
016d6448  add x2,x2,#0x3e4
016d644c  add x4,x4,#0x3ec
016d6450  mov x3,xzr
016d6454  mov x5,xzr
016d6458  bl 0x0182e1dc
016d645c  adrp x1,0x5764000
016d6460  adrp x2,0x182e000
016d6464  adrp x4,0x182e000
016d6468  add x1,x1,#0x9b5
016d646c  add x2,x2,#0x3f4
016d6470  add x4,x4,#0x3fc
016d6474  mov x3,xzr
016d6478  mov x5,xzr
016d647c  bl 0x0182e1dc
016d6480  adrp x1,0x5764000
016d6484  adrp x2,0x182e000
016d6488  adrp x4,0x182e000
016d648c  add x1,x1,#0x9c2
016d6490  add x2,x2,#0x404
016d6494  add x4,x4,#0x40c
016d6498  mov x3,xzr
016d649c  mov x5,xzr
016d64a0  bl 0x0182e1dc
016d64a4  adrp x1,0x5764000
016d64a8  adrp x2,0x182e000
016d64ac  adrp x4,0x182e000
016d64b0  add x1,x1,#0x9da
016d64b4  add x2,x2,#0x414
016d64b8  add x4,x4,#0x41c
016d64bc  mov x3,xzr
016d64c0  mov x5,xzr
016d64c4  bl 0x0182e1dc
016d64c8  adrp x1,0x5764000
016d64cc  adrp x2,0x182e000
016d64d0  adrp x4,0x182e000
016d64d4  add x1,x1,#0x9f1
016d64d8  add x2,x2,#0x424
016d64dc  add x4,x4,#0x42c
016d64e0  mov x3,xzr
016d64e4  mov x5,xzr
016d64e8  bl 0x0182e1dc
016d64ec  mov x19,x0
016d64f0  ldr w8,[x19, #0x8]
016d64f4  ldr x0,[x19]
016d64f8  sub w8,w8,#0x3
016d64fc  str w8,[x19, #0x8]
016d6500  orr w1,wzr,#0xfffffffc
016d6504  bl 0x0124c4d0
016d6508  ldr w8,[x19, #0x8]
016d650c  ldr x0,[x19]
016d6510  str wzr,[x19, #0x8]
016d6514  cmp w8,#0x1
016d6518  b.lt 0x016d6524
016d651c  mvn w1,w8
016d6520  bl 0x0124c4d0
016d6524  ldr w8,[sp, #0x18]
016d6528  cmp w8,#0x1
016d652c  b.lt 0x016d653c
016d6530  ldr x0,[sp, #0x10]
016d6534  mvn w1,w8
016d6538  bl 0x0124c4d0
016d653c  ldr w8,[sp, #0x8]
016d6540  cmp w8,#0x1
016d6544  b.lt 0x016d6554
016d6548  ldr x0,[sp]
016d654c  mvn w1,w8
016d6550  bl 0x0124c4d0
016d6554  ldp x29,x30,[sp, #0x30]
016d6558  ldr x19,[sp, #0x20]
016d655c  add sp,sp,#0x40
016d6560  ret
