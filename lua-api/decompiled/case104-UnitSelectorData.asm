// ===== case104-UnitSelectorData @ 0169d6b0 =====
// existing function case104-UnitSelectorData
0169d6b0  sub sp,sp,#0x40
0169d6b4  stp x20,x19,[sp, #0x20]
0169d6b8  stp x29,x30,[sp, #0x30]
0169d6bc  add x29,sp,#0x30
0169d6c0  adrp x1,0x174a000
0169d6c4  add x1,x1,#0x87c
0169d6c8  mov x19,x0
0169d6cc  bl 0x0124ba40
0169d6d0  adrp x1,0x575d000
0169d6d4  add x1,x1,#0xa06
0169d6d8  mov x0,x19
0169d6dc  str x19,[sp]
0169d6e0  bl 0x01251aa0
0169d6e4  mov w8,#0x1
0169d6e8  str w8,[sp, #0x8]
0169d6ec  mov x0,sp
0169d6f0  bl 0x0174aa04
0169d6f4  adrp x1,0x575f000
0169d6f8  adrp x3,0x736d000
0169d6fc  add x1,x1,#0x32e
0169d700  add x3,x3,#0x101
0169d704  add x0,sp,#0x10
0169d708  mov x2,sp
0169d70c  bl 0x0178957c
0169d710  ldr x0,[sp, #0x10]
0169d714  mov w1,#0x10
0169d718  bl 0x0124cba0
0169d71c  adrp x8,0x1789000
0169d720  dup v0.2D,xzr
0169d724  add x8,x8,#0x56c
0169d728  mov v0.D[0x0],x8
0169d72c  str q0,[x0]
0169d730  ldr x0,[sp, #0x10]
0169d734  adrp x1,0x1789000
0169d738  add x1,x1,#0x940
0169d73c  mov w2,#0x1
0169d740  bl 0x0124ec90
0169d744  ldr x0,[sp, #0x10]
0169d748  mov w1,#0xffffffff
0169d74c  bl 0x0124c0c0
0169d750  ldr x19,[sp, #0x10]
0169d754  orr w1,wzr,#0xfffffffb
0169d758  mov w2,#0x6e7
0169d75c  mov x0,x19
0169d760  bl 0x0124a650
0169d764  orr w1,wzr,#0xfffffffe
0169d768  mov x0,x19
0169d76c  bl 0x0124c0c0
0169d770  orr w1,wzr,#0xfffffffe
0169d774  mov x0,x19
0169d778  bl 0x0124e920
0169d77c  mov w20,w0
0169d780  adrp x1,0x575e000
0169d784  add x1,x1,#0x56d
0169d788  mov x0,x19
0169d78c  bl 0x0124f120
0169d790  orr w1,wzr,#0xfffffffe
0169d794  mov w2,#0x1
0169d798  mov x0,x19
0169d79c  bl 0x0124cfc0
0169d7a0  mov x0,x19
0169d7a4  mov w1,w20
0169d7a8  bl 0x0124e060
0169d7ac  orr w1,wzr,#0xfffffffd
0169d7b0  mov x0,x19
0169d7b4  bl 0x0124c4d0
0169d7b8  ldr x19,[sp, #0x10]
0169d7bc  orr w1,wzr,#0xfffffffd
0169d7c0  mov w2,#0x6e7
0169d7c4  mov x0,x19
0169d7c8  bl 0x0124a650
0169d7cc  orr w1,wzr,#0xfffffffe
0169d7d0  mov x0,x19
0169d7d4  bl 0x0124c0c0
0169d7d8  orr w1,wzr,#0xfffffffe
0169d7dc  mov x0,x19
0169d7e0  bl 0x0124e920
0169d7e4  mov w20,w0
0169d7e8  adrp x1,0x575e000
0169d7ec  add x1,x1,#0x56d
0169d7f0  mov x0,x19
0169d7f4  bl 0x0124f120
0169d7f8  orr w1,wzr,#0xfffffffe
0169d7fc  mov w2,#0x1
0169d800  mov x0,x19
0169d804  bl 0x0124cfc0
0169d808  mov x0,x19
0169d80c  mov w1,w20
0169d810  bl 0x0124e060
0169d814  orr w1,wzr,#0xfffffffd
0169d818  mov x0,x19
0169d81c  bl 0x0124c4d0
0169d820  ldr x0,[sp, #0x10]
0169d824  mov w1,#0x10
0169d828  bl 0x0124cba0
0169d82c  adrp x8,0x1789000
0169d830  dup v0.2D,xzr
0169d834  add x8,x8,#0x574
0169d838  mov v0.D[0x0],x8
0169d83c  str q0,[x0]
0169d840  ldr x0,[sp, #0x10]
0169d844  adrp x1,0x1789000
0169d848  add x1,x1,#0xa64
0169d84c  mov w2,#0x1
0169d850  bl 0x0124ec90
0169d854  ldr x0,[sp, #0x10]
0169d858  mov w1,#0xffffffff
0169d85c  bl 0x0124c0c0
0169d860  ldr x19,[sp, #0x10]
0169d864  orr w1,wzr,#0xfffffffb
0169d868  mov w2,#0x6e7
0169d86c  mov x0,x19
0169d870  bl 0x0124a650
0169d874  orr w1,wzr,#0xfffffffe
0169d878  mov x0,x19
0169d87c  bl 0x0124c0c0
0169d880  orr w1,wzr,#0xfffffffe
0169d884  mov x0,x19
0169d888  bl 0x0124e920
0169d88c  mov w20,w0
0169d890  adrp x1,0x575e000
0169d894  add x1,x1,#0x578
0169d898  mov x0,x19
0169d89c  bl 0x0124f120
0169d8a0  orr w1,wzr,#0xfffffffe
0169d8a4  mov w2,#0x1
0169d8a8  mov x0,x19
0169d8ac  bl 0x0124cfc0
0169d8b0  mov x0,x19
0169d8b4  mov w1,w20
0169d8b8  bl 0x0124e060
0169d8bc  orr w1,wzr,#0xfffffffd
0169d8c0  mov x0,x19
0169d8c4  bl 0x0124c4d0
0169d8c8  ldr x19,[sp, #0x10]
0169d8cc  orr w1,wzr,#0xfffffffd
0169d8d0  mov w2,#0x6e7
0169d8d4  mov x0,x19
0169d8d8  bl 0x0124a650
0169d8dc  orr w1,wzr,#0xfffffffe
0169d8e0  mov x0,x19
0169d8e4  bl 0x0124c0c0
0169d8e8  orr w1,wzr,#0xfffffffe
0169d8ec  mov x0,x19
0169d8f0  bl 0x0124e920
0169d8f4  mov w20,w0
0169d8f8  adrp x1,0x575e000
0169d8fc  add x1,x1,#0x578
0169d900  mov x0,x19
0169d904  bl 0x0124f120
0169d908  orr w1,wzr,#0xfffffffe
0169d90c  mov w2,#0x1
0169d910  mov x0,x19
0169d914  bl 0x0124cfc0
0169d918  mov x0,x19
0169d91c  mov w1,w20
0169d920  bl 0x0124e060
0169d924  orr w1,wzr,#0xfffffffd
0169d928  mov x0,x19
0169d92c  bl 0x0124c4d0
0169d930  ldr w8,[sp, #0x18]
0169d934  ldr x0,[sp, #0x10]
0169d938  sub w8,w8,#0x3
0169d93c  str w8,[sp, #0x18]
0169d940  orr w1,wzr,#0xfffffffc
0169d944  bl 0x0124c4d0
0169d948  ldr w8,[sp, #0x18]
0169d94c  ldr x0,[sp, #0x10]
0169d950  str wzr,[sp, #0x18]
0169d954  cmp w8,#0x1
0169d958  b.lt 0x0169d97c
0169d95c  mvn w1,w8
0169d960  bl 0x0124c4d0
0169d964  ldr w8,[sp, #0x18]
0169d968  cmp w8,#0x1
0169d96c  b.lt 0x0169d97c
0169d970  ldr x0,[sp, #0x10]
0169d974  mvn w1,w8
0169d978  bl 0x0124c4d0
0169d97c  ldr w8,[sp, #0x8]
0169d980  cmp w8,#0x1
0169d984  b.lt 0x0169d994
0169d988  ldr x0,[sp]
0169d98c  mvn w1,w8
0169d990  bl 0x0124c4d0
0169d994  ldp x29,x30,[sp, #0x30]
0169d998  ldp x20,x19,[sp, #0x20]
0169d99c  add sp,sp,#0x40
0169d9a0  ret
