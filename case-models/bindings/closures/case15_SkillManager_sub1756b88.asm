// ===== case15_SkillManager_sub1756b88 @ 01756b88 (DecompileAt3: cleared stale instructions at entry) =====
01756b88  sub sp,sp,#0x50
01756b8c  str x23,[sp, #0x10]
01756b90  stp x22,x21,[sp, #0x20]
01756b94  stp x20,x19,[sp, #0x30]
01756b98  stp x29,x30,[sp, #0x40]
01756b9c  add x29,sp,#0x40
01756ba0  ldr x8,[x2]
01756ba4  mov x19,x0
01756ba8  mov x20,x3
01756bac  mov x21,x1
01756bb0  str x8,[x19]
01756bb4  ldr w8,[x2, #0x8]
01756bb8  str w8,[x19, #0x8]
01756bbc  str wzr,[x2, #0x8]
01756bc0  mov w2,#0x1
01756bc4  bl 0x0174ae88
01756bc8  ldr x0,[x19]
01756bcc  adrp x1,0x1756000
01756bd0  add x1,x1,#0xf0c
01756bd4  mov w2,wzr
01756bd8  bl 0x0124ec90
01756bdc  ldr x22,[x19]
01756be0  orr w1,wzr,#0xfffffffe
01756be4  mov x0,x22
01756be8  bl 0x0124e920
01756bec  mov w23,w0
01756bf0  adrp x1,0x575d000
01756bf4  add x1,x1,#0xa29
01756bf8  mov x0,x22
01756bfc  bl 0x0124f120
01756c00  orr w1,wzr,#0xfffffffe
01756c04  mov w2,#0x1
01756c08  mov x0,x22
01756c0c  bl 0x0124cfc0
01756c10  mov x0,x22
01756c14  mov w1,w23
01756c18  bl 0x0124e060
01756c1c  ldr w8,[x19, #0x8]
01756c20  add w8,w8,#0x1
01756c24  str w8,[x19, #0x8]
01756c28  mov x0,x19
01756c2c  mov x1,x21
01756c30  mov w2,wzr
01756c34  bl 0x0174ae88
01756c38  ldr x0,[x19]
01756c3c  mov w1,wzr
01756c40  mov w2,wzr
01756c44  bl 0x0124f920
01756c48  ldr x0,[x19]
01756c4c  orr w1,wzr,#0xfffffffe
01756c50  mov w2,#0x5e7
01756c54  bl 0x01252d10
01756c58  ldr x0,[x19]
01756c5c  orr w1,wzr,#0xfffffffe
01756c60  bl 0x0124c0c0
01756c64  ldr x0,[x19]
01756c68  orr w1,wzr,#0xfffffffe
01756c6c  mov w2,#0xc07
01756c70  bl 0x01252d10
01756c74  ldr x0,[x19]
01756c78  mov w1,#0xffffffff
01756c7c  bl 0x0124c0c0
01756c80  ldr x0,[x19]
01756c84  orr w1,wzr,#0xfffffffd
01756c88  mov w2,#0xc1a
01756c8c  bl 0x01252d10
01756c90  ldr x0,[x19]
01756c94  adrp x1,0x1756000
01756c98  add x1,x1,#0xf0c
01756c9c  mov w2,wzr
01756ca0  bl 0x0124ec90
01756ca4  ldr x22,[x19]
01756ca8  orr w1,wzr,#0xfffffffe
01756cac  mov x0,x22
01756cb0  bl 0x0124e920
01756cb4  mov w23,w0
01756cb8  adrp x1,0x575d000
01756cbc  add x1,x1,#0xa29
01756cc0  mov x0,x22
01756cc4  bl 0x0124f120
01756cc8  orr w1,wzr,#0xfffffffe
01756ccc  mov w2,#0x1
01756cd0  mov x0,x22
01756cd4  bl 0x0124cfc0
01756cd8  mov x0,x22
01756cdc  mov w1,w23
01756ce0  bl 0x0124e060
01756ce4  ldr w8,[x19, #0x8]
01756ce8  add w8,w8,#0x1
01756cec  str w8,[x19, #0x8]
01756cf0  mov x0,x19
01756cf4  mov x1,x21
01756cf8  bl 0x0174b264
01756cfc  ldr w8,[x19, #0x8]
01756d00  ldr x0,[x19]
01756d04  add w8,w8,#0x1
01756d08  str w8,[x19, #0x8]
01756d0c  mov w1,#0xb9d8
01756d10  movk w1,#0xfff0, LSL #16
01756d14  mov x2,x20
01756d18  bl 0x0124a650
01756d1c  ldr x0,[x19]
01756d20  mov w1,#0xffffffff
01756d24  bl 0x0124ff50
01756d28  cbz w0,0x01756e00
01756d2c  ldr x0,[x19]
01756d30  mov w1,#0xffffffff
01756d34  mov w2,#0xc1a
01756d38  bl 0x0124a650
01756d3c  ldr x0,[x19]
01756d40  mov w1,#0xffffffff
01756d44  mov w2,#0xc07
01756d48  bl 0x0124a650
01756d4c  ldr x0,[x19]
01756d50  mov w1,#0xfffffffa
01756d54  mov w2,#0xdad
01756d58  bl 0x01252d10
01756d5c  ldr x0,[x19]
01756d60  orr w1,wzr,#0xfffffffc
01756d64  mov w2,#0xdad
01756d68  bl 0x01252d10
01756d6c  ldr x0,[x19]
01756d70  orr w1,wzr,#0xfffffffe
01756d74  mov w2,#0xdad
01756d78  bl 0x01252d10
01756d7c  ldr x0,[x19]
01756d80  mov w1,#0xffffffff
01756d84  bl 0x0124c0c0
01756d88  ldr x0,[x19]
01756d8c  adrp x2,0x736d000
01756d90  mov w1,#0xb9d8
01756d94  add x2,x2,#0x228
01756d98  movk w1,#0xfff0, LSL #16
01756d9c  bl 0x01252d10
01756da0  ldr x0,[x19]
01756da4  orr w1,wzr,#0xfffffffe
01756da8  bl 0x0124c0c0
01756dac  ldr x0,[x19]
01756db0  adrp x2,0x736d000
01756db4  mov w1,#0xb9d8
01756db8  add x2,x2,#0x229
01756dbc  movk w1,#0xfff0, LSL #16
01756dc0  bl 0x01252d10
01756dc4  ldr x0,[x19]
01756dc8  orr w1,wzr,#0xfffffffd
01756dcc  bl 0x0124c0c0
01756dd0  ldr x0,[x19]
01756dd4  adrp x2,0x736d000
01756dd8  mov w1,#0xb9d8
01756ddc  add x2,x2,#0x22a
01756de0  movk w1,#0xfff0, LSL #16
01756de4  bl 0x01252d10
01756de8  ldp x29,x30,[sp, #0x40]
01756dec  ldp x20,x19,[sp, #0x30]
01756df0  ldp x22,x21,[sp, #0x20]
01756df4  ldr x23,[sp, #0x10]
01756df8  add sp,sp,#0x50
01756dfc  ret
01756e00  ldr w8,[x19, #0x8]
01756e04  mov w0,#0x10
01756e08  add w8,w8,#0x1
01756e0c  str w8,[x19, #0x8]
01756e10  bl 0x01250920
01756e14  mov x20,x0
01756e18  adrp x1,0x575d000
01756e1c  add x1,x1,#0xa2e
01756e20  add x0,sp,#0x8
01756e24  mov x2,sp
01756e28  bl 0x0571b104
01756e2c  mov w22,#0x1
01756e30  add x1,sp,#0x8
01756e34  mov x0,x20
01756e38  bl 0x056fed48
01756e3c  adrp x1,0x7318000
01756e40  adrp x2,0x7313000
01756e44  ldr x1,[x1, #0x6a0]
01756e48  ldr x2,[x2, #0xbc8]
01756e4c  mov x0,x20
01756e50  mov w22,wzr
01756e54  bl 0x0124dd00
01756e58  mov x21,x0
01756e5c  b 0x01756eb4
