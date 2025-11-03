// ===== case62-JungleGuideResObject @ 01696bb4 =====
// existing function case62-JungleGuideResObject
01696bb4  sub sp,sp,#0x40
01696bb8  stp x20,x19,[sp, #0x20]
01696bbc  stp x29,x30,[sp, #0x30]
01696bc0  add x29,sp,#0x30
01696bc4  adrp x1,0x174a000
01696bc8  add x1,x1,#0x87c
01696bcc  mov x19,x0
01696bd0  bl 0x0124ba40
01696bd4  adrp x1,0x575d000
01696bd8  add x1,x1,#0xa06
01696bdc  mov x0,x19
01696be0  str x19,[sp]
01696be4  bl 0x01251aa0
01696be8  mov w8,#0x1
01696bec  str w8,[sp, #0x8]
01696bf0  mov x0,sp
01696bf4  bl 0x0174aa04
01696bf8  adrp x1,0x575e000
01696bfc  adrp x3,0x736d000
01696c00  add x1,x1,#0xba4
01696c04  add x3,x3,#0x101
01696c08  add x0,sp,#0x10
01696c0c  mov x2,sp
01696c10  bl 0x01773214
01696c14  ldr x0,[sp, #0x10]
01696c18  mov w1,#0x10
01696c1c  bl 0x0124cba0
01696c20  adrp x8,0x1773000
01696c24  dup v0.2D,xzr
01696c28  add x8,x8,#0x20c
01696c2c  mov v0.D[0x0],x8
01696c30  str q0,[x0]
01696c34  ldr x0,[sp, #0x10]
01696c38  adrp x1,0x1773000
01696c3c  add x1,x1,#0x5d8
01696c40  mov w2,#0x1
01696c44  bl 0x0124ec90
01696c48  ldr x0,[sp, #0x10]
01696c4c  mov w1,#0xffffffff
01696c50  bl 0x0124c0c0
01696c54  ldr x19,[sp, #0x10]
01696c58  orr w1,wzr,#0xfffffffb
01696c5c  mov w2,#0x6e7
01696c60  mov x0,x19
01696c64  bl 0x0124a650
01696c68  orr w1,wzr,#0xfffffffe
01696c6c  mov x0,x19
01696c70  bl 0x0124c0c0
01696c74  orr w1,wzr,#0xfffffffe
01696c78  mov x0,x19
01696c7c  bl 0x0124e920
01696c80  mov w20,w0
01696c84  adrp x1,0x575e000
01696c88  add x1,x1,#0xbb9
01696c8c  mov x0,x19
01696c90  bl 0x0124f120
01696c94  orr w1,wzr,#0xfffffffe
01696c98  mov w2,#0x1
01696c9c  mov x0,x19
01696ca0  bl 0x0124cfc0
01696ca4  mov x0,x19
01696ca8  mov w1,w20
01696cac  bl 0x0124e060
01696cb0  orr w1,wzr,#0xfffffffd
01696cb4  mov x0,x19
01696cb8  bl 0x0124c4d0
01696cbc  ldr x19,[sp, #0x10]
01696cc0  orr w1,wzr,#0xfffffffd
01696cc4  mov w2,#0x6e7
01696cc8  mov x0,x19
01696ccc  bl 0x0124a650
01696cd0  orr w1,wzr,#0xfffffffe
01696cd4  mov x0,x19
01696cd8  bl 0x0124c0c0
01696cdc  orr w1,wzr,#0xfffffffe
01696ce0  mov x0,x19
01696ce4  bl 0x0124e920
01696ce8  mov w20,w0
01696cec  adrp x1,0x575e000
01696cf0  add x1,x1,#0xbb9
01696cf4  mov x0,x19
01696cf8  bl 0x0124f120
01696cfc  orr w1,wzr,#0xfffffffe
01696d00  mov w2,#0x1
01696d04  mov x0,x19
01696d08  bl 0x0124cfc0
01696d0c  mov x0,x19
01696d10  mov w1,w20
01696d14  bl 0x0124e060
01696d18  orr w1,wzr,#0xfffffffd
01696d1c  mov x0,x19
01696d20  bl 0x0124c4d0
01696d24  ldr w8,[sp, #0x18]
01696d28  ldr x0,[sp, #0x10]
01696d2c  sub w8,w8,#0x3
01696d30  str w8,[sp, #0x18]
01696d34  orr w1,wzr,#0xfffffffc
01696d38  bl 0x0124c4d0
01696d3c  ldr w8,[sp, #0x18]
01696d40  ldr x0,[sp, #0x10]
01696d44  str wzr,[sp, #0x18]
01696d48  cmp w8,#0x1
01696d4c  b.lt 0x01696d70
01696d50  mvn w1,w8
01696d54  bl 0x0124c4d0
01696d58  ldr w8,[sp, #0x18]
01696d5c  cmp w8,#0x1
01696d60  b.lt 0x01696d70
01696d64  ldr x0,[sp, #0x10]
01696d68  mvn w1,w8
01696d6c  bl 0x0124c4d0
01696d70  ldr w8,[sp, #0x8]
01696d74  cmp w8,#0x1
01696d78  b.lt 0x01696d88
01696d7c  ldr x0,[sp]
01696d80  mvn w1,w8
01696d84  bl 0x0124c4d0
01696d88  ldp x29,x30,[sp, #0x30]
01696d8c  ldp x20,x19,[sp, #0x20]
01696d90  add sp,sp,#0x40
01696d94  ret
