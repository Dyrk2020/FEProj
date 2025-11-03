// ===== case398_FEMsgQueue_sub1847c94 @ 01847c94 (DecompileAt3: cleared stale instructions at entry) =====
01847c94  sub sp,sp,#0x50
01847c98  str x23,[sp, #0x10]
01847c9c  stp x22,x21,[sp, #0x20]
01847ca0  stp x20,x19,[sp, #0x30]
01847ca4  stp x29,x30,[sp, #0x40]
01847ca8  add x29,sp,#0x40
01847cac  ldr x8,[x2]
01847cb0  mov x19,x0
01847cb4  mov x20,x3
01847cb8  mov x21,x1
01847cbc  str x8,[x19]
01847cc0  ldr w8,[x2, #0x8]
01847cc4  str w8,[x19, #0x8]
01847cc8  str wzr,[x2, #0x8]
01847ccc  mov w2,#0x1
01847cd0  bl 0x0174ae88
01847cd4  ldr x0,[x19]
01847cd8  adrp x1,0x1848000
01847cdc  add x1,x1,#0x18
01847ce0  mov w2,wzr
01847ce4  bl 0x0124ec90
01847ce8  ldr x22,[x19]
01847cec  orr w1,wzr,#0xfffffffe
01847cf0  mov x0,x22
01847cf4  bl 0x0124e920
01847cf8  mov w23,w0
01847cfc  adrp x1,0x575d000
01847d00  add x1,x1,#0xa29
01847d04  mov x0,x22
01847d08  bl 0x0124f120
01847d0c  orr w1,wzr,#0xfffffffe
01847d10  mov w2,#0x1
01847d14  mov x0,x22
01847d18  bl 0x0124cfc0
01847d1c  mov x0,x22
01847d20  mov w1,w23
01847d24  bl 0x0124e060
01847d28  ldr w8,[x19, #0x8]
01847d2c  add w8,w8,#0x1
01847d30  str w8,[x19, #0x8]
01847d34  mov x0,x19
01847d38  mov x1,x21
01847d3c  mov w2,wzr
01847d40  bl 0x0174ae88
01847d44  ldr x0,[x19]
01847d48  mov w1,wzr
01847d4c  mov w2,wzr
01847d50  bl 0x0124f920
01847d54  ldr x0,[x19]
01847d58  orr w1,wzr,#0xfffffffe
01847d5c  mov w2,#0x5e7
01847d60  bl 0x01252d10
01847d64  ldr x0,[x19]
01847d68  orr w1,wzr,#0xfffffffe
01847d6c  bl 0x0124c0c0
01847d70  ldr x0,[x19]
01847d74  orr w1,wzr,#0xfffffffe
01847d78  mov w2,#0xc07
01847d7c  bl 0x01252d10
01847d80  ldr x0,[x19]
01847d84  mov w1,#0xffffffff
01847d88  bl 0x0124c0c0
01847d8c  ldr x0,[x19]
01847d90  orr w1,wzr,#0xfffffffd
01847d94  mov w2,#0xc1a
01847d98  bl 0x01252d10
01847d9c  ldr x0,[x19]
01847da0  adrp x1,0x1848000
01847da4  add x1,x1,#0x18
01847da8  mov w2,wzr
01847dac  bl 0x0124ec90
01847db0  ldr x22,[x19]
01847db4  orr w1,wzr,#0xfffffffe
01847db8  mov x0,x22
01847dbc  bl 0x0124e920
01847dc0  mov w23,w0
01847dc4  adrp x1,0x575d000
01847dc8  add x1,x1,#0xa29
01847dcc  mov x0,x22
01847dd0  bl 0x0124f120
01847dd4  orr w1,wzr,#0xfffffffe
01847dd8  mov w2,#0x1
01847ddc  mov x0,x22
01847de0  bl 0x0124cfc0
01847de4  mov x0,x22
01847de8  mov w1,w23
01847dec  bl 0x0124e060
01847df0  ldr w8,[x19, #0x8]
01847df4  add w8,w8,#0x1
01847df8  str w8,[x19, #0x8]
01847dfc  mov x0,x19
01847e00  mov x1,x21
01847e04  bl 0x0174b264
01847e08  ldr w8,[x19, #0x8]
01847e0c  ldr x0,[x19]
01847e10  add w8,w8,#0x1
01847e14  str w8,[x19, #0x8]
01847e18  mov w1,#0xb9d8
01847e1c  movk w1,#0xfff0, LSL #16
01847e20  mov x2,x20
01847e24  bl 0x0124a650
01847e28  ldr x0,[x19]
01847e2c  mov w1,#0xffffffff
01847e30  bl 0x0124ff50
01847e34  cbz w0,0x01847f0c
01847e38  ldr x0,[x19]
01847e3c  mov w1,#0xffffffff
01847e40  mov w2,#0xc1a
01847e44  bl 0x0124a650
01847e48  ldr x0,[x19]
01847e4c  mov w1,#0xffffffff
01847e50  mov w2,#0xc07
01847e54  bl 0x0124a650
01847e58  ldr x0,[x19]
01847e5c  mov w1,#0xfffffffa
01847e60  mov w2,#0xdad
01847e64  bl 0x01252d10
01847e68  ldr x0,[x19]
01847e6c  orr w1,wzr,#0xfffffffc
01847e70  mov w2,#0xdad
01847e74  bl 0x01252d10
01847e78  ldr x0,[x19]
01847e7c  orr w1,wzr,#0xfffffffe
01847e80  mov w2,#0xdad
01847e84  bl 0x01252d10
01847e88  ldr x0,[x19]
01847e8c  mov w1,#0xffffffff
01847e90  bl 0x0124c0c0
01847e94  ldr x0,[x19]
01847e98  adrp x2,0x736d000
01847e9c  mov w1,#0xb9d8
01847ea0  add x2,x2,#0x845
01847ea4  movk w1,#0xfff0, LSL #16
01847ea8  bl 0x01252d10
01847eac  ldr x0,[x19]
01847eb0  orr w1,wzr,#0xfffffffe
01847eb4  bl 0x0124c0c0
01847eb8  ldr x0,[x19]
01847ebc  adrp x2,0x736d000
01847ec0  mov w1,#0xb9d8
01847ec4  add x2,x2,#0x846
01847ec8  movk w1,#0xfff0, LSL #16
01847ecc  bl 0x01252d10
01847ed0  ldr x0,[x19]
01847ed4  orr w1,wzr,#0xfffffffd
01847ed8  bl 0x0124c0c0
01847edc  ldr x0,[x19]
01847ee0  adrp x2,0x736d000
01847ee4  mov w1,#0xb9d8
01847ee8  add x2,x2,#0x847
01847eec  movk w1,#0xfff0, LSL #16
01847ef0  bl 0x01252d10
01847ef4  ldp x29,x30,[sp, #0x40]
01847ef8  ldp x20,x19,[sp, #0x30]
01847efc  ldp x22,x21,[sp, #0x20]
01847f00  ldr x23,[sp, #0x10]
01847f04  add sp,sp,#0x50
01847f08  ret
01847f0c  ldr w8,[x19, #0x8]
01847f10  mov w0,#0x10
01847f14  add w8,w8,#0x1
01847f18  str w8,[x19, #0x8]
01847f1c  bl 0x01250920
01847f20  mov x20,x0
01847f24  adrp x1,0x575d000
01847f28  add x1,x1,#0xa2e
01847f2c  add x0,sp,#0x8
01847f30  mov x2,sp
01847f34  bl 0x0571b104
01847f38  mov w22,#0x1
01847f3c  add x1,sp,#0x8
01847f40  mov x0,x20
01847f44  bl 0x056fed48
01847f48  adrp x1,0x7318000
01847f4c  adrp x2,0x7313000
01847f50  ldr x1,[x1, #0x6a0]
01847f54  ldr x2,[x2, #0xbc8]
01847f58  mov x0,x20
01847f5c  mov w22,wzr
01847f60  bl 0x0124dd00
01847f64  mov x21,x0
01847f68  b 0x01847fc0
