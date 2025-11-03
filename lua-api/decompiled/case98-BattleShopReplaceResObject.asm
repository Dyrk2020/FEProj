// ===== case98-BattleShopReplaceResObject @ 0169c59c =====
// existing function case98-BattleShopReplaceResObject
0169c59c  sub sp,sp,#0x40
0169c5a0  stp x20,x19,[sp, #0x20]
0169c5a4  stp x29,x30,[sp, #0x30]
0169c5a8  add x29,sp,#0x30
0169c5ac  adrp x1,0x174a000
0169c5b0  add x1,x1,#0x87c
0169c5b4  mov x19,x0
0169c5b8  bl 0x0124ba40
0169c5bc  adrp x1,0x575d000
0169c5c0  add x1,x1,#0xa06
0169c5c4  mov x0,x19
0169c5c8  str x19,[sp]
0169c5cc  bl 0x01251aa0
0169c5d0  mov w8,#0x1
0169c5d4  str w8,[sp, #0x8]
0169c5d8  mov x0,sp
0169c5dc  bl 0x0174aa04
0169c5e0  adrp x1,0x575f000
0169c5e4  adrp x3,0x736d000
0169c5e8  add x1,x1,#0x1ec
0169c5ec  add x3,x3,#0x101
0169c5f0  add x0,sp,#0x10
0169c5f4  mov x2,sp
0169c5f8  bl 0x017868b8
0169c5fc  ldr x0,[sp, #0x10]
0169c600  mov w1,#0x10
0169c604  bl 0x0124cba0
0169c608  adrp x8,0x1786000
0169c60c  dup v0.2D,xzr
0169c610  add x8,x8,#0x8a8
0169c614  mov v0.D[0x0],x8
0169c618  str q0,[x0]
0169c61c  ldr x0,[sp, #0x10]
0169c620  adrp x1,0x1786000
0169c624  add x1,x1,#0xc7c
0169c628  mov w2,#0x1
0169c62c  bl 0x0124ec90
0169c630  ldr x0,[sp, #0x10]
0169c634  mov w1,#0xffffffff
0169c638  bl 0x0124c0c0
0169c63c  ldr x19,[sp, #0x10]
0169c640  orr w1,wzr,#0xfffffffb
0169c644  mov w2,#0x6e7
0169c648  mov x0,x19
0169c64c  bl 0x0124a650
0169c650  orr w1,wzr,#0xfffffffe
0169c654  mov x0,x19
0169c658  bl 0x0124c0c0
0169c65c  orr w1,wzr,#0xfffffffe
0169c660  mov x0,x19
0169c664  bl 0x0124e920
0169c668  mov w20,w0
0169c66c  adrp x1,0x575e000
0169c670  add x1,x1,#0x56d
0169c674  mov x0,x19
0169c678  bl 0x0124f120
0169c67c  orr w1,wzr,#0xfffffffe
0169c680  mov w2,#0x1
0169c684  mov x0,x19
0169c688  bl 0x0124cfc0
0169c68c  mov x0,x19
0169c690  mov w1,w20
0169c694  bl 0x0124e060
0169c698  orr w1,wzr,#0xfffffffd
0169c69c  mov x0,x19
0169c6a0  bl 0x0124c4d0
0169c6a4  ldr x19,[sp, #0x10]
0169c6a8  orr w1,wzr,#0xfffffffd
0169c6ac  mov w2,#0x6e7
0169c6b0  mov x0,x19
0169c6b4  bl 0x0124a650
0169c6b8  orr w1,wzr,#0xfffffffe
0169c6bc  mov x0,x19
0169c6c0  bl 0x0124c0c0
0169c6c4  orr w1,wzr,#0xfffffffe
0169c6c8  mov x0,x19
0169c6cc  bl 0x0124e920
0169c6d0  mov w20,w0
0169c6d4  adrp x1,0x575e000
0169c6d8  add x1,x1,#0x56d
0169c6dc  mov x0,x19
0169c6e0  bl 0x0124f120
0169c6e4  orr w1,wzr,#0xfffffffe
0169c6e8  mov w2,#0x1
0169c6ec  mov x0,x19
0169c6f0  bl 0x0124cfc0
0169c6f4  mov x0,x19
0169c6f8  mov w1,w20
0169c6fc  bl 0x0124e060
0169c700  orr w1,wzr,#0xfffffffd
0169c704  mov x0,x19
0169c708  bl 0x0124c4d0
0169c70c  ldr x0,[sp, #0x10]
0169c710  mov w1,#0x10
0169c714  bl 0x0124cba0
0169c718  adrp x8,0x1786000
0169c71c  dup v0.2D,xzr
0169c720  add x8,x8,#0x8b0
0169c724  mov v0.D[0x0],x8
0169c728  str q0,[x0]
0169c72c  ldr x0,[sp, #0x10]
0169c730  adrp x1,0x1786000
0169c734  add x1,x1,#0xda0
0169c738  mov w2,#0x1
0169c73c  bl 0x0124ec90
0169c740  ldr x0,[sp, #0x10]
0169c744  mov w1,#0xffffffff
0169c748  bl 0x0124c0c0
0169c74c  ldr x19,[sp, #0x10]
0169c750  orr w1,wzr,#0xfffffffb
0169c754  mov w2,#0x6e7
0169c758  mov x0,x19
0169c75c  bl 0x0124a650
0169c760  orr w1,wzr,#0xfffffffe
0169c764  mov x0,x19
0169c768  bl 0x0124c0c0
0169c76c  orr w1,wzr,#0xfffffffe
0169c770  mov x0,x19
0169c774  bl 0x0124e920
0169c778  mov w20,w0
0169c77c  adrp x1,0x575e000
0169c780  add x1,x1,#0x578
0169c784  mov x0,x19
0169c788  bl 0x0124f120
0169c78c  orr w1,wzr,#0xfffffffe
0169c790  mov w2,#0x1
0169c794  mov x0,x19
0169c798  bl 0x0124cfc0
0169c79c  mov x0,x19
0169c7a0  mov w1,w20
0169c7a4  bl 0x0124e060
0169c7a8  orr w1,wzr,#0xfffffffd
0169c7ac  mov x0,x19
0169c7b0  bl 0x0124c4d0
0169c7b4  ldr x19,[sp, #0x10]
0169c7b8  orr w1,wzr,#0xfffffffd
0169c7bc  mov w2,#0x6e7
0169c7c0  mov x0,x19
0169c7c4  bl 0x0124a650
0169c7c8  orr w1,wzr,#0xfffffffe
0169c7cc  mov x0,x19
0169c7d0  bl 0x0124c0c0
0169c7d4  orr w1,wzr,#0xfffffffe
0169c7d8  mov x0,x19
0169c7dc  bl 0x0124e920
0169c7e0  mov w20,w0
0169c7e4  adrp x1,0x575e000
0169c7e8  add x1,x1,#0x578
0169c7ec  mov x0,x19
0169c7f0  bl 0x0124f120
0169c7f4  orr w1,wzr,#0xfffffffe
0169c7f8  mov w2,#0x1
0169c7fc  mov x0,x19
0169c800  bl 0x0124cfc0
0169c804  mov x0,x19
0169c808  mov w1,w20
0169c80c  bl 0x0124e060
0169c810  orr w1,wzr,#0xfffffffd
0169c814  mov x0,x19
0169c818  bl 0x0124c4d0
0169c81c  ldr w8,[sp, #0x18]
0169c820  ldr x0,[sp, #0x10]
0169c824  sub w8,w8,#0x3
0169c828  str w8,[sp, #0x18]
0169c82c  orr w1,wzr,#0xfffffffc
0169c830  bl 0x0124c4d0
0169c834  ldr w8,[sp, #0x18]
0169c838  ldr x0,[sp, #0x10]
0169c83c  str wzr,[sp, #0x18]
0169c840  cmp w8,#0x1
0169c844  b.lt 0x0169c868
0169c848  mvn w1,w8
0169c84c  bl 0x0124c4d0
0169c850  ldr w8,[sp, #0x18]
0169c854  cmp w8,#0x1
0169c858  b.lt 0x0169c868
0169c85c  ldr x0,[sp, #0x10]
0169c860  mvn w1,w8
0169c864  bl 0x0124c4d0
0169c868  ldr w8,[sp, #0x8]
0169c86c  cmp w8,#0x1
0169c870  b.lt 0x0169c880
0169c874  ldr x0,[sp]
0169c878  mvn w1,w8
0169c87c  bl 0x0124c4d0
0169c880  ldp x29,x30,[sp, #0x30]
0169c884  ldp x20,x19,[sp, #0x20]
0169c888  add sp,sp,#0x40
0169c88c  ret
