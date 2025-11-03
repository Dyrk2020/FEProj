// ===== case826-LogicFlow @ 01739c94 =====
// existing function case826-LogicFlow
01739c94  sub sp,sp,#0x40
01739c98  stp x20,x19,[sp, #0x20]
01739c9c  stp x29,x30,[sp, #0x30]
01739ca0  add x29,sp,#0x30
01739ca4  adrp x1,0x174a000
01739ca8  add x1,x1,#0x87c
01739cac  mov x19,x0
01739cb0  bl 0x0124ba40
01739cb4  adrp x1,0x575d000
01739cb8  add x1,x1,#0xa06
01739cbc  mov x0,x19
01739cc0  str x19,[sp]
01739cc4  bl 0x01251aa0
01739cc8  mov w8,#0x1
01739ccc  str w8,[sp, #0x8]
01739cd0  mov x0,sp
01739cd4  bl 0x0174aa04
01739cd8  adrp x1,0x5772000
01739cdc  adrp x3,0x736d000
01739ce0  add x1,x1,#0x943
01739ce4  add x3,x3,#0x101
01739ce8  add x0,sp,#0x10
01739cec  mov x2,sp
01739cf0  bl 0x019d2540
01739cf4  ldr x0,[sp, #0x10]
01739cf8  mov w1,#0x10
01739cfc  bl 0x0124cba0
01739d00  adrp x8,0x19d2000
01739d04  dup v0.2D,xzr
01739d08  add x8,x8,#0x538
01739d0c  mov v0.D[0x0],x8
01739d10  str q0,[x0]
01739d14  ldr x0,[sp, #0x10]
01739d18  adrp x1,0x19d2000
01739d1c  add x1,x1,#0x904
01739d20  mov w2,#0x1
01739d24  bl 0x0124ec90
01739d28  ldr x0,[sp, #0x10]
01739d2c  mov w1,#0xffffffff
01739d30  bl 0x0124c0c0
01739d34  ldr x19,[sp, #0x10]
01739d38  orr w1,wzr,#0xfffffffb
01739d3c  mov w2,#0x6e7
01739d40  mov x0,x19
01739d44  bl 0x0124a650
01739d48  orr w1,wzr,#0xfffffffe
01739d4c  mov x0,x19
01739d50  bl 0x0124c0c0
01739d54  orr w1,wzr,#0xfffffffe
01739d58  mov x0,x19
01739d5c  bl 0x0124e920
01739d60  mov w20,w0
01739d64  adrp x1,0x575d000
01739d68  add x1,x1,#0xba6
01739d6c  mov x0,x19
01739d70  bl 0x0124f120
01739d74  orr w1,wzr,#0xfffffffe
01739d78  mov w2,#0x1
01739d7c  mov x0,x19
01739d80  bl 0x0124cfc0
01739d84  mov x0,x19
01739d88  mov w1,w20
01739d8c  bl 0x0124e060
01739d90  orr w1,wzr,#0xfffffffd
01739d94  mov x0,x19
01739d98  bl 0x0124c4d0
01739d9c  ldr x19,[sp, #0x10]
01739da0  orr w1,wzr,#0xfffffffd
01739da4  mov w2,#0x6e7
01739da8  mov x0,x19
01739dac  bl 0x0124a650
01739db0  orr w1,wzr,#0xfffffffe
01739db4  mov x0,x19
01739db8  bl 0x0124c0c0
01739dbc  orr w1,wzr,#0xfffffffe
01739dc0  mov x0,x19
01739dc4  bl 0x0124e920
01739dc8  mov w20,w0
01739dcc  adrp x1,0x575d000
01739dd0  add x1,x1,#0xba6
01739dd4  mov x0,x19
01739dd8  bl 0x0124f120
01739ddc  orr w1,wzr,#0xfffffffe
01739de0  mov w2,#0x1
01739de4  mov x0,x19
01739de8  bl 0x0124cfc0
01739dec  mov x0,x19
01739df0  mov w1,w20
01739df4  bl 0x0124e060
01739df8  orr w1,wzr,#0xfffffffd
01739dfc  mov x0,x19
01739e00  bl 0x0124c4d0
01739e04  ldr w8,[sp, #0x18]
01739e08  ldr x0,[sp, #0x10]
01739e0c  sub w8,w8,#0x3
01739e10  str w8,[sp, #0x18]
01739e14  orr w1,wzr,#0xfffffffc
01739e18  bl 0x0124c4d0
01739e1c  ldr w8,[sp, #0x18]
01739e20  ldr x0,[sp, #0x10]
01739e24  str wzr,[sp, #0x18]
01739e28  cmp w8,#0x1
01739e2c  b.lt 0x01739e50
01739e30  mvn w1,w8
01739e34  bl 0x0124c4d0
01739e38  ldr w8,[sp, #0x18]
01739e3c  cmp w8,#0x1
01739e40  b.lt 0x01739e50
01739e44  ldr x0,[sp, #0x10]
01739e48  mvn w1,w8
01739e4c  bl 0x0124c4d0
01739e50  ldr w8,[sp, #0x8]
01739e54  cmp w8,#0x1
01739e58  b.lt 0x01739e68
01739e5c  ldr x0,[sp]
01739e60  mvn w1,w8
01739e64  bl 0x0124c4d0
01739e68  ldp x29,x30,[sp, #0x30]
01739e6c  ldp x20,x19,[sp, #0x20]
01739e70  add sp,sp,#0x40
01739e74  ret
