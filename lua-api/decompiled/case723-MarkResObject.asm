// ===== case723-MarkResObject @ 0172499c =====
// existing function case723-MarkResObject
0172499c  sub sp,sp,#0x40
017249a0  stp x20,x19,[sp, #0x20]
017249a4  stp x29,x30,[sp, #0x30]
017249a8  add x29,sp,#0x30
017249ac  adrp x1,0x174a000
017249b0  add x1,x1,#0x87c
017249b4  mov x19,x0
017249b8  bl 0x0124ba40
017249bc  adrp x1,0x575d000
017249c0  add x1,x1,#0xa06
017249c4  mov x0,x19
017249c8  str x19,[sp]
017249cc  bl 0x01251aa0
017249d0  mov w8,#0x1
017249d4  str w8,[sp, #0x8]
017249d8  mov x0,sp
017249dc  bl 0x0174aa04
017249e0  adrp x1,0x576f000
017249e4  adrp x3,0x736d000
017249e8  add x1,x1,#0xcc2
017249ec  add x3,x3,#0x101
017249f0  add x0,sp,#0x10
017249f4  mov x2,sp
017249f8  bl 0x01975e58
017249fc  ldr x0,[sp, #0x10]
01724a00  mov w1,#0x10
01724a04  bl 0x0124cba0
01724a08  adrp x8,0x1975000
01724a0c  dup v0.2D,xzr
01724a10  add x8,x8,#0xa50
01724a14  mov v0.D[0x0],x8
01724a18  str q0,[x0]
01724a1c  ldr x0,[sp, #0x10]
01724a20  adrp x1,0x1976000
01724a24  add x1,x1,#0x21c
01724a28  mov w2,#0x1
01724a2c  bl 0x0124ec90
01724a30  ldr x0,[sp, #0x10]
01724a34  mov w1,#0xffffffff
01724a38  bl 0x0124c0c0
01724a3c  ldr x19,[sp, #0x10]
01724a40  orr w1,wzr,#0xfffffffb
01724a44  mov w2,#0x6e7
01724a48  mov x0,x19
01724a4c  bl 0x0124a650
01724a50  orr w1,wzr,#0xfffffffe
01724a54  mov x0,x19
01724a58  bl 0x0124c0c0
01724a5c  orr w1,wzr,#0xfffffffe
01724a60  mov x0,x19
01724a64  bl 0x0124e920
01724a68  mov w20,w0
01724a6c  adrp x1,0x576f000
01724a70  add x1,x1,#0xcd0
01724a74  mov x0,x19
01724a78  bl 0x0124f120
01724a7c  orr w1,wzr,#0xfffffffe
01724a80  mov w2,#0x1
01724a84  mov x0,x19
01724a88  bl 0x0124cfc0
01724a8c  mov x0,x19
01724a90  mov w1,w20
01724a94  bl 0x0124e060
01724a98  orr w1,wzr,#0xfffffffd
01724a9c  mov x0,x19
01724aa0  bl 0x0124c4d0
01724aa4  ldr x19,[sp, #0x10]
01724aa8  orr w1,wzr,#0xfffffffd
01724aac  mov w2,#0x6e7
01724ab0  mov x0,x19
01724ab4  bl 0x0124a650
01724ab8  orr w1,wzr,#0xfffffffe
01724abc  mov x0,x19
01724ac0  bl 0x0124c0c0
01724ac4  orr w1,wzr,#0xfffffffe
01724ac8  mov x0,x19
01724acc  bl 0x0124e920
01724ad0  mov w20,w0
01724ad4  adrp x1,0x576f000
01724ad8  add x1,x1,#0xcd0
01724adc  mov x0,x19
01724ae0  bl 0x0124f120
01724ae4  orr w1,wzr,#0xfffffffe
01724ae8  mov w2,#0x1
01724aec  mov x0,x19
01724af0  bl 0x0124cfc0
01724af4  mov x0,x19
01724af8  mov w1,w20
01724afc  bl 0x0124e060
01724b00  orr w1,wzr,#0xfffffffd
01724b04  mov x0,x19
01724b08  bl 0x0124c4d0
01724b0c  adrp x1,0x576f000
01724b10  adrp x2,0x1975000
01724b14  adrp x4,0x1975000
01724b18  add x1,x1,#0xcda
01724b1c  add x2,x2,#0xc40
01724b20  add x4,x4,#0xc48
01724b24  add x0,sp,#0x10
01724b28  mov x3,xzr
01724b2c  mov x5,xzr
01724b30  bl 0x01975a58
01724b34  adrp x1,0x576f000
01724b38  adrp x2,0x1975000
01724b3c  adrp x4,0x1975000
01724b40  add x1,x1,#0xce3
01724b44  add x2,x2,#0xe38
01724b48  add x4,x4,#0xe40
01724b4c  mov x3,xzr
01724b50  mov x5,xzr
01724b54  bl 0x01975c50
01724b58  adrp x1,0x576f000
01724b5c  adrp x2,0x1975000
01724b60  adrp x4,0x1975000
01724b64  add x1,x1,#0xcf4
01724b68  add x2,x2,#0xe48
01724b6c  add x4,x4,#0xe50
01724b70  mov x3,xzr
01724b74  mov x5,xzr
01724b78  bl 0x01975c50
01724b7c  mov x19,x0
01724b80  ldr w8,[x19, #0x8]
01724b84  ldr x0,[x19]
01724b88  sub w8,w8,#0x3
01724b8c  str w8,[x19, #0x8]
01724b90  orr w1,wzr,#0xfffffffc
01724b94  bl 0x0124c4d0
01724b98  ldr w8,[x19, #0x8]
01724b9c  ldr x0,[x19]
01724ba0  str wzr,[x19, #0x8]
01724ba4  cmp w8,#0x1
01724ba8  b.lt 0x01724bb4
01724bac  mvn w1,w8
01724bb0  bl 0x0124c4d0
01724bb4  ldr w8,[sp, #0x18]
01724bb8  cmp w8,#0x1
01724bbc  b.lt 0x01724bcc
01724bc0  ldr x0,[sp, #0x10]
01724bc4  mvn w1,w8
01724bc8  bl 0x0124c4d0
01724bcc  ldr w8,[sp, #0x8]
01724bd0  cmp w8,#0x1
01724bd4  b.lt 0x01724be4
01724bd8  ldr x0,[sp]
01724bdc  mvn w1,w8
01724be0  bl 0x0124c4d0
01724be4  ldp x29,x30,[sp, #0x30]
01724be8  ldp x20,x19,[sp, #0x20]
01724bec  add sp,sp,#0x40
01724bf0  ret
