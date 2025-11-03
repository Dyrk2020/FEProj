// ===== case823_ActorBuff_sub19cef28 @ 019cef28 (DecompileAt3: cleared stale instructions at entry) =====
019cef28  stp x20,x19,[sp, #-0x20]!
019cef2c  stp x29,x30,[sp, #0x10]
019cef30  add x29,sp,#0x10
019cef34  mov w1,#0x1
019cef38  mov x19,x0
019cef3c  bl 0x0124ff50
019cef40  cbz w0,0x019cef6c
019cef44  adrp x2,0x736d000
019cef48  adrp x3,0x736d000
019cef4c  add x2,x2,#0x899
019cef50  add x3,x3,#0x898
019cef54  mov w1,#0x1
019cef58  mov w4,#0x1
019cef5c  mov x0,x19
019cef60  bl 0x0174b938
019cef64  ldr x20,[x0, #0x8]
019cef68  b 0x019cef70
019cef6c  mov x20,xzr
019cef70  mov w1,#0xb9d7
019cef74  movk w1,#0xfff0, LSL #16
019cef78  mov x0,x19
019cef7c  bl 0x0124e990
019cef80  mov x2,x0
019cef84  mov x0,x19
019cef88  mov x1,x20
019cef8c  bl 0x019cef9c
019cef90  ldp x29,x30,[sp, #0x10]
019cef94  ldp x20,x19,[sp], #0x20
019cef98  ret
