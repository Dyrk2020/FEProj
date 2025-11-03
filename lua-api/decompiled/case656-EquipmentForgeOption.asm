// ===== case656-EquipmentForgeOption @ 01715a14 =====
// existing function case656-EquipmentForgeOption
01715a14  sub sp,sp,#0x40
01715a18  str x19,[sp, #0x20]
01715a1c  stp x29,x30,[sp, #0x30]
01715a20  add x29,sp,#0x30
01715a24  adrp x1,0x174a000
01715a28  add x1,x1,#0x87c
01715a2c  mov x19,x0
01715a30  bl 0x0124ba40
01715a34  adrp x1,0x575d000
01715a38  add x1,x1,#0xa06
01715a3c  mov x0,x19
01715a40  str x19,[sp]
01715a44  bl 0x01251aa0
01715a48  mov w8,#0x1
01715a4c  str w8,[sp, #0x8]
01715a50  mov x0,sp
01715a54  bl 0x0174aa04
01715a58  adrp x1,0x576c000
01715a5c  adrp x3,0x736d000
01715a60  add x1,x1,#0xae8
01715a64  add x3,x3,#0x101
01715a68  add x0,sp,#0x10
01715a6c  mov x2,sp
01715a70  bl 0x0192c0b8
01715a74  adrp x1,0x57f9000
01715a78  adrp x2,0x192b000
01715a7c  adrp x4,0x192b000
01715a80  add x1,x1,#0xcf2
01715a84  add x2,x2,#0xd8c
01715a88  add x4,x4,#0xd94
01715a8c  add x0,sp,#0x10
01715a90  mov x3,xzr
01715a94  mov x5,xzr
01715a98  bl 0x0192bba4
01715a9c  adrp x1,0x576c000
01715aa0  adrp x2,0x192b000
01715aa4  adrp x4,0x192b000
01715aa8  add x1,x1,#0xafd
01715aac  add x2,x2,#0xdb0
01715ab0  add x4,x4,#0xdb8
01715ab4  mov x3,xzr
01715ab8  mov x5,xzr
01715abc  bl 0x0192bba4
01715ac0  adrp x1,0x576c000
01715ac4  adrp x2,0x192b000
01715ac8  adrp x4,0x192b000
01715acc  add x1,x1,#0xb04
01715ad0  add x2,x2,#0xdd4
01715ad4  add x4,x4,#0xddc
01715ad8  mov x3,xzr
01715adc  mov x5,xzr
01715ae0  bl 0x0192bba4
01715ae4  adrp x1,0x576c000
01715ae8  adrp x2,0x192b000
01715aec  adrp x4,0x192b000
01715af0  add x1,x1,#0xb0b
01715af4  add x2,x2,#0xdf8
01715af8  add x4,x4,#0xe00
01715afc  mov x3,xzr
01715b00  mov x5,xzr
01715b04  bl 0x0192bba4
01715b08  adrp x1,0x5760000
01715b0c  adrp x2,0x192c000
01715b10  adrp x4,0x192c000
01715b14  add x1,x1,#0x51e
01715b18  add x2,x2,#0x4
01715b1c  add x4,x4,#0xc
01715b20  mov x3,xzr
01715b24  mov x5,xzr
01715b28  bl 0x0192be1c
01715b2c  adrp x1,0x576c000
01715b30  adrp x2,0x192c000
01715b34  adrp x4,0x192c000
01715b38  add x1,x1,#0xb12
01715b3c  add x2,x2,#0x28
01715b40  add x4,x4,#0x30
01715b44  mov x3,xzr
01715b48  mov x5,xzr
01715b4c  bl 0x0192bba4
01715b50  adrp x1,0x576c000
01715b54  adrp x2,0x192c000
01715b58  adrp x4,0x192c000
01715b5c  add x1,x1,#0xb21
01715b60  add x2,x2,#0x4c
01715b64  add x4,x4,#0x54
01715b68  mov x3,xzr
01715b6c  mov x5,xzr
01715b70  bl 0x0192bba4
01715b74  adrp x1,0x576c000
01715b78  adrp x2,0x192c000
01715b7c  adrp x4,0x192c000
01715b80  add x1,x1,#0xb39
01715b84  add x2,x2,#0x70
01715b88  add x4,x4,#0x78
01715b8c  mov x3,xzr
01715b90  mov x5,xzr
01715b94  bl 0x0192be1c
01715b98  adrp x1,0x575e000
01715b9c  adrp x2,0x192c000
01715ba0  adrp x4,0x192c000
01715ba4  add x1,x1,#0x738
01715ba8  add x2,x2,#0x94
01715bac  add x4,x4,#0x9c
01715bb0  mov x3,xzr
01715bb4  mov x5,xzr
01715bb8  bl 0x0192bba4
01715bbc  mov x19,x0
01715bc0  ldr w8,[x19, #0x8]
01715bc4  ldr x0,[x19]
01715bc8  sub w8,w8,#0x3
01715bcc  str w8,[x19, #0x8]
01715bd0  orr w1,wzr,#0xfffffffc
01715bd4  bl 0x0124c4d0
01715bd8  ldr w8,[x19, #0x8]
01715bdc  ldr x0,[x19]
01715be0  str wzr,[x19, #0x8]
01715be4  cmp w8,#0x1
01715be8  b.lt 0x01715bf4
01715bec  mvn w1,w8
01715bf0  bl 0x0124c4d0
01715bf4  ldr w8,[sp, #0x18]
01715bf8  cmp w8,#0x1
01715bfc  b.lt 0x01715c0c
01715c00  ldr x0,[sp, #0x10]
01715c04  mvn w1,w8
01715c08  bl 0x0124c4d0
01715c0c  ldr w8,[sp, #0x8]
01715c10  cmp w8,#0x1
01715c14  b.lt 0x01715c24
01715c18  ldr x0,[sp]
01715c1c  mvn w1,w8
01715c20  bl 0x0124c4d0
01715c24  ldp x29,x30,[sp, #0x30]
01715c28  ldr x19,[sp, #0x20]
01715c2c  add sp,sp,#0x40
01715c30  ret
