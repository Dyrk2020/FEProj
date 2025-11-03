// ===== case339_EventManagerAdapter_sub1812f40 @ 01812f40 (DecompileAt3: cleared stale instructions at entry) =====
01812f40  stp x20,x19,[sp, #-0x20]!
01812f44  stp x29,x30,[sp, #0x10]
01812f48  add x29,sp,#0x10
01812f4c  mov w1,#0x1
01812f50  mov x19,x0
01812f54  bl 0x0124ff50
01812f58  cbz w0,0x01812f84
01812f5c  adrp x2,0x736d000
01812f60  adrp x3,0x736d000
01812f64  add x2,x2,#0x71d
01812f68  add x3,x3,#0x71c
01812f6c  mov w1,#0x1
01812f70  mov w4,#0x1
01812f74  mov x0,x19
01812f78  bl 0x0174b938
01812f7c  ldr x20,[x0, #0x8]
01812f80  b 0x01812f88
01812f84  mov x20,xzr
01812f88  mov w1,#0xb9d7
01812f8c  movk w1,#0xfff0, LSL #16
01812f90  mov x0,x19
01812f94  bl 0x0124e990
01812f98  mov x2,x0
01812f9c  mov x0,x19
01812fa0  mov x1,x20
01812fa4  bl 0x01812fb4
01812fa8  ldp x29,x30,[sp, #0x10]
01812fac  ldp x20,x19,[sp], #0x20
01812fb0  ret
