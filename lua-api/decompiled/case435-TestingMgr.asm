// ===== case435-TestingMgr @ 016e79d4 =====
// existing function case435-TestingMgr
016e79d4  sub sp,sp,#0x40
016e79d8  stp x20,x19,[sp, #0x20]
016e79dc  stp x29,x30,[sp, #0x30]
016e79e0  add x29,sp,#0x30
016e79e4  adrp x1,0x174a000
016e79e8  add x1,x1,#0x87c
016e79ec  mov x19,x0
016e79f0  bl 0x0124ba40
016e79f4  adrp x1,0x575d000
016e79f8  add x1,x1,#0xa06
016e79fc  mov x0,x19
016e7a00  str x19,[sp]
016e7a04  bl 0x01251aa0
016e7a08  mov w8,#0x1
016e7a0c  str w8,[sp, #0x8]
016e7a10  mov x0,sp
016e7a14  bl 0x0174aa04
016e7a18  adrp x1,0x5766000
016e7a1c  adrp x3,0x736d000
016e7a20  add x1,x1,#0x851
016e7a24  add x3,x3,#0x101
016e7a28  add x0,sp,#0x10
016e7a2c  mov x2,sp
016e7a30  bl 0x01864cac
016e7a34  ldr x0,[sp, #0x10]
016e7a38  mov w1,#0x10
016e7a3c  bl 0x0124cba0
016e7a40  adrp x8,0x1864000
016e7a44  dup v0.2D,xzr
016e7a48  add x8,x8,#0xaac
016e7a4c  mov v0.D[0x0],x8
016e7a50  str q0,[x0]
016e7a54  ldr x0,[sp, #0x10]
016e7a58  adrp x1,0x1865000
016e7a5c  add x1,x1,#0x70
016e7a60  mov w2,#0x1
016e7a64  bl 0x0124ec90
016e7a68  ldr x0,[sp, #0x10]
016e7a6c  mov w1,#0xffffffff
016e7a70  bl 0x0124c0c0
016e7a74  ldr x19,[sp, #0x10]
016e7a78  orr w1,wzr,#0xfffffffb
016e7a7c  mov w2,#0x6e7
016e7a80  mov x0,x19
016e7a84  bl 0x0124a650
016e7a88  orr w1,wzr,#0xfffffffe
016e7a8c  mov x0,x19
016e7a90  bl 0x0124c0c0
016e7a94  orr w1,wzr,#0xfffffffe
016e7a98  mov x0,x19
016e7a9c  bl 0x0124e920
016e7aa0  mov w20,w0
016e7aa4  adrp x1,0x5766000
016e7aa8  add x1,x1,#0x85c
016e7aac  mov x0,x19
016e7ab0  bl 0x0124f120
016e7ab4  orr w1,wzr,#0xfffffffe
016e7ab8  mov w2,#0x1
016e7abc  mov x0,x19
016e7ac0  bl 0x0124cfc0
016e7ac4  mov x0,x19
016e7ac8  mov w1,w20
016e7acc  bl 0x0124e060
016e7ad0  orr w1,wzr,#0xfffffffd
016e7ad4  mov x0,x19
016e7ad8  bl 0x0124c4d0
016e7adc  ldr x19,[sp, #0x10]
016e7ae0  orr w1,wzr,#0xfffffffd
016e7ae4  mov w2,#0x6e7
016e7ae8  mov x0,x19
016e7aec  bl 0x0124a650
016e7af0  orr w1,wzr,#0xfffffffe
016e7af4  mov x0,x19
016e7af8  bl 0x0124c0c0
016e7afc  orr w1,wzr,#0xfffffffe
016e7b00  mov x0,x19
016e7b04  bl 0x0124e920
016e7b08  mov w20,w0
016e7b0c  adrp x1,0x5766000
016e7b10  add x1,x1,#0x85c
016e7b14  mov x0,x19
016e7b18  bl 0x0124f120
016e7b1c  orr w1,wzr,#0xfffffffe
016e7b20  mov w2,#0x1
016e7b24  mov x0,x19
016e7b28  bl 0x0124cfc0
016e7b2c  mov x0,x19
016e7b30  mov w1,w20
016e7b34  bl 0x0124e060
016e7b38  orr w1,wzr,#0xfffffffd
016e7b3c  mov x0,x19
016e7b40  bl 0x0124c4d0
016e7b44  adrp x1,0x575f000
016e7b48  adrp x2,0x1864000
016e7b4c  adrp x4,0x1864000
016e7b50  add x1,x1,#0xe46
016e7b54  add x2,x2,#0xc9c
016e7b58  add x4,x4,#0xca4
016e7b5c  add x0,sp,#0x10
016e7b60  mov x3,xzr
016e7b64  mov x5,xzr
016e7b68  bl 0x01864ab4
016e7b6c  mov x19,x0
016e7b70  ldr w8,[x19, #0x8]
016e7b74  ldr x0,[x19]
016e7b78  sub w8,w8,#0x3
016e7b7c  str w8,[x19, #0x8]
016e7b80  orr w1,wzr,#0xfffffffc
016e7b84  bl 0x0124c4d0
016e7b88  ldr w8,[x19, #0x8]
016e7b8c  ldr x0,[x19]
016e7b90  str wzr,[x19, #0x8]
016e7b94  cmp w8,#0x1
016e7b98  b.lt 0x016e7ba4
016e7b9c  mvn w1,w8
016e7ba0  bl 0x0124c4d0
016e7ba4  ldr w8,[sp, #0x18]
016e7ba8  cmp w8,#0x1
016e7bac  b.lt 0x016e7bbc
016e7bb0  ldr x0,[sp, #0x10]
016e7bb4  mvn w1,w8
016e7bb8  bl 0x0124c4d0
016e7bbc  ldr w8,[sp, #0x8]
016e7bc0  cmp w8,#0x1
016e7bc4  b.lt 0x016e7bd4
016e7bc8  ldr x0,[sp]
016e7bcc  mvn w1,w8
016e7bd0  bl 0x0124c4d0
016e7bd4  ldp x29,x30,[sp, #0x30]
016e7bd8  ldp x20,x19,[sp, #0x20]
016e7bdc  add sp,sp,#0x40
016e7be0  ret
