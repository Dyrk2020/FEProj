// ===== case769-BlockActorItem @ 0172e36c =====
// existing function case769-BlockActorItem
0172e36c  sub sp,sp,#0x40
0172e370  stp x20,x19,[sp, #0x20]
0172e374  stp x29,x30,[sp, #0x30]
0172e378  add x29,sp,#0x30
0172e37c  adrp x1,0x174a000
0172e380  add x1,x1,#0x87c
0172e384  mov x19,x0
0172e388  bl 0x0124ba40
0172e38c  adrp x1,0x575d000
0172e390  add x1,x1,#0xa06
0172e394  mov x0,x19
0172e398  str x19,[sp]
0172e39c  bl 0x01251aa0
0172e3a0  mov w8,#0x1
0172e3a4  str w8,[sp, #0x8]
0172e3a8  mov x0,sp
0172e3ac  bl 0x0174aa04
0172e3b0  adrp x1,0x5771000
0172e3b4  adrp x3,0x736d000
0172e3b8  add x1,x1,#0x2e4
0172e3bc  add x3,x3,#0x101
0172e3c0  add x0,sp,#0x10
0172e3c4  mov x2,sp
0172e3c8  bl 0x0199e608
0172e3cc  ldr x0,[sp, #0x10]
0172e3d0  mov w1,#0x10
0172e3d4  bl 0x0124cba0
0172e3d8  adrp x8,0x199e000
0172e3dc  dup v0.2D,xzr
0172e3e0  add x8,x8,#0x2e8
0172e3e4  mov v0.D[0x0],x8
0172e3e8  str q0,[x0]
0172e3ec  ldr x0,[sp, #0x10]
0172e3f0  adrp x1,0x199e000
0172e3f4  add x1,x1,#0x9cc
0172e3f8  mov w2,#0x1
0172e3fc  bl 0x0124ec90
0172e400  ldr x0,[sp, #0x10]
0172e404  mov w1,#0xffffffff
0172e408  bl 0x0124c0c0
0172e40c  ldr x19,[sp, #0x10]
0172e410  orr w1,wzr,#0xfffffffb
0172e414  mov w2,#0x6e7
0172e418  mov x0,x19
0172e41c  bl 0x0124a650
0172e420  orr w1,wzr,#0xfffffffe
0172e424  mov x0,x19
0172e428  bl 0x0124c0c0
0172e42c  orr w1,wzr,#0xfffffffe
0172e430  mov x0,x19
0172e434  bl 0x0124e920
0172e438  mov w20,w0
0172e43c  adrp x1,0x575d000
0172e440  add x1,x1,#0xd80
0172e444  mov x0,x19
0172e448  bl 0x0124f120
0172e44c  orr w1,wzr,#0xfffffffe
0172e450  mov w2,#0x1
0172e454  mov x0,x19
0172e458  bl 0x0124cfc0
0172e45c  mov x0,x19
0172e460  mov w1,w20
0172e464  bl 0x0124e060
0172e468  orr w1,wzr,#0xfffffffd
0172e46c  mov x0,x19
0172e470  bl 0x0124c4d0
0172e474  ldr x19,[sp, #0x10]
0172e478  orr w1,wzr,#0xfffffffd
0172e47c  mov w2,#0x6e7
0172e480  mov x0,x19
0172e484  bl 0x0124a650
0172e488  orr w1,wzr,#0xfffffffe
0172e48c  mov x0,x19
0172e490  bl 0x0124c0c0
0172e494  orr w1,wzr,#0xfffffffe
0172e498  mov x0,x19
0172e49c  bl 0x0124e920
0172e4a0  mov w20,w0
0172e4a4  adrp x1,0x575d000
0172e4a8  add x1,x1,#0xd80
0172e4ac  mov x0,x19
0172e4b0  bl 0x0124f120
0172e4b4  orr w1,wzr,#0xfffffffe
0172e4b8  mov w2,#0x1
0172e4bc  mov x0,x19
0172e4c0  bl 0x0124cfc0
0172e4c4  mov x0,x19
0172e4c8  mov w1,w20
0172e4cc  bl 0x0124e060
0172e4d0  orr w1,wzr,#0xfffffffd
0172e4d4  mov x0,x19
0172e4d8  bl 0x0124c4d0
0172e4dc  adrp x1,0x576c000
0172e4e0  adrp x2,0x199e000
0172e4e4  adrp x4,0x199e000
0172e4e8  add x1,x1,#0xe9a
0172e4ec  add x2,x2,#0x4d8
0172e4f0  add x4,x4,#0x4e0
0172e4f4  add x0,sp,#0x10
0172e4f8  mov x3,xzr
0172e4fc  mov x5,xzr
0172e500  bl 0x0199e2f0
0172e504  adrp x1,0x5771000
0172e508  adrp x2,0x199e000
0172e50c  adrp x4,0x199e000
0172e510  add x1,x1,#0x2f3
0172e514  add x2,x2,#0x570
0172e518  add x4,x4,#0x578
0172e51c  mov x3,xzr
0172e520  mov x5,xzr
0172e524  bl 0x0199e2f0
0172e528  mov x19,x0
0172e52c  ldr w8,[x19, #0x8]
0172e530  ldr x0,[x19]
0172e534  sub w8,w8,#0x3
0172e538  str w8,[x19, #0x8]
0172e53c  orr w1,wzr,#0xfffffffc
0172e540  bl 0x0124c4d0
0172e544  ldr w8,[x19, #0x8]
0172e548  ldr x0,[x19]
0172e54c  str wzr,[x19, #0x8]
0172e550  cmp w8,#0x1
0172e554  b.lt 0x0172e560
0172e558  mvn w1,w8
0172e55c  bl 0x0124c4d0
0172e560  ldr w8,[sp, #0x18]
0172e564  cmp w8,#0x1
0172e568  b.lt 0x0172e578
0172e56c  ldr x0,[sp, #0x10]
0172e570  mvn w1,w8
0172e574  bl 0x0124c4d0
0172e578  ldr w8,[sp, #0x8]
0172e57c  cmp w8,#0x1
0172e580  b.lt 0x0172e590
0172e584  ldr x0,[sp]
0172e588  mvn w1,w8
0172e58c  bl 0x0124c4d0
0172e590  ldp x29,x30,[sp, #0x30]
0172e594  ldp x20,x19,[sp, #0x20]
0172e598  add sp,sp,#0x40
0172e59c  ret
