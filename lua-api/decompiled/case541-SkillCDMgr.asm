// ===== case541-SkillCDMgr @ 016fb35c =====
// existing function case541-SkillCDMgr
016fb35c  sub sp,sp,#0x40
016fb360  stp x20,x19,[sp, #0x20]
016fb364  stp x29,x30,[sp, #0x30]
016fb368  add x29,sp,#0x30
016fb36c  adrp x1,0x174a000
016fb370  add x1,x1,#0x87c
016fb374  mov x19,x0
016fb378  bl 0x0124ba40
016fb37c  adrp x1,0x575d000
016fb380  add x1,x1,#0xa06
016fb384  mov x0,x19
016fb388  str x19,[sp]
016fb38c  bl 0x01251aa0
016fb390  mov w8,#0x1
016fb394  str w8,[sp, #0x8]
016fb398  mov x0,sp
016fb39c  bl 0x0174aa04
016fb3a0  adrp x1,0x5769000
016fb3a4  adrp x3,0x736d000
016fb3a8  add x1,x1,#0x11e
016fb3ac  add x3,x3,#0x101
016fb3b0  add x0,sp,#0x10
016fb3b4  mov x2,sp
016fb3b8  bl 0x018bb744
016fb3bc  ldr x0,[sp, #0x10]
016fb3c0  mov w1,#0x10
016fb3c4  bl 0x0124cba0
016fb3c8  adrp x8,0x18bb000
016fb3cc  dup v0.2D,xzr
016fb3d0  add x8,x8,#0x53c
016fb3d4  mov v0.D[0x0],x8
016fb3d8  str q0,[x0]
016fb3dc  ldr x0,[sp, #0x10]
016fb3e0  adrp x1,0x18bb000
016fb3e4  add x1,x1,#0xb08
016fb3e8  mov w2,#0x1
016fb3ec  bl 0x0124ec90
016fb3f0  ldr x0,[sp, #0x10]
016fb3f4  mov w1,#0xffffffff
016fb3f8  bl 0x0124c0c0
016fb3fc  ldr x19,[sp, #0x10]
016fb400  orr w1,wzr,#0xfffffffb
016fb404  mov w2,#0x6e7
016fb408  mov x0,x19
016fb40c  bl 0x0124a650
016fb410  orr w1,wzr,#0xfffffffe
016fb414  mov x0,x19
016fb418  bl 0x0124c0c0
016fb41c  orr w1,wzr,#0xfffffffe
016fb420  mov x0,x19
016fb424  bl 0x0124e920
016fb428  mov w20,w0
016fb42c  adrp x1,0x575b000
016fb430  add x1,x1,#0x5de
016fb434  mov x0,x19
016fb438  bl 0x0124f120
016fb43c  orr w1,wzr,#0xfffffffe
016fb440  mov w2,#0x1
016fb444  mov x0,x19
016fb448  bl 0x0124cfc0
016fb44c  mov x0,x19
016fb450  mov w1,w20
016fb454  bl 0x0124e060
016fb458  orr w1,wzr,#0xfffffffd
016fb45c  mov x0,x19
016fb460  bl 0x0124c4d0
016fb464  ldr x19,[sp, #0x10]
016fb468  orr w1,wzr,#0xfffffffd
016fb46c  mov w2,#0x6e7
016fb470  mov x0,x19
016fb474  bl 0x0124a650
016fb478  orr w1,wzr,#0xfffffffe
016fb47c  mov x0,x19
016fb480  bl 0x0124c0c0
016fb484  orr w1,wzr,#0xfffffffe
016fb488  mov x0,x19
016fb48c  bl 0x0124e920
016fb490  mov w20,w0
016fb494  adrp x1,0x575b000
016fb498  add x1,x1,#0x5de
016fb49c  mov x0,x19
016fb4a0  bl 0x0124f120
016fb4a4  orr w1,wzr,#0xfffffffe
016fb4a8  mov w2,#0x1
016fb4ac  mov x0,x19
016fb4b0  bl 0x0124cfc0
016fb4b4  mov x0,x19
016fb4b8  mov w1,w20
016fb4bc  bl 0x0124e060
016fb4c0  orr w1,wzr,#0xfffffffd
016fb4c4  mov x0,x19
016fb4c8  bl 0x0124c4d0
016fb4cc  ldr x0,[sp, #0x10]
016fb4d0  mov w1,#0x10
016fb4d4  bl 0x0124cba0
016fb4d8  adrp x8,0x18bb000
016fb4dc  dup v0.2D,xzr
016fb4e0  add x8,x8,#0x544
016fb4e4  mov v0.D[0x0],x8
016fb4e8  str q0,[x0]
016fb4ec  ldr x0,[sp, #0x10]
016fb4f0  adrp x1,0x18bb000
016fb4f4  add x1,x1,#0xc2c
016fb4f8  mov w2,#0x1
016fb4fc  bl 0x0124ec90
016fb500  ldr x0,[sp, #0x10]
016fb504  mov w1,#0xffffffff
016fb508  bl 0x0124c0c0
016fb50c  ldr x19,[sp, #0x10]
016fb510  orr w1,wzr,#0xfffffffb
016fb514  mov w2,#0x6e7
016fb518  mov x0,x19
016fb51c  bl 0x0124a650
016fb520  orr w1,wzr,#0xfffffffe
016fb524  mov x0,x19
016fb528  bl 0x0124c0c0
016fb52c  orr w1,wzr,#0xfffffffe
016fb530  mov x0,x19
016fb534  bl 0x0124e920
016fb538  mov w20,w0
016fb53c  adrp x1,0x5769000
016fb540  add x1,x1,#0x129
016fb544  mov x0,x19
016fb548  bl 0x0124f120
016fb54c  orr w1,wzr,#0xfffffffe
016fb550  mov w2,#0x1
016fb554  mov x0,x19
016fb558  bl 0x0124cfc0
016fb55c  mov x0,x19
016fb560  mov w1,w20
016fb564  bl 0x0124e060
016fb568  orr w1,wzr,#0xfffffffd
016fb56c  mov x0,x19
016fb570  bl 0x0124c4d0
016fb574  ldr x19,[sp, #0x10]
016fb578  orr w1,wzr,#0xfffffffd
016fb57c  mov w2,#0x6e7
016fb580  mov x0,x19
016fb584  bl 0x0124a650
016fb588  orr w1,wzr,#0xfffffffe
016fb58c  mov x0,x19
016fb590  bl 0x0124c0c0
016fb594  orr w1,wzr,#0xfffffffe
016fb598  mov x0,x19
016fb59c  bl 0x0124e920
016fb5a0  mov w20,w0
016fb5a4  adrp x1,0x5769000
016fb5a8  add x1,x1,#0x129
016fb5ac  mov x0,x19
016fb5b0  bl 0x0124f120
016fb5b4  orr w1,wzr,#0xfffffffe
016fb5b8  mov w2,#0x1
016fb5bc  mov x0,x19
016fb5c0  bl 0x0124cfc0
016fb5c4  mov x0,x19
016fb5c8  mov w1,w20
016fb5cc  bl 0x0124e060
016fb5d0  orr w1,wzr,#0xfffffffd
016fb5d4  mov x0,x19
016fb5d8  bl 0x0124c4d0
016fb5dc  adrp x1,0x5769000
016fb5e0  adrp x2,0x18bb000
016fb5e4  adrp x4,0x18bb000
016fb5e8  add x1,x1,#0x132
016fb5ec  add x2,x2,#0x734
016fb5f0  add x4,x4,#0x73c
016fb5f4  add x0,sp,#0x10
016fb5f8  mov x3,xzr
016fb5fc  mov x5,xzr
016fb600  bl 0x018bb54c
016fb604  mov x19,x0
016fb608  ldr w8,[x19, #0x8]
016fb60c  ldr x0,[x19]
016fb610  sub w8,w8,#0x3
016fb614  str w8,[x19, #0x8]
016fb618  orr w1,wzr,#0xfffffffc
016fb61c  bl 0x0124c4d0
016fb620  ldr w8,[x19, #0x8]
016fb624  ldr x0,[x19]
016fb628  str wzr,[x19, #0x8]
016fb62c  cmp w8,#0x1
016fb630  b.lt 0x016fb63c
016fb634  mvn w1,w8
016fb638  bl 0x0124c4d0
016fb63c  ldr w8,[sp, #0x18]
016fb640  cmp w8,#0x1
016fb644  b.lt 0x016fb654
016fb648  ldr x0,[sp, #0x10]
016fb64c  mvn w1,w8
016fb650  bl 0x0124c4d0
016fb654  ldr w8,[sp, #0x8]
016fb658  cmp w8,#0x1
016fb65c  b.lt 0x016fb66c
016fb660  ldr x0,[sp]
016fb664  mvn w1,w8
016fb668  bl 0x0124c4d0
016fb66c  ldp x29,x30,[sp, #0x30]
016fb670  ldp x20,x19,[sp, #0x20]
016fb674  add sp,sp,#0x40
016fb678  ret
