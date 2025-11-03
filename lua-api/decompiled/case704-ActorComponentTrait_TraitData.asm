// ===== case704-ActorComponentTrait_TraitData @ 01721b8c =====
// existing function case704-ActorComponentTrait_TraitData
01721b8c  sub sp,sp,#0x40
01721b90  str x19,[sp, #0x20]
01721b94  stp x29,x30,[sp, #0x30]
01721b98  add x29,sp,#0x30
01721b9c  adrp x1,0x174a000
01721ba0  add x1,x1,#0x87c
01721ba4  mov x19,x0
01721ba8  bl 0x0124ba40
01721bac  adrp x1,0x575d000
01721bb0  add x1,x1,#0xa06
01721bb4  mov x0,x19
01721bb8  str x19,[sp]
01721bbc  bl 0x01251aa0
01721bc0  mov w8,#0x1
01721bc4  str w8,[sp, #0x8]
01721bc8  mov x0,sp
01721bcc  bl 0x0174aa04
01721bd0  adrp x1,0x576f000
01721bd4  adrp x3,0x736d000
01721bd8  add x1,x1,#0x7c8
01721bdc  add x3,x3,#0x101
01721be0  add x0,sp,#0x10
01721be4  mov x2,sp
01721be8  bl 0x0196612c
01721bec  adrp x1,0x5761000
01721bf0  adrp x2,0x1966000
01721bf4  adrp x4,0x1966000
01721bf8  add x1,x1,#0x469
01721bfc  add x2,x2,#0xc0
01721c00  add x4,x4,#0xc8
01721c04  add x0,sp,#0x10
01721c08  mov x3,xzr
01721c0c  mov x5,xzr
01721c10  bl 0x01965ed8
01721c14  adrp x1,0x575f000
01721c18  adrp x2,0x1966000
01721c1c  adrp x4,0x1966000
01721c20  add x1,x1,#0x98
01721c24  add x2,x2,#0xe4
01721c28  add x4,x4,#0xec
01721c2c  mov x3,xzr
01721c30  mov x5,xzr
01721c34  bl 0x01965ed8
01721c38  adrp x1,0x576f000
01721c3c  adrp x2,0x1966000
01721c40  adrp x4,0x1966000
01721c44  add x1,x1,#0x7e6
01721c48  add x2,x2,#0x108
01721c4c  add x4,x4,#0x110
01721c50  mov x3,xzr
01721c54  mov x5,xzr
01721c58  bl 0x01965ed8
01721c5c  mov x19,x0
01721c60  ldr w8,[x19, #0x8]
01721c64  ldr x0,[x19]
01721c68  sub w8,w8,#0x3
01721c6c  str w8,[x19, #0x8]
01721c70  orr w1,wzr,#0xfffffffc
01721c74  bl 0x0124c4d0
01721c78  ldr w8,[x19, #0x8]
01721c7c  ldr x0,[x19]
01721c80  str wzr,[x19, #0x8]
01721c84  cmp w8,#0x1
01721c88  b.lt 0x01721c94
01721c8c  mvn w1,w8
01721c90  bl 0x0124c4d0
01721c94  ldr w8,[sp, #0x18]
01721c98  cmp w8,#0x1
01721c9c  b.lt 0x01721cac
01721ca0  ldr x0,[sp, #0x10]
01721ca4  mvn w1,w8
01721ca8  bl 0x0124c4d0
01721cac  ldr w8,[sp, #0x8]
01721cb0  cmp w8,#0x1
01721cb4  b.lt 0x01721cc4
01721cb8  ldr x0,[sp]
01721cbc  mvn w1,w8
01721cc0  bl 0x0124c4d0
01721cc4  ldp x29,x30,[sp, #0x30]
01721cc8  ldr x19,[sp, #0x20]
01721ccc  add sp,sp,#0x40
01721cd0  ret
