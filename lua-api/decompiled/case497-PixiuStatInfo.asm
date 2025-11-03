// ===== case497-PixiuStatInfo @ 016f3ae4 =====
// existing function case497-PixiuStatInfo
016f3ae4  sub sp,sp,#0x40
016f3ae8  str x19,[sp, #0x20]
016f3aec  stp x29,x30,[sp, #0x30]
016f3af0  add x29,sp,#0x30
016f3af4  adrp x1,0x174a000
016f3af8  add x1,x1,#0x87c
016f3afc  mov x19,x0
016f3b00  bl 0x0124ba40
016f3b04  adrp x1,0x575d000
016f3b08  add x1,x1,#0xa06
016f3b0c  mov x0,x19
016f3b10  str x19,[sp]
016f3b14  bl 0x01251aa0
016f3b18  mov w8,#0x1
016f3b1c  str w8,[sp, #0x8]
016f3b20  mov x0,sp
016f3b24  bl 0x0174aa04
016f3b28  adrp x1,0x5767000
016f3b2c  adrp x3,0x736d000
016f3b30  add x1,x1,#0xfbe
016f3b34  add x3,x3,#0x101
016f3b38  add x0,sp,#0x10
016f3b3c  mov x2,sp
016f3b40  bl 0x0188f1ac
016f3b44  adrp x1,0x5767000
016f3b48  adrp x2,0x188e000
016f3b4c  adrp x4,0x188e000
016f3b50  add x1,x1,#0xfcc
016f3b54  add x2,x2,#0xf74
016f3b58  add x4,x4,#0xf7c
016f3b5c  add x0,sp,#0x10
016f3b60  mov x3,xzr
016f3b64  mov x5,xzr
016f3b68  bl 0x0188ed8c
016f3b6c  adrp x1,0x5767000
016f3b70  adrp x2,0x188f000
016f3b74  adrp x4,0x188f000
016f3b78  add x1,x1,#0xfd9
016f3b7c  add x2,x2,#0x16c
016f3b80  add x4,x4,#0x174
016f3b84  mov x3,xzr
016f3b88  mov x5,xzr
016f3b8c  bl 0x0188ef84
016f3b90  adrp x1,0x5767000
016f3b94  adrp x2,0x188f000
016f3b98  adrp x4,0x188f000
016f3b9c  add x1,x1,#0xfeb
016f3ba0  add x2,x2,#0x17c
016f3ba4  add x4,x4,#0x184
016f3ba8  mov x3,xzr
016f3bac  mov x5,xzr
016f3bb0  bl 0x0188ef84
016f3bb4  adrp x1,0x5767000
016f3bb8  adrp x2,0x188f000
016f3bbc  adrp x4,0x188f000
016f3bc0  add x1,x1,#0xffd
016f3bc4  add x2,x2,#0x18c
016f3bc8  add x4,x4,#0x194
016f3bcc  mov x3,xzr
016f3bd0  mov x5,xzr
016f3bd4  bl 0x0188ef84
016f3bd8  adrp x1,0x5768000
016f3bdc  adrp x2,0x188f000
016f3be0  adrp x4,0x188f000
016f3be4  add x1,x1,#0xc
016f3be8  add x2,x2,#0x19c
016f3bec  add x4,x4,#0x1a4
016f3bf0  mov x3,xzr
016f3bf4  mov x5,xzr
016f3bf8  bl 0x0188ef84
016f3bfc  mov x19,x0
016f3c00  ldr w8,[x19, #0x8]
016f3c04  ldr x0,[x19]
016f3c08  sub w8,w8,#0x3
016f3c0c  str w8,[x19, #0x8]
016f3c10  orr w1,wzr,#0xfffffffc
016f3c14  bl 0x0124c4d0
016f3c18  ldr w8,[x19, #0x8]
016f3c1c  ldr x0,[x19]
016f3c20  str wzr,[x19, #0x8]
016f3c24  cmp w8,#0x1
016f3c28  b.lt 0x016f3c34
016f3c2c  mvn w1,w8
016f3c30  bl 0x0124c4d0
016f3c34  ldr w8,[sp, #0x18]
016f3c38  cmp w8,#0x1
016f3c3c  b.lt 0x016f3c4c
016f3c40  ldr x0,[sp, #0x10]
016f3c44  mvn w1,w8
016f3c48  bl 0x0124c4d0
016f3c4c  ldr w8,[sp, #0x8]
016f3c50  cmp w8,#0x1
016f3c54  b.lt 0x016f3c64
016f3c58  ldr x0,[sp]
016f3c5c  mvn w1,w8
016f3c60  bl 0x0124c4d0
016f3c64  ldp x29,x30,[sp, #0x30]
016f3c68  ldr x19,[sp, #0x20]
016f3c6c  add sp,sp,#0x40
016f3c70  ret
