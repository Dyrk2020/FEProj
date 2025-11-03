// ===== case554-RuneSkillMgr @ 016fd348 =====
// existing function case554-RuneSkillMgr
016fd348  sub sp,sp,#0x40
016fd34c  stp x20,x19,[sp, #0x20]
016fd350  stp x29,x30,[sp, #0x30]
016fd354  add x29,sp,#0x30
016fd358  adrp x1,0x174a000
016fd35c  add x1,x1,#0x87c
016fd360  mov x19,x0
016fd364  bl 0x0124ba40
016fd368  adrp x1,0x575d000
016fd36c  add x1,x1,#0xa06
016fd370  mov x0,x19
016fd374  str x19,[sp]
016fd378  bl 0x01251aa0
016fd37c  mov w8,#0x1
016fd380  str w8,[sp, #0x8]
016fd384  mov x0,sp
016fd388  bl 0x0174aa04
016fd38c  adrp x1,0x5769000
016fd390  adrp x3,0x736d000
016fd394  add x1,x1,#0x3ce
016fd398  add x3,x3,#0x101
016fd39c  add x0,sp,#0x10
016fd3a0  mov x2,sp
016fd3a4  bl 0x018c6498
016fd3a8  ldr x0,[sp, #0x10]
016fd3ac  mov w1,#0x10
016fd3b0  bl 0x0124cba0
016fd3b4  adrp x8,0x18c6000
016fd3b8  dup v0.2D,xzr
016fd3bc  add x8,x8,#0x490
016fd3c0  mov v0.D[0x0],x8
016fd3c4  str q0,[x0]
016fd3c8  ldr x0,[sp, #0x10]
016fd3cc  adrp x1,0x18c6000
016fd3d0  add x1,x1,#0x85c
016fd3d4  mov w2,#0x1
016fd3d8  bl 0x0124ec90
016fd3dc  ldr x0,[sp, #0x10]
016fd3e0  mov w1,#0xffffffff
016fd3e4  bl 0x0124c0c0
016fd3e8  ldr x19,[sp, #0x10]
016fd3ec  orr w1,wzr,#0xfffffffb
016fd3f0  mov w2,#0x6e7
016fd3f4  mov x0,x19
016fd3f8  bl 0x0124a650
016fd3fc  orr w1,wzr,#0xfffffffe
016fd400  mov x0,x19
016fd404  bl 0x0124c0c0
016fd408  orr w1,wzr,#0xfffffffe
016fd40c  mov x0,x19
016fd410  bl 0x0124e920
016fd414  mov w20,w0
016fd418  adrp x1,0x5762000
016fd41c  add x1,x1,#0x1cd
016fd420  mov x0,x19
016fd424  bl 0x0124f120
016fd428  orr w1,wzr,#0xfffffffe
016fd42c  mov w2,#0x1
016fd430  mov x0,x19
016fd434  bl 0x0124cfc0
016fd438  mov x0,x19
016fd43c  mov w1,w20
016fd440  bl 0x0124e060
016fd444  orr w1,wzr,#0xfffffffd
016fd448  mov x0,x19
016fd44c  bl 0x0124c4d0
016fd450  ldr x19,[sp, #0x10]
016fd454  orr w1,wzr,#0xfffffffd
016fd458  mov w2,#0x6e7
016fd45c  mov x0,x19
016fd460  bl 0x0124a650
016fd464  orr w1,wzr,#0xfffffffe
016fd468  mov x0,x19
016fd46c  bl 0x0124c0c0
016fd470  orr w1,wzr,#0xfffffffe
016fd474  mov x0,x19
016fd478  bl 0x0124e920
016fd47c  mov w20,w0
016fd480  adrp x1,0x5762000
016fd484  add x1,x1,#0x1cd
016fd488  mov x0,x19
016fd48c  bl 0x0124f120
016fd490  orr w1,wzr,#0xfffffffe
016fd494  mov w2,#0x1
016fd498  mov x0,x19
016fd49c  bl 0x0124cfc0
016fd4a0  mov x0,x19
016fd4a4  mov w1,w20
016fd4a8  bl 0x0124e060
016fd4ac  orr w1,wzr,#0xfffffffd
016fd4b0  mov x0,x19
016fd4b4  bl 0x0124c4d0
016fd4b8  ldr w8,[sp, #0x18]
016fd4bc  ldr x0,[sp, #0x10]
016fd4c0  sub w8,w8,#0x3
016fd4c4  str w8,[sp, #0x18]
016fd4c8  orr w1,wzr,#0xfffffffc
016fd4cc  bl 0x0124c4d0
016fd4d0  ldr w8,[sp, #0x18]
016fd4d4  ldr x0,[sp, #0x10]
016fd4d8  str wzr,[sp, #0x18]
016fd4dc  cmp w8,#0x1
016fd4e0  b.lt 0x016fd504
016fd4e4  mvn w1,w8
016fd4e8  bl 0x0124c4d0
016fd4ec  ldr w8,[sp, #0x18]
016fd4f0  cmp w8,#0x1
016fd4f4  b.lt 0x016fd504
016fd4f8  ldr x0,[sp, #0x10]
016fd4fc  mvn w1,w8
016fd500  bl 0x0124c4d0
016fd504  ldr w8,[sp, #0x8]
016fd508  cmp w8,#0x1
016fd50c  b.lt 0x016fd51c
016fd510  ldr x0,[sp]
016fd514  mvn w1,w8
016fd518  bl 0x0124c4d0
016fd51c  ldp x29,x30,[sp, #0x30]
016fd520  ldp x20,x19,[sp, #0x20]
016fd524  add sp,sp,#0x40
016fd528  ret
