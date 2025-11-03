// ===== case333-CmdMgr @ 016cd2ec =====
// existing function case333-CmdMgr
016cd2ec  sub sp,sp,#0x40
016cd2f0  stp x20,x19,[sp, #0x20]
016cd2f4  stp x29,x30,[sp, #0x30]
016cd2f8  add x29,sp,#0x30
016cd2fc  adrp x1,0x174a000
016cd300  add x1,x1,#0x87c
016cd304  mov x19,x0
016cd308  bl 0x0124ba40
016cd30c  adrp x1,0x575d000
016cd310  add x1,x1,#0xa06
016cd314  mov x0,x19
016cd318  str x19,[sp]
016cd31c  bl 0x01251aa0
016cd320  mov w8,#0x1
016cd324  str w8,[sp, #0x8]
016cd328  mov x0,sp
016cd32c  bl 0x0174aa04
016cd330  adrp x1,0x5763000
016cd334  adrp x3,0x736d000
016cd338  add x1,x1,#0x88a
016cd33c  add x3,x3,#0x101
016cd340  add x0,sp,#0x10
016cd344  mov x2,sp
016cd348  bl 0x01810cb0
016cd34c  ldr x0,[sp, #0x10]
016cd350  mov w1,#0x10
016cd354  bl 0x0124cba0
016cd358  adrp x8,0x1810000
016cd35c  dup v0.2D,xzr
016cd360  add x8,x8,#0xca8
016cd364  mov v0.D[0x0],x8
016cd368  str q0,[x0]
016cd36c  ldr x0,[sp, #0x10]
016cd370  adrp x1,0x1811000
016cd374  add x1,x1,#0x74
016cd378  mov w2,#0x1
016cd37c  bl 0x0124ec90
016cd380  ldr x0,[sp, #0x10]
016cd384  mov w1,#0xffffffff
016cd388  bl 0x0124c0c0
016cd38c  ldr x19,[sp, #0x10]
016cd390  orr w1,wzr,#0xfffffffb
016cd394  mov w2,#0x6e7
016cd398  mov x0,x19
016cd39c  bl 0x0124a650
016cd3a0  orr w1,wzr,#0xfffffffe
016cd3a4  mov x0,x19
016cd3a8  bl 0x0124c0c0
016cd3ac  orr w1,wzr,#0xfffffffe
016cd3b0  mov x0,x19
016cd3b4  bl 0x0124e920
016cd3b8  mov w20,w0
016cd3bc  adrp x1,0x5763000
016cd3c0  add x1,x1,#0x891
016cd3c4  mov x0,x19
016cd3c8  bl 0x0124f120
016cd3cc  orr w1,wzr,#0xfffffffe
016cd3d0  mov w2,#0x1
016cd3d4  mov x0,x19
016cd3d8  bl 0x0124cfc0
016cd3dc  mov x0,x19
016cd3e0  mov w1,w20
016cd3e4  bl 0x0124e060
016cd3e8  orr w1,wzr,#0xfffffffd
016cd3ec  mov x0,x19
016cd3f0  bl 0x0124c4d0
016cd3f4  ldr x19,[sp, #0x10]
016cd3f8  orr w1,wzr,#0xfffffffd
016cd3fc  mov w2,#0x6e7
016cd400  mov x0,x19
016cd404  bl 0x0124a650
016cd408  orr w1,wzr,#0xfffffffe
016cd40c  mov x0,x19
016cd410  bl 0x0124c0c0
016cd414  orr w1,wzr,#0xfffffffe
016cd418  mov x0,x19
016cd41c  bl 0x0124e920
016cd420  mov w20,w0
016cd424  adrp x1,0x5763000
016cd428  add x1,x1,#0x891
016cd42c  mov x0,x19
016cd430  bl 0x0124f120
016cd434  orr w1,wzr,#0xfffffffe
016cd438  mov w2,#0x1
016cd43c  mov x0,x19
016cd440  bl 0x0124cfc0
016cd444  mov x0,x19
016cd448  mov w1,w20
016cd44c  bl 0x0124e060
016cd450  orr w1,wzr,#0xfffffffd
016cd454  mov x0,x19
016cd458  bl 0x0124c4d0
016cd45c  ldr w8,[sp, #0x18]
016cd460  ldr x0,[sp, #0x10]
016cd464  sub w8,w8,#0x3
016cd468  str w8,[sp, #0x18]
016cd46c  orr w1,wzr,#0xfffffffc
016cd470  bl 0x0124c4d0
016cd474  ldr w8,[sp, #0x18]
016cd478  ldr x0,[sp, #0x10]
016cd47c  str wzr,[sp, #0x18]
016cd480  cmp w8,#0x1
016cd484  b.lt 0x016cd4a8
016cd488  mvn w1,w8
016cd48c  bl 0x0124c4d0
016cd490  ldr w8,[sp, #0x18]
016cd494  cmp w8,#0x1
016cd498  b.lt 0x016cd4a8
016cd49c  ldr x0,[sp, #0x10]
016cd4a0  mvn w1,w8
016cd4a4  bl 0x0124c4d0
016cd4a8  ldr w8,[sp, #0x8]
016cd4ac  cmp w8,#0x1
016cd4b0  b.lt 0x016cd4c0
016cd4b4  ldr x0,[sp]
016cd4b8  mvn w1,w8
016cd4bc  bl 0x0124c4d0
016cd4c0  ldp x29,x30,[sp, #0x30]
016cd4c4  ldp x20,x19,[sp, #0x20]
016cd4c8  add sp,sp,#0x40
016cd4cc  ret
