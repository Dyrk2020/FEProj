// ===== case483-GlobalStandTable @ 016f09a4 =====
// existing function case483-GlobalStandTable
016f09a4  sub sp,sp,#0x40
016f09a8  stp x20,x19,[sp, #0x20]
016f09ac  stp x29,x30,[sp, #0x30]
016f09b0  add x29,sp,#0x30
016f09b4  adrp x1,0x174a000
016f09b8  add x1,x1,#0x87c
016f09bc  mov x19,x0
016f09c0  bl 0x0124ba40
016f09c4  adrp x1,0x575d000
016f09c8  add x1,x1,#0xa06
016f09cc  mov x0,x19
016f09d0  str x19,[sp]
016f09d4  bl 0x01251aa0
016f09d8  mov w8,#0x1
016f09dc  str w8,[sp, #0x8]
016f09e0  mov x0,sp
016f09e4  bl 0x0174aa04
016f09e8  adrp x1,0x5767000
016f09ec  adrp x3,0x736d000
016f09f0  add x1,x1,#0xbef
016f09f4  add x3,x3,#0x101
016f09f8  add x0,sp,#0x10
016f09fc  mov x2,sp
016f0a00  bl 0x018823d4
016f0a04  ldr x0,[sp, #0x10]
016f0a08  mov w1,#0x10
016f0a0c  bl 0x0124cba0
016f0a10  adrp x8,0x1881000
016f0a14  dup v0.2D,xzr
016f0a18  add x8,x8,#0xfac
016f0a1c  mov v0.D[0x0],x8
016f0a20  str q0,[x0]
016f0a24  ldr x0,[sp, #0x10]
016f0a28  adrp x1,0x1882000
016f0a2c  add x1,x1,#0x798
016f0a30  mov w2,#0x1
016f0a34  bl 0x0124ec90
016f0a38  ldr x0,[sp, #0x10]
016f0a3c  mov w1,#0xffffffff
016f0a40  bl 0x0124c0c0
016f0a44  ldr x19,[sp, #0x10]
016f0a48  orr w1,wzr,#0xfffffffb
016f0a4c  mov w2,#0x6e7
016f0a50  mov x0,x19
016f0a54  bl 0x0124a650
016f0a58  orr w1,wzr,#0xfffffffe
016f0a5c  mov x0,x19
016f0a60  bl 0x0124c0c0
016f0a64  orr w1,wzr,#0xfffffffe
016f0a68  mov x0,x19
016f0a6c  bl 0x0124e920
016f0a70  mov w20,w0
016f0a74  adrp x1,0x5767000
016f0a78  add x1,x1,#0xc00
016f0a7c  mov x0,x19
016f0a80  bl 0x0124f120
016f0a84  orr w1,wzr,#0xfffffffe
016f0a88  mov w2,#0x1
016f0a8c  mov x0,x19
016f0a90  bl 0x0124cfc0
016f0a94  mov x0,x19
016f0a98  mov w1,w20
016f0a9c  bl 0x0124e060
016f0aa0  orr w1,wzr,#0xfffffffd
016f0aa4  mov x0,x19
016f0aa8  bl 0x0124c4d0
016f0aac  ldr x19,[sp, #0x10]
016f0ab0  orr w1,wzr,#0xfffffffd
016f0ab4  mov w2,#0x6e7
016f0ab8  mov x0,x19
016f0abc  bl 0x0124a650
016f0ac0  orr w1,wzr,#0xfffffffe
016f0ac4  mov x0,x19
016f0ac8  bl 0x0124c0c0
016f0acc  orr w1,wzr,#0xfffffffe
016f0ad0  mov x0,x19
016f0ad4  bl 0x0124e920
016f0ad8  mov w20,w0
016f0adc  adrp x1,0x5767000
016f0ae0  add x1,x1,#0xc00
016f0ae4  mov x0,x19
016f0ae8  bl 0x0124f120
016f0aec  orr w1,wzr,#0xfffffffe
016f0af0  mov w2,#0x1
016f0af4  mov x0,x19
016f0af8  bl 0x0124cfc0
016f0afc  mov x0,x19
016f0b00  mov w1,w20
016f0b04  bl 0x0124e060
016f0b08  orr w1,wzr,#0xfffffffd
016f0b0c  mov x0,x19
016f0b10  bl 0x0124c4d0
016f0b14  adrp x1,0x5767000
016f0b18  adrp x2,0x1882000
016f0b1c  adrp x4,0x1882000
016f0b20  add x1,x1,#0xc13
016f0b24  add x2,x2,#0x19c
016f0b28  add x4,x4,#0x1a4
016f0b2c  add x0,sp,#0x10
016f0b30  mov x3,xzr
016f0b34  mov x5,xzr
016f0b38  bl 0x01881fb4
016f0b3c  adrp x1,0x5767000
016f0b40  adrp x2,0x1882000
016f0b44  adrp x4,0x1882000
016f0b48  add x1,x1,#0xc1a
016f0b4c  add x2,x2,#0x1ac
016f0b50  add x4,x4,#0x1b4
016f0b54  mov x3,xzr
016f0b58  mov x5,xzr
016f0b5c  bl 0x01881fb4
016f0b60  adrp x1,0x5767000
016f0b64  adrp x2,0x1882000
016f0b68  adrp x4,0x1882000
016f0b6c  add x1,x1,#0xc21
016f0b70  add x2,x2,#0x3a4
016f0b74  add x4,x4,#0x3b8
016f0b78  mov x3,xzr
016f0b7c  mov x5,xzr
016f0b80  bl 0x018821bc
016f0b84  mov x19,x0
016f0b88  ldr w8,[x19, #0x8]
016f0b8c  ldr x0,[x19]
016f0b90  sub w8,w8,#0x3
016f0b94  str w8,[x19, #0x8]
016f0b98  orr w1,wzr,#0xfffffffc
016f0b9c  bl 0x0124c4d0
016f0ba0  ldr w8,[x19, #0x8]
016f0ba4  ldr x0,[x19]
016f0ba8  str wzr,[x19, #0x8]
016f0bac  cmp w8,#0x1
016f0bb0  b.lt 0x016f0bbc
016f0bb4  mvn w1,w8
016f0bb8  bl 0x0124c4d0
016f0bbc  ldr w8,[sp, #0x18]
016f0bc0  cmp w8,#0x1
016f0bc4  b.lt 0x016f0bd4
016f0bc8  ldr x0,[sp, #0x10]
016f0bcc  mvn w1,w8
016f0bd0  bl 0x0124c4d0
016f0bd4  ldr w8,[sp, #0x8]
016f0bd8  cmp w8,#0x1
016f0bdc  b.lt 0x016f0bec
016f0be0  ldr x0,[sp]
016f0be4  mvn w1,w8
016f0be8  bl 0x0124c4d0
016f0bec  ldp x29,x30,[sp, #0x30]
016f0bf0  ldp x20,x19,[sp, #0x20]
016f0bf4  add sp,sp,#0x40
016f0bf8  ret
