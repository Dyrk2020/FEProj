// ===== case865_ActorEventMgr_EventDelegateMP_sub1a09ba4 @ 01a09ba4 (DecompileAt3: cleared stale instructions at entry) =====
01a09ba4  sub sp,sp,#0x50
01a09ba8  str x23,[sp, #0x10]
01a09bac  stp x22,x21,[sp, #0x20]
01a09bb0  stp x20,x19,[sp, #0x30]
01a09bb4  stp x29,x30,[sp, #0x40]
01a09bb8  add x29,sp,#0x40
01a09bbc  ldr x8,[x2]
01a09bc0  mov x19,x0
01a09bc4  mov x20,x3
01a09bc8  mov x21,x1
01a09bcc  str x8,[x19]
01a09bd0  ldr w8,[x2, #0x8]
01a09bd4  str w8,[x19, #0x8]
01a09bd8  str wzr,[x2, #0x8]
01a09bdc  mov w2,#0x1
01a09be0  bl 0x0174ae88
01a09be4  ldr x0,[x19]
01a09be8  adrp x1,0x1a09000
01a09bec  add x1,x1,#0xf28
01a09bf0  mov w2,wzr
01a09bf4  bl 0x0124ec90
01a09bf8  ldr x22,[x19]
01a09bfc  orr w1,wzr,#0xfffffffe
01a09c00  mov x0,x22
01a09c04  bl 0x0124e920
01a09c08  mov w23,w0
01a09c0c  adrp x1,0x575d000
01a09c10  add x1,x1,#0xa29
01a09c14  mov x0,x22
01a09c18  bl 0x0124f120
01a09c1c  orr w1,wzr,#0xfffffffe
01a09c20  mov w2,#0x1
01a09c24  mov x0,x22
01a09c28  bl 0x0124cfc0
01a09c2c  mov x0,x22
01a09c30  mov w1,w23
01a09c34  bl 0x0124e060
01a09c38  ldr w8,[x19, #0x8]
01a09c3c  add w8,w8,#0x1
01a09c40  str w8,[x19, #0x8]
01a09c44  mov x0,x19
01a09c48  mov x1,x21
01a09c4c  mov w2,wzr
01a09c50  bl 0x0174ae88
01a09c54  ldr x0,[x19]
01a09c58  mov w1,wzr
01a09c5c  mov w2,wzr
01a09c60  bl 0x0124f920
01a09c64  ldr x0,[x19]
01a09c68  orr w1,wzr,#0xfffffffe
01a09c6c  mov w2,#0x5e7
01a09c70  bl 0x01252d10
01a09c74  ldr x0,[x19]
01a09c78  orr w1,wzr,#0xfffffffe
01a09c7c  bl 0x0124c0c0
01a09c80  ldr x0,[x19]
01a09c84  orr w1,wzr,#0xfffffffe
01a09c88  mov w2,#0xc07
01a09c8c  bl 0x01252d10
01a09c90  ldr x0,[x19]
01a09c94  mov w1,#0xffffffff
01a09c98  bl 0x0124c0c0
01a09c9c  ldr x0,[x19]
01a09ca0  orr w1,wzr,#0xfffffffd
01a09ca4  mov w2,#0xc1a
01a09ca8  bl 0x01252d10
01a09cac  ldr x0,[x19]
01a09cb0  adrp x1,0x1a09000
01a09cb4  add x1,x1,#0xf28
01a09cb8  mov w2,wzr
01a09cbc  bl 0x0124ec90
01a09cc0  ldr x22,[x19]
01a09cc4  orr w1,wzr,#0xfffffffe
01a09cc8  mov x0,x22
01a09ccc  bl 0x0124e920
01a09cd0  mov w23,w0
01a09cd4  adrp x1,0x575d000
01a09cd8  add x1,x1,#0xa29
01a09cdc  mov x0,x22
01a09ce0  bl 0x0124f120
01a09ce4  orr w1,wzr,#0xfffffffe
01a09ce8  mov w2,#0x1
01a09cec  mov x0,x22
01a09cf0  bl 0x0124cfc0
01a09cf4  mov x0,x22
01a09cf8  mov w1,w23
01a09cfc  bl 0x0124e060
01a09d00  ldr w8,[x19, #0x8]
01a09d04  add w8,w8,#0x1
01a09d08  str w8,[x19, #0x8]
01a09d0c  mov x0,x19
01a09d10  mov x1,x21
01a09d14  bl 0x0174b264
01a09d18  ldr w8,[x19, #0x8]
01a09d1c  ldr x0,[x19]
01a09d20  add w8,w8,#0x1
01a09d24  str w8,[x19, #0x8]
01a09d28  mov w1,#0xb9d8
01a09d2c  movk w1,#0xfff0, LSL #16
01a09d30  mov x2,x20
01a09d34  bl 0x0124a650
01a09d38  ldr x0,[x19]
01a09d3c  mov w1,#0xffffffff
01a09d40  bl 0x0124ff50
01a09d44  cbz w0,0x01a09e1c
01a09d48  ldr x0,[x19]
01a09d4c  mov w1,#0xffffffff
01a09d50  mov w2,#0xc1a
01a09d54  bl 0x0124a650
01a09d58  ldr x0,[x19]
01a09d5c  mov w1,#0xffffffff
01a09d60  mov w2,#0xc07
01a09d64  bl 0x0124a650
01a09d68  ldr x0,[x19]
01a09d6c  mov w1,#0xfffffffa
01a09d70  mov w2,#0xdad
01a09d74  bl 0x01252d10
01a09d78  ldr x0,[x19]
01a09d7c  orr w1,wzr,#0xfffffffc
01a09d80  mov w2,#0xdad
01a09d84  bl 0x01252d10
01a09d88  ldr x0,[x19]
01a09d8c  orr w1,wzr,#0xfffffffe
01a09d90  mov w2,#0xdad
01a09d94  bl 0x01252d10
01a09d98  ldr x0,[x19]
01a09d9c  mov w1,#0xffffffff
01a09da0  bl 0x0124c0c0
01a09da4  ldr x0,[x19]
01a09da8  adrp x2,0x736d000
01a09dac  mov w1,#0xb9d8
01a09db0  add x2,x2,#0xe6d
01a09db4  movk w1,#0xfff0, LSL #16
01a09db8  bl 0x01252d10
01a09dbc  ldr x0,[x19]
01a09dc0  orr w1,wzr,#0xfffffffe
01a09dc4  bl 0x0124c0c0
01a09dc8  ldr x0,[x19]
01a09dcc  adrp x2,0x736d000
01a09dd0  mov w1,#0xb9d8
01a09dd4  add x2,x2,#0xe6e
01a09dd8  movk w1,#0xfff0, LSL #16
01a09ddc  bl 0x01252d10
01a09de0  ldr x0,[x19]
01a09de4  orr w1,wzr,#0xfffffffd
01a09de8  bl 0x0124c0c0
01a09dec  ldr x0,[x19]
01a09df0  adrp x2,0x736d000
01a09df4  mov w1,#0xb9d8
01a09df8  add x2,x2,#0xe6f
01a09dfc  movk w1,#0xfff0, LSL #16
01a09e00  bl 0x01252d10
01a09e04  ldp x29,x30,[sp, #0x40]
01a09e08  ldp x20,x19,[sp, #0x30]
01a09e0c  ldp x22,x21,[sp, #0x20]
01a09e10  ldr x23,[sp, #0x10]
01a09e14  add sp,sp,#0x50
01a09e18  ret
01a09e1c  ldr w8,[x19, #0x8]
01a09e20  mov w0,#0x10
01a09e24  add w8,w8,#0x1
01a09e28  str w8,[x19, #0x8]
01a09e2c  bl 0x01250920
01a09e30  mov x20,x0
01a09e34  adrp x1,0x575d000
01a09e38  add x1,x1,#0xa2e
01a09e3c  add x0,sp,#0x8
01a09e40  mov x2,sp
01a09e44  bl 0x0571b104
01a09e48  mov w22,#0x1
01a09e4c  add x1,sp,#0x8
01a09e50  mov x0,x20
01a09e54  bl 0x056fed48
01a09e58  adrp x1,0x7318000
01a09e5c  adrp x2,0x7313000
01a09e60  ldr x1,[x1, #0x6a0]
01a09e64  ldr x2,[x2, #0xbc8]
01a09e68  mov x0,x20
01a09e6c  mov w22,wzr
01a09e70  bl 0x0124dd00
01a09e74  mov x21,x0
01a09e78  b 0x01a09ed0
