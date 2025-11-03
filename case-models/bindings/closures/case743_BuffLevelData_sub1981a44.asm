// ===== case743_BuffLevelData_sub1981a44 @ 01981a44 (DecompileAt3: cleared stale instructions at entry) =====
01981a44  sub sp,sp,#0x50
01981a48  str x23,[sp, #0x10]
01981a4c  stp x22,x21,[sp, #0x20]
01981a50  stp x20,x19,[sp, #0x30]
01981a54  stp x29,x30,[sp, #0x40]
01981a58  add x29,sp,#0x40
01981a5c  ldr x8,[x2]
01981a60  mov x19,x0
01981a64  mov x20,x3
01981a68  mov x21,x1
01981a6c  str x8,[x19]
01981a70  ldr w8,[x2, #0x8]
01981a74  str w8,[x19, #0x8]
01981a78  str wzr,[x2, #0x8]
01981a7c  mov w2,#0x1
01981a80  bl 0x0174ae88
01981a84  ldr x0,[x19]
01981a88  adrp x1,0x1981000
01981a8c  add x1,x1,#0xdc8
01981a90  mov w2,wzr
01981a94  bl 0x0124ec90
01981a98  ldr x22,[x19]
01981a9c  orr w1,wzr,#0xfffffffe
01981aa0  mov x0,x22
01981aa4  bl 0x0124e920
01981aa8  mov w23,w0
01981aac  adrp x1,0x575d000
01981ab0  add x1,x1,#0xa29
01981ab4  mov x0,x22
01981ab8  bl 0x0124f120
01981abc  orr w1,wzr,#0xfffffffe
01981ac0  mov w2,#0x1
01981ac4  mov x0,x22
01981ac8  bl 0x0124cfc0
01981acc  mov x0,x22
01981ad0  mov w1,w23
01981ad4  bl 0x0124e060
01981ad8  ldr w8,[x19, #0x8]
01981adc  add w8,w8,#0x1
01981ae0  str w8,[x19, #0x8]
01981ae4  mov x0,x19
01981ae8  mov x1,x21
01981aec  mov w2,wzr
01981af0  bl 0x0174ae88
01981af4  ldr x0,[x19]
01981af8  mov w1,wzr
01981afc  mov w2,wzr
01981b00  bl 0x0124f920
01981b04  ldr x0,[x19]
01981b08  orr w1,wzr,#0xfffffffe
01981b0c  mov w2,#0x5e7
01981b10  bl 0x01252d10
01981b14  ldr x0,[x19]
01981b18  orr w1,wzr,#0xfffffffe
01981b1c  bl 0x0124c0c0
01981b20  ldr x0,[x19]
01981b24  orr w1,wzr,#0xfffffffe
01981b28  mov w2,#0xc07
01981b2c  bl 0x01252d10
01981b30  ldr x0,[x19]
01981b34  mov w1,#0xffffffff
01981b38  bl 0x0124c0c0
01981b3c  ldr x0,[x19]
01981b40  orr w1,wzr,#0xfffffffd
01981b44  mov w2,#0xc1a
01981b48  bl 0x01252d10
01981b4c  ldr x0,[x19]
01981b50  adrp x1,0x1981000
01981b54  add x1,x1,#0xdc8
01981b58  mov w2,wzr
01981b5c  bl 0x0124ec90
01981b60  ldr x22,[x19]
01981b64  orr w1,wzr,#0xfffffffe
01981b68  mov x0,x22
01981b6c  bl 0x0124e920
01981b70  mov w23,w0
01981b74  adrp x1,0x575d000
01981b78  add x1,x1,#0xa29
01981b7c  mov x0,x22
01981b80  bl 0x0124f120
01981b84  orr w1,wzr,#0xfffffffe
01981b88  mov w2,#0x1
01981b8c  mov x0,x22
01981b90  bl 0x0124cfc0
01981b94  mov x0,x22
01981b98  mov w1,w23
01981b9c  bl 0x0124e060
01981ba0  ldr w8,[x19, #0x8]
01981ba4  add w8,w8,#0x1
01981ba8  str w8,[x19, #0x8]
01981bac  mov x0,x19
01981bb0  mov x1,x21
01981bb4  bl 0x0174b264
01981bb8  ldr w8,[x19, #0x8]
01981bbc  ldr x0,[x19]
01981bc0  add w8,w8,#0x1
01981bc4  str w8,[x19, #0x8]
01981bc8  mov w1,#0xb9d8
01981bcc  movk w1,#0xfff0, LSL #16
01981bd0  mov x2,x20
01981bd4  bl 0x0124a650
01981bd8  ldr x0,[x19]
01981bdc  mov w1,#0xffffffff
01981be0  bl 0x0124ff50
01981be4  cbz w0,0x01981cbc
01981be8  ldr x0,[x19]
01981bec  mov w1,#0xffffffff
01981bf0  mov w2,#0xc1a
01981bf4  bl 0x0124a650
01981bf8  ldr x0,[x19]
01981bfc  mov w1,#0xffffffff
01981c00  mov w2,#0xc07
01981c04  bl 0x0124a650
01981c08  ldr x0,[x19]
01981c0c  mov w1,#0xfffffffa
01981c10  mov w2,#0xdad
01981c14  bl 0x01252d10
01981c18  ldr x0,[x19]
01981c1c  orr w1,wzr,#0xfffffffc
01981c20  mov w2,#0xdad
01981c24  bl 0x01252d10
01981c28  ldr x0,[x19]
01981c2c  orr w1,wzr,#0xfffffffe
01981c30  mov w2,#0xdad
01981c34  bl 0x01252d10
01981c38  ldr x0,[x19]
01981c3c  mov w1,#0xffffffff
01981c40  bl 0x0124c0c0
01981c44  ldr x0,[x19]
01981c48  adrp x2,0x736d000
01981c4c  mov w1,#0xb9d8
01981c50  add x2,x2,#0xcf6
01981c54  movk w1,#0xfff0, LSL #16
01981c58  bl 0x01252d10
01981c5c  ldr x0,[x19]
01981c60  orr w1,wzr,#0xfffffffe
01981c64  bl 0x0124c0c0
01981c68  ldr x0,[x19]
01981c6c  adrp x2,0x736d000
01981c70  mov w1,#0xb9d8
01981c74  add x2,x2,#0xcf7
01981c78  movk w1,#0xfff0, LSL #16
01981c7c  bl 0x01252d10
01981c80  ldr x0,[x19]
01981c84  orr w1,wzr,#0xfffffffd
01981c88  bl 0x0124c0c0
01981c8c  ldr x0,[x19]
01981c90  adrp x2,0x736d000
01981c94  mov w1,#0xb9d8
01981c98  add x2,x2,#0xcf8
01981c9c  movk w1,#0xfff0, LSL #16
01981ca0  bl 0x01252d10
01981ca4  ldp x29,x30,[sp, #0x40]
01981ca8  ldp x20,x19,[sp, #0x30]
01981cac  ldp x22,x21,[sp, #0x20]
01981cb0  ldr x23,[sp, #0x10]
01981cb4  add sp,sp,#0x50
01981cb8  ret
01981cbc  ldr w8,[x19, #0x8]
01981cc0  mov w0,#0x10
01981cc4  add w8,w8,#0x1
01981cc8  str w8,[x19, #0x8]
01981ccc  bl 0x01250920
01981cd0  mov x20,x0
01981cd4  adrp x1,0x575d000
01981cd8  add x1,x1,#0xa2e
01981cdc  add x0,sp,#0x8
01981ce0  mov x2,sp
01981ce4  bl 0x0571b104
01981ce8  mov w22,#0x1
01981cec  add x1,sp,#0x8
01981cf0  mov x0,x20
01981cf4  bl 0x056fed48
01981cf8  adrp x1,0x7318000
01981cfc  adrp x2,0x7313000
01981d00  ldr x1,[x1, #0x6a0]
01981d04  ldr x2,[x2, #0xbc8]
01981d08  mov x0,x20
01981d0c  mov w22,wzr
01981d10  bl 0x0124dd00
01981d14  mov x21,x0
01981d18  b 0x01981d70
