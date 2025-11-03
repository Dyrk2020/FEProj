// ===== case303-AICtrlCfgResObject @ 016bf330 =====
// existing function case303-AICtrlCfgResObject
016bf330  sub sp,sp,#0x40
016bf334  stp x20,x19,[sp, #0x20]
016bf338  stp x29,x30,[sp, #0x30]
016bf33c  add x29,sp,#0x30
016bf340  adrp x1,0x174a000
016bf344  add x1,x1,#0x87c
016bf348  mov x19,x0
016bf34c  bl 0x0124ba40
016bf350  adrp x1,0x575d000
016bf354  add x1,x1,#0xa06
016bf358  mov x0,x19
016bf35c  str x19,[sp]
016bf360  bl 0x01251aa0
016bf364  mov w8,#0x1
016bf368  str w8,[sp, #0x8]
016bf36c  mov x0,sp
016bf370  bl 0x0174aa04
016bf374  adrp x1,0x5762000
016bf378  adrp x3,0x736d000
016bf37c  add x1,x1,#0x74a
016bf380  add x3,x3,#0x101
016bf384  add x0,sp,#0x10
016bf388  mov x2,sp
016bf38c  bl 0x017f70ec
016bf390  ldr x0,[sp, #0x10]
016bf394  mov w1,#0x10
016bf398  bl 0x0124cba0
016bf39c  adrp x8,0x17f7000
016bf3a0  dup v0.2D,xzr
016bf3a4  add x8,x8,#0xe4
016bf3a8  mov v0.D[0x0],x8
016bf3ac  str q0,[x0]
016bf3b0  ldr x0,[sp, #0x10]
016bf3b4  adrp x1,0x17f7000
016bf3b8  add x1,x1,#0x4b0
016bf3bc  mov w2,#0x1
016bf3c0  bl 0x0124ec90
016bf3c4  ldr x0,[sp, #0x10]
016bf3c8  mov w1,#0xffffffff
016bf3cc  bl 0x0124c0c0
016bf3d0  ldr x19,[sp, #0x10]
016bf3d4  orr w1,wzr,#0xfffffffb
016bf3d8  mov w2,#0x6e7
016bf3dc  mov x0,x19
016bf3e0  bl 0x0124a650
016bf3e4  orr w1,wzr,#0xfffffffe
016bf3e8  mov x0,x19
016bf3ec  bl 0x0124c0c0
016bf3f0  orr w1,wzr,#0xfffffffe
016bf3f4  mov x0,x19
016bf3f8  bl 0x0124e920
016bf3fc  mov w20,w0
016bf400  adrp x1,0x5762000
016bf404  add x1,x1,#0x75d
016bf408  mov x0,x19
016bf40c  bl 0x0124f120
016bf410  orr w1,wzr,#0xfffffffe
016bf414  mov w2,#0x1
016bf418  mov x0,x19
016bf41c  bl 0x0124cfc0
016bf420  mov x0,x19
016bf424  mov w1,w20
016bf428  bl 0x0124e060
016bf42c  orr w1,wzr,#0xfffffffd
016bf430  mov x0,x19
016bf434  bl 0x0124c4d0
016bf438  ldr x19,[sp, #0x10]
016bf43c  orr w1,wzr,#0xfffffffd
016bf440  mov w2,#0x6e7
016bf444  mov x0,x19
016bf448  bl 0x0124a650
016bf44c  orr w1,wzr,#0xfffffffe
016bf450  mov x0,x19
016bf454  bl 0x0124c0c0
016bf458  orr w1,wzr,#0xfffffffe
016bf45c  mov x0,x19
016bf460  bl 0x0124e920
016bf464  mov w20,w0
016bf468  adrp x1,0x5762000
016bf46c  add x1,x1,#0x75d
016bf470  mov x0,x19
016bf474  bl 0x0124f120
016bf478  orr w1,wzr,#0xfffffffe
016bf47c  mov w2,#0x1
016bf480  mov x0,x19
016bf484  bl 0x0124cfc0
016bf488  mov x0,x19
016bf48c  mov w1,w20
016bf490  bl 0x0124e060
016bf494  orr w1,wzr,#0xfffffffd
016bf498  mov x0,x19
016bf49c  bl 0x0124c4d0
016bf4a0  ldr w8,[sp, #0x18]
016bf4a4  ldr x0,[sp, #0x10]
016bf4a8  sub w8,w8,#0x3
016bf4ac  str w8,[sp, #0x18]
016bf4b0  orr w1,wzr,#0xfffffffc
016bf4b4  bl 0x0124c4d0
016bf4b8  ldr w8,[sp, #0x18]
016bf4bc  ldr x0,[sp, #0x10]
016bf4c0  str wzr,[sp, #0x18]
016bf4c4  cmp w8,#0x1
016bf4c8  b.lt 0x016bf4ec
016bf4cc  mvn w1,w8
016bf4d0  bl 0x0124c4d0
016bf4d4  ldr w8,[sp, #0x18]
016bf4d8  cmp w8,#0x1
016bf4dc  b.lt 0x016bf4ec
016bf4e0  ldr x0,[sp, #0x10]
016bf4e4  mvn w1,w8
016bf4e8  bl 0x0124c4d0
016bf4ec  ldr w8,[sp, #0x8]
016bf4f0  cmp w8,#0x1
016bf4f4  b.lt 0x016bf504
016bf4f8  ldr x0,[sp]
016bf4fc  mvn w1,w8
016bf500  bl 0x0124c4d0
016bf504  ldp x29,x30,[sp, #0x30]
016bf508  ldp x20,x19,[sp, #0x20]
016bf50c  add sp,sp,#0x40
016bf510  ret
