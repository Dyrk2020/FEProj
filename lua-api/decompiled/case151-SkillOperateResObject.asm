// ===== case151-SkillOperateResObject @ 016a6200 =====
// existing function case151-SkillOperateResObject
016a6200  sub sp,sp,#0x40
016a6204  stp x20,x19,[sp, #0x20]
016a6208  stp x29,x30,[sp, #0x30]
016a620c  add x29,sp,#0x30
016a6210  adrp x1,0x174a000
016a6214  add x1,x1,#0x87c
016a6218  mov x19,x0
016a621c  bl 0x0124ba40
016a6220  adrp x1,0x575d000
016a6224  add x1,x1,#0xa06
016a6228  mov x0,x19
016a622c  str x19,[sp]
016a6230  bl 0x01251aa0
016a6234  mov w8,#0x1
016a6238  str w8,[sp, #0x8]
016a623c  mov x0,sp
016a6240  bl 0x0174aa04
016a6244  adrp x1,0x5760000
016a6248  adrp x3,0x736d000
016a624c  add x1,x1,#0x100
016a6250  add x3,x3,#0x101
016a6254  add x0,sp,#0x10
016a6258  mov x2,sp
016a625c  bl 0x017a0750
016a6260  ldr x0,[sp, #0x10]
016a6264  mov w1,#0x10
016a6268  bl 0x0124cba0
016a626c  adrp x8,0x17a0000
016a6270  dup v0.2D,xzr
016a6274  add x8,x8,#0x740
016a6278  mov v0.D[0x0],x8
016a627c  str q0,[x0]
016a6280  ldr x0,[sp, #0x10]
016a6284  adrp x1,0x17a0000
016a6288  add x1,x1,#0xb14
016a628c  mov w2,#0x1
016a6290  bl 0x0124ec90
016a6294  ldr x0,[sp, #0x10]
016a6298  mov w1,#0xffffffff
016a629c  bl 0x0124c0c0
016a62a0  ldr x19,[sp, #0x10]
016a62a4  orr w1,wzr,#0xfffffffb
016a62a8  mov w2,#0x6e7
016a62ac  mov x0,x19
016a62b0  bl 0x0124a650
016a62b4  orr w1,wzr,#0xfffffffe
016a62b8  mov x0,x19
016a62bc  bl 0x0124c0c0
016a62c0  orr w1,wzr,#0xfffffffe
016a62c4  mov x0,x19
016a62c8  bl 0x0124e920
016a62cc  mov w20,w0
016a62d0  adrp x1,0x575e000
016a62d4  add x1,x1,#0x56d
016a62d8  mov x0,x19
016a62dc  bl 0x0124f120
016a62e0  orr w1,wzr,#0xfffffffe
016a62e4  mov w2,#0x1
016a62e8  mov x0,x19
016a62ec  bl 0x0124cfc0
016a62f0  mov x0,x19
016a62f4  mov w1,w20
016a62f8  bl 0x0124e060
016a62fc  orr w1,wzr,#0xfffffffd
016a6300  mov x0,x19
016a6304  bl 0x0124c4d0
016a6308  ldr x19,[sp, #0x10]
016a630c  orr w1,wzr,#0xfffffffd
016a6310  mov w2,#0x6e7
016a6314  mov x0,x19
016a6318  bl 0x0124a650
016a631c  orr w1,wzr,#0xfffffffe
016a6320  mov x0,x19
016a6324  bl 0x0124c0c0
016a6328  orr w1,wzr,#0xfffffffe
016a632c  mov x0,x19
016a6330  bl 0x0124e920
016a6334  mov w20,w0
016a6338  adrp x1,0x575e000
016a633c  add x1,x1,#0x56d
016a6340  mov x0,x19
016a6344  bl 0x0124f120
016a6348  orr w1,wzr,#0xfffffffe
016a634c  mov w2,#0x1
016a6350  mov x0,x19
016a6354  bl 0x0124cfc0
016a6358  mov x0,x19
016a635c  mov w1,w20
016a6360  bl 0x0124e060
016a6364  orr w1,wzr,#0xfffffffd
016a6368  mov x0,x19
016a636c  bl 0x0124c4d0
016a6370  ldr x0,[sp, #0x10]
016a6374  mov w1,#0x10
016a6378  bl 0x0124cba0
016a637c  adrp x8,0x17a0000
016a6380  dup v0.2D,xzr
016a6384  add x8,x8,#0x748
016a6388  mov v0.D[0x0],x8
016a638c  str q0,[x0]
016a6390  ldr x0,[sp, #0x10]
016a6394  adrp x1,0x17a0000
016a6398  add x1,x1,#0xc38
016a639c  mov w2,#0x1
016a63a0  bl 0x0124ec90
016a63a4  ldr x0,[sp, #0x10]
016a63a8  mov w1,#0xffffffff
016a63ac  bl 0x0124c0c0
016a63b0  ldr x19,[sp, #0x10]
016a63b4  orr w1,wzr,#0xfffffffb
016a63b8  mov w2,#0x6e7
016a63bc  mov x0,x19
016a63c0  bl 0x0124a650
016a63c4  orr w1,wzr,#0xfffffffe
016a63c8  mov x0,x19
016a63cc  bl 0x0124c0c0
016a63d0  orr w1,wzr,#0xfffffffe
016a63d4  mov x0,x19
016a63d8  bl 0x0124e920
016a63dc  mov w20,w0
016a63e0  adrp x1,0x575e000
016a63e4  add x1,x1,#0x578
016a63e8  mov x0,x19
016a63ec  bl 0x0124f120
016a63f0  orr w1,wzr,#0xfffffffe
016a63f4  mov w2,#0x1
016a63f8  mov x0,x19
016a63fc  bl 0x0124cfc0
016a6400  mov x0,x19
016a6404  mov w1,w20
016a6408  bl 0x0124e060
016a640c  orr w1,wzr,#0xfffffffd
016a6410  mov x0,x19
016a6414  bl 0x0124c4d0
016a6418  ldr x19,[sp, #0x10]
016a641c  orr w1,wzr,#0xfffffffd
016a6420  mov w2,#0x6e7
016a6424  mov x0,x19
016a6428  bl 0x0124a650
016a642c  orr w1,wzr,#0xfffffffe
016a6430  mov x0,x19
016a6434  bl 0x0124c0c0
016a6438  orr w1,wzr,#0xfffffffe
016a643c  mov x0,x19
016a6440  bl 0x0124e920
016a6444  mov w20,w0
016a6448  adrp x1,0x575e000
016a644c  add x1,x1,#0x578
016a6450  mov x0,x19
016a6454  bl 0x0124f120
016a6458  orr w1,wzr,#0xfffffffe
016a645c  mov w2,#0x1
016a6460  mov x0,x19
016a6464  bl 0x0124cfc0
016a6468  mov x0,x19
016a646c  mov w1,w20
016a6470  bl 0x0124e060
016a6474  orr w1,wzr,#0xfffffffd
016a6478  mov x0,x19
016a647c  bl 0x0124c4d0
016a6480  ldr w8,[sp, #0x18]
016a6484  ldr x0,[sp, #0x10]
016a6488  sub w8,w8,#0x3
016a648c  str w8,[sp, #0x18]
016a6490  orr w1,wzr,#0xfffffffc
016a6494  bl 0x0124c4d0
016a6498  ldr w8,[sp, #0x18]
016a649c  ldr x0,[sp, #0x10]
016a64a0  str wzr,[sp, #0x18]
016a64a4  cmp w8,#0x1
016a64a8  b.lt 0x016a64cc
016a64ac  mvn w1,w8
016a64b0  bl 0x0124c4d0
016a64b4  ldr w8,[sp, #0x18]
016a64b8  cmp w8,#0x1
016a64bc  b.lt 0x016a64cc
016a64c0  ldr x0,[sp, #0x10]
016a64c4  mvn w1,w8
016a64c8  bl 0x0124c4d0
016a64cc  ldr w8,[sp, #0x8]
016a64d0  cmp w8,#0x1
016a64d4  b.lt 0x016a64e4
016a64d8  ldr x0,[sp]
016a64dc  mvn w1,w8
016a64e0  bl 0x0124c4d0
016a64e4  ldp x29,x30,[sp, #0x30]
016a64e8  ldp x20,x19,[sp, #0x20]
016a64ec  add sp,sp,#0x40
016a64f0  ret
