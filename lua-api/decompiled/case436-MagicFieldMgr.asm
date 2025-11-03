// ===== case436-MagicFieldMgr @ 016e7c48 =====
// existing function case436-MagicFieldMgr
016e7c48  sub sp,sp,#0x40
016e7c4c  str x19,[sp, #0x20]
016e7c50  stp x29,x30,[sp, #0x30]
016e7c54  add x29,sp,#0x30
016e7c58  adrp x1,0x174a000
016e7c5c  add x1,x1,#0x87c
016e7c60  mov x19,x0
016e7c64  bl 0x0124ba40
016e7c68  adrp x1,0x575d000
016e7c6c  add x1,x1,#0xa06
016e7c70  mov x0,x19
016e7c74  str x19,[sp]
016e7c78  bl 0x01251aa0
016e7c7c  mov w8,#0x1
016e7c80  str w8,[sp, #0x8]
016e7c84  mov x0,sp
016e7c88  bl 0x0174aa04
016e7c8c  adrp x1,0x5766000
016e7c90  adrp x3,0x736d000
016e7c94  add x1,x1,#0x869
016e7c98  add x3,x3,#0x101
016e7c9c  add x0,sp,#0x10
016e7ca0  mov x2,sp
016e7ca4  bl 0x018655ac
016e7ca8  adrp x1,0x5766000
016e7cac  adrp x2,0x1865000
016e7cb0  adrp x4,0x1865000
016e7cb4  add x1,x1,#0x877
016e7cb8  add x2,x2,#0x59c
016e7cbc  add x4,x4,#0x5a4
016e7cc0  add x0,sp,#0x10
016e7cc4  mov x3,xzr
016e7cc8  mov x5,xzr
016e7ccc  bl 0x018653b4
016e7cd0  mov x19,x0
016e7cd4  ldr w8,[x19, #0x8]
016e7cd8  ldr x0,[x19]
016e7cdc  sub w8,w8,#0x3
016e7ce0  str w8,[x19, #0x8]
016e7ce4  orr w1,wzr,#0xfffffffc
016e7ce8  bl 0x0124c4d0
016e7cec  ldr w8,[x19, #0x8]
016e7cf0  ldr x0,[x19]
016e7cf4  str wzr,[x19, #0x8]
016e7cf8  cmp w8,#0x1
016e7cfc  b.lt 0x016e7d08
016e7d00  mvn w1,w8
016e7d04  bl 0x0124c4d0
016e7d08  ldr w8,[sp, #0x18]
016e7d0c  cmp w8,#0x1
016e7d10  b.lt 0x016e7d20
016e7d14  ldr x0,[sp, #0x10]
016e7d18  mvn w1,w8
016e7d1c  bl 0x0124c4d0
016e7d20  ldr w8,[sp, #0x8]
016e7d24  cmp w8,#0x1
016e7d28  b.lt 0x016e7d38
016e7d2c  ldr x0,[sp]
016e7d30  mvn w1,w8
016e7d34  bl 0x0124c4d0
016e7d38  ldp x29,x30,[sp, #0x30]
016e7d3c  ldr x19,[sp, #0x20]
016e7d40  add sp,sp,#0x40
016e7d44  ret
