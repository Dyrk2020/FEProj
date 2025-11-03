// ===== case605-SimpleAnchorMgr @ 01708958 =====
// existing function case605-SimpleAnchorMgr
01708958  sub sp,sp,#0x40
0170895c  stp x20,x19,[sp, #0x20]
01708960  stp x29,x30,[sp, #0x30]
01708964  add x29,sp,#0x30
01708968  adrp x1,0x174a000
0170896c  add x1,x1,#0x87c
01708970  mov x19,x0
01708974  bl 0x0124ba40
01708978  adrp x1,0x575d000
0170897c  add x1,x1,#0xa06
01708980  mov x0,x19
01708984  str x19,[sp]
01708988  bl 0x01251aa0
0170898c  mov w8,#0x1
01708990  str w8,[sp, #0x8]
01708994  mov x0,sp
01708998  bl 0x0174aa04
0170899c  adrp x1,0x576a000
017089a0  adrp x3,0x736d000
017089a4  add x1,x1,#0x3f0
017089a8  add x3,x3,#0x101
017089ac  add x0,sp,#0x10
017089b0  mov x2,sp
017089b4  bl 0x018f5db4
017089b8  ldr x0,[sp, #0x10]
017089bc  mov w1,#0x10
017089c0  bl 0x0124cba0
017089c4  adrp x8,0x18f5000
017089c8  dup v0.2D,xzr
017089cc  add x8,x8,#0xd9c
017089d0  mov v0.D[0x0],x8
017089d4  str q0,[x0]
017089d8  ldr x0,[sp, #0x10]
017089dc  adrp x1,0x18f6000
017089e0  add x1,x1,#0x178
017089e4  mov w2,#0x1
017089e8  bl 0x0124ec90
017089ec  ldr x0,[sp, #0x10]
017089f0  mov w1,#0xffffffff
017089f4  bl 0x0124c0c0
017089f8  ldr x19,[sp, #0x10]
017089fc  orr w1,wzr,#0xfffffffb
01708a00  mov w2,#0x6e7
01708a04  mov x0,x19
01708a08  bl 0x0124a650
01708a0c  orr w1,wzr,#0xfffffffe
01708a10  mov x0,x19
01708a14  bl 0x0124c0c0
01708a18  orr w1,wzr,#0xfffffffe
01708a1c  mov x0,x19
01708a20  bl 0x0124e920
01708a24  mov w20,w0
01708a28  adrp x1,0x576a000
01708a2c  add x1,x1,#0x400
01708a30  mov x0,x19
01708a34  bl 0x0124f120
01708a38  orr w1,wzr,#0xfffffffe
01708a3c  mov w2,#0x1
01708a40  mov x0,x19
01708a44  bl 0x0124cfc0
01708a48  mov x0,x19
01708a4c  mov w1,w20
01708a50  bl 0x0124e060
01708a54  orr w1,wzr,#0xfffffffd
01708a58  mov x0,x19
01708a5c  bl 0x0124c4d0
01708a60  ldr x19,[sp, #0x10]
01708a64  orr w1,wzr,#0xfffffffd
01708a68  mov w2,#0x6e7
01708a6c  mov x0,x19
01708a70  bl 0x0124a650
01708a74  orr w1,wzr,#0xfffffffe
01708a78  mov x0,x19
01708a7c  bl 0x0124c0c0
01708a80  orr w1,wzr,#0xfffffffe
01708a84  mov x0,x19
01708a88  bl 0x0124e920
01708a8c  mov w20,w0
01708a90  adrp x1,0x576a000
01708a94  add x1,x1,#0x400
01708a98  mov x0,x19
01708a9c  bl 0x0124f120
01708aa0  orr w1,wzr,#0xfffffffe
01708aa4  mov w2,#0x1
01708aa8  mov x0,x19
01708aac  bl 0x0124cfc0
01708ab0  mov x0,x19
01708ab4  mov w1,w20
01708ab8  bl 0x0124e060
01708abc  orr w1,wzr,#0xfffffffd
01708ac0  mov x0,x19
01708ac4  bl 0x0124c4d0
01708ac8  ldr x0,[sp, #0x10]
01708acc  mov w1,#0x10
01708ad0  bl 0x0124cba0
01708ad4  adrp x8,0x18f5000
01708ad8  dup v0.2D,xzr
01708adc  add x8,x8,#0xda4
01708ae0  mov v0.D[0x0],x8
01708ae4  str q0,[x0]
01708ae8  ldr x0,[sp, #0x10]
01708aec  adrp x1,0x18f6000
01708af0  add x1,x1,#0x29c
01708af4  mov w2,#0x1
01708af8  bl 0x0124ec90
01708afc  ldr x0,[sp, #0x10]
01708b00  mov w1,#0xffffffff
01708b04  bl 0x0124c0c0
01708b08  ldr x19,[sp, #0x10]
01708b0c  orr w1,wzr,#0xfffffffb
01708b10  mov w2,#0x6e7
01708b14  mov x0,x19
01708b18  bl 0x0124a650
01708b1c  orr w1,wzr,#0xfffffffe
01708b20  mov x0,x19
01708b24  bl 0x0124c0c0
01708b28  orr w1,wzr,#0xfffffffe
01708b2c  mov x0,x19
01708b30  bl 0x0124e920
01708b34  mov w20,w0
01708b38  adrp x1,0x576a000
01708b3c  add x1,x1,#0x410
01708b40  mov x0,x19
01708b44  bl 0x0124f120
01708b48  orr w1,wzr,#0xfffffffe
01708b4c  mov w2,#0x1
01708b50  mov x0,x19
01708b54  bl 0x0124cfc0
01708b58  mov x0,x19
01708b5c  mov w1,w20
01708b60  bl 0x0124e060
01708b64  orr w1,wzr,#0xfffffffd
01708b68  mov x0,x19
01708b6c  bl 0x0124c4d0
01708b70  ldr x19,[sp, #0x10]
01708b74  orr w1,wzr,#0xfffffffd
01708b78  mov w2,#0x6e7
01708b7c  mov x0,x19
01708b80  bl 0x0124a650
01708b84  orr w1,wzr,#0xfffffffe
01708b88  mov x0,x19
01708b8c  bl 0x0124c0c0
01708b90  orr w1,wzr,#0xfffffffe
01708b94  mov x0,x19
01708b98  bl 0x0124e920
01708b9c  mov w20,w0
01708ba0  adrp x1,0x576a000
01708ba4  add x1,x1,#0x410
01708ba8  mov x0,x19
01708bac  bl 0x0124f120
01708bb0  orr w1,wzr,#0xfffffffe
01708bb4  mov w2,#0x1
01708bb8  mov x0,x19
01708bbc  bl 0x0124cfc0
01708bc0  mov x0,x19
01708bc4  mov w1,w20
01708bc8  bl 0x0124e060
01708bcc  orr w1,wzr,#0xfffffffd
01708bd0  mov x0,x19
01708bd4  bl 0x0124c4d0
01708bd8  ldr x0,[sp, #0x10]
01708bdc  mov w1,#0x10
01708be0  bl 0x0124cba0
01708be4  adrp x8,0x18f5000
01708be8  dup v0.2D,xzr
01708bec  add x8,x8,#0xdac
01708bf0  mov v0.D[0x0],x8
01708bf4  str q0,[x0]
01708bf8  ldr x0,[sp, #0x10]
01708bfc  adrp x1,0x18f6000
01708c00  add x1,x1,#0x3c0
01708c04  mov w2,#0x1
01708c08  bl 0x0124ec90
01708c0c  ldr x0,[sp, #0x10]
01708c10  mov w1,#0xffffffff
01708c14  bl 0x0124c0c0
01708c18  ldr x19,[sp, #0x10]
01708c1c  orr w1,wzr,#0xfffffffb
01708c20  mov w2,#0x6e7
01708c24  mov x0,x19
01708c28  bl 0x0124a650
01708c2c  orr w1,wzr,#0xfffffffe
01708c30  mov x0,x19
01708c34  bl 0x0124c0c0
01708c38  orr w1,wzr,#0xfffffffe
01708c3c  mov x0,x19
01708c40  bl 0x0124e920
01708c44  mov w20,w0
01708c48  adrp x1,0x576a000
01708c4c  add x1,x1,#0x377
01708c50  mov x0,x19
01708c54  bl 0x0124f120
01708c58  orr w1,wzr,#0xfffffffe
01708c5c  mov w2,#0x1
01708c60  mov x0,x19
01708c64  bl 0x0124cfc0
01708c68  mov x0,x19
01708c6c  mov w1,w20
01708c70  bl 0x0124e060
01708c74  orr w1,wzr,#0xfffffffd
01708c78  mov x0,x19
01708c7c  bl 0x0124c4d0
01708c80  ldr x19,[sp, #0x10]
01708c84  orr w1,wzr,#0xfffffffd
01708c88  mov w2,#0x6e7
01708c8c  mov x0,x19
01708c90  bl 0x0124a650
01708c94  orr w1,wzr,#0xfffffffe
01708c98  mov x0,x19
01708c9c  bl 0x0124c0c0
01708ca0  orr w1,wzr,#0xfffffffe
01708ca4  mov x0,x19
01708ca8  bl 0x0124e920
01708cac  mov w20,w0
01708cb0  adrp x1,0x576a000
01708cb4  add x1,x1,#0x377
01708cb8  mov x0,x19
01708cbc  bl 0x0124f120
01708cc0  orr w1,wzr,#0xfffffffe
01708cc4  mov w2,#0x1
01708cc8  mov x0,x19
01708ccc  bl 0x0124cfc0
01708cd0  mov x0,x19
01708cd4  mov w1,w20
01708cd8  bl 0x0124e060
01708cdc  orr w1,wzr,#0xfffffffd
01708ce0  mov x0,x19
01708ce4  bl 0x0124c4d0
01708ce8  ldr w8,[sp, #0x18]
01708cec  ldr x0,[sp, #0x10]
01708cf0  sub w8,w8,#0x3
01708cf4  str w8,[sp, #0x18]
01708cf8  orr w1,wzr,#0xfffffffc
01708cfc  bl 0x0124c4d0
01708d00  ldr w8,[sp, #0x18]
01708d04  ldr x0,[sp, #0x10]
01708d08  str wzr,[sp, #0x18]
01708d0c  cmp w8,#0x1
01708d10  b.lt 0x01708d34
01708d14  mvn w1,w8
01708d18  bl 0x0124c4d0
01708d1c  ldr w8,[sp, #0x18]
01708d20  cmp w8,#0x1
01708d24  b.lt 0x01708d34
01708d28  ldr x0,[sp, #0x10]
01708d2c  mvn w1,w8
01708d30  bl 0x0124c4d0
01708d34  ldr w8,[sp, #0x8]
01708d38  cmp w8,#0x1
01708d3c  b.lt 0x01708d4c
01708d40  ldr x0,[sp]
01708d44  mvn w1,w8
01708d48  bl 0x0124c4d0
01708d4c  ldp x29,x30,[sp, #0x30]
01708d50  ldp x20,x19,[sp, #0x20]
01708d54  add sp,sp,#0x40
01708d58  ret
