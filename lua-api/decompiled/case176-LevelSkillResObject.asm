// ===== case176-LevelSkillResObject @ 016ab214 =====
// existing function case176-LevelSkillResObject
016ab214  sub sp,sp,#0x40
016ab218  stp x20,x19,[sp, #0x20]
016ab21c  stp x29,x30,[sp, #0x30]
016ab220  add x29,sp,#0x30
016ab224  adrp x1,0x174a000
016ab228  add x1,x1,#0x87c
016ab22c  mov x19,x0
016ab230  bl 0x0124ba40
016ab234  adrp x1,0x575d000
016ab238  add x1,x1,#0xa06
016ab23c  mov x0,x19
016ab240  str x19,[sp]
016ab244  bl 0x01251aa0
016ab248  mov w8,#0x1
016ab24c  str w8,[sp, #0x8]
016ab250  mov x0,sp
016ab254  bl 0x0174aa04
016ab258  adrp x1,0x5760000
016ab25c  adrp x3,0x736d000
016ab260  add x1,x1,#0x7a8
016ab264  add x3,x3,#0x101
016ab268  add x0,sp,#0x10
016ab26c  mov x2,sp
016ab270  bl 0x017af4c4
016ab274  ldr x0,[sp, #0x10]
016ab278  mov w1,#0x10
016ab27c  bl 0x0124cba0
016ab280  adrp x8,0x17af000
016ab284  dup v0.2D,xzr
016ab288  add x8,x8,#0x4bc
016ab28c  mov v0.D[0x0],x8
016ab290  str q0,[x0]
016ab294  ldr x0,[sp, #0x10]
016ab298  adrp x1,0x17af000
016ab29c  add x1,x1,#0x888
016ab2a0  mov w2,#0x1
016ab2a4  bl 0x0124ec90
016ab2a8  ldr x0,[sp, #0x10]
016ab2ac  mov w1,#0xffffffff
016ab2b0  bl 0x0124c0c0
016ab2b4  ldr x19,[sp, #0x10]
016ab2b8  orr w1,wzr,#0xfffffffb
016ab2bc  mov w2,#0x6e7
016ab2c0  mov x0,x19
016ab2c4  bl 0x0124a650
016ab2c8  orr w1,wzr,#0xfffffffe
016ab2cc  mov x0,x19
016ab2d0  bl 0x0124c0c0
016ab2d4  orr w1,wzr,#0xfffffffe
016ab2d8  mov x0,x19
016ab2dc  bl 0x0124e920
016ab2e0  mov w20,w0
016ab2e4  adrp x1,0x5760000
016ab2e8  add x1,x1,#0x7bc
016ab2ec  mov x0,x19
016ab2f0  bl 0x0124f120
016ab2f4  orr w1,wzr,#0xfffffffe
016ab2f8  mov w2,#0x1
016ab2fc  mov x0,x19
016ab300  bl 0x0124cfc0
016ab304  mov x0,x19
016ab308  mov w1,w20
016ab30c  bl 0x0124e060
016ab310  orr w1,wzr,#0xfffffffd
016ab314  mov x0,x19
016ab318  bl 0x0124c4d0
016ab31c  ldr x19,[sp, #0x10]
016ab320  orr w1,wzr,#0xfffffffd
016ab324  mov w2,#0x6e7
016ab328  mov x0,x19
016ab32c  bl 0x0124a650
016ab330  orr w1,wzr,#0xfffffffe
016ab334  mov x0,x19
016ab338  bl 0x0124c0c0
016ab33c  orr w1,wzr,#0xfffffffe
016ab340  mov x0,x19
016ab344  bl 0x0124e920
016ab348  mov w20,w0
016ab34c  adrp x1,0x5760000
016ab350  add x1,x1,#0x7bc
016ab354  mov x0,x19
016ab358  bl 0x0124f120
016ab35c  orr w1,wzr,#0xfffffffe
016ab360  mov w2,#0x1
016ab364  mov x0,x19
016ab368  bl 0x0124cfc0
016ab36c  mov x0,x19
016ab370  mov w1,w20
016ab374  bl 0x0124e060
016ab378  orr w1,wzr,#0xfffffffd
016ab37c  mov x0,x19
016ab380  bl 0x0124c4d0
016ab384  ldr w8,[sp, #0x18]
016ab388  ldr x0,[sp, #0x10]
016ab38c  sub w8,w8,#0x3
016ab390  str w8,[sp, #0x18]
016ab394  orr w1,wzr,#0xfffffffc
016ab398  bl 0x0124c4d0
016ab39c  ldr w8,[sp, #0x18]
016ab3a0  ldr x0,[sp, #0x10]
016ab3a4  str wzr,[sp, #0x18]
016ab3a8  cmp w8,#0x1
016ab3ac  b.lt 0x016ab3d0
016ab3b0  mvn w1,w8
016ab3b4  bl 0x0124c4d0
016ab3b8  ldr w8,[sp, #0x18]
016ab3bc  cmp w8,#0x1
016ab3c0  b.lt 0x016ab3d0
016ab3c4  ldr x0,[sp, #0x10]
016ab3c8  mvn w1,w8
016ab3cc  bl 0x0124c4d0
016ab3d0  ldr w8,[sp, #0x8]
016ab3d4  cmp w8,#0x1
016ab3d8  b.lt 0x016ab3e8
016ab3dc  ldr x0,[sp]
016ab3e0  mvn w1,w8
016ab3e4  bl 0x0124c4d0
016ab3e8  ldp x29,x30,[sp, #0x30]
016ab3ec  ldp x20,x19,[sp, #0x20]
016ab3f0  add sp,sp,#0x40
016ab3f4  ret
