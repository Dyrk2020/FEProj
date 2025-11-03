// ===== case16_Actor @ 0168f18c (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case16-Actor
0168f18c  sub sp,sp,#0x40
0168f190  stp x20,x19,[sp, #0x20]
0168f194  stp x29,x30,[sp, #0x30]
0168f198  add x29,sp,#0x30
0168f19c  adrp x1,0x174a000
0168f1a0  add x1,x1,#0x87c
0168f1a4  mov x19,x0
0168f1a8  bl 0x0124ba40
0168f1ac  adrp x1,0x575d000
0168f1b0  add x1,x1,#0xa06
0168f1b4  mov x0,x19
0168f1b8  str x19,[sp]
0168f1bc  bl 0x01251aa0
0168f1c0  mov w8,#0x1
0168f1c4  str w8,[sp, #0x8]
0168f1c8  mov x0,sp
0168f1cc  bl 0x0174aa04
0168f1d0  adrp x1,0x5773000
0168f1d4  adrp x3,0x736d000
0168f1d8  add x1,x1,#0x81d
0168f1dc  add x3,x3,#0x101
0168f1e0  add x0,sp,#0x10
0168f1e4  mov x2,sp
0168f1e8  bl 0x017571ac
0168f1ec  ldr x0,[sp, #0x10]
0168f1f0  mov w1,#0x10
0168f1f4  bl 0x0124cba0
0168f1f8  adrp x8,0x1757000
0168f1fc  dup v0.2D,xzr
0168f200  add x8,x8,#0x194
0168f204  mov v0.D[0x0],x8
0168f208  str q0,[x0]
0168f20c  ldr x0,[sp, #0x10]
0168f210  adrp x1,0x1757000
0168f214  add x1,x1,#0x570
0168f218  mov w2,#0x1
0168f21c  bl 0x0124ec90
0168f220  ldr x0,[sp, #0x10]
0168f224  mov w1,#0xffffffff
0168f228  bl 0x0124c0c0
0168f22c  ldr x19,[sp, #0x10]
0168f230  orr w1,wzr,#0xfffffffb
0168f234  mov w2,#0x6e7
0168f238  mov x0,x19
0168f23c  bl 0x0124a650
0168f240  orr w1,wzr,#0xfffffffe
0168f244  mov x0,x19
0168f248  bl 0x0124c0c0
0168f24c  orr w1,wzr,#0xfffffffe
0168f250  mov x0,x19
0168f254  bl 0x0124e920
0168f258  mov w20,w0
0168f25c  adrp x1,0x575d000
0168f260  add x1,x1,#0xd80
0168f264  mov x0,x19
0168f268  bl 0x0124f120
0168f26c  orr w1,wzr,#0xfffffffe
0168f270  mov w2,#0x1
0168f274  mov x0,x19
0168f278  bl 0x0124cfc0
0168f27c  mov x0,x19
0168f280  mov w1,w20
0168f284  bl 0x0124e060
0168f288  orr w1,wzr,#0xfffffffd
0168f28c  mov x0,x19
0168f290  bl 0x0124c4d0
0168f294  ldr x19,[sp, #0x10]
0168f298  orr w1,wzr,#0xfffffffd
0168f29c  mov w2,#0x6e7
0168f2a0  mov x0,x19
0168f2a4  bl 0x0124a650
0168f2a8  orr w1,wzr,#0xfffffffe
0168f2ac  mov x0,x19
0168f2b0  bl 0x0124c0c0
0168f2b4  orr w1,wzr,#0xfffffffe
0168f2b8  mov x0,x19
0168f2bc  bl 0x0124e920
0168f2c0  mov w20,w0
0168f2c4  adrp x1,0x575d000
0168f2c8  add x1,x1,#0xd80
0168f2cc  mov x0,x19
0168f2d0  bl 0x0124f120
0168f2d4  orr w1,wzr,#0xfffffffe
0168f2d8  mov w2,#0x1
0168f2dc  mov x0,x19
0168f2e0  bl 0x0124cfc0
0168f2e4  mov x0,x19
0168f2e8  mov w1,w20
0168f2ec  bl 0x0124e060
0168f2f0  orr w1,wzr,#0xfffffffd
0168f2f4  mov x0,x19
0168f2f8  bl 0x0124c4d0
0168f2fc  ldr x0,[sp, #0x10]
0168f300  mov w1,#0x10
0168f304  bl 0x0124cba0
0168f308  adrp x8,0x1757000
0168f30c  dup v0.2D,xzr
0168f310  add x8,x8,#0x19c
0168f314  mov v0.D[0x0],x8
0168f318  str q0,[x0]
0168f31c  ldr x0,[sp, #0x10]
0168f320  adrp x1,0x1757000
0168f324  add x1,x1,#0x694
0168f328  mov w2,#0x1
0168f32c  bl 0x0124ec90
0168f330  ldr x0,[sp, #0x10]
0168f334  mov w1,#0xffffffff
0168f338  bl 0x0124c0c0
0168f33c  ldr x19,[sp, #0x10]
0168f340  orr w1,wzr,#0xfffffffb
0168f344  mov w2,#0x6e7
0168f348  mov x0,x19
0168f34c  bl 0x0124a650
0168f350  orr w1,wzr,#0xfffffffe
0168f354  mov x0,x19
0168f358  bl 0x0124c0c0
0168f35c  orr w1,wzr,#0xfffffffe
0168f360  mov x0,x19
0168f364  bl 0x0124e920
0168f368  mov w20,w0
0168f36c  adrp x1,0x575d000
0168f370  add x1,x1,#0xd8c
0168f374  mov x0,x19
0168f378  bl 0x0124f120
0168f37c  orr w1,wzr,#0xfffffffe
0168f380  mov w2,#0x1
0168f384  mov x0,x19
0168f388  bl 0x0124cfc0
0168f38c  mov x0,x19
0168f390  mov w1,w20
0168f394  bl 0x0124e060
0168f398  orr w1,wzr,#0xfffffffd
0168f39c  mov x0,x19
0168f3a0  bl 0x0124c4d0
0168f3a4  ldr x19,[sp, #0x10]
0168f3a8  orr w1,wzr,#0xfffffffd
0168f3ac  mov w2,#0x6e7
0168f3b0  mov x0,x19
0168f3b4  bl 0x0124a650
0168f3b8  orr w1,wzr,#0xfffffffe
0168f3bc  mov x0,x19
0168f3c0  bl 0x0124c0c0
0168f3c4  orr w1,wzr,#0xfffffffe
0168f3c8  mov x0,x19
0168f3cc  bl 0x0124e920
0168f3d0  mov w20,w0
0168f3d4  adrp x1,0x575d000
0168f3d8  add x1,x1,#0xd8c
0168f3dc  mov x0,x19
0168f3e0  bl 0x0124f120
0168f3e4  orr w1,wzr,#0xfffffffe
0168f3e8  mov w2,#0x1
0168f3ec  mov x0,x19
0168f3f0  bl 0x0124cfc0
0168f3f4  mov x0,x19
0168f3f8  mov w1,w20
0168f3fc  bl 0x0124e060
0168f400  orr w1,wzr,#0xfffffffd
0168f404  mov x0,x19
0168f408  bl 0x0124c4d0
0168f40c  ldr x0,[sp, #0x10]
0168f410  mov w1,#0x10
0168f414  bl 0x0124cba0
0168f418  adrp x8,0x1757000
0168f41c  dup v0.2D,xzr
0168f420  add x8,x8,#0x1a4
0168f424  mov v0.D[0x0],x8
0168f428  str q0,[x0]
0168f42c  ldr x0,[sp, #0x10]
0168f430  adrp x1,0x1757000
0168f434  add x1,x1,#0x7b8
0168f438  mov w2,#0x1
0168f43c  bl 0x0124ec90
0168f440  ldr x0,[sp, #0x10]
0168f444  mov w1,#0xffffffff
0168f448  bl 0x0124c0c0
0168f44c  ldr x19,[sp, #0x10]
0168f450  orr w1,wzr,#0xfffffffb
0168f454  mov w2,#0x6e7
0168f458  mov x0,x19
0168f45c  bl 0x0124a650
0168f460  orr w1,wzr,#0xfffffffe
0168f464  mov x0,x19
0168f468  bl 0x0124c0c0
0168f46c  orr w1,wzr,#0xfffffffe
0168f470  mov x0,x19
0168f474  bl 0x0124e920
0168f478  mov w20,w0
0168f47c  adrp x1,0x575d000
0168f480  add x1,x1,#0xd95
0168f484  mov x0,x19
0168f488  bl 0x0124f120
0168f48c  orr w1,wzr,#0xfffffffe
0168f490  mov w2,#0x1
0168f494  mov x0,x19
0168f498  bl 0x0124cfc0
0168f49c  mov x0,x19
0168f4a0  mov w1,w20
0168f4a4  bl 0x0124e060
0168f4a8  orr w1,wzr,#0xfffffffd
0168f4ac  mov x0,x19
0168f4b0  bl 0x0124c4d0
0168f4b4  ldr x19,[sp, #0x10]
0168f4b8  orr w1,wzr,#0xfffffffd
0168f4bc  mov w2,#0x6e7
0168f4c0  mov x0,x19
0168f4c4  bl 0x0124a650
0168f4c8  orr w1,wzr,#0xfffffffe
0168f4cc  mov x0,x19
0168f4d0  bl 0x0124c0c0
0168f4d4  orr w1,wzr,#0xfffffffe
0168f4d8  mov x0,x19
0168f4dc  bl 0x0124e920
0168f4e0  mov w20,w0
0168f4e4  adrp x1,0x575d000
0168f4e8  add x1,x1,#0xd95
0168f4ec  mov x0,x19
0168f4f0  bl 0x0124f120
0168f4f4  orr w1,wzr,#0xfffffffe
0168f4f8  mov w2,#0x1
0168f4fc  mov x0,x19
0168f500  bl 0x0124cfc0
0168f504  mov x0,x19
0168f508  mov w1,w20
0168f50c  bl 0x0124e060
0168f510  orr w1,wzr,#0xfffffffd
0168f514  mov x0,x19
0168f518  bl 0x0124c4d0
0168f51c  ldr w8,[sp, #0x18]
0168f520  ldr x0,[sp, #0x10]
0168f524  sub w8,w8,#0x3
0168f528  str w8,[sp, #0x18]
0168f52c  orr w1,wzr,#0xfffffffc
0168f530  bl 0x0124c4d0
0168f534  ldr w8,[sp, #0x18]
0168f538  ldr x0,[sp, #0x10]
0168f53c  str wzr,[sp, #0x18]
0168f540  cmp w8,#0x1
0168f544  b.lt 0x0168f568
0168f548  mvn w1,w8
0168f54c  bl 0x0124c4d0
0168f550  ldr w8,[sp, #0x18]
0168f554  cmp w8,#0x1
0168f558  b.lt 0x0168f568
0168f55c  ldr x0,[sp, #0x10]
0168f560  mvn w1,w8
0168f564  bl 0x0124c4d0
0168f568  ldr w8,[sp, #0x8]
0168f56c  cmp w8,#0x1
0168f570  b.lt 0x0168f580
0168f574  ldr x0,[sp]
0168f578  mvn w1,w8
0168f57c  bl 0x0124c4d0
0168f580  ldp x29,x30,[sp, #0x30]
0168f584  ldp x20,x19,[sp, #0x20]
0168f588  add sp,sp,#0x40
0168f58c  ret
