// ===== case547-SpellBookSkillMgr @ 016fc1f0 =====
// existing function case547-SpellBookSkillMgr
016fc1f0  sub sp,sp,#0x50
016fc1f4  str x21,[sp, #0x20]
016fc1f8  stp x20,x19,[sp, #0x30]
016fc1fc  stp x29,x30,[sp, #0x40]
016fc200  add x29,sp,#0x40
016fc204  adrp x1,0x174a000
016fc208  add x1,x1,#0x87c
016fc20c  mov x19,x0
016fc210  bl 0x0124ba40
016fc214  adrp x1,0x575d000
016fc218  add x1,x1,#0xa06
016fc21c  mov x0,x19
016fc220  str x19,[sp]
016fc224  bl 0x01251aa0
016fc228  mov w8,#0x1
016fc22c  str w8,[sp, #0x8]
016fc230  mov x0,sp
016fc234  bl 0x0174aa04
016fc238  adrp x1,0x5769000
016fc23c  adrp x3,0x736d000
016fc240  add x1,x1,#0x206
016fc244  add x3,x3,#0x101
016fc248  add x0,sp,#0x10
016fc24c  mov x2,sp
016fc250  bl 0x018bfa20
016fc254  ldr x0,[sp, #0x10]
016fc258  mov w1,#0x10
016fc25c  bl 0x0124cba0
016fc260  adrp x8,0x18bf000
016fc264  dup v0.2D,xzr
016fc268  add x8,x8,#0x5e8
016fc26c  mov v0.D[0x0],x8
016fc270  str q0,[x0]
016fc274  ldr x0,[sp, #0x10]
016fc278  adrp x1,0x18bf000
016fc27c  add x1,x1,#0xde4
016fc280  mov w2,#0x1
016fc284  bl 0x0124ec90
016fc288  ldr x0,[sp, #0x10]
016fc28c  mov w1,#0xffffffff
016fc290  bl 0x0124c0c0
016fc294  ldr x19,[sp, #0x10]
016fc298  orr w1,wzr,#0xfffffffb
016fc29c  mov w2,#0x6e7
016fc2a0  mov x0,x19
016fc2a4  bl 0x0124a650
016fc2a8  orr w1,wzr,#0xfffffffe
016fc2ac  mov x0,x19
016fc2b0  bl 0x0124c0c0
016fc2b4  orr w1,wzr,#0xfffffffe
016fc2b8  mov x0,x19
016fc2bc  bl 0x0124e920
016fc2c0  mov w20,w0
016fc2c4  adrp x1,0x5762000
016fc2c8  add x1,x1,#0x1cd
016fc2cc  mov x0,x19
016fc2d0  bl 0x0124f120
016fc2d4  orr w1,wzr,#0xfffffffe
016fc2d8  mov w2,#0x1
016fc2dc  mov x0,x19
016fc2e0  bl 0x0124cfc0
016fc2e4  mov x0,x19
016fc2e8  mov w1,w20
016fc2ec  bl 0x0124e060
016fc2f0  orr w1,wzr,#0xfffffffd
016fc2f4  mov x0,x19
016fc2f8  bl 0x0124c4d0
016fc2fc  ldr x19,[sp, #0x10]
016fc300  orr w1,wzr,#0xfffffffd
016fc304  mov w2,#0x6e7
016fc308  mov x0,x19
016fc30c  bl 0x0124a650
016fc310  orr w1,wzr,#0xfffffffe
016fc314  mov x0,x19
016fc318  bl 0x0124c0c0
016fc31c  orr w1,wzr,#0xfffffffe
016fc320  mov x0,x19
016fc324  bl 0x0124e920
016fc328  mov w20,w0
016fc32c  adrp x1,0x5762000
016fc330  add x1,x1,#0x1cd
016fc334  mov x0,x19
016fc338  bl 0x0124f120
016fc33c  orr w1,wzr,#0xfffffffe
016fc340  mov w2,#0x1
016fc344  mov x0,x19
016fc348  bl 0x0124cfc0
016fc34c  mov x0,x19
016fc350  mov w1,w20
016fc354  bl 0x0124e060
016fc358  orr w1,wzr,#0xfffffffd
016fc35c  mov x0,x19
016fc360  bl 0x0124c4d0
016fc364  adrp x1,0x5769000
016fc368  adrp x2,0x18bf000
016fc36c  adrp x4,0x18bf000
016fc370  add x1,x1,#0x218
016fc374  add x2,x2,#0x7d8
016fc378  add x4,x4,#0x7e0
016fc37c  add x0,sp,#0x10
016fc380  mov x3,xzr
016fc384  mov x5,xzr
016fc388  bl 0x018bf5f0
016fc38c  adrp x1,0x5767000
016fc390  adrp x2,0x18bf000
016fc394  adrp x4,0x18bf000
016fc398  add x1,x1,#0xde2
016fc39c  add x2,x2,#0x9e4
016fc3a0  add x4,x4,#0x9ec
016fc3a4  mov x3,xzr
016fc3a8  mov x5,xzr
016fc3ac  bl 0x018bf7fc
016fc3b0  mov x19,x0
016fc3b4  ldr x0,[x19]
016fc3b8  mov w1,#0x10
016fc3bc  bl 0x0124cba0
016fc3c0  adrp x8,0x18bf000
016fc3c4  dup v0.2D,xzr
016fc3c8  add x8,x8,#0xa08
016fc3cc  mov v0.D[0x0],x8
016fc3d0  str q0,[x0]
016fc3d4  ldr x0,[x19]
016fc3d8  adrp x1,0x18c0000
016fc3dc  add x1,x1,#0x5a8
016fc3e0  mov w2,#0x1
016fc3e4  bl 0x0124ec90
016fc3e8  ldr x0,[x19]
016fc3ec  mov w1,#0xffffffff
016fc3f0  bl 0x0124c0c0
016fc3f4  ldr x20,[x19]
016fc3f8  orr w1,wzr,#0xfffffffb
016fc3fc  mov w2,#0x6e7
016fc400  mov x0,x20
016fc404  bl 0x0124a650
016fc408  orr w1,wzr,#0xfffffffe
016fc40c  mov x0,x20
016fc410  bl 0x0124c0c0
016fc414  orr w1,wzr,#0xfffffffe
016fc418  mov x0,x20
016fc41c  bl 0x0124e920
016fc420  mov w21,w0
016fc424  adrp x1,0x5769000
016fc428  add x1,x1,#0x22a
016fc42c  mov x0,x20
016fc430  bl 0x0124f120
016fc434  orr w1,wzr,#0xfffffffe
016fc438  mov w2,#0x1
016fc43c  mov x0,x20
016fc440  bl 0x0124cfc0
016fc444  mov x0,x20
016fc448  mov w1,w21
016fc44c  bl 0x0124e060
016fc450  orr w1,wzr,#0xfffffffd
016fc454  mov x0,x20
016fc458  bl 0x0124c4d0
016fc45c  ldr x20,[x19]
016fc460  orr w1,wzr,#0xfffffffd
016fc464  mov w2,#0x6e7
016fc468  mov x0,x20
016fc46c  bl 0x0124a650
016fc470  orr w1,wzr,#0xfffffffe
016fc474  mov x0,x20
016fc478  bl 0x0124c0c0
016fc47c  orr w1,wzr,#0xfffffffe
016fc480  mov x0,x20
016fc484  bl 0x0124e920
016fc488  mov w21,w0
016fc48c  adrp x1,0x5769000
016fc490  add x1,x1,#0x22a
016fc494  mov x0,x20
016fc498  bl 0x0124f120
016fc49c  orr w1,wzr,#0xfffffffe
016fc4a0  mov w2,#0x1
016fc4a4  mov x0,x20
016fc4a8  bl 0x0124cfc0
016fc4ac  mov x0,x20
016fc4b0  mov w1,w21
016fc4b4  bl 0x0124e060
016fc4b8  orr w1,wzr,#0xfffffffd
016fc4bc  mov x0,x20
016fc4c0  bl 0x0124c4d0
016fc4c4  adrp x1,0x5769000
016fc4c8  adrp x2,0x18bf000
016fc4cc  adrp x4,0x18bf000
016fc4d0  add x1,x1,#0x239
016fc4d4  add x2,x2,#0xa10
016fc4d8  add x4,x4,#0xa18
016fc4dc  mov x0,x19
016fc4e0  mov x3,xzr
016fc4e4  mov x5,xzr
016fc4e8  bl 0x018bf5f0
016fc4ec  mov x19,x0
016fc4f0  ldr w8,[x19, #0x8]
016fc4f4  ldr x0,[x19]
016fc4f8  sub w8,w8,#0x3
016fc4fc  str w8,[x19, #0x8]
016fc500  orr w1,wzr,#0xfffffffc
016fc504  bl 0x0124c4d0
016fc508  ldr w8,[x19, #0x8]
016fc50c  ldr x0,[x19]
016fc510  str wzr,[x19, #0x8]
016fc514  cmp w8,#0x1
016fc518  b.lt 0x016fc524
016fc51c  mvn w1,w8
016fc520  bl 0x0124c4d0
016fc524  ldr w8,[sp, #0x18]
016fc528  cmp w8,#0x1
016fc52c  b.lt 0x016fc53c
016fc530  ldr x0,[sp, #0x10]
016fc534  mvn w1,w8
016fc538  bl 0x0124c4d0
016fc53c  ldr w8,[sp, #0x8]
016fc540  cmp w8,#0x1
016fc544  b.lt 0x016fc554
016fc548  ldr x0,[sp]
016fc54c  mvn w1,w8
016fc550  bl 0x0124c4d0
016fc554  ldp x29,x30,[sp, #0x40]
016fc558  ldp x20,x19,[sp, #0x30]
016fc55c  ldr x21,[sp, #0x20]
016fc560  add sp,sp,#0x50
016fc564  ret
