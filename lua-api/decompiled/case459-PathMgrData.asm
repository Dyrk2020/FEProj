// ===== case459-PathMgrData @ 016eb3d0 =====
// existing function case459-PathMgrData
016eb3d0  sub sp,sp,#0x40
016eb3d4  stp x20,x19,[sp, #0x20]
016eb3d8  stp x29,x30,[sp, #0x30]
016eb3dc  add x29,sp,#0x30
016eb3e0  adrp x1,0x174a000
016eb3e4  add x1,x1,#0x87c
016eb3e8  mov x19,x0
016eb3ec  bl 0x0124ba40
016eb3f0  adrp x1,0x575d000
016eb3f4  add x1,x1,#0xa06
016eb3f8  mov x0,x19
016eb3fc  str x19,[sp]
016eb400  bl 0x01251aa0
016eb404  mov w8,#0x1
016eb408  str w8,[sp, #0x8]
016eb40c  mov x0,sp
016eb410  bl 0x0174aa04
016eb414  adrp x1,0x5766000
016eb418  adrp x3,0x736d000
016eb41c  add x1,x1,#0xbd9
016eb420  add x3,x3,#0x101
016eb424  add x0,sp,#0x10
016eb428  mov x2,sp
016eb42c  bl 0x0187182c
016eb430  ldr x0,[sp, #0x10]
016eb434  mov w1,#0x10
016eb438  bl 0x0124cba0
016eb43c  adrp x8,0x1871000
016eb440  dup v0.2D,xzr
016eb444  add x8,x8,#0x824
016eb448  mov v0.D[0x0],x8
016eb44c  str q0,[x0]
016eb450  ldr x0,[sp, #0x10]
016eb454  adrp x1,0x1871000
016eb458  add x1,x1,#0xbf0
016eb45c  mov w2,#0x1
016eb460  bl 0x0124ec90
016eb464  ldr x0,[sp, #0x10]
016eb468  mov w1,#0xffffffff
016eb46c  bl 0x0124c0c0
016eb470  ldr x19,[sp, #0x10]
016eb474  orr w1,wzr,#0xfffffffb
016eb478  mov w2,#0x6e7
016eb47c  mov x0,x19
016eb480  bl 0x0124a650
016eb484  orr w1,wzr,#0xfffffffe
016eb488  mov x0,x19
016eb48c  bl 0x0124c0c0
016eb490  orr w1,wzr,#0xfffffffe
016eb494  mov x0,x19
016eb498  bl 0x0124e920
016eb49c  mov w20,w0
016eb4a0  adrp x1,0x5766000
016eb4a4  add x1,x1,#0xbe5
016eb4a8  mov x0,x19
016eb4ac  bl 0x0124f120
016eb4b0  orr w1,wzr,#0xfffffffe
016eb4b4  mov w2,#0x1
016eb4b8  mov x0,x19
016eb4bc  bl 0x0124cfc0
016eb4c0  mov x0,x19
016eb4c4  mov w1,w20
016eb4c8  bl 0x0124e060
016eb4cc  orr w1,wzr,#0xfffffffd
016eb4d0  mov x0,x19
016eb4d4  bl 0x0124c4d0
016eb4d8  ldr x19,[sp, #0x10]
016eb4dc  orr w1,wzr,#0xfffffffd
016eb4e0  mov w2,#0x6e7
016eb4e4  mov x0,x19
016eb4e8  bl 0x0124a650
016eb4ec  orr w1,wzr,#0xfffffffe
016eb4f0  mov x0,x19
016eb4f4  bl 0x0124c0c0
016eb4f8  orr w1,wzr,#0xfffffffe
016eb4fc  mov x0,x19
016eb500  bl 0x0124e920
016eb504  mov w20,w0
016eb508  adrp x1,0x5766000
016eb50c  add x1,x1,#0xbe5
016eb510  mov x0,x19
016eb514  bl 0x0124f120
016eb518  orr w1,wzr,#0xfffffffe
016eb51c  mov w2,#0x1
016eb520  mov x0,x19
016eb524  bl 0x0124cfc0
016eb528  mov x0,x19
016eb52c  mov w1,w20
016eb530  bl 0x0124e060
016eb534  orr w1,wzr,#0xfffffffd
016eb538  mov x0,x19
016eb53c  bl 0x0124c4d0
016eb540  ldr w8,[sp, #0x18]
016eb544  ldr x0,[sp, #0x10]
016eb548  sub w8,w8,#0x3
016eb54c  str w8,[sp, #0x18]
016eb550  orr w1,wzr,#0xfffffffc
016eb554  bl 0x0124c4d0
016eb558  ldr w8,[sp, #0x18]
016eb55c  ldr x0,[sp, #0x10]
016eb560  str wzr,[sp, #0x18]
016eb564  cmp w8,#0x1
016eb568  b.lt 0x016eb58c
016eb56c  mvn w1,w8
016eb570  bl 0x0124c4d0
016eb574  ldr w8,[sp, #0x18]
016eb578  cmp w8,#0x1
016eb57c  b.lt 0x016eb58c
016eb580  ldr x0,[sp, #0x10]
016eb584  mvn w1,w8
016eb588  bl 0x0124c4d0
016eb58c  ldr w8,[sp, #0x8]
016eb590  cmp w8,#0x1
016eb594  b.lt 0x016eb5a4
016eb598  ldr x0,[sp]
016eb59c  mvn w1,w8
016eb5a0  bl 0x0124c4d0
016eb5a4  ldp x29,x30,[sp, #0x30]
016eb5a8  ldp x20,x19,[sp, #0x20]
016eb5ac  add sp,sp,#0x40
016eb5b0  ret
