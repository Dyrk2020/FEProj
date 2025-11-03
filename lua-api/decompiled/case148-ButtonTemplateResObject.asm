// ===== case148-ButtonTemplateResObject @ 016a5a9c =====
// existing function case148-ButtonTemplateResObject
016a5a9c  sub sp,sp,#0x40
016a5aa0  str x19,[sp, #0x20]
016a5aa4  stp x29,x30,[sp, #0x30]
016a5aa8  add x29,sp,#0x30
016a5aac  adrp x1,0x174a000
016a5ab0  add x1,x1,#0x87c
016a5ab4  mov x19,x0
016a5ab8  bl 0x0124ba40
016a5abc  adrp x1,0x575d000
016a5ac0  add x1,x1,#0xa06
016a5ac4  mov x0,x19
016a5ac8  str x19,[sp]
016a5acc  bl 0x01251aa0
016a5ad0  mov w8,#0x1
016a5ad4  str w8,[sp, #0x8]
016a5ad8  mov x0,sp
016a5adc  bl 0x0174aa04
016a5ae0  adrp x1,0x575f000
016a5ae4  adrp x3,0x736d000
016a5ae8  add x1,x1,#0xfeb
016a5aec  add x3,x3,#0x101
016a5af0  add x0,sp,#0x10
016a5af4  mov x2,sp
016a5af8  bl 0x0179f104
016a5afc  adrp x1,0x5760000
016a5b00  adrp x2,0x179e000
016a5b04  adrp x4,0x179e000
016a5b08  add x1,x1,#0x3
016a5b0c  add x2,x2,#0xebc
016a5b10  add x4,x4,#0xec4
016a5b14  add x0,sp,#0x10
016a5b18  mov x3,xzr
016a5b1c  mov x5,xzr
016a5b20  bl 0x0179ecd4
016a5b24  adrp x1,0x5760000
016a5b28  adrp x2,0x179e000
016a5b2c  adrp x4,0x179e000
016a5b30  add x1,x1,#0x10
016a5b34  add x2,x2,#0xecc
016a5b38  add x4,x4,#0xed4
016a5b3c  mov x3,xzr
016a5b40  mov x5,xzr
016a5b44  bl 0x0179ecd4
016a5b48  adrp x1,0x5760000
016a5b4c  adrp x2,0x179e000
016a5b50  adrp x4,0x179e000
016a5b54  add x1,x1,#0x20
016a5b58  add x2,x2,#0xedc
016a5b5c  add x4,x4,#0xee4
016a5b60  mov x3,xzr
016a5b64  mov x5,xzr
016a5b68  bl 0x0179ecd4
016a5b6c  adrp x1,0x5760000
016a5b70  adrp x2,0x179e000
016a5b74  adrp x4,0x179e000
016a5b78  add x1,x1,#0x3a
016a5b7c  add x2,x2,#0xeec
016a5b80  add x4,x4,#0xef4
016a5b84  mov x3,xzr
016a5b88  mov x5,xzr
016a5b8c  bl 0x0179ecd4
016a5b90  adrp x1,0x5760000
016a5b94  adrp x2,0x179e000
016a5b98  adrp x4,0x179e000
016a5b9c  add x1,x1,#0x53
016a5ba0  add x2,x2,#0xefc
016a5ba4  add x4,x4,#0xf04
016a5ba8  mov x3,xzr
016a5bac  mov x5,xzr
016a5bb0  bl 0x0179ecd4
016a5bb4  adrp x1,0x5760000
016a5bb8  adrp x2,0x179f000
016a5bbc  adrp x4,0x179f000
016a5bc0  add x1,x1,#0x70
016a5bc4  add x2,x2,#0xf4
016a5bc8  add x4,x4,#0xfc
016a5bcc  mov x3,xzr
016a5bd0  mov x5,xzr
016a5bd4  bl 0x0179ef0c
016a5bd8  mov x19,x0
016a5bdc  ldr w8,[x19, #0x8]
016a5be0  ldr x0,[x19]
016a5be4  sub w8,w8,#0x3
016a5be8  str w8,[x19, #0x8]
016a5bec  orr w1,wzr,#0xfffffffc
016a5bf0  bl 0x0124c4d0
016a5bf4  ldr w8,[x19, #0x8]
016a5bf8  ldr x0,[x19]
016a5bfc  str wzr,[x19, #0x8]
016a5c00  cmp w8,#0x1
016a5c04  b.lt 0x016a5c10
016a5c08  mvn w1,w8
016a5c0c  bl 0x0124c4d0
016a5c10  ldr w8,[sp, #0x18]
016a5c14  cmp w8,#0x1
016a5c18  b.lt 0x016a5c28
016a5c1c  ldr x0,[sp, #0x10]
016a5c20  mvn w1,w8
016a5c24  bl 0x0124c4d0
016a5c28  ldr w8,[sp, #0x8]
016a5c2c  cmp w8,#0x1
016a5c30  b.lt 0x016a5c40
016a5c34  ldr x0,[sp]
016a5c38  mvn w1,w8
016a5c3c  bl 0x0124c4d0
016a5c40  ldp x29,x30,[sp, #0x30]
016a5c44  ldr x19,[sp, #0x20]
016a5c48  add sp,sp,#0x40
016a5c4c  ret
