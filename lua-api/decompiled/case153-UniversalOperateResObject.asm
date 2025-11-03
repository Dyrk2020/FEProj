// ===== case153-UniversalOperateResObject @ 016a68b0 =====
// existing function case153-UniversalOperateResObject
016a68b0  sub sp,sp,#0x40
016a68b4  stp x20,x19,[sp, #0x20]
016a68b8  stp x29,x30,[sp, #0x30]
016a68bc  add x29,sp,#0x30
016a68c0  adrp x1,0x174a000
016a68c4  add x1,x1,#0x87c
016a68c8  mov x19,x0
016a68cc  bl 0x0124ba40
016a68d0  adrp x1,0x575d000
016a68d4  add x1,x1,#0xa06
016a68d8  mov x0,x19
016a68dc  str x19,[sp]
016a68e0  bl 0x01251aa0
016a68e4  mov w8,#0x1
016a68e8  str w8,[sp, #0x8]
016a68ec  mov x0,sp
016a68f0  bl 0x0174aa04
016a68f4  adrp x1,0x5760000
016a68f8  adrp x3,0x736d000
016a68fc  add x1,x1,#0x119
016a6900  add x3,x3,#0x101
016a6904  add x0,sp,#0x10
016a6908  mov x2,sp
016a690c  bl 0x017a1388
016a6910  ldr x0,[sp, #0x10]
016a6914  mov w1,#0x10
016a6918  bl 0x0124cba0
016a691c  adrp x8,0x17a1000
016a6920  dup v0.2D,xzr
016a6924  add x8,x8,#0x378
016a6928  mov v0.D[0x0],x8
016a692c  str q0,[x0]
016a6930  ldr x0,[sp, #0x10]
016a6934  adrp x1,0x17a1000
016a6938  add x1,x1,#0x74c
016a693c  mov w2,#0x1
016a6940  bl 0x0124ec90
016a6944  ldr x0,[sp, #0x10]
016a6948  mov w1,#0xffffffff
016a694c  bl 0x0124c0c0
016a6950  ldr x19,[sp, #0x10]
016a6954  orr w1,wzr,#0xfffffffb
016a6958  mov w2,#0x6e7
016a695c  mov x0,x19
016a6960  bl 0x0124a650
016a6964  orr w1,wzr,#0xfffffffe
016a6968  mov x0,x19
016a696c  bl 0x0124c0c0
016a6970  orr w1,wzr,#0xfffffffe
016a6974  mov x0,x19
016a6978  bl 0x0124e920
016a697c  mov w20,w0
016a6980  adrp x1,0x575e000
016a6984  add x1,x1,#0x56d
016a6988  mov x0,x19
016a698c  bl 0x0124f120
016a6990  orr w1,wzr,#0xfffffffe
016a6994  mov w2,#0x1
016a6998  mov x0,x19
016a699c  bl 0x0124cfc0
016a69a0  mov x0,x19
016a69a4  mov w1,w20
016a69a8  bl 0x0124e060
016a69ac  orr w1,wzr,#0xfffffffd
016a69b0  mov x0,x19
016a69b4  bl 0x0124c4d0
016a69b8  ldr x19,[sp, #0x10]
016a69bc  orr w1,wzr,#0xfffffffd
016a69c0  mov w2,#0x6e7
016a69c4  mov x0,x19
016a69c8  bl 0x0124a650
016a69cc  orr w1,wzr,#0xfffffffe
016a69d0  mov x0,x19
016a69d4  bl 0x0124c0c0
016a69d8  orr w1,wzr,#0xfffffffe
016a69dc  mov x0,x19
016a69e0  bl 0x0124e920
016a69e4  mov w20,w0
016a69e8  adrp x1,0x575e000
016a69ec  add x1,x1,#0x56d
016a69f0  mov x0,x19
016a69f4  bl 0x0124f120
016a69f8  orr w1,wzr,#0xfffffffe
016a69fc  mov w2,#0x1
016a6a00  mov x0,x19
016a6a04  bl 0x0124cfc0
016a6a08  mov x0,x19
016a6a0c  mov w1,w20
016a6a10  bl 0x0124e060
016a6a14  orr w1,wzr,#0xfffffffd
016a6a18  mov x0,x19
016a6a1c  bl 0x0124c4d0
016a6a20  ldr x0,[sp, #0x10]
016a6a24  mov w1,#0x10
016a6a28  bl 0x0124cba0
016a6a2c  adrp x8,0x17a1000
016a6a30  dup v0.2D,xzr
016a6a34  add x8,x8,#0x380
016a6a38  mov v0.D[0x0],x8
016a6a3c  str q0,[x0]
016a6a40  ldr x0,[sp, #0x10]
016a6a44  adrp x1,0x17a1000
016a6a48  add x1,x1,#0x870
016a6a4c  mov w2,#0x1
016a6a50  bl 0x0124ec90
016a6a54  ldr x0,[sp, #0x10]
016a6a58  mov w1,#0xffffffff
016a6a5c  bl 0x0124c0c0
016a6a60  ldr x19,[sp, #0x10]
016a6a64  orr w1,wzr,#0xfffffffb
016a6a68  mov w2,#0x6e7
016a6a6c  mov x0,x19
016a6a70  bl 0x0124a650
016a6a74  orr w1,wzr,#0xfffffffe
016a6a78  mov x0,x19
016a6a7c  bl 0x0124c0c0
016a6a80  orr w1,wzr,#0xfffffffe
016a6a84  mov x0,x19
016a6a88  bl 0x0124e920
016a6a8c  mov w20,w0
016a6a90  adrp x1,0x575e000
016a6a94  add x1,x1,#0x578
016a6a98  mov x0,x19
016a6a9c  bl 0x0124f120
016a6aa0  orr w1,wzr,#0xfffffffe
016a6aa4  mov w2,#0x1
016a6aa8  mov x0,x19
016a6aac  bl 0x0124cfc0
016a6ab0  mov x0,x19
016a6ab4  mov w1,w20
016a6ab8  bl 0x0124e060
016a6abc  orr w1,wzr,#0xfffffffd
016a6ac0  mov x0,x19
016a6ac4  bl 0x0124c4d0
016a6ac8  ldr x19,[sp, #0x10]
016a6acc  orr w1,wzr,#0xfffffffd
016a6ad0  mov w2,#0x6e7
016a6ad4  mov x0,x19
016a6ad8  bl 0x0124a650
016a6adc  orr w1,wzr,#0xfffffffe
016a6ae0  mov x0,x19
016a6ae4  bl 0x0124c0c0
016a6ae8  orr w1,wzr,#0xfffffffe
016a6aec  mov x0,x19
016a6af0  bl 0x0124e920
016a6af4  mov w20,w0
016a6af8  adrp x1,0x575e000
016a6afc  add x1,x1,#0x578
016a6b00  mov x0,x19
016a6b04  bl 0x0124f120
016a6b08  orr w1,wzr,#0xfffffffe
016a6b0c  mov w2,#0x1
016a6b10  mov x0,x19
016a6b14  bl 0x0124cfc0
016a6b18  mov x0,x19
016a6b1c  mov w1,w20
016a6b20  bl 0x0124e060
016a6b24  orr w1,wzr,#0xfffffffd
016a6b28  mov x0,x19
016a6b2c  bl 0x0124c4d0
016a6b30  ldr w8,[sp, #0x18]
016a6b34  ldr x0,[sp, #0x10]
016a6b38  sub w8,w8,#0x3
016a6b3c  str w8,[sp, #0x18]
016a6b40  orr w1,wzr,#0xfffffffc
016a6b44  bl 0x0124c4d0
016a6b48  ldr w8,[sp, #0x18]
016a6b4c  ldr x0,[sp, #0x10]
016a6b50  str wzr,[sp, #0x18]
016a6b54  cmp w8,#0x1
016a6b58  b.lt 0x016a6b7c
016a6b5c  mvn w1,w8
016a6b60  bl 0x0124c4d0
016a6b64  ldr w8,[sp, #0x18]
016a6b68  cmp w8,#0x1
016a6b6c  b.lt 0x016a6b7c
016a6b70  ldr x0,[sp, #0x10]
016a6b74  mvn w1,w8
016a6b78  bl 0x0124c4d0
016a6b7c  ldr w8,[sp, #0x8]
016a6b80  cmp w8,#0x1
016a6b84  b.lt 0x016a6b94
016a6b88  ldr x0,[sp]
016a6b8c  mvn w1,w8
016a6b90  bl 0x0124c4d0
016a6b94  ldp x29,x30,[sp, #0x30]
016a6b98  ldp x20,x19,[sp, #0x20]
016a6b9c  add sp,sp,#0x40
016a6ba0  ret
