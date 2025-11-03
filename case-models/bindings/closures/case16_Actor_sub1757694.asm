// ===== case16_Actor_sub1757694 @ 01757694 (DecompileAt3: cleared stale instructions at entry) =====
01757694  stp x20,x19,[sp, #-0x20]!
01757698  stp x29,x30,[sp, #0x10]
0175769c  add x29,sp,#0x10
017576a0  mov w1,#0x1
017576a4  mov x19,x0
017576a8  bl 0x0124ff50
017576ac  cbz w0,0x017576d8
017576b0  adrp x2,0x736d000
017576b4  adrp x3,0x736d000
017576b8  add x2,x2,#0x198
017576bc  add x3,x3,#0x180
017576c0  mov w1,#0x1
017576c4  mov w4,#0x1
017576c8  mov x0,x19
017576cc  bl 0x0174b938
017576d0  ldr x20,[x0, #0x8]
017576d4  b 0x017576dc
017576d8  mov x20,xzr
017576dc  mov w1,#0xb9d7
017576e0  movk w1,#0xfff0, LSL #16
017576e4  mov x0,x19
017576e8  bl 0x0124e990
017576ec  mov x2,x0
017576f0  mov x0,x19
017576f4  mov x1,x20
017576f8  bl 0x01757708
017576fc  ldp x29,x30,[sp, #0x10]
01757700  ldp x20,x19,[sp], #0x20
01757704  ret
