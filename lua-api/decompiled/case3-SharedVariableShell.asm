// ===== case3-SharedVariableShell @ 0168d12c =====
// existing function case3-SharedVariableShell
0168d12c  sub sp,sp,#0x40
0168d130  stp x20,x19,[sp, #0x20]
0168d134  stp x29,x30,[sp, #0x30]
0168d138  add x29,sp,#0x30
0168d13c  adrp x1,0x174a000
0168d140  add x1,x1,#0x87c
0168d144  mov x19,x0
0168d148  bl 0x0124ba40
0168d14c  adrp x1,0x575d000
0168d150  add x1,x1,#0xa06
0168d154  mov x0,x19
0168d158  str x19,[sp]
0168d15c  bl 0x01251aa0
0168d160  mov w8,#0x1
0168d164  str w8,[sp, #0x8]
0168d168  mov x0,sp
0168d16c  bl 0x0174aa04
0168d170  adrp x1,0x575d000
0168d174  adrp x3,0x736d000
0168d178  add x1,x1,#0xb92
0168d17c  add x3,x3,#0x101
0168d180  add x0,sp,#0x10
0168d184  mov x2,sp
0168d188  bl 0x01750230
0168d18c  ldr x0,[sp, #0x10]
0168d190  mov w1,#0x10
0168d194  bl 0x0124cba0
0168d198  adrp x8,0x174e000
0168d19c  dup v0.2D,xzr
0168d1a0  add x8,x8,#0x2c4
0168d1a4  mov v0.D[0x0],x8
0168d1a8  str q0,[x0]
0168d1ac  ldr x0,[sp, #0x10]
0168d1b0  adrp x1,0x1750000
0168d1b4  add x1,x1,#0x5f4
0168d1b8  mov w2,#0x1
0168d1bc  bl 0x0124ec90
0168d1c0  ldr x0,[sp, #0x10]
0168d1c4  mov w1,#0xffffffff
0168d1c8  bl 0x0124c0c0
0168d1cc  ldr x19,[sp, #0x10]
0168d1d0  orr w1,wzr,#0xfffffffb
0168d1d4  mov w2,#0x6e7
0168d1d8  mov x0,x19
0168d1dc  bl 0x0124a650
0168d1e0  orr w1,wzr,#0xfffffffe
0168d1e4  mov x0,x19
0168d1e8  bl 0x0124c0c0
0168d1ec  orr w1,wzr,#0xfffffffe
0168d1f0  mov x0,x19
0168d1f4  bl 0x0124e920
0168d1f8  mov w20,w0
0168d1fc  adrp x1,0x575d000
0168d200  add x1,x1,#0xba6
0168d204  mov x0,x19
0168d208  bl 0x0124f120
0168d20c  orr w1,wzr,#0xfffffffe
0168d210  mov w2,#0x1
0168d214  mov x0,x19
0168d218  bl 0x0124cfc0
0168d21c  mov x0,x19
0168d220  mov w1,w20
0168d224  bl 0x0124e060
0168d228  orr w1,wzr,#0xfffffffd
0168d22c  mov x0,x19
0168d230  bl 0x0124c4d0
0168d234  ldr x19,[sp, #0x10]
0168d238  orr w1,wzr,#0xfffffffd
0168d23c  mov w2,#0x6e7
0168d240  mov x0,x19
0168d244  bl 0x0124a650
0168d248  orr w1,wzr,#0xfffffffe
0168d24c  mov x0,x19
0168d250  bl 0x0124c0c0
0168d254  orr w1,wzr,#0xfffffffe
0168d258  mov x0,x19
0168d25c  bl 0x0124e920
0168d260  mov w20,w0
0168d264  adrp x1,0x575d000
0168d268  add x1,x1,#0xba6
0168d26c  mov x0,x19
0168d270  bl 0x0124f120
0168d274  orr w1,wzr,#0xfffffffe
0168d278  mov w2,#0x1
0168d27c  mov x0,x19
0168d280  bl 0x0124cfc0
0168d284  mov x0,x19
0168d288  mov w1,w20
0168d28c  bl 0x0124e060
0168d290  orr w1,wzr,#0xfffffffd
0168d294  mov x0,x19
0168d298  bl 0x0124c4d0
0168d29c  ldr x0,[sp, #0x10]
0168d2a0  mov w1,#0x10
0168d2a4  bl 0x0124cba0
0168d2a8  adrp x8,0x174e000
0168d2ac  dup v0.2D,xzr
0168d2b0  add x8,x8,#0x2cc
0168d2b4  mov v0.D[0x0],x8
0168d2b8  str q0,[x0]
0168d2bc  ldr x0,[sp, #0x10]
0168d2c0  adrp x1,0x1750000
0168d2c4  add x1,x1,#0x718
0168d2c8  mov w2,#0x1
0168d2cc  bl 0x0124ec90
0168d2d0  ldr x0,[sp, #0x10]
0168d2d4  mov w1,#0xffffffff
0168d2d8  bl 0x0124c0c0
0168d2dc  ldr x19,[sp, #0x10]
0168d2e0  orr w1,wzr,#0xfffffffb
0168d2e4  mov w2,#0x6e7
0168d2e8  mov x0,x19
0168d2ec  bl 0x0124a650
0168d2f0  orr w1,wzr,#0xfffffffe
0168d2f4  mov x0,x19
0168d2f8  bl 0x0124c0c0
0168d2fc  orr w1,wzr,#0xfffffffe
0168d300  mov x0,x19
0168d304  bl 0x0124e920
0168d308  mov w20,w0
0168d30c  adrp x1,0x575d000
0168d310  add x1,x1,#0xbae
0168d314  mov x0,x19
0168d318  bl 0x0124f120
0168d31c  orr w1,wzr,#0xfffffffe
0168d320  mov w2,#0x1
0168d324  mov x0,x19
0168d328  bl 0x0124cfc0
0168d32c  mov x0,x19
0168d330  mov w1,w20
0168d334  bl 0x0124e060
0168d338  orr w1,wzr,#0xfffffffd
0168d33c  mov x0,x19
0168d340  bl 0x0124c4d0
0168d344  ldr x19,[sp, #0x10]
0168d348  orr w1,wzr,#0xfffffffd
0168d34c  mov w2,#0x6e7
0168d350  mov x0,x19
0168d354  bl 0x0124a650
0168d358  orr w1,wzr,#0xfffffffe
0168d35c  mov x0,x19
0168d360  bl 0x0124c0c0
0168d364  orr w1,wzr,#0xfffffffe
0168d368  mov x0,x19
0168d36c  bl 0x0124e920
0168d370  mov w20,w0
0168d374  adrp x1,0x575d000
0168d378  add x1,x1,#0xbae
0168d37c  mov x0,x19
0168d380  bl 0x0124f120
0168d384  orr w1,wzr,#0xfffffffe
0168d388  mov w2,#0x1
0168d38c  mov x0,x19
0168d390  bl 0x0124cfc0
0168d394  mov x0,x19
0168d398  mov w1,w20
0168d39c  bl 0x0124e060
0168d3a0  orr w1,wzr,#0xfffffffd
0168d3a4  mov x0,x19
0168d3a8  bl 0x0124c4d0
0168d3ac  ldr x0,[sp, #0x10]
0168d3b0  mov w1,#0x10
0168d3b4  bl 0x0124cba0
0168d3b8  adrp x8,0x174e000
0168d3bc  dup v0.2D,xzr
0168d3c0  add x8,x8,#0x2d4
0168d3c4  mov v0.D[0x0],x8
0168d3c8  str q0,[x0]
0168d3cc  ldr x0,[sp, #0x10]
0168d3d0  adrp x1,0x1750000
0168d3d4  add x1,x1,#0x83c
0168d3d8  mov w2,#0x1
0168d3dc  bl 0x0124ec90
0168d3e0  ldr x0,[sp, #0x10]
0168d3e4  mov w1,#0xffffffff
0168d3e8  bl 0x0124c0c0
0168d3ec  ldr x19,[sp, #0x10]
0168d3f0  orr w1,wzr,#0xfffffffb
0168d3f4  mov w2,#0x6e7
0168d3f8  mov x0,x19
0168d3fc  bl 0x0124a650
0168d400  orr w1,wzr,#0xfffffffe
0168d404  mov x0,x19
0168d408  bl 0x0124c0c0
0168d40c  orr w1,wzr,#0xfffffffe
0168d410  mov x0,x19
0168d414  bl 0x0124e920
0168d418  mov w20,w0
0168d41c  adrp x1,0x575d000
0168d420  add x1,x1,#0xbbe
0168d424  mov x0,x19
0168d428  bl 0x0124f120
0168d42c  orr w1,wzr,#0xfffffffe
0168d430  mov w2,#0x1
0168d434  mov x0,x19
0168d438  bl 0x0124cfc0
0168d43c  mov x0,x19
0168d440  mov w1,w20
0168d444  bl 0x0124e060
0168d448  orr w1,wzr,#0xfffffffd
0168d44c  mov x0,x19
0168d450  bl 0x0124c4d0
0168d454  ldr x19,[sp, #0x10]
0168d458  orr w1,wzr,#0xfffffffd
0168d45c  mov w2,#0x6e7
0168d460  mov x0,x19
0168d464  bl 0x0124a650
0168d468  orr w1,wzr,#0xfffffffe
0168d46c  mov x0,x19
0168d470  bl 0x0124c0c0
0168d474  orr w1,wzr,#0xfffffffe
0168d478  mov x0,x19
0168d47c  bl 0x0124e920
0168d480  mov w20,w0
0168d484  adrp x1,0x575d000
0168d488  add x1,x1,#0xbbe
0168d48c  mov x0,x19
0168d490  bl 0x0124f120
0168d494  orr w1,wzr,#0xfffffffe
0168d498  mov w2,#0x1
0168d49c  mov x0,x19
0168d4a0  bl 0x0124cfc0
0168d4a4  mov x0,x19
0168d4a8  mov w1,w20
0168d4ac  bl 0x0124e060
0168d4b0  orr w1,wzr,#0xfffffffd
0168d4b4  mov x0,x19
0168d4b8  bl 0x0124c4d0
0168d4bc  adrp x1,0x575d000
0168d4c0  adrp x2,0x174e000
0168d4c4  add x1,x1,#0xbc5
0168d4c8  add x2,x2,#0x4c4
0168d4cc  add x0,sp,#0x10
0168d4d0  mov x3,xzr
0168d4d4  mov x4,xzr
0168d4d8  mov x5,xzr
0168d4dc  bl 0x0174e2dc
0168d4e0  adrp x1,0x595c000
0168d4e4  adrp x2,0x174e000
0168d4e8  adrp x4,0x174e000
0168d4ec  add x1,x1,#0x9c4
0168d4f0  add x2,x2,#0x6b4
0168d4f4  add x4,x4,#0x6bc
0168d4f8  mov x3,xzr
0168d4fc  mov x5,xzr
0168d500  bl 0x0174e4cc
0168d504  adrp x1,0x575d000
0168d508  adrp x2,0x174e000
0168d50c  add x1,x1,#0xbd0
0168d510  add x2,x2,#0x6c4
0168d514  mov x3,xzr
0168d518  mov x4,xzr
0168d51c  mov x5,xzr
0168d520  bl 0x0174e2dc
0168d524  adrp x1,0x575d000
0168d528  adrp x2,0x174e000
0168d52c  adrp x4,0x174e000
0168d530  add x1,x1,#0xbdb
0168d534  add x2,x2,#0x6cc
0168d538  add x4,x4,#0x6d4
0168d53c  mov x3,xzr
0168d540  mov x5,xzr
0168d544  bl 0x0174e4cc
0168d548  adrp x2,0x7319000
0168d54c  ldr x2,[x2, #0xda0]
0168d550  adrp x1,0x575d000
0168d554  add x1,x1,#0xbe5
0168d558  mov x3,xzr
0168d55c  bl 0x0174e6dc
0168d560  adrp x2,0x7312000
0168d564  ldr x2,[x2, #0xf0]
0168d568  adrp x1,0x575d000
0168d56c  add x1,x1,#0xbee
0168d570  mov x3,xzr
0168d574  bl 0x0174e958
0168d578  adrp x2,0x7319000
0168d57c  ldr x2,[x2, #0xaa0]
0168d580  adrp x1,0x575d000
0168d584  add x1,x1,#0xbf7
0168d588  mov x3,xzr
0168d58c  bl 0x0174ebd4
0168d590  adrp x2,0x7317000
0168d594  ldr x2,[x2, #0x150]
0168d598  adrp x1,0x575d000
0168d59c  add x1,x1,#0xbfe
0168d5a0  mov x3,xzr
0168d5a4  bl 0x0174ee50
0168d5a8  adrp x2,0x7315000
0168d5ac  ldr x2,[x2, #0xea0]
0168d5b0  adrp x1,0x575d000
0168d5b4  add x1,x1,#0xc05
0168d5b8  mov x3,xzr
0168d5bc  bl 0x0174f0cc
0168d5c0  adrp x2,0x730e000
0168d5c4  ldr x2,[x2, #0x578]
0168d5c8  adrp x1,0x575d000
0168d5cc  add x1,x1,#0xc0e
0168d5d0  mov x3,xzr
0168d5d4  bl 0x0174f348
0168d5d8  adrp x2,0x7317000
0168d5dc  ldr x2,[x2, #0x760]
0168d5e0  adrp x1,0x575d000
0168d5e4  add x1,x1,#0xc17
0168d5e8  mov x3,xzr
0168d5ec  bl 0x0174f5c4
0168d5f0  adrp x2,0x7317000
0168d5f4  ldr x2,[x2, #0xf28]
0168d5f8  adrp x1,0x575d000
0168d5fc  add x1,x1,#0xc27
0168d600  mov x3,xzr
0168d604  bl 0x0174f840
0168d608  adrp x2,0x731b000
0168d60c  ldr x2,[x2, #0x6a8]
0168d610  adrp x1,0x575d000
0168d614  add x1,x1,#0xc37
0168d618  mov x3,xzr
0168d61c  bl 0x0174fabc
0168d620  adrp x2,0x7311000
0168d624  ldr x2,[x2, #0x558]
0168d628  adrp x1,0x575d000
0168d62c  add x1,x1,#0xc3f
0168d630  mov x3,xzr
0168d634  bl 0x0174fd38
0168d638  adrp x2,0x7316000
0168d63c  ldr x2,[x2, #0xc68]
0168d640  adrp x1,0x575d000
0168d644  add x1,x1,#0xc47
0168d648  mov x3,xzr
0168d64c  bl 0x0174ffb4
0168d650  mov x19,x0
0168d654  ldr w8,[x19, #0x8]
0168d658  ldr x0,[x19]
0168d65c  sub w8,w8,#0x3
0168d660  str w8,[x19, #0x8]
0168d664  orr w1,wzr,#0xfffffffc
0168d668  bl 0x0124c4d0
0168d66c  ldr w8,[x19, #0x8]
0168d670  ldr x0,[x19]
0168d674  str wzr,[x19, #0x8]
0168d678  cmp w8,#0x1
0168d67c  b.lt 0x0168d688
0168d680  mvn w1,w8
0168d684  bl 0x0124c4d0
0168d688  ldr w8,[sp, #0x18]
0168d68c  cmp w8,#0x1
0168d690  b.lt 0x0168d6a0
0168d694  ldr x0,[sp, #0x10]
0168d698  mvn w1,w8
0168d69c  bl 0x0124c4d0
0168d6a0  ldr w8,[sp, #0x8]
0168d6a4  cmp w8,#0x1
0168d6a8  b.lt 0x0168d6b8
0168d6ac  ldr x0,[sp]
0168d6b0  mvn w1,w8
0168d6b4  bl 0x0124c4d0
0168d6b8  ldp x29,x30,[sp, #0x30]
0168d6bc  ldp x20,x19,[sp, #0x20]
0168d6c0  add sp,sp,#0x40
0168d6c4  ret
