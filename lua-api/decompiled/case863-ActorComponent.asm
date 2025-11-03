// ===== case863-ActorComponent @ 01743a9c =====
// existing function case863-ActorComponent
01743a9c  sub sp,sp,#0x40
01743aa0  stp x20,x19,[sp, #0x20]
01743aa4  stp x29,x30,[sp, #0x30]
01743aa8  add x29,sp,#0x30
01743aac  adrp x1,0x174a000
01743ab0  add x1,x1,#0x87c
01743ab4  mov x19,x0
01743ab8  bl 0x0124ba40
01743abc  adrp x1,0x575d000
01743ac0  add x1,x1,#0xa06
01743ac4  mov x0,x19
01743ac8  str x19,[sp]
01743acc  bl 0x01251aa0
01743ad0  mov w8,#0x1
01743ad4  str w8,[sp, #0x8]
01743ad8  mov x0,sp
01743adc  bl 0x0174aa04
01743ae0  adrp x1,0x5773000
01743ae4  adrp x3,0x736d000
01743ae8  add x1,x1,#0xc02
01743aec  add x3,x3,#0x101
01743af0  add x0,sp,#0x10
01743af4  mov x2,sp
01743af8  bl 0x01a082f0
01743afc  ldr x0,[sp, #0x10]
01743b00  mov w1,#0x10
01743b04  bl 0x0124cba0
01743b08  adrp x8,0x1a08000
01743b0c  dup v0.2D,xzr
01743b10  add x8,x8,#0xf0
01743b14  mov v0.D[0x0],x8
01743b18  str q0,[x0]
01743b1c  ldr x0,[sp, #0x10]
01743b20  adrp x1,0x1a08000
01743b24  add x1,x1,#0x6b4
01743b28  mov w2,#0x1
01743b2c  bl 0x0124ec90
01743b30  ldr x0,[sp, #0x10]
01743b34  mov w1,#0xffffffff
01743b38  bl 0x0124c0c0
01743b3c  ldr x19,[sp, #0x10]
01743b40  orr w1,wzr,#0xfffffffb
01743b44  mov w2,#0x6e7
01743b48  mov x0,x19
01743b4c  bl 0x0124a650
01743b50  orr w1,wzr,#0xfffffffe
01743b54  mov x0,x19
01743b58  bl 0x0124c0c0
01743b5c  orr w1,wzr,#0xfffffffe
01743b60  mov x0,x19
01743b64  bl 0x0124e920
01743b68  mov w20,w0
01743b6c  adrp x1,0x5762000
01743b70  add x1,x1,#0x1cd
01743b74  mov x0,x19
01743b78  bl 0x0124f120
01743b7c  orr w1,wzr,#0xfffffffe
01743b80  mov w2,#0x1
01743b84  mov x0,x19
01743b88  bl 0x0124cfc0
01743b8c  mov x0,x19
01743b90  mov w1,w20
01743b94  bl 0x0124e060
01743b98  orr w1,wzr,#0xfffffffd
01743b9c  mov x0,x19
01743ba0  bl 0x0124c4d0
01743ba4  ldr x19,[sp, #0x10]
01743ba8  orr w1,wzr,#0xfffffffd
01743bac  mov w2,#0x6e7
01743bb0  mov x0,x19
01743bb4  bl 0x0124a650
01743bb8  orr w1,wzr,#0xfffffffe
01743bbc  mov x0,x19
01743bc0  bl 0x0124c0c0
01743bc4  orr w1,wzr,#0xfffffffe
01743bc8  mov x0,x19
01743bcc  bl 0x0124e920
01743bd0  mov w20,w0
01743bd4  adrp x1,0x5762000
01743bd8  add x1,x1,#0x1cd
01743bdc  mov x0,x19
01743be0  bl 0x0124f120
01743be4  orr w1,wzr,#0xfffffffe
01743be8  mov w2,#0x1
01743bec  mov x0,x19
01743bf0  bl 0x0124cfc0
01743bf4  mov x0,x19
01743bf8  mov w1,w20
01743bfc  bl 0x0124e060
01743c00  orr w1,wzr,#0xfffffffd
01743c04  mov x0,x19
01743c08  bl 0x0124c4d0
01743c0c  adrp x1,0x5773000
01743c10  adrp x2,0x1a08000
01743c14  adrp x4,0x1a08000
01743c18  add x1,x1,#0xc11
01743c1c  add x2,x2,#0x2e0
01743c20  add x4,x4,#0x2e8
01743c24  add x0,sp,#0x10
01743c28  mov x3,xzr
01743c2c  mov x5,xzr
01743c30  bl 0x01a080f8
01743c34  mov x19,x0
01743c38  ldr w8,[x19, #0x8]
01743c3c  ldr x0,[x19]
01743c40  sub w8,w8,#0x3
01743c44  str w8,[x19, #0x8]
01743c48  orr w1,wzr,#0xfffffffc
01743c4c  bl 0x0124c4d0
01743c50  ldr w8,[x19, #0x8]
01743c54  ldr x0,[x19]
01743c58  str wzr,[x19, #0x8]
01743c5c  cmp w8,#0x1
01743c60  b.lt 0x01743c6c
01743c64  mvn w1,w8
01743c68  bl 0x0124c4d0
01743c6c  ldr w8,[sp, #0x18]
01743c70  cmp w8,#0x1
01743c74  b.lt 0x01743c84
01743c78  ldr x0,[sp, #0x10]
01743c7c  mvn w1,w8
01743c80  bl 0x0124c4d0
01743c84  ldr w8,[sp, #0x8]
01743c88  cmp w8,#0x1
01743c8c  b.lt 0x01743c9c
01743c90  ldr x0,[sp]
01743c94  mvn w1,w8
01743c98  bl 0x0124c4d0
01743c9c  ldp x29,x30,[sp, #0x30]
01743ca0  ldp x20,x19,[sp, #0x20]
01743ca4  add sp,sp,#0x40
01743ca8  ret
