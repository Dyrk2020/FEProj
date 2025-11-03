// ===== case84-ChampionSpellBookCareerTagResObject @ 0169a2d0 =====
// existing function case84-ChampionSpellBookCareerTagResObject
0169a2d0  sub sp,sp,#0x40
0169a2d4  stp x20,x19,[sp, #0x20]
0169a2d8  stp x29,x30,[sp, #0x30]
0169a2dc  add x29,sp,#0x30
0169a2e0  adrp x1,0x174a000
0169a2e4  add x1,x1,#0x87c
0169a2e8  mov x19,x0
0169a2ec  bl 0x0124ba40
0169a2f0  adrp x1,0x575d000
0169a2f4  add x1,x1,#0xa06
0169a2f8  mov x0,x19
0169a2fc  str x19,[sp]
0169a300  bl 0x01251aa0
0169a304  mov w8,#0x1
0169a308  str w8,[sp, #0x8]
0169a30c  mov x0,sp
0169a310  bl 0x0174aa04
0169a314  adrp x1,0x575e000
0169a318  adrp x3,0x736d000
0169a31c  add x1,x1,#0xfd8
0169a320  add x3,x3,#0x101
0169a324  add x0,sp,#0x10
0169a328  mov x2,sp
0169a32c  bl 0x0177faa0
0169a330  ldr x0,[sp, #0x10]
0169a334  mov w1,#0x10
0169a338  bl 0x0124cba0
0169a33c  adrp x8,0x177f000
0169a340  dup v0.2D,xzr
0169a344  add x8,x8,#0xa98
0169a348  mov v0.D[0x0],x8
0169a34c  str q0,[x0]
0169a350  ldr x0,[sp, #0x10]
0169a354  adrp x1,0x177f000
0169a358  add x1,x1,#0xe64
0169a35c  mov w2,#0x1
0169a360  bl 0x0124ec90
0169a364  ldr x0,[sp, #0x10]
0169a368  mov w1,#0xffffffff
0169a36c  bl 0x0124c0c0
0169a370  ldr x19,[sp, #0x10]
0169a374  orr w1,wzr,#0xfffffffb
0169a378  mov w2,#0x6e7
0169a37c  mov x0,x19
0169a380  bl 0x0124a650
0169a384  orr w1,wzr,#0xfffffffe
0169a388  mov x0,x19
0169a38c  bl 0x0124c0c0
0169a390  orr w1,wzr,#0xfffffffe
0169a394  mov x0,x19
0169a398  bl 0x0124e920
0169a39c  mov w20,w0
0169a3a0  adrp x1,0x5765000
0169a3a4  add x1,x1,#0x66c
0169a3a8  mov x0,x19
0169a3ac  bl 0x0124f120
0169a3b0  orr w1,wzr,#0xfffffffe
0169a3b4  mov w2,#0x1
0169a3b8  mov x0,x19
0169a3bc  bl 0x0124cfc0
0169a3c0  mov x0,x19
0169a3c4  mov w1,w20
0169a3c8  bl 0x0124e060
0169a3cc  orr w1,wzr,#0xfffffffd
0169a3d0  mov x0,x19
0169a3d4  bl 0x0124c4d0
0169a3d8  ldr x19,[sp, #0x10]
0169a3dc  orr w1,wzr,#0xfffffffd
0169a3e0  mov w2,#0x6e7
0169a3e4  mov x0,x19
0169a3e8  bl 0x0124a650
0169a3ec  orr w1,wzr,#0xfffffffe
0169a3f0  mov x0,x19
0169a3f4  bl 0x0124c0c0
0169a3f8  orr w1,wzr,#0xfffffffe
0169a3fc  mov x0,x19
0169a400  bl 0x0124e920
0169a404  mov w20,w0
0169a408  adrp x1,0x5765000
0169a40c  add x1,x1,#0x66c
0169a410  mov x0,x19
0169a414  bl 0x0124f120
0169a418  orr w1,wzr,#0xfffffffe
0169a41c  mov w2,#0x1
0169a420  mov x0,x19
0169a424  bl 0x0124cfc0
0169a428  mov x0,x19
0169a42c  mov w1,w20
0169a430  bl 0x0124e060
0169a434  orr w1,wzr,#0xfffffffd
0169a438  mov x0,x19
0169a43c  bl 0x0124c4d0
0169a440  ldr w8,[sp, #0x18]
0169a444  ldr x0,[sp, #0x10]
0169a448  sub w8,w8,#0x3
0169a44c  str w8,[sp, #0x18]
0169a450  orr w1,wzr,#0xfffffffc
0169a454  bl 0x0124c4d0
0169a458  ldr w8,[sp, #0x18]
0169a45c  ldr x0,[sp, #0x10]
0169a460  str wzr,[sp, #0x18]
0169a464  cmp w8,#0x1
0169a468  b.lt 0x0169a48c
0169a46c  mvn w1,w8
0169a470  bl 0x0124c4d0
0169a474  ldr w8,[sp, #0x18]
0169a478  cmp w8,#0x1
0169a47c  b.lt 0x0169a48c
0169a480  ldr x0,[sp, #0x10]
0169a484  mvn w1,w8
0169a488  bl 0x0124c4d0
0169a48c  ldr w8,[sp, #0x8]
0169a490  cmp w8,#0x1
0169a494  b.lt 0x0169a4a4
0169a498  ldr x0,[sp]
0169a49c  mvn w1,w8
0169a4a0  bl 0x0124c4d0
0169a4a4  ldp x29,x30,[sp, #0x30]
0169a4a8  ldp x20,x19,[sp, #0x20]
0169a4ac  add sp,sp,#0x40
0169a4b0  ret
