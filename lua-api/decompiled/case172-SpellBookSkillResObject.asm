// ===== case172-SpellBookSkillResObject @ 016aa608 =====
// existing function case172-SpellBookSkillResObject
016aa608  sub sp,sp,#0x50
016aa60c  str x21,[sp, #0x20]
016aa610  stp x20,x19,[sp, #0x30]
016aa614  stp x29,x30,[sp, #0x40]
016aa618  add x29,sp,#0x40
016aa61c  adrp x1,0x174a000
016aa620  add x1,x1,#0x87c
016aa624  mov x19,x0
016aa628  bl 0x0124ba40
016aa62c  adrp x1,0x575d000
016aa630  add x1,x1,#0xa06
016aa634  mov x0,x19
016aa638  str x19,[sp]
016aa63c  bl 0x01251aa0
016aa640  mov w8,#0x1
016aa644  str w8,[sp, #0x8]
016aa648  mov x0,sp
016aa64c  bl 0x0174aa04
016aa650  adrp x1,0x5760000
016aa654  adrp x3,0x736d000
016aa658  add x1,x1,#0x710
016aa65c  add x3,x3,#0x101
016aa660  add x0,sp,#0x10
016aa664  mov x2,sp
016aa668  bl 0x017ad86c
016aa66c  ldr x0,[sp, #0x10]
016aa670  mov w1,#0x10
016aa674  bl 0x0124cba0
016aa678  adrp x8,0x17ad000
016aa67c  dup v0.2D,xzr
016aa680  add x8,x8,#0x644
016aa684  mov v0.D[0x0],x8
016aa688  str q0,[x0]
016aa68c  ldr x0,[sp, #0x10]
016aa690  adrp x1,0x17ad000
016aa694  add x1,x1,#0xc30
016aa698  mov w2,#0x1
016aa69c  bl 0x0124ec90
016aa6a0  ldr x0,[sp, #0x10]
016aa6a4  mov w1,#0xffffffff
016aa6a8  bl 0x0124c0c0
016aa6ac  ldr x19,[sp, #0x10]
016aa6b0  orr w1,wzr,#0xfffffffb
016aa6b4  mov w2,#0x6e7
016aa6b8  mov x0,x19
016aa6bc  bl 0x0124a650
016aa6c0  orr w1,wzr,#0xfffffffe
016aa6c4  mov x0,x19
016aa6c8  bl 0x0124c0c0
016aa6cc  orr w1,wzr,#0xfffffffe
016aa6d0  mov x0,x19
016aa6d4  bl 0x0124e920
016aa6d8  mov w20,w0
016aa6dc  adrp x1,0x5760000
016aa6e0  add x1,x1,#0x5fe
016aa6e4  mov x0,x19
016aa6e8  bl 0x0124f120
016aa6ec  orr w1,wzr,#0xfffffffe
016aa6f0  mov w2,#0x1
016aa6f4  mov x0,x19
016aa6f8  bl 0x0124cfc0
016aa6fc  mov x0,x19
016aa700  mov w1,w20
016aa704  bl 0x0124e060
016aa708  orr w1,wzr,#0xfffffffd
016aa70c  mov x0,x19
016aa710  bl 0x0124c4d0
016aa714  ldr x19,[sp, #0x10]
016aa718  orr w1,wzr,#0xfffffffd
016aa71c  mov w2,#0x6e7
016aa720  mov x0,x19
016aa724  bl 0x0124a650
016aa728  orr w1,wzr,#0xfffffffe
016aa72c  mov x0,x19
016aa730  bl 0x0124c0c0
016aa734  orr w1,wzr,#0xfffffffe
016aa738  mov x0,x19
016aa73c  bl 0x0124e920
016aa740  mov w20,w0
016aa744  adrp x1,0x5760000
016aa748  add x1,x1,#0x5fe
016aa74c  mov x0,x19
016aa750  bl 0x0124f120
016aa754  orr w1,wzr,#0xfffffffe
016aa758  mov w2,#0x1
016aa75c  mov x0,x19
016aa760  bl 0x0124cfc0
016aa764  mov x0,x19
016aa768  mov w1,w20
016aa76c  bl 0x0124e060
016aa770  orr w1,wzr,#0xfffffffd
016aa774  mov x0,x19
016aa778  bl 0x0124c4d0
016aa77c  adrp x1,0x5760000
016aa780  adrp x2,0x17ad000
016aa784  adrp x4,0x17ad000
016aa788  add x1,x1,#0x60b
016aa78c  add x2,x2,#0x834
016aa790  add x4,x4,#0x83c
016aa794  add x0,sp,#0x10
016aa798  mov x3,xzr
016aa79c  mov x5,xzr
016aa7a0  bl 0x017ad64c
016aa7a4  adrp x1,0x5760000
016aa7a8  adrp x2,0x17ad000
016aa7ac  adrp x4,0x17ad000
016aa7b0  add x1,x1,#0x2fc
016aa7b4  add x2,x2,#0x844
016aa7b8  add x4,x4,#0x84c
016aa7bc  mov x3,xzr
016aa7c0  mov x5,xzr
016aa7c4  bl 0x017ad64c
016aa7c8  adrp x1,0x5760000
016aa7cc  adrp x2,0x17ad000
016aa7d0  adrp x4,0x17ad000
016aa7d4  add x1,x1,#0x728
016aa7d8  add x2,x2,#0x854
016aa7dc  add x4,x4,#0x85c
016aa7e0  mov x3,xzr
016aa7e4  mov x5,xzr
016aa7e8  bl 0x017ad64c
016aa7ec  mov x19,x0
016aa7f0  ldr x0,[x19]
016aa7f4  mov w1,#0x10
016aa7f8  bl 0x0124cba0
016aa7fc  adrp x8,0x17ad000
016aa800  dup v0.2D,xzr
016aa804  add x8,x8,#0x864
016aa808  mov v0.D[0x0],x8
016aa80c  str q0,[x0]
016aa810  ldr x0,[x19]
016aa814  adrp x1,0x17ad000
016aa818  add x1,x1,#0xf74
016aa81c  mov w2,#0x1
016aa820  bl 0x0124ec90
016aa824  ldr x0,[x19]
016aa828  mov w1,#0xffffffff
016aa82c  bl 0x0124c0c0
016aa830  ldr x20,[x19]
016aa834  orr w1,wzr,#0xfffffffb
016aa838  mov w2,#0x6e7
016aa83c  mov x0,x20
016aa840  bl 0x0124a650
016aa844  orr w1,wzr,#0xfffffffe
016aa848  mov x0,x20
016aa84c  bl 0x0124c0c0
016aa850  orr w1,wzr,#0xfffffffe
016aa854  mov x0,x20
016aa858  bl 0x0124e920
016aa85c  mov w21,w0
016aa860  adrp x1,0x5760000
016aa864  add x1,x1,#0x739
016aa868  mov x0,x20
016aa86c  bl 0x0124f120
016aa870  orr w1,wzr,#0xfffffffe
016aa874  mov w2,#0x1
016aa878  mov x0,x20
016aa87c  bl 0x0124cfc0
016aa880  mov x0,x20
016aa884  mov w1,w21
016aa888  bl 0x0124e060
016aa88c  orr w1,wzr,#0xfffffffd
016aa890  mov x0,x20
016aa894  bl 0x0124c4d0
016aa898  ldr x20,[x19]
016aa89c  orr w1,wzr,#0xfffffffd
016aa8a0  mov w2,#0x6e7
016aa8a4  mov x0,x20
016aa8a8  bl 0x0124a650
016aa8ac  orr w1,wzr,#0xfffffffe
016aa8b0  mov x0,x20
016aa8b4  bl 0x0124c0c0
016aa8b8  orr w1,wzr,#0xfffffffe
016aa8bc  mov x0,x20
016aa8c0  bl 0x0124e920
016aa8c4  mov w21,w0
016aa8c8  adrp x1,0x5760000
016aa8cc  add x1,x1,#0x739
016aa8d0  mov x0,x20
016aa8d4  bl 0x0124f120
016aa8d8  orr w1,wzr,#0xfffffffe
016aa8dc  mov w2,#0x1
016aa8e0  mov x0,x20
016aa8e4  bl 0x0124cfc0
016aa8e8  mov x0,x20
016aa8ec  mov w1,w21
016aa8f0  bl 0x0124e060
016aa8f4  orr w1,wzr,#0xfffffffd
016aa8f8  mov x0,x20
016aa8fc  bl 0x0124c4d0
016aa900  ldr w8,[x19, #0x8]
016aa904  ldr x0,[x19]
016aa908  sub w8,w8,#0x3
016aa90c  str w8,[x19, #0x8]
016aa910  orr w1,wzr,#0xfffffffc
016aa914  bl 0x0124c4d0
016aa918  ldr w8,[x19, #0x8]
016aa91c  ldr x0,[x19]
016aa920  str wzr,[x19, #0x8]
016aa924  cmp w8,#0x1
016aa928  b.lt 0x016aa934
016aa92c  mvn w1,w8
016aa930  bl 0x0124c4d0
016aa934  ldr w8,[sp, #0x18]
016aa938  cmp w8,#0x1
016aa93c  b.lt 0x016aa94c
016aa940  ldr x0,[sp, #0x10]
016aa944  mvn w1,w8
016aa948  bl 0x0124c4d0
016aa94c  ldr w8,[sp, #0x8]
016aa950  cmp w8,#0x1
016aa954  b.lt 0x016aa964
016aa958  ldr x0,[sp]
016aa95c  mvn w1,w8
016aa960  bl 0x0124c4d0
016aa964  ldp x29,x30,[sp, #0x40]
016aa968  ldp x20,x19,[sp, #0x30]
016aa96c  ldr x21,[sp, #0x20]
016aa970  add sp,sp,#0x50
016aa974  ret
