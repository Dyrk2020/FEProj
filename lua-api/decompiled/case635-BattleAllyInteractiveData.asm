// ===== case635-BattleAllyInteractiveData @ 0170f35c =====
// existing function case635-BattleAllyInteractiveData
0170f35c  sub sp,sp,#0x40
0170f360  stp x20,x19,[sp, #0x20]
0170f364  stp x29,x30,[sp, #0x30]
0170f368  add x29,sp,#0x30
0170f36c  adrp x1,0x174a000
0170f370  add x1,x1,#0x87c
0170f374  mov x19,x0
0170f378  bl 0x0124ba40
0170f37c  adrp x1,0x575d000
0170f380  add x1,x1,#0xa06
0170f384  mov x0,x19
0170f388  str x19,[sp]
0170f38c  bl 0x01251aa0
0170f390  mov w8,#0x1
0170f394  str w8,[sp, #0x8]
0170f398  mov x0,sp
0170f39c  bl 0x0174aa04
0170f3a0  adrp x1,0x576a000
0170f3a4  adrp x3,0x736d000
0170f3a8  add x1,x1,#0xb7b
0170f3ac  add x3,x3,#0x101
0170f3b0  add x0,sp,#0x10
0170f3b4  mov x2,sp
0170f3b8  bl 0x0190ff08
0170f3bc  ldr x0,[sp, #0x10]
0170f3c0  mov w1,#0x10
0170f3c4  bl 0x0124cba0
0170f3c8  adrp x8,0x190f000
0170f3cc  dup v0.2D,xzr
0170f3d0  add x8,x8,#0xf00
0170f3d4  mov v0.D[0x0],x8
0170f3d8  str q0,[x0]
0170f3dc  ldr x0,[sp, #0x10]
0170f3e0  adrp x1,0x1910000
0170f3e4  add x1,x1,#0x2cc
0170f3e8  mov w2,#0x1
0170f3ec  bl 0x0124ec90
0170f3f0  ldr x0,[sp, #0x10]
0170f3f4  mov w1,#0xffffffff
0170f3f8  bl 0x0124c0c0
0170f3fc  ldr x19,[sp, #0x10]
0170f400  orr w1,wzr,#0xfffffffb
0170f404  mov w2,#0x6e7
0170f408  mov x0,x19
0170f40c  bl 0x0124a650
0170f410  orr w1,wzr,#0xfffffffe
0170f414  mov x0,x19
0170f418  bl 0x0124c0c0
0170f41c  orr w1,wzr,#0xfffffffe
0170f420  mov x0,x19
0170f424  bl 0x0124e920
0170f428  mov w20,w0
0170f42c  adrp x1,0x576a000
0170f430  add x1,x1,#0xb95
0170f434  mov x0,x19
0170f438  bl 0x0124f120
0170f43c  orr w1,wzr,#0xfffffffe
0170f440  mov w2,#0x1
0170f444  mov x0,x19
0170f448  bl 0x0124cfc0
0170f44c  mov x0,x19
0170f450  mov w1,w20
0170f454  bl 0x0124e060
0170f458  orr w1,wzr,#0xfffffffd
0170f45c  mov x0,x19
0170f460  bl 0x0124c4d0
0170f464  ldr x19,[sp, #0x10]
0170f468  orr w1,wzr,#0xfffffffd
0170f46c  mov w2,#0x6e7
0170f470  mov x0,x19
0170f474  bl 0x0124a650
0170f478  orr w1,wzr,#0xfffffffe
0170f47c  mov x0,x19
0170f480  bl 0x0124c0c0
0170f484  orr w1,wzr,#0xfffffffe
0170f488  mov x0,x19
0170f48c  bl 0x0124e920
0170f490  mov w20,w0
0170f494  adrp x1,0x576a000
0170f498  add x1,x1,#0xb95
0170f49c  mov x0,x19
0170f4a0  bl 0x0124f120
0170f4a4  orr w1,wzr,#0xfffffffe
0170f4a8  mov w2,#0x1
0170f4ac  mov x0,x19
0170f4b0  bl 0x0124cfc0
0170f4b4  mov x0,x19
0170f4b8  mov w1,w20
0170f4bc  bl 0x0124e060
0170f4c0  orr w1,wzr,#0xfffffffd
0170f4c4  mov x0,x19
0170f4c8  bl 0x0124c4d0
0170f4cc  ldr w8,[sp, #0x18]
0170f4d0  ldr x0,[sp, #0x10]
0170f4d4  sub w8,w8,#0x3
0170f4d8  str w8,[sp, #0x18]
0170f4dc  orr w1,wzr,#0xfffffffc
0170f4e0  bl 0x0124c4d0
0170f4e4  ldr w8,[sp, #0x18]
0170f4e8  ldr x0,[sp, #0x10]
0170f4ec  str wzr,[sp, #0x18]
0170f4f0  cmp w8,#0x1
0170f4f4  b.lt 0x0170f518
0170f4f8  mvn w1,w8
0170f4fc  bl 0x0124c4d0
0170f500  ldr w8,[sp, #0x18]
0170f504  cmp w8,#0x1
0170f508  b.lt 0x0170f518
0170f50c  ldr x0,[sp, #0x10]
0170f510  mvn w1,w8
0170f514  bl 0x0124c4d0
0170f518  ldr w8,[sp, #0x8]
0170f51c  cmp w8,#0x1
0170f520  b.lt 0x0170f530
0170f524  ldr x0,[sp]
0170f528  mvn w1,w8
0170f52c  bl 0x0124c4d0
0170f530  ldp x29,x30,[sp, #0x30]
0170f534  ldp x20,x19,[sp, #0x20]
0170f538  add sp,sp,#0x40
0170f53c  ret
