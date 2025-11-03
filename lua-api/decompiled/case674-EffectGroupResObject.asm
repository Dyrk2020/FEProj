// ===== case674-EffectGroupResObject @ 017189b8 =====
// existing function case674-EffectGroupResObject
017189b8  sub sp,sp,#0x40
017189bc  stp x20,x19,[sp, #0x20]
017189c0  stp x29,x30,[sp, #0x30]
017189c4  add x29,sp,#0x30
017189c8  adrp x1,0x174a000
017189cc  add x1,x1,#0x87c
017189d0  mov x19,x0
017189d4  bl 0x0124ba40
017189d8  adrp x1,0x575d000
017189dc  add x1,x1,#0xa06
017189e0  mov x0,x19
017189e4  str x19,[sp]
017189e8  bl 0x01251aa0
017189ec  mov w8,#0x1
017189f0  str w8,[sp, #0x8]
017189f4  mov x0,sp
017189f8  bl 0x0174aa04
017189fc  adrp x1,0x576d000
01718a00  adrp x3,0x736d000
01718a04  add x1,x1,#0x23e
01718a08  add x3,x3,#0x101
01718a0c  add x0,sp,#0x10
01718a10  mov x2,sp
01718a14  bl 0x0194006c
01718a18  ldr x0,[sp, #0x10]
01718a1c  mov w1,#0x10
01718a20  bl 0x0124cba0
01718a24  adrp x8,0x1940000
01718a28  dup v0.2D,xzr
01718a2c  add x8,x8,#0x5c
01718a30  mov v0.D[0x0],x8
01718a34  str q0,[x0]
01718a38  ldr x0,[sp, #0x10]
01718a3c  adrp x1,0x1940000
01718a40  add x1,x1,#0x430
01718a44  mov w2,#0x1
01718a48  bl 0x0124ec90
01718a4c  ldr x0,[sp, #0x10]
01718a50  mov w1,#0xffffffff
01718a54  bl 0x0124c0c0
01718a58  ldr x19,[sp, #0x10]
01718a5c  orr w1,wzr,#0xfffffffb
01718a60  mov w2,#0x6e7
01718a64  mov x0,x19
01718a68  bl 0x0124a650
01718a6c  orr w1,wzr,#0xfffffffe
01718a70  mov x0,x19
01718a74  bl 0x0124c0c0
01718a78  orr w1,wzr,#0xfffffffe
01718a7c  mov x0,x19
01718a80  bl 0x0124e920
01718a84  mov w20,w0
01718a88  adrp x1,0x575f000
01718a8c  add x1,x1,#0x2ef
01718a90  mov x0,x19
01718a94  bl 0x0124f120
01718a98  orr w1,wzr,#0xfffffffe
01718a9c  mov w2,#0x1
01718aa0  mov x0,x19
01718aa4  bl 0x0124cfc0
01718aa8  mov x0,x19
01718aac  mov w1,w20
01718ab0  bl 0x0124e060
01718ab4  orr w1,wzr,#0xfffffffd
01718ab8  mov x0,x19
01718abc  bl 0x0124c4d0
01718ac0  ldr x19,[sp, #0x10]
01718ac4  orr w1,wzr,#0xfffffffd
01718ac8  mov w2,#0x6e7
01718acc  mov x0,x19
01718ad0  bl 0x0124a650
01718ad4  orr w1,wzr,#0xfffffffe
01718ad8  mov x0,x19
01718adc  bl 0x0124c0c0
01718ae0  orr w1,wzr,#0xfffffffe
01718ae4  mov x0,x19
01718ae8  bl 0x0124e920
01718aec  mov w20,w0
01718af0  adrp x1,0x575f000
01718af4  add x1,x1,#0x2ef
01718af8  mov x0,x19
01718afc  bl 0x0124f120
01718b00  orr w1,wzr,#0xfffffffe
01718b04  mov w2,#0x1
01718b08  mov x0,x19
01718b0c  bl 0x0124cfc0
01718b10  mov x0,x19
01718b14  mov w1,w20
01718b18  bl 0x0124e060
01718b1c  orr w1,wzr,#0xfffffffd
01718b20  mov x0,x19
01718b24  bl 0x0124c4d0
01718b28  ldr x0,[sp, #0x10]
01718b2c  mov w1,#0x10
01718b30  bl 0x0124cba0
01718b34  adrp x8,0x1940000
01718b38  dup v0.2D,xzr
01718b3c  add x8,x8,#0x64
01718b40  mov v0.D[0x0],x8
01718b44  str q0,[x0]
01718b48  ldr x0,[sp, #0x10]
01718b4c  adrp x1,0x1940000
01718b50  add x1,x1,#0x554
01718b54  mov w2,#0x1
01718b58  bl 0x0124ec90
01718b5c  ldr x0,[sp, #0x10]
01718b60  mov w1,#0xffffffff
01718b64  bl 0x0124c0c0
01718b68  ldr x19,[sp, #0x10]
01718b6c  orr w1,wzr,#0xfffffffb
01718b70  mov w2,#0x6e7
01718b74  mov x0,x19
01718b78  bl 0x0124a650
01718b7c  orr w1,wzr,#0xfffffffe
01718b80  mov x0,x19
01718b84  bl 0x0124c0c0
01718b88  orr w1,wzr,#0xfffffffe
01718b8c  mov x0,x19
01718b90  bl 0x0124e920
01718b94  mov w20,w0
01718b98  adrp x1,0x575f000
01718b9c  add x1,x1,#0x2f8
01718ba0  mov x0,x19
01718ba4  bl 0x0124f120
01718ba8  orr w1,wzr,#0xfffffffe
01718bac  mov w2,#0x1
01718bb0  mov x0,x19
01718bb4  bl 0x0124cfc0
01718bb8  mov x0,x19
01718bbc  mov w1,w20
01718bc0  bl 0x0124e060
01718bc4  orr w1,wzr,#0xfffffffd
01718bc8  mov x0,x19
01718bcc  bl 0x0124c4d0
01718bd0  ldr x19,[sp, #0x10]
01718bd4  orr w1,wzr,#0xfffffffd
01718bd8  mov w2,#0x6e7
01718bdc  mov x0,x19
01718be0  bl 0x0124a650
01718be4  orr w1,wzr,#0xfffffffe
01718be8  mov x0,x19
01718bec  bl 0x0124c0c0
01718bf0  orr w1,wzr,#0xfffffffe
01718bf4  mov x0,x19
01718bf8  bl 0x0124e920
01718bfc  mov w20,w0
01718c00  adrp x1,0x575f000
01718c04  add x1,x1,#0x2f8
01718c08  mov x0,x19
01718c0c  bl 0x0124f120
01718c10  orr w1,wzr,#0xfffffffe
01718c14  mov w2,#0x1
01718c18  mov x0,x19
01718c1c  bl 0x0124cfc0
01718c20  mov x0,x19
01718c24  mov w1,w20
01718c28  bl 0x0124e060
01718c2c  orr w1,wzr,#0xfffffffd
01718c30  mov x0,x19
01718c34  bl 0x0124c4d0
01718c38  ldr w8,[sp, #0x18]
01718c3c  ldr x0,[sp, #0x10]
01718c40  sub w8,w8,#0x3
01718c44  str w8,[sp, #0x18]
01718c48  orr w1,wzr,#0xfffffffc
01718c4c  bl 0x0124c4d0
01718c50  ldr w8,[sp, #0x18]
01718c54  ldr x0,[sp, #0x10]
01718c58  str wzr,[sp, #0x18]
01718c5c  cmp w8,#0x1
01718c60  b.lt 0x01718c84
01718c64  mvn w1,w8
01718c68  bl 0x0124c4d0
01718c6c  ldr w8,[sp, #0x18]
01718c70  cmp w8,#0x1
01718c74  b.lt 0x01718c84
01718c78  ldr x0,[sp, #0x10]
01718c7c  mvn w1,w8
01718c80  bl 0x0124c4d0
01718c84  ldr w8,[sp, #0x8]
01718c88  cmp w8,#0x1
01718c8c  b.lt 0x01718c9c
01718c90  ldr x0,[sp]
01718c94  mvn w1,w8
01718c98  bl 0x0124c4d0
01718c9c  ldp x29,x30,[sp, #0x30]
01718ca0  ldp x20,x19,[sp, #0x20]
01718ca4  add sp,sp,#0x40
01718ca8  ret
