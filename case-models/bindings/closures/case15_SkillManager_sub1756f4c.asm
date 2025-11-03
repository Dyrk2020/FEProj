// ===== case15_SkillManager_sub1756f4c @ 01756f4c (DecompileAt3: cleared stale instructions at entry) =====
01756f4c  stp x20,x19,[sp, #-0x20]!
01756f50  stp x29,x30,[sp, #0x10]
01756f54  add x29,sp,#0x10
01756f58  mov w1,#0x1
01756f5c  mov x19,x0
01756f60  bl 0x0124ff50
01756f64  cbz w0,0x01756f90
01756f68  adrp x2,0x736d000
01756f6c  adrp x3,0x736d000
01756f70  add x2,x2,#0x22a
01756f74  add x3,x3,#0x229
01756f78  mov w1,#0x1
01756f7c  mov w4,#0x1
01756f80  mov x0,x19
01756f84  bl 0x0174b938
01756f88  ldr x20,[x0, #0x8]
01756f8c  b 0x01756f94
01756f90  mov x20,xzr
01756f94  mov w1,#0xb9d7
01756f98  movk w1,#0xfff0, LSL #16
01756f9c  mov x0,x19
01756fa0  bl 0x0124e990
01756fa4  mov x2,x0
01756fa8  mov x0,x19
01756fac  mov x1,x20
01756fb0  bl 0x01756fc0
01756fb4  ldp x29,x30,[sp, #0x10]
01756fb8  ldp x20,x19,[sp], #0x20
01756fbc  ret
