// ===== case58-ForgeHeroPlayStyle @ 01695b7c =====
// existing function case58-ForgeHeroPlayStyle
01695b7c  sub sp,sp,#0x40
01695b80  str x19,[sp, #0x20]
01695b84  stp x29,x30,[sp, #0x30]
01695b88  add x29,sp,#0x30
01695b8c  adrp x1,0x174a000
01695b90  add x1,x1,#0x87c
01695b94  mov x19,x0
01695b98  bl 0x0124ba40
01695b9c  adrp x1,0x575d000
01695ba0  add x1,x1,#0xa06
01695ba4  mov x0,x19
01695ba8  str x19,[sp]
01695bac  bl 0x01251aa0
01695bb0  mov w8,#0x1
01695bb4  str w8,[sp, #0x8]
01695bb8  mov x0,sp
01695bbc  bl 0x0174aa04
01695bc0  adrp x1,0x575e000
01695bc4  adrp x3,0x736d000
01695bc8  add x1,x1,#0x70d
01695bcc  add x3,x3,#0x101
01695bd0  add x0,sp,#0x10
01695bd4  mov x2,sp
01695bd8  bl 0x0177098c
01695bdc  adrp x1,0x599e000
01695be0  adrp x2,0x1770000
01695be4  adrp x4,0x1770000
01695be8  add x1,x1,#0x560
01695bec  add x2,x2,#0x97c
01695bf0  add x4,x4,#0x984
01695bf4  add x0,sp,#0x10
01695bf8  mov x3,xzr
01695bfc  mov x5,xzr
01695c00  bl 0x01770794
01695c04  mov x19,x0
01695c08  ldr w8,[x19, #0x8]
01695c0c  ldr x0,[x19]
01695c10  sub w8,w8,#0x3
01695c14  str w8,[x19, #0x8]
01695c18  orr w1,wzr,#0xfffffffc
01695c1c  bl 0x0124c4d0
01695c20  ldr w8,[x19, #0x8]
01695c24  ldr x0,[x19]
01695c28  str wzr,[x19, #0x8]
01695c2c  cmp w8,#0x1
01695c30  b.lt 0x01695c3c
01695c34  mvn w1,w8
01695c38  bl 0x0124c4d0
01695c3c  ldr w8,[sp, #0x18]
01695c40  cmp w8,#0x1
01695c44  b.lt 0x01695c54
01695c48  ldr x0,[sp, #0x10]
01695c4c  mvn w1,w8
01695c50  bl 0x0124c4d0
01695c54  ldr w8,[sp, #0x8]
01695c58  cmp w8,#0x1
01695c5c  b.lt 0x01695c6c
01695c60  ldr x0,[sp]
01695c64  mvn w1,w8
01695c68  bl 0x0124c4d0
01695c6c  ldp x29,x30,[sp, #0x30]
01695c70  ldr x19,[sp, #0x20]
01695c74  add sp,sp,#0x40
01695c78  ret
