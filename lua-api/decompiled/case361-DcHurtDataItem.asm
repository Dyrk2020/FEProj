// ===== case361-DcHurtDataItem @ 016d29b8 =====
// existing function case361-DcHurtDataItem
016d29b8  sub sp,sp,#0x40
016d29bc  str x19,[sp, #0x20]
016d29c0  stp x29,x30,[sp, #0x30]
016d29c4  add x29,sp,#0x30
016d29c8  adrp x1,0x174a000
016d29cc  add x1,x1,#0x87c
016d29d0  mov x19,x0
016d29d4  bl 0x0124ba40
016d29d8  adrp x1,0x575d000
016d29dc  add x1,x1,#0xa06
016d29e0  mov x0,x19
016d29e4  str x19,[sp]
016d29e8  bl 0x01251aa0
016d29ec  mov w8,#0x1
016d29f0  str w8,[sp, #0x8]
016d29f4  mov x0,sp
016d29f8  bl 0x0174aa04
016d29fc  adrp x1,0x5763000
016d2a00  adrp x3,0x736d000
016d2a04  add x1,x1,#0xfaf
016d2a08  add x3,x3,#0x101
016d2a0c  add x0,sp,#0x10
016d2a10  mov x2,sp
016d2a14  bl 0x01823aec
016d2a18  adrp x1,0x5763000
016d2a1c  adrp x2,0x1823000
016d2a20  adrp x4,0x1823000
016d2a24  add x1,x1,#0xcff
016d2a28  add x2,x2,#0x69c
016d2a2c  add x4,x4,#0x6a4
016d2a30  add x0,sp,#0x10
016d2a34  mov x3,xzr
016d2a38  mov x5,xzr
016d2a3c  bl 0x018234b4
016d2a40  adrp x1,0x575e000
016d2a44  adrp x2,0x1823000
016d2a48  adrp x4,0x1823000
016d2a4c  add x1,x1,#0x2ec
016d2a50  add x2,x2,#0x894
016d2a54  add x4,x4,#0x89c
016d2a58  mov x3,xzr
016d2a5c  mov x5,xzr
016d2a60  bl 0x018236ac
016d2a64  adrp x1,0x5763000
016d2a68  adrp x2,0x1823000
016d2a6c  adrp x4,0x1823000
016d2a70  add x1,x1,#0xfbe
016d2a74  add x2,x2,#0x8a4
016d2a78  add x4,x4,#0x8ac
016d2a7c  mov x3,xzr
016d2a80  mov x5,xzr
016d2a84  bl 0x018236ac
016d2a88  adrp x1,0x5763000
016d2a8c  adrp x2,0x1823000
016d2a90  adrp x4,0x1823000
016d2a94  add x1,x1,#0xfc8
016d2a98  add x2,x2,#0xa9c
016d2a9c  add x4,x4,#0xaa4
016d2aa0  mov x3,xzr
016d2aa4  mov x5,xzr
016d2aa8  bl 0x018238b4
016d2aac  adrp x1,0x5763000
016d2ab0  adrp x2,0x1823000
016d2ab4  adrp x4,0x1823000
016d2ab8  add x1,x1,#0xfd0
016d2abc  add x2,x2,#0xaac
016d2ac0  add x4,x4,#0xab4
016d2ac4  mov x3,xzr
016d2ac8  mov x5,xzr
016d2acc  bl 0x018238b4
016d2ad0  adrp x1,0x5763000
016d2ad4  adrp x2,0x1823000
016d2ad8  adrp x4,0x1823000
016d2adc  add x1,x1,#0xfda
016d2ae0  add x2,x2,#0xabc
016d2ae4  add x4,x4,#0xac4
016d2ae8  mov x3,xzr
016d2aec  mov x5,xzr
016d2af0  bl 0x018236ac
016d2af4  adrp x1,0x5763000
016d2af8  adrp x2,0x1823000
016d2afc  adrp x4,0x1823000
016d2b00  add x1,x1,#0xfe3
016d2b04  add x2,x2,#0xacc
016d2b08  add x4,x4,#0xad4
016d2b0c  mov x3,xzr
016d2b10  mov x5,xzr
016d2b14  bl 0x018238b4
016d2b18  adrp x1,0x5763000
016d2b1c  adrp x2,0x1823000
016d2b20  adrp x4,0x1823000
016d2b24  add x1,x1,#0xfe9
016d2b28  add x2,x2,#0xadc
016d2b2c  add x4,x4,#0xae4
016d2b30  mov x3,xzr
016d2b34  mov x5,xzr
016d2b38  bl 0x018238b4
016d2b3c  mov x19,x0
016d2b40  ldr w8,[x19, #0x8]
016d2b44  ldr x0,[x19]
016d2b48  sub w8,w8,#0x3
016d2b4c  str w8,[x19, #0x8]
016d2b50  orr w1,wzr,#0xfffffffc
016d2b54  bl 0x0124c4d0
016d2b58  ldr w8,[x19, #0x8]
016d2b5c  ldr x0,[x19]
016d2b60  str wzr,[x19, #0x8]
016d2b64  cmp w8,#0x1
016d2b68  b.lt 0x016d2b74
016d2b6c  mvn w1,w8
016d2b70  bl 0x0124c4d0
016d2b74  ldr w8,[sp, #0x18]
016d2b78  cmp w8,#0x1
016d2b7c  b.lt 0x016d2b8c
016d2b80  ldr x0,[sp, #0x10]
016d2b84  mvn w1,w8
016d2b88  bl 0x0124c4d0
016d2b8c  ldr w8,[sp, #0x8]
016d2b90  cmp w8,#0x1
016d2b94  b.lt 0x016d2ba4
016d2b98  ldr x0,[sp]
016d2b9c  mvn w1,w8
016d2ba0  bl 0x0124c4d0
016d2ba4  ldp x29,x30,[sp, #0x30]
016d2ba8  ldr x19,[sp, #0x20]
016d2bac  add sp,sp,#0x40
016d2bb0  ret
