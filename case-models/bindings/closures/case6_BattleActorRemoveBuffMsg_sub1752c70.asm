// ===== case6_BattleActorRemoveBuffMsg_sub1752c70 @ 01752c70 (DecompileAt3: cleared stale instructions at entry) =====
01752c70  sub sp,sp,#0x50
01752c74  str x23,[sp, #0x10]
01752c78  stp x22,x21,[sp, #0x20]
01752c7c  stp x20,x19,[sp, #0x30]
01752c80  stp x29,x30,[sp, #0x40]
01752c84  add x29,sp,#0x40
01752c88  ldr x8,[x2]
01752c8c  mov x19,x0
01752c90  mov x20,x3
01752c94  mov x21,x1
01752c98  str x8,[x19]
01752c9c  ldr w8,[x2, #0x8]
01752ca0  str w8,[x19, #0x8]
01752ca4  str wzr,[x2, #0x8]
01752ca8  mov w2,#0x1
01752cac  bl 0x0174ae88
01752cb0  ldr x0,[x19]
01752cb4  adrp x1,0x1752000
01752cb8  add x1,x1,#0xff4
01752cbc  mov w2,wzr
01752cc0  bl 0x0124ec90
01752cc4  ldr x22,[x19]
01752cc8  orr w1,wzr,#0xfffffffe
01752ccc  mov x0,x22
01752cd0  bl 0x0124e920
01752cd4  mov w23,w0
01752cd8  adrp x1,0x575d000
01752cdc  add x1,x1,#0xa29
01752ce0  mov x0,x22
01752ce4  bl 0x0124f120
01752ce8  orr w1,wzr,#0xfffffffe
01752cec  mov w2,#0x1
01752cf0  mov x0,x22
01752cf4  bl 0x0124cfc0
01752cf8  mov x0,x22
01752cfc  mov w1,w23
01752d00  bl 0x0124e060
01752d04  ldr w8,[x19, #0x8]
01752d08  add w8,w8,#0x1
01752d0c  str w8,[x19, #0x8]
01752d10  mov x0,x19
01752d14  mov x1,x21
01752d18  mov w2,wzr
01752d1c  bl 0x0174ae88
01752d20  ldr x0,[x19]
01752d24  mov w1,wzr
01752d28  mov w2,wzr
01752d2c  bl 0x0124f920
01752d30  ldr x0,[x19]
01752d34  orr w1,wzr,#0xfffffffe
01752d38  mov w2,#0x5e7
01752d3c  bl 0x01252d10
01752d40  ldr x0,[x19]
01752d44  orr w1,wzr,#0xfffffffe
01752d48  bl 0x0124c0c0
01752d4c  ldr x0,[x19]
01752d50  orr w1,wzr,#0xfffffffe
01752d54  mov w2,#0xc07
01752d58  bl 0x01252d10
01752d5c  ldr x0,[x19]
01752d60  mov w1,#0xffffffff
01752d64  bl 0x0124c0c0
01752d68  ldr x0,[x19]
01752d6c  orr w1,wzr,#0xfffffffd
01752d70  mov w2,#0xc1a
01752d74  bl 0x01252d10
01752d78  ldr x0,[x19]
01752d7c  adrp x1,0x1752000
01752d80  add x1,x1,#0xff4
01752d84  mov w2,wzr
01752d88  bl 0x0124ec90
01752d8c  ldr x22,[x19]
01752d90  orr w1,wzr,#0xfffffffe
01752d94  mov x0,x22
01752d98  bl 0x0124e920
01752d9c  mov w23,w0
01752da0  adrp x1,0x575d000
01752da4  add x1,x1,#0xa29
01752da8  mov x0,x22
01752dac  bl 0x0124f120
01752db0  orr w1,wzr,#0xfffffffe
01752db4  mov w2,#0x1
01752db8  mov x0,x22
01752dbc  bl 0x0124cfc0
01752dc0  mov x0,x22
01752dc4  mov w1,w23
01752dc8  bl 0x0124e060
01752dcc  ldr w8,[x19, #0x8]
01752dd0  add w8,w8,#0x1
01752dd4  str w8,[x19, #0x8]
01752dd8  mov x0,x19
01752ddc  mov x1,x21
01752de0  bl 0x0174b264
01752de4  ldr w8,[x19, #0x8]
01752de8  ldr x0,[x19]
01752dec  add w8,w8,#0x1
01752df0  str w8,[x19, #0x8]
01752df4  mov w1,#0xb9d8
01752df8  movk w1,#0xfff0, LSL #16
01752dfc  mov x2,x20
01752e00  bl 0x0124a650
01752e04  ldr x0,[x19]
01752e08  mov w1,#0xffffffff
01752e0c  bl 0x0124ff50
01752e10  cbz w0,0x01752ee8
01752e14  ldr x0,[x19]
01752e18  mov w1,#0xffffffff
01752e1c  mov w2,#0xc1a
01752e20  bl 0x0124a650
01752e24  ldr x0,[x19]
01752e28  mov w1,#0xffffffff
01752e2c  mov w2,#0xc07
01752e30  bl 0x0124a650
01752e34  ldr x0,[x19]
01752e38  mov w1,#0xfffffffa
01752e3c  mov w2,#0xdad
01752e40  bl 0x01252d10
01752e44  ldr x0,[x19]
01752e48  orr w1,wzr,#0xfffffffc
01752e4c  mov w2,#0xdad
01752e50  bl 0x01252d10
01752e54  ldr x0,[x19]
01752e58  orr w1,wzr,#0xfffffffe
01752e5c  mov w2,#0xdad
01752e60  bl 0x01252d10
01752e64  ldr x0,[x19]
01752e68  mov w1,#0xffffffff
01752e6c  bl 0x0124c0c0
01752e70  ldr x0,[x19]
01752e74  adrp x2,0x736d000
01752e78  mov w1,#0xb9d8
01752e7c  add x2,x2,#0x209
01752e80  movk w1,#0xfff0, LSL #16
01752e84  bl 0x01252d10
01752e88  ldr x0,[x19]
01752e8c  orr w1,wzr,#0xfffffffe
01752e90  bl 0x0124c0c0
01752e94  ldr x0,[x19]
01752e98  adrp x2,0x736d000
01752e9c  mov w1,#0xb9d8
01752ea0  add x2,x2,#0x20a
01752ea4  movk w1,#0xfff0, LSL #16
01752ea8  bl 0x01252d10
01752eac  ldr x0,[x19]
01752eb0  orr w1,wzr,#0xfffffffd
01752eb4  bl 0x0124c0c0
01752eb8  ldr x0,[x19]
01752ebc  adrp x2,0x736d000
01752ec0  mov w1,#0xb9d8
01752ec4  add x2,x2,#0x20b
01752ec8  movk w1,#0xfff0, LSL #16
01752ecc  bl 0x01252d10
01752ed0  ldp x29,x30,[sp, #0x40]
01752ed4  ldp x20,x19,[sp, #0x30]
01752ed8  ldp x22,x21,[sp, #0x20]
01752edc  ldr x23,[sp, #0x10]
01752ee0  add sp,sp,#0x50
01752ee4  ret
01752ee8  ldr w8,[x19, #0x8]
01752eec  mov w0,#0x10
01752ef0  add w8,w8,#0x1
01752ef4  str w8,[x19, #0x8]
01752ef8  bl 0x01250920
01752efc  mov x20,x0
01752f00  adrp x1,0x575d000
01752f04  add x1,x1,#0xa2e
01752f08  add x0,sp,#0x8
01752f0c  mov x2,sp
01752f10  bl 0x0571b104
01752f14  mov w22,#0x1
01752f18  add x1,sp,#0x8
01752f1c  mov x0,x20
01752f20  bl 0x056fed48
01752f24  adrp x1,0x7318000
01752f28  adrp x2,0x7313000
01752f2c  ldr x1,[x1, #0x6a0]
01752f30  ldr x2,[x2, #0xbc8]
01752f34  mov x0,x20
01752f38  mov w22,wzr
01752f3c  bl 0x0124dd00
01752f40  mov x21,x0
01752f44  b 0x01752f9c
