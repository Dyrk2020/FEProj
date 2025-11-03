// ===== case334-DataCmdRoot @ 016cd534 =====
// existing function case334-DataCmdRoot
016cd534  sub sp,sp,#0x40
016cd538  stp x20,x19,[sp, #0x20]
016cd53c  stp x29,x30,[sp, #0x30]
016cd540  add x29,sp,#0x30
016cd544  adrp x1,0x174a000
016cd548  add x1,x1,#0x87c
016cd54c  mov x19,x0
016cd550  bl 0x0124ba40
016cd554  adrp x1,0x575d000
016cd558  add x1,x1,#0xa06
016cd55c  mov x0,x19
016cd560  str x19,[sp]
016cd564  bl 0x01251aa0
016cd568  mov w8,#0x1
016cd56c  str w8,[sp, #0x8]
016cd570  mov x0,sp
016cd574  bl 0x0174aa04
016cd578  adrp x1,0x5763000
016cd57c  adrp x3,0x736d000
016cd580  add x1,x1,#0x899
016cd584  add x3,x3,#0x101
016cd588  add x0,sp,#0x10
016cd58c  mov x2,sp
016cd590  bl 0x018111a8
016cd594  ldr x0,[sp, #0x10]
016cd598  mov w1,#0x10
016cd59c  bl 0x0124cba0
016cd5a0  adrp x8,0x1811000
016cd5a4  dup v0.2D,xzr
016cd5a8  add x8,x8,#0x198
016cd5ac  mov v0.D[0x0],x8
016cd5b0  str q0,[x0]
016cd5b4  ldr x0,[sp, #0x10]
016cd5b8  adrp x1,0x1811000
016cd5bc  add x1,x1,#0x56c
016cd5c0  mov w2,#0x1
016cd5c4  bl 0x0124ec90
016cd5c8  ldr x0,[sp, #0x10]
016cd5cc  mov w1,#0xffffffff
016cd5d0  bl 0x0124c0c0
016cd5d4  ldr x19,[sp, #0x10]
016cd5d8  orr w1,wzr,#0xfffffffb
016cd5dc  mov w2,#0x6e7
016cd5e0  mov x0,x19
016cd5e4  bl 0x0124a650
016cd5e8  orr w1,wzr,#0xfffffffe
016cd5ec  mov x0,x19
016cd5f0  bl 0x0124c0c0
016cd5f4  orr w1,wzr,#0xfffffffe
016cd5f8  mov x0,x19
016cd5fc  bl 0x0124e920
016cd600  mov w20,w0
016cd604  adrp x1,0x5763000
016cd608  add x1,x1,#0x8a5
016cd60c  mov x0,x19
016cd610  bl 0x0124f120
016cd614  orr w1,wzr,#0xfffffffe
016cd618  mov w2,#0x1
016cd61c  mov x0,x19
016cd620  bl 0x0124cfc0
016cd624  mov x0,x19
016cd628  mov w1,w20
016cd62c  bl 0x0124e060
016cd630  orr w1,wzr,#0xfffffffd
016cd634  mov x0,x19
016cd638  bl 0x0124c4d0
016cd63c  ldr x19,[sp, #0x10]
016cd640  orr w1,wzr,#0xfffffffd
016cd644  mov w2,#0x6e7
016cd648  mov x0,x19
016cd64c  bl 0x0124a650
016cd650  orr w1,wzr,#0xfffffffe
016cd654  mov x0,x19
016cd658  bl 0x0124c0c0
016cd65c  orr w1,wzr,#0xfffffffe
016cd660  mov x0,x19
016cd664  bl 0x0124e920
016cd668  mov w20,w0
016cd66c  adrp x1,0x5763000
016cd670  add x1,x1,#0x8a5
016cd674  mov x0,x19
016cd678  bl 0x0124f120
016cd67c  orr w1,wzr,#0xfffffffe
016cd680  mov w2,#0x1
016cd684  mov x0,x19
016cd688  bl 0x0124cfc0
016cd68c  mov x0,x19
016cd690  mov w1,w20
016cd694  bl 0x0124e060
016cd698  orr w1,wzr,#0xfffffffd
016cd69c  mov x0,x19
016cd6a0  bl 0x0124c4d0
016cd6a4  ldr x0,[sp, #0x10]
016cd6a8  mov w1,#0x10
016cd6ac  bl 0x0124cba0
016cd6b0  adrp x8,0x1811000
016cd6b4  dup v0.2D,xzr
016cd6b8  add x8,x8,#0x1a0
016cd6bc  mov v0.D[0x0],x8
016cd6c0  str q0,[x0]
016cd6c4  ldr x0,[sp, #0x10]
016cd6c8  adrp x1,0x1811000
016cd6cc  add x1,x1,#0x690
016cd6d0  mov w2,#0x1
016cd6d4  bl 0x0124ec90
016cd6d8  ldr x0,[sp, #0x10]
016cd6dc  mov w1,#0xffffffff
016cd6e0  bl 0x0124c0c0
016cd6e4  ldr x19,[sp, #0x10]
016cd6e8  orr w1,wzr,#0xfffffffb
016cd6ec  mov w2,#0x6e7
016cd6f0  mov x0,x19
016cd6f4  bl 0x0124a650
016cd6f8  orr w1,wzr,#0xfffffffe
016cd6fc  mov x0,x19
016cd700  bl 0x0124c0c0
016cd704  orr w1,wzr,#0xfffffffe
016cd708  mov x0,x19
016cd70c  bl 0x0124e920
016cd710  mov w20,w0
016cd714  adrp x1,0x5763000
016cd718  add x1,x1,#0x8ac
016cd71c  mov x0,x19
016cd720  bl 0x0124f120
016cd724  orr w1,wzr,#0xfffffffe
016cd728  mov w2,#0x1
016cd72c  mov x0,x19
016cd730  bl 0x0124cfc0
016cd734  mov x0,x19
016cd738  mov w1,w20
016cd73c  bl 0x0124e060
016cd740  orr w1,wzr,#0xfffffffd
016cd744  mov x0,x19
016cd748  bl 0x0124c4d0
016cd74c  ldr x19,[sp, #0x10]
016cd750  orr w1,wzr,#0xfffffffd
016cd754  mov w2,#0x6e7
016cd758  mov x0,x19
016cd75c  bl 0x0124a650
016cd760  orr w1,wzr,#0xfffffffe
016cd764  mov x0,x19
016cd768  bl 0x0124c0c0
016cd76c  orr w1,wzr,#0xfffffffe
016cd770  mov x0,x19
016cd774  bl 0x0124e920
016cd778  mov w20,w0
016cd77c  adrp x1,0x5763000
016cd780  add x1,x1,#0x8ac
016cd784  mov x0,x19
016cd788  bl 0x0124f120
016cd78c  orr w1,wzr,#0xfffffffe
016cd790  mov w2,#0x1
016cd794  mov x0,x19
016cd798  bl 0x0124cfc0
016cd79c  mov x0,x19
016cd7a0  mov w1,w20
016cd7a4  bl 0x0124e060
016cd7a8  orr w1,wzr,#0xfffffffd
016cd7ac  mov x0,x19
016cd7b0  bl 0x0124c4d0
016cd7b4  ldr w8,[sp, #0x18]
016cd7b8  ldr x0,[sp, #0x10]
016cd7bc  sub w8,w8,#0x3
016cd7c0  str w8,[sp, #0x18]
016cd7c4  orr w1,wzr,#0xfffffffc
016cd7c8  bl 0x0124c4d0
016cd7cc  ldr w8,[sp, #0x18]
016cd7d0  ldr x0,[sp, #0x10]
016cd7d4  str wzr,[sp, #0x18]
016cd7d8  cmp w8,#0x1
016cd7dc  b.lt 0x016cd800
016cd7e0  mvn w1,w8
016cd7e4  bl 0x0124c4d0
016cd7e8  ldr w8,[sp, #0x18]
016cd7ec  cmp w8,#0x1
016cd7f0  b.lt 0x016cd800
016cd7f4  ldr x0,[sp, #0x10]
016cd7f8  mvn w1,w8
016cd7fc  bl 0x0124c4d0
016cd800  ldr w8,[sp, #0x8]
016cd804  cmp w8,#0x1
016cd808  b.lt 0x016cd818
016cd80c  ldr x0,[sp]
016cd810  mvn w1,w8
016cd814  bl 0x0124c4d0
016cd818  ldp x29,x30,[sp, #0x30]
016cd81c  ldp x20,x19,[sp, #0x20]
016cd820  add sp,sp,#0x40
016cd824  ret
