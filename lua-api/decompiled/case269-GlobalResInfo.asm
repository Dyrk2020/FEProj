// ===== case269-GlobalResInfo @ 016b99ac =====
// existing function case269-GlobalResInfo
016b99ac  sub sp,sp,#0x40
016b99b0  str x19,[sp, #0x20]
016b99b4  stp x29,x30,[sp, #0x30]
016b99b8  add x29,sp,#0x30
016b99bc  adrp x1,0x174a000
016b99c0  add x1,x1,#0x87c
016b99c4  mov x19,x0
016b99c8  bl 0x0124ba40
016b99cc  adrp x1,0x575d000
016b99d0  add x1,x1,#0xa06
016b99d4  mov x0,x19
016b99d8  str x19,[sp]
016b99dc  bl 0x01251aa0
016b99e0  mov w8,#0x1
016b99e4  str w8,[sp, #0x8]
016b99e8  mov x0,sp
016b99ec  bl 0x0174aa04
016b99f0  adrp x1,0x5761000
016b99f4  adrp x3,0x736d000
016b99f8  add x1,x1,#0x813
016b99fc  add x3,x3,#0x101
016b9a00  add x0,sp,#0x10
016b9a04  mov x2,sp
016b9a08  bl 0x017e226c
016b9a0c  adrp x1,0x5761000
016b9a10  adrp x2,0x17e2000
016b9a14  adrp x4,0x17e2000
016b9a18  add x1,x1,#0x821
016b9a1c  add x2,x2,#0x24c
016b9a20  add x4,x4,#0x254
016b9a24  add x0,sp,#0x10
016b9a28  mov x3,xzr
016b9a2c  mov x5,xzr
016b9a30  bl 0x017e2064
016b9a34  adrp x1,0x5955000
016b9a38  adrp x2,0x17e2000
016b9a3c  adrp x4,0x17e2000
016b9a40  add x1,x1,#0x16f
016b9a44  add x2,x2,#0x25c
016b9a48  add x4,x4,#0x264
016b9a4c  mov x3,xzr
016b9a50  mov x5,xzr
016b9a54  bl 0x017e2064
016b9a58  mov x19,x0
016b9a5c  ldr w8,[x19, #0x8]
016b9a60  ldr x0,[x19]
016b9a64  sub w8,w8,#0x3
016b9a68  str w8,[x19, #0x8]
016b9a6c  orr w1,wzr,#0xfffffffc
016b9a70  bl 0x0124c4d0
016b9a74  ldr w8,[x19, #0x8]
016b9a78  ldr x0,[x19]
016b9a7c  str wzr,[x19, #0x8]
016b9a80  cmp w8,#0x1
016b9a84  b.lt 0x016b9a90
016b9a88  mvn w1,w8
016b9a8c  bl 0x0124c4d0
016b9a90  ldr w8,[sp, #0x18]
016b9a94  cmp w8,#0x1
016b9a98  b.lt 0x016b9aa8
016b9a9c  ldr x0,[sp, #0x10]
016b9aa0  mvn w1,w8
016b9aa4  bl 0x0124c4d0
016b9aa8  ldr w8,[sp, #0x8]
016b9aac  cmp w8,#0x1
016b9ab0  b.lt 0x016b9ac0
016b9ab4  ldr x0,[sp]
016b9ab8  mvn w1,w8
016b9abc  bl 0x0124c4d0
016b9ac0  ldp x29,x30,[sp, #0x30]
016b9ac4  ldr x19,[sp, #0x20]
016b9ac8  add sp,sp,#0x40
016b9acc  ret
