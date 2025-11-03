// ===== case583-SceneResBuilding @ 01703bac =====
// existing function case583-SceneResBuilding
01703bac  sub sp,sp,#0x40
01703bb0  stp x20,x19,[sp, #0x20]
01703bb4  stp x29,x30,[sp, #0x30]
01703bb8  add x29,sp,#0x30
01703bbc  adrp x1,0x174a000
01703bc0  add x1,x1,#0x87c
01703bc4  mov x19,x0
01703bc8  bl 0x0124ba40
01703bcc  adrp x1,0x575d000
01703bd0  add x1,x1,#0xa06
01703bd4  mov x0,x19
01703bd8  str x19,[sp]
01703bdc  bl 0x01251aa0
01703be0  mov w8,#0x1
01703be4  str w8,[sp, #0x8]
01703be8  mov x0,sp
01703bec  bl 0x0174aa04
01703bf0  adrp x1,0x576a000
01703bf4  adrp x3,0x736d000
01703bf8  add x1,x1,#0x13
01703bfc  add x3,x3,#0x101
01703c00  add x0,sp,#0x10
01703c04  mov x2,sp
01703c08  bl 0x018e7c68
01703c0c  ldr x0,[sp, #0x10]
01703c10  mov w1,#0x10
01703c14  bl 0x0124cba0
01703c18  adrp x8,0x18e7000
01703c1c  dup v0.2D,xzr
01703c20  add x8,x8,#0xc60
01703c24  mov v0.D[0x0],x8
01703c28  str q0,[x0]
01703c2c  ldr x0,[sp, #0x10]
01703c30  adrp x1,0x18e8000
01703c34  add x1,x1,#0x2c
01703c38  mov w2,#0x1
01703c3c  bl 0x0124ec90
01703c40  ldr x0,[sp, #0x10]
01703c44  mov w1,#0xffffffff
01703c48  bl 0x0124c0c0
01703c4c  ldr x19,[sp, #0x10]
01703c50  orr w1,wzr,#0xfffffffb
01703c54  mov w2,#0x6e7
01703c58  mov x0,x19
01703c5c  bl 0x0124a650
01703c60  orr w1,wzr,#0xfffffffe
01703c64  mov x0,x19
01703c68  bl 0x0124c0c0
01703c6c  orr w1,wzr,#0xfffffffe
01703c70  mov x0,x19
01703c74  bl 0x0124e920
01703c78  mov w20,w0
01703c7c  adrp x1,0x5769000
01703c80  add x1,x1,#0xffd
01703c84  mov x0,x19
01703c88  bl 0x0124f120
01703c8c  orr w1,wzr,#0xfffffffe
01703c90  mov w2,#0x1
01703c94  mov x0,x19
01703c98  bl 0x0124cfc0
01703c9c  mov x0,x19
01703ca0  mov w1,w20
01703ca4  bl 0x0124e060
01703ca8  orr w1,wzr,#0xfffffffd
01703cac  mov x0,x19
01703cb0  bl 0x0124c4d0
01703cb4  ldr x19,[sp, #0x10]
01703cb8  orr w1,wzr,#0xfffffffd
01703cbc  mov w2,#0x6e7
01703cc0  mov x0,x19
01703cc4  bl 0x0124a650
01703cc8  orr w1,wzr,#0xfffffffe
01703ccc  mov x0,x19
01703cd0  bl 0x0124c0c0
01703cd4  orr w1,wzr,#0xfffffffe
01703cd8  mov x0,x19
01703cdc  bl 0x0124e920
01703ce0  mov w20,w0
01703ce4  adrp x1,0x5769000
01703ce8  add x1,x1,#0xffd
01703cec  mov x0,x19
01703cf0  bl 0x0124f120
01703cf4  orr w1,wzr,#0xfffffffe
01703cf8  mov w2,#0x1
01703cfc  mov x0,x19
01703d00  bl 0x0124cfc0
01703d04  mov x0,x19
01703d08  mov w1,w20
01703d0c  bl 0x0124e060
01703d10  orr w1,wzr,#0xfffffffd
01703d14  mov x0,x19
01703d18  bl 0x0124c4d0
01703d1c  ldr w8,[sp, #0x18]
01703d20  ldr x0,[sp, #0x10]
01703d24  sub w8,w8,#0x3
01703d28  str w8,[sp, #0x18]
01703d2c  orr w1,wzr,#0xfffffffc
01703d30  bl 0x0124c4d0
01703d34  ldr w8,[sp, #0x18]
01703d38  ldr x0,[sp, #0x10]
01703d3c  str wzr,[sp, #0x18]
01703d40  cmp w8,#0x1
01703d44  b.lt 0x01703d68
01703d48  mvn w1,w8
01703d4c  bl 0x0124c4d0
01703d50  ldr w8,[sp, #0x18]
01703d54  cmp w8,#0x1
01703d58  b.lt 0x01703d68
01703d5c  ldr x0,[sp, #0x10]
01703d60  mvn w1,w8
01703d64  bl 0x0124c4d0
01703d68  ldr w8,[sp, #0x8]
01703d6c  cmp w8,#0x1
01703d70  b.lt 0x01703d80
01703d74  ldr x0,[sp]
01703d78  mvn w1,w8
01703d7c  bl 0x0124c4d0
01703d80  ldp x29,x30,[sp, #0x30]
01703d84  ldp x20,x19,[sp, #0x20]
01703d88  add sp,sp,#0x40
01703d8c  ret
