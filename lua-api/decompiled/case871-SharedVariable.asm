// ===== case871-SharedVariable @ 01748ab0 =====
// existing function case871-SharedVariable
01748ab0  sub sp,sp,#0x40
01748ab4  str x19,[sp, #0x20]
01748ab8  stp x29,x30,[sp, #0x30]
01748abc  add x29,sp,#0x30
01748ac0  adrp x1,0x174a000
01748ac4  add x1,x1,#0x87c
01748ac8  mov x19,x0
01748acc  bl 0x0124ba40
01748ad0  adrp x1,0x575d000
01748ad4  add x1,x1,#0xa06
01748ad8  mov x0,x19
01748adc  str x19,[sp]
01748ae0  bl 0x01251aa0
01748ae4  mov w8,#0x1
01748ae8  str w8,[sp, #0x8]
01748aec  mov x0,sp
01748af0  bl 0x0174aa04
01748af4  adrp x1,0x5774000
01748af8  adrp x3,0x736d000
01748afc  add x1,x1,#0x4f
01748b00  add x3,x3,#0x101
01748b04  add x0,sp,#0x10
01748b08  mov x2,sp
01748b0c  bl 0x01a140c8
01748b10  adrp x1,0x5774000
01748b14  adrp x2,0x1a14000
01748b18  adrp x4,0x1a14000
01748b1c  add x1,x1,#0x5e
01748b20  add x2,x2,#0xb8
01748b24  add x4,x4,#0xc0
01748b28  add x0,sp,#0x10
01748b2c  mov x3,xzr
01748b30  mov x5,xzr
01748b34  bl 0x01a13ed0
01748b38  mov x19,x0
01748b3c  ldr w8,[x19, #0x8]
01748b40  ldr x0,[x19]
01748b44  sub w8,w8,#0x3
01748b48  str w8,[x19, #0x8]
01748b4c  orr w1,wzr,#0xfffffffc
01748b50  bl 0x0124c4d0
01748b54  ldr w8,[x19, #0x8]
01748b58  ldr x0,[x19]
01748b5c  str wzr,[x19, #0x8]
01748b60  cmp w8,#0x1
01748b64  b.lt 0x01748b70
01748b68  mvn w1,w8
01748b6c  bl 0x0124c4d0
01748b70  ldr w8,[sp, #0x18]
01748b74  cmp w8,#0x1
01748b78  b.lt 0x01748b88
01748b7c  ldr x0,[sp, #0x10]
01748b80  mvn w1,w8
01748b84  bl 0x0124c4d0
01748b88  ldr w8,[sp, #0x8]
01748b8c  cmp w8,#0x1
01748b90  b.lt 0x01748ba0
01748b94  ldr x0,[sp]
01748b98  mvn w1,w8
01748b9c  bl 0x0124c4d0
01748ba0  ldp x29,x30,[sp, #0x30]
01748ba4  ldr x19,[sp, #0x20]
01748ba8  add sp,sp,#0x40
01748bac  ret
