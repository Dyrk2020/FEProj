// ===== case256-NewMvpCoefInfo @ 016b7a38 =====
// existing function case256-NewMvpCoefInfo
016b7a38  sub sp,sp,#0x40
016b7a3c  str x19,[sp, #0x20]
016b7a40  stp x29,x30,[sp, #0x30]
016b7a44  add x29,sp,#0x30
016b7a48  adrp x1,0x174a000
016b7a4c  add x1,x1,#0x87c
016b7a50  mov x19,x0
016b7a54  bl 0x0124ba40
016b7a58  adrp x1,0x575d000
016b7a5c  add x1,x1,#0xa06
016b7a60  mov x0,x19
016b7a64  str x19,[sp]
016b7a68  bl 0x01251aa0
016b7a6c  mov w8,#0x1
016b7a70  str w8,[sp, #0x8]
016b7a74  mov x0,sp
016b7a78  bl 0x0174aa04
016b7a7c  adrp x1,0x5761000
016b7a80  adrp x3,0x736d000
016b7a84  add x1,x1,#0x55b
016b7a88  add x3,x3,#0x101
016b7a8c  add x0,sp,#0x10
016b7a90  mov x2,sp
016b7a94  bl 0x017da788
016b7a98  adrp x1,0x5761000
016b7a9c  adrp x2,0x17da000
016b7aa0  adrp x4,0x17da000
016b7aa4  add x1,x1,#0x56a
016b7aa8  add x2,x2,#0x738
016b7aac  add x4,x4,#0x740
016b7ab0  add x0,sp,#0x10
016b7ab4  mov x3,xzr
016b7ab8  mov x5,xzr
016b7abc  bl 0x017da550
016b7ac0  adrp x1,0x5761000
016b7ac4  adrp x2,0x17da000
016b7ac8  adrp x4,0x17da000
016b7acc  add x1,x1,#0x57a
016b7ad0  add x2,x2,#0x748
016b7ad4  add x4,x4,#0x750
016b7ad8  mov x3,xzr
016b7adc  mov x5,xzr
016b7ae0  bl 0x017da550
016b7ae4  adrp x1,0x575e000
016b7ae8  adrp x2,0x17da000
016b7aec  adrp x4,0x17da000
016b7af0  add x1,x1,#0x517
016b7af4  add x2,x2,#0x758
016b7af8  add x4,x4,#0x760
016b7afc  mov x3,xzr
016b7b00  mov x5,xzr
016b7b04  bl 0x017da550
016b7b08  adrp x1,0x5761000
016b7b0c  adrp x2,0x17da000
016b7b10  adrp x4,0x17da000
016b7b14  add x1,x1,#0x581
016b7b18  add x2,x2,#0x768
016b7b1c  add x4,x4,#0x770
016b7b20  mov x3,xzr
016b7b24  mov x5,xzr
016b7b28  bl 0x017da550
016b7b2c  adrp x1,0x5955000
016b7b30  adrp x2,0x17da000
016b7b34  adrp x4,0x17da000
016b7b38  add x1,x1,#0x16f
016b7b3c  add x2,x2,#0x778
016b7b40  add x4,x4,#0x780
016b7b44  mov x3,xzr
016b7b48  mov x5,xzr
016b7b4c  bl 0x017da550
016b7b50  mov x19,x0
016b7b54  ldr w8,[x19, #0x8]
016b7b58  ldr x0,[x19]
016b7b5c  sub w8,w8,#0x3
016b7b60  str w8,[x19, #0x8]
016b7b64  orr w1,wzr,#0xfffffffc
016b7b68  bl 0x0124c4d0
016b7b6c  ldr w8,[x19, #0x8]
016b7b70  ldr x0,[x19]
016b7b74  str wzr,[x19, #0x8]
016b7b78  cmp w8,#0x1
016b7b7c  b.lt 0x016b7b88
016b7b80  mvn w1,w8
016b7b84  bl 0x0124c4d0
016b7b88  ldr w8,[sp, #0x18]
016b7b8c  cmp w8,#0x1
016b7b90  b.lt 0x016b7ba0
016b7b94  ldr x0,[sp, #0x10]
016b7b98  mvn w1,w8
016b7b9c  bl 0x0124c4d0
016b7ba0  ldr w8,[sp, #0x8]
016b7ba4  cmp w8,#0x1
016b7ba8  b.lt 0x016b7bb8
016b7bac  ldr x0,[sp]
016b7bb0  mvn w1,w8
016b7bb4  bl 0x0124c4d0
016b7bb8  ldp x29,x30,[sp, #0x30]
016b7bbc  ldr x19,[sp, #0x20]
016b7bc0  add sp,sp,#0x40
016b7bc4  ret
