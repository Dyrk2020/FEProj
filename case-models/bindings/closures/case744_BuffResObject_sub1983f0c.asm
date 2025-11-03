// ===== case744_BuffResObject_sub1983f0c @ 01983f0c (DecompileAt3: cleared stale instructions at entry) =====
01983f0c  stp x20,x19,[sp, #-0x20]!
01983f10  stp x29,x30,[sp, #0x10]
01983f14  add x29,sp,#0x10
01983f18  mov w1,#0x1
01983f1c  mov x19,x0
01983f20  bl 0x0124ff50
01983f24  cbz w0,0x01983f50
01983f28  adrp x2,0x736d000
01983f2c  adrp x3,0x736d000
01983f30  add x2,x2,#0xcfd
01983f34  add x3,x3,#0xcfc
01983f38  mov w1,#0x1
01983f3c  mov w4,#0x1
01983f40  mov x0,x19
01983f44  bl 0x0174b938
01983f48  ldr x20,[x0, #0x8]
01983f4c  b 0x01983f54
01983f50  mov x20,xzr
01983f54  mov w1,#0xb9d7
01983f58  movk w1,#0xfff0, LSL #16
01983f5c  mov x0,x19
01983f60  bl 0x0124e990
01983f64  mov x2,x0
01983f68  mov x0,x19
01983f6c  mov x1,x20
01983f70  bl 0x01983f80
01983f74  ldp x29,x30,[sp, #0x10]
01983f78  ldp x20,x19,[sp], #0x20
01983f7c  ret
