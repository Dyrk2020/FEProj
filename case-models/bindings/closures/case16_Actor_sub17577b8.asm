// ===== case16_Actor_sub17577b8 @ 017577b8 (DecompileAt3: cleared stale instructions at entry) =====
017577b8  stp x20,x19,[sp, #-0x20]!
017577bc  stp x29,x30,[sp, #0x10]
017577c0  add x29,sp,#0x10
017577c4  mov w1,#0x1
017577c8  mov x19,x0
017577cc  bl 0x0124ff50
017577d0  cbz w0,0x017577fc
017577d4  adrp x2,0x736d000
017577d8  adrp x3,0x736d000
017577dc  add x2,x2,#0x198
017577e0  add x3,x3,#0x180
017577e4  mov w1,#0x1
017577e8  mov w4,#0x1
017577ec  mov x0,x19
017577f0  bl 0x0174b938
017577f4  ldr x20,[x0, #0x8]
017577f8  b 0x01757800
017577fc  mov x20,xzr
01757800  mov w1,#0xb9d7
01757804  movk w1,#0xfff0, LSL #16
01757808  mov x0,x19
0175780c  bl 0x0124e990
01757810  mov x2,x0
01757814  mov x0,x19
01757818  mov x1,x20
0175781c  bl 0x0175782c
01757820  ldp x29,x30,[sp, #0x10]
01757824  ldp x20,x19,[sp], #0x20
01757828  ret
