// ===== case355-DcGlobalSPExtraItem @ 016d1c0c =====
// existing function case355-DcGlobalSPExtraItem
016d1c0c  sub sp,sp,#0x40
016d1c10  str x19,[sp, #0x20]
016d1c14  stp x29,x30,[sp, #0x30]
016d1c18  add x29,sp,#0x30
016d1c1c  adrp x1,0x174a000
016d1c20  add x1,x1,#0x87c
016d1c24  mov x19,x0
016d1c28  bl 0x0124ba40
016d1c2c  adrp x1,0x575d000
016d1c30  add x1,x1,#0xa06
016d1c34  mov x0,x19
016d1c38  str x19,[sp]
016d1c3c  bl 0x01251aa0
016d1c40  mov w8,#0x1
016d1c44  str w8,[sp, #0x8]
016d1c48  mov x0,sp
016d1c4c  bl 0x0174aa04
016d1c50  adrp x1,0x5763000
016d1c54  adrp x3,0x736d000
016d1c58  add x1,x1,#0xe80
016d1c5c  add x3,x3,#0x101
016d1c60  add x0,sp,#0x10
016d1c64  mov x2,sp
016d1c68  bl 0x0181f818
016d1c6c  adrp x1,0x5763000
016d1c70  adrp x2,0x181f000
016d1c74  adrp x4,0x181f000
016d1c78  add x1,x1,#0xe94
016d1c7c  add x2,x2,#0x600
016d1c80  add x4,x4,#0x608
016d1c84  add x0,sp,#0x10
016d1c88  mov x3,xzr
016d1c8c  mov x5,xzr
016d1c90  bl 0x0181f418
016d1c94  adrp x1,0x576e000
016d1c98  adrp x2,0x181f000
016d1c9c  adrp x4,0x181f000
016d1ca0  add x1,x1,#0x43c
016d1ca4  add x2,x2,#0x610
016d1ca8  add x4,x4,#0x618
016d1cac  mov x3,xzr
016d1cb0  mov x5,xzr
016d1cb4  bl 0x0181f418
016d1cb8  adrp x1,0x5763000
016d1cbc  adrp x2,0x181f000
016d1cc0  adrp x4,0x181f000
016d1cc4  add x1,x1,#0xe9e
016d1cc8  add x2,x2,#0x808
016d1ccc  add x4,x4,#0x810
016d1cd0  mov x3,xzr
016d1cd4  mov x5,xzr
016d1cd8  bl 0x0181f620
016d1cdc  mov x19,x0
016d1ce0  ldr w8,[x19, #0x8]
016d1ce4  ldr x0,[x19]
016d1ce8  sub w8,w8,#0x3
016d1cec  str w8,[x19, #0x8]
016d1cf0  orr w1,wzr,#0xfffffffc
016d1cf4  bl 0x0124c4d0
016d1cf8  ldr w8,[x19, #0x8]
016d1cfc  ldr x0,[x19]
016d1d00  str wzr,[x19, #0x8]
016d1d04  cmp w8,#0x1
016d1d08  b.lt 0x016d1d14
016d1d0c  mvn w1,w8
016d1d10  bl 0x0124c4d0
016d1d14  ldr w8,[sp, #0x18]
016d1d18  cmp w8,#0x1
016d1d1c  b.lt 0x016d1d2c
016d1d20  ldr x0,[sp, #0x10]
016d1d24  mvn w1,w8
016d1d28  bl 0x0124c4d0
016d1d2c  ldr w8,[sp, #0x8]
016d1d30  cmp w8,#0x1
016d1d34  b.lt 0x016d1d44
016d1d38  ldr x0,[sp]
016d1d3c  mvn w1,w8
016d1d40  bl 0x0124c4d0
016d1d44  ldp x29,x30,[sp, #0x30]
016d1d48  ldr x19,[sp, #0x20]
016d1d4c  add sp,sp,#0x40
016d1d50  ret
