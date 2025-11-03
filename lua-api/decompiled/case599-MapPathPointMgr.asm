// ===== case599-MapPathPointMgr @ 01706b80 =====
// existing function case599-MapPathPointMgr
01706b80  sub sp,sp,#0x40
01706b84  stp x20,x19,[sp, #0x20]
01706b88  stp x29,x30,[sp, #0x30]
01706b8c  add x29,sp,#0x30
01706b90  adrp x1,0x174a000
01706b94  add x1,x1,#0x87c
01706b98  mov x19,x0
01706b9c  bl 0x0124ba40
01706ba0  adrp x1,0x575d000
01706ba4  add x1,x1,#0xa06
01706ba8  mov x0,x19
01706bac  str x19,[sp]
01706bb0  bl 0x01251aa0
01706bb4  mov w8,#0x1
01706bb8  str w8,[sp, #0x8]
01706bbc  mov x0,sp
01706bc0  bl 0x0174aa04
01706bc4  adrp x1,0x576a000
01706bc8  adrp x3,0x736d000
01706bcc  add x1,x1,#0x2a2
01706bd0  add x3,x3,#0x101
01706bd4  add x0,sp,#0x10
01706bd8  mov x2,sp
01706bdc  bl 0x018f0ecc
01706be0  ldr x0,[sp, #0x10]
01706be4  mov w1,#0x10
01706be8  bl 0x0124cba0
01706bec  adrp x8,0x18f0000
01706bf0  dup v0.2D,xzr
01706bf4  add x8,x8,#0xec4
01706bf8  mov v0.D[0x0],x8
01706bfc  str q0,[x0]
01706c00  ldr x0,[sp, #0x10]
01706c04  adrp x1,0x18f1000
01706c08  add x1,x1,#0x290
01706c0c  mov w2,#0x1
01706c10  bl 0x0124ec90
01706c14  ldr x0,[sp, #0x10]
01706c18  mov w1,#0xffffffff
01706c1c  bl 0x0124c0c0
01706c20  ldr x19,[sp, #0x10]
01706c24  orr w1,wzr,#0xfffffffb
01706c28  mov w2,#0x6e7
01706c2c  mov x0,x19
01706c30  bl 0x0124a650
01706c34  orr w1,wzr,#0xfffffffe
01706c38  mov x0,x19
01706c3c  bl 0x0124c0c0
01706c40  orr w1,wzr,#0xfffffffe
01706c44  mov x0,x19
01706c48  bl 0x0124e920
01706c4c  mov w20,w0
01706c50  adrp x1,0x576a000
01706c54  add x1,x1,#0x2b2
01706c58  mov x0,x19
01706c5c  bl 0x0124f120
01706c60  orr w1,wzr,#0xfffffffe
01706c64  mov w2,#0x1
01706c68  mov x0,x19
01706c6c  bl 0x0124cfc0
01706c70  mov x0,x19
01706c74  mov w1,w20
01706c78  bl 0x0124e060
01706c7c  orr w1,wzr,#0xfffffffd
01706c80  mov x0,x19
01706c84  bl 0x0124c4d0
01706c88  ldr x19,[sp, #0x10]
01706c8c  orr w1,wzr,#0xfffffffd
01706c90  mov w2,#0x6e7
01706c94  mov x0,x19
01706c98  bl 0x0124a650
01706c9c  orr w1,wzr,#0xfffffffe
01706ca0  mov x0,x19
01706ca4  bl 0x0124c0c0
01706ca8  orr w1,wzr,#0xfffffffe
01706cac  mov x0,x19
01706cb0  bl 0x0124e920
01706cb4  mov w20,w0
01706cb8  adrp x1,0x576a000
01706cbc  add x1,x1,#0x2b2
01706cc0  mov x0,x19
01706cc4  bl 0x0124f120
01706cc8  orr w1,wzr,#0xfffffffe
01706ccc  mov w2,#0x1
01706cd0  mov x0,x19
01706cd4  bl 0x0124cfc0
01706cd8  mov x0,x19
01706cdc  mov w1,w20
01706ce0  bl 0x0124e060
01706ce4  orr w1,wzr,#0xfffffffd
01706ce8  mov x0,x19
01706cec  bl 0x0124c4d0
01706cf0  ldr w8,[sp, #0x18]
01706cf4  ldr x0,[sp, #0x10]
01706cf8  sub w8,w8,#0x3
01706cfc  str w8,[sp, #0x18]
01706d00  orr w1,wzr,#0xfffffffc
01706d04  bl 0x0124c4d0
01706d08  ldr w8,[sp, #0x18]
01706d0c  ldr x0,[sp, #0x10]
01706d10  str wzr,[sp, #0x18]
01706d14  cmp w8,#0x1
01706d18  b.lt 0x01706d3c
01706d1c  mvn w1,w8
01706d20  bl 0x0124c4d0
01706d24  ldr w8,[sp, #0x18]
01706d28  cmp w8,#0x1
01706d2c  b.lt 0x01706d3c
01706d30  ldr x0,[sp, #0x10]
01706d34  mvn w1,w8
01706d38  bl 0x0124c4d0
01706d3c  ldr w8,[sp, #0x8]
01706d40  cmp w8,#0x1
01706d44  b.lt 0x01706d54
01706d48  ldr x0,[sp]
01706d4c  mvn w1,w8
01706d50  bl 0x0124c4d0
01706d54  ldp x29,x30,[sp, #0x30]
01706d58  ldp x20,x19,[sp, #0x20]
01706d5c  add sp,sp,#0x40
01706d60  ret
