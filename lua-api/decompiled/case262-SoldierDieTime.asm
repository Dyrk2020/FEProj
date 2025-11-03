// ===== case262-SoldierDieTime @ 016b8b98 =====
// existing function case262-SoldierDieTime
016b8b98  sub sp,sp,#0x40
016b8b9c  stp x20,x19,[sp, #0x20]
016b8ba0  stp x29,x30,[sp, #0x30]
016b8ba4  add x29,sp,#0x30
016b8ba8  adrp x1,0x174a000
016b8bac  add x1,x1,#0x87c
016b8bb0  mov x19,x0
016b8bb4  bl 0x0124ba40
016b8bb8  adrp x1,0x575d000
016b8bbc  add x1,x1,#0xa06
016b8bc0  mov x0,x19
016b8bc4  str x19,[sp]
016b8bc8  bl 0x01251aa0
016b8bcc  mov w8,#0x1
016b8bd0  str w8,[sp, #0x8]
016b8bd4  mov x0,sp
016b8bd8  bl 0x0174aa04
016b8bdc  adrp x1,0x5761000
016b8be0  adrp x3,0x736d000
016b8be4  add x1,x1,#0x6e0
016b8be8  add x3,x3,#0x101
016b8bec  add x0,sp,#0x10
016b8bf0  mov x2,sp
016b8bf4  bl 0x017de6c8
016b8bf8  ldr x0,[sp, #0x10]
016b8bfc  mov w1,#0x10
016b8c00  bl 0x0124cba0
016b8c04  adrp x8,0x17de000
016b8c08  dup v0.2D,xzr
016b8c0c  add x8,x8,#0x4c8
016b8c10  mov v0.D[0x0],x8
016b8c14  str q0,[x0]
016b8c18  ldr x0,[sp, #0x10]
016b8c1c  adrp x1,0x17de000
016b8c20  add x1,x1,#0xa8c
016b8c24  mov w2,#0x1
016b8c28  bl 0x0124ec90
016b8c2c  ldr x0,[sp, #0x10]
016b8c30  mov w1,#0xffffffff
016b8c34  bl 0x0124c0c0
016b8c38  ldr x19,[sp, #0x10]
016b8c3c  orr w1,wzr,#0xfffffffb
016b8c40  mov w2,#0x6e7
016b8c44  mov x0,x19
016b8c48  bl 0x0124a650
016b8c4c  orr w1,wzr,#0xfffffffe
016b8c50  mov x0,x19
016b8c54  bl 0x0124c0c0
016b8c58  orr w1,wzr,#0xfffffffe
016b8c5c  mov x0,x19
016b8c60  bl 0x0124e920
016b8c64  mov w20,w0
016b8c68  adrp x1,0x5761000
016b8c6c  add x1,x1,#0x6ef
016b8c70  mov x0,x19
016b8c74  bl 0x0124f120
016b8c78  orr w1,wzr,#0xfffffffe
016b8c7c  mov w2,#0x1
016b8c80  mov x0,x19
016b8c84  bl 0x0124cfc0
016b8c88  mov x0,x19
016b8c8c  mov w1,w20
016b8c90  bl 0x0124e060
016b8c94  orr w1,wzr,#0xfffffffd
016b8c98  mov x0,x19
016b8c9c  bl 0x0124c4d0
016b8ca0  ldr x19,[sp, #0x10]
016b8ca4  orr w1,wzr,#0xfffffffd
016b8ca8  mov w2,#0x6e7
016b8cac  mov x0,x19
016b8cb0  bl 0x0124a650
016b8cb4  orr w1,wzr,#0xfffffffe
016b8cb8  mov x0,x19
016b8cbc  bl 0x0124c0c0
016b8cc0  orr w1,wzr,#0xfffffffe
016b8cc4  mov x0,x19
016b8cc8  bl 0x0124e920
016b8ccc  mov w20,w0
016b8cd0  adrp x1,0x5761000
016b8cd4  add x1,x1,#0x6ef
016b8cd8  mov x0,x19
016b8cdc  bl 0x0124f120
016b8ce0  orr w1,wzr,#0xfffffffe
016b8ce4  mov w2,#0x1
016b8ce8  mov x0,x19
016b8cec  bl 0x0124cfc0
016b8cf0  mov x0,x19
016b8cf4  mov w1,w20
016b8cf8  bl 0x0124e060
016b8cfc  orr w1,wzr,#0xfffffffd
016b8d00  mov x0,x19
016b8d04  bl 0x0124c4d0
016b8d08  adrp x1,0x5761000
016b8d0c  adrp x2,0x17de000
016b8d10  adrp x4,0x17de000
016b8d14  add x1,x1,#0x6f9
016b8d18  add x2,x2,#0x6b8
016b8d1c  add x4,x4,#0x6c0
016b8d20  add x0,sp,#0x10
016b8d24  mov x3,xzr
016b8d28  mov x5,xzr
016b8d2c  bl 0x017de4d0
016b8d30  mov x19,x0
016b8d34  ldr w8,[x19, #0x8]
016b8d38  ldr x0,[x19]
016b8d3c  sub w8,w8,#0x3
016b8d40  str w8,[x19, #0x8]
016b8d44  orr w1,wzr,#0xfffffffc
016b8d48  bl 0x0124c4d0
016b8d4c  ldr w8,[x19, #0x8]
016b8d50  ldr x0,[x19]
016b8d54  str wzr,[x19, #0x8]
016b8d58  cmp w8,#0x1
016b8d5c  b.lt 0x016b8d68
016b8d60  mvn w1,w8
016b8d64  bl 0x0124c4d0
016b8d68  ldr w8,[sp, #0x18]
016b8d6c  cmp w8,#0x1
016b8d70  b.lt 0x016b8d80
016b8d74  ldr x0,[sp, #0x10]
016b8d78  mvn w1,w8
016b8d7c  bl 0x0124c4d0
016b8d80  ldr w8,[sp, #0x8]
016b8d84  cmp w8,#0x1
016b8d88  b.lt 0x016b8d98
016b8d8c  ldr x0,[sp]
016b8d90  mvn w1,w8
016b8d94  bl 0x0124c4d0
016b8d98  ldp x29,x30,[sp, #0x30]
016b8d9c  ldp x20,x19,[sp, #0x20]
016b8da0  add sp,sp,#0x40
016b8da4  ret
