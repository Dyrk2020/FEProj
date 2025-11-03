// ===== case354-FEBattleDcGamePlayData @ 016d1a28 =====
// existing function case354-FEBattleDcGamePlayData
016d1a28  sub sp,sp,#0x40
016d1a2c  str x19,[sp, #0x20]
016d1a30  stp x29,x30,[sp, #0x30]
016d1a34  add x29,sp,#0x30
016d1a38  adrp x1,0x174a000
016d1a3c  add x1,x1,#0x87c
016d1a40  mov x19,x0
016d1a44  bl 0x0124ba40
016d1a48  adrp x1,0x575d000
016d1a4c  add x1,x1,#0xa06
016d1a50  mov x0,x19
016d1a54  str x19,[sp]
016d1a58  bl 0x01251aa0
016d1a5c  mov w8,#0x1
016d1a60  str w8,[sp, #0x8]
016d1a64  mov x0,sp
016d1a68  bl 0x0174aa04
016d1a6c  adrp x1,0x5763000
016d1a70  adrp x3,0x736d000
016d1a74  add x1,x1,#0xe0b
016d1a78  add x3,x3,#0x101
016d1a7c  add x0,sp,#0x10
016d1a80  mov x2,sp
016d1a84  bl 0x0181e94c
016d1a88  adrp x1,0x5763000
016d1a8c  adrp x2,0x181e000
016d1a90  add x1,x1,#0xe22
016d1a94  add x2,x2,#0x54c
016d1a98  add x0,sp,#0x10
016d1a9c  mov x3,xzr
016d1aa0  mov x4,xzr
016d1aa4  mov x5,xzr
016d1aa8  bl 0x0181e364
016d1aac  adrp x1,0x5763000
016d1ab0  adrp x2,0x181e000
016d1ab4  add x1,x1,#0xe35
016d1ab8  add x2,x2,#0x73c
016d1abc  mov x3,xzr
016d1ac0  mov x4,xzr
016d1ac4  mov x5,xzr
016d1ac8  bl 0x0181e554
016d1acc  adrp x1,0x5763000
016d1ad0  adrp x2,0x181e000
016d1ad4  add x1,x1,#0xe4a
016d1ad8  add x2,x2,#0x744
016d1adc  mov x3,xzr
016d1ae0  mov x4,xzr
016d1ae4  mov x5,xzr
016d1ae8  bl 0x0181e364
016d1aec  adrp x1,0x5763000
016d1af0  adrp x2,0x181e000
016d1af4  add x1,x1,#0xe5d
016d1af8  add x2,x2,#0x74c
016d1afc  mov x3,xzr
016d1b00  mov x4,xzr
016d1b04  mov x5,xzr
016d1b08  bl 0x0181e554
016d1b0c  adrp x1,0x5763000
016d1b10  adrp x2,0x181e000
016d1b14  adrp x4,0x181e000
016d1b18  add x1,x1,#0xe72
016d1b1c  add x2,x2,#0x93c
016d1b20  add x4,x4,#0x944
016d1b24  mov x3,xzr
016d1b28  mov x5,xzr
016d1b2c  bl 0x0181e754
016d1b30  mov x19,x0
016d1b34  ldr w8,[x19, #0x8]
016d1b38  ldr x0,[x19]
016d1b3c  sub w8,w8,#0x3
016d1b40  str w8,[x19, #0x8]
016d1b44  orr w1,wzr,#0xfffffffc
016d1b48  bl 0x0124c4d0
016d1b4c  ldr w8,[x19, #0x8]
016d1b50  ldr x0,[x19]
016d1b54  str wzr,[x19, #0x8]
016d1b58  cmp w8,#0x1
016d1b5c  b.lt 0x016d1b68
016d1b60  mvn w1,w8
016d1b64  bl 0x0124c4d0
016d1b68  ldr w8,[sp, #0x18]
016d1b6c  cmp w8,#0x1
016d1b70  b.lt 0x016d1b80
016d1b74  ldr x0,[sp, #0x10]
016d1b78  mvn w1,w8
016d1b7c  bl 0x0124c4d0
016d1b80  ldr w8,[sp, #0x8]
016d1b84  cmp w8,#0x1
016d1b88  b.lt 0x016d1b98
016d1b8c  ldr x0,[sp]
016d1b90  mvn w1,w8
016d1b94  bl 0x0124c4d0
016d1b98  ldp x29,x30,[sp, #0x30]
016d1b9c  ldr x19,[sp, #0x20]
016d1ba0  add sp,sp,#0x40
016d1ba4  ret
