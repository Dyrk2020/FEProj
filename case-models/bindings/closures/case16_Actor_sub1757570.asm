// ===== case16_Actor_sub1757570 @ 01757570 (DecompileAt3: cleared stale instructions at entry) =====
01757570  stp x20,x19,[sp, #-0x20]!
01757574  stp x29,x30,[sp, #0x10]
01757578  add x29,sp,#0x10
0175757c  mov w1,#0x1
01757580  mov x19,x0
01757584  bl 0x0124ff50
01757588  cbz w0,0x017575b4
0175758c  adrp x2,0x736d000
01757590  adrp x3,0x736d000
01757594  add x2,x2,#0x198
01757598  add x3,x3,#0x180
0175759c  mov w1,#0x1
017575a0  mov w4,#0x1
017575a4  mov x0,x19
017575a8  bl 0x0174b938
017575ac  ldr x20,[x0, #0x8]
017575b0  b 0x017575b8
017575b4  mov x20,xzr
017575b8  mov w1,#0xb9d7
017575bc  movk w1,#0xfff0, LSL #16
017575c0  mov x0,x19
017575c4  bl 0x0124e990
017575c8  mov x2,x0
017575cc  mov x0,x19
017575d0  mov x1,x20
017575d4  bl 0x017575e4
017575d8  ldp x29,x30,[sp, #0x10]
017575dc  ldp x20,x19,[sp], #0x20
017575e0  ret
