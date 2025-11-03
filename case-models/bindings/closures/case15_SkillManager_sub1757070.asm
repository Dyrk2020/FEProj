// ===== case15_SkillManager_sub1757070 @ 01757070 (DecompileAt3: cleared stale instructions at entry) =====
01757070  stp x20,x19,[sp, #-0x20]!
01757074  stp x29,x30,[sp, #0x10]
01757078  add x29,sp,#0x10
0175707c  mov w1,#0x1
01757080  mov x19,x0
01757084  bl 0x0124ff50
01757088  cbz w0,0x017570b4
0175708c  adrp x2,0x736d000
01757090  adrp x3,0x736d000
01757094  add x2,x2,#0x22a
01757098  add x3,x3,#0x229
0175709c  mov w1,#0x1
017570a0  mov w4,#0x1
017570a4  mov x0,x19
017570a8  bl 0x0174b938
017570ac  ldr x20,[x0, #0x8]
017570b0  b 0x017570b8
017570b4  mov x20,xzr
017570b8  mov w1,#0xb9d7
017570bc  movk w1,#0xfff0, LSL #16
017570c0  mov x0,x19
017570c4  bl 0x0124e990
017570c8  mov x2,x0
017570cc  mov x0,x19
017570d0  mov x1,x20
017570d4  bl 0x017570e4
017570d8  ldp x29,x30,[sp, #0x10]
017570dc  ldp x20,x19,[sp], #0x20
017570e0  ret
