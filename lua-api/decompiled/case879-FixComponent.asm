// ===== case879-FixComponent @ 017499dc =====
// existing function case879-FixComponent
017499dc  sub sp,sp,#0x50
017499e0  str x21,[sp, #0x20]
017499e4  stp x20,x19,[sp, #0x30]
017499e8  stp x29,x30,[sp, #0x40]
017499ec  add x29,sp,#0x40
017499f0  adrp x1,0x174a000
017499f4  add x1,x1,#0x87c
017499f8  mov x19,x0
017499fc  bl 0x0124ba40
01749a00  adrp x1,0x575d000
01749a04  add x1,x1,#0xa06
01749a08  mov x0,x19
01749a0c  str x19,[sp]
01749a10  bl 0x01251aa0
01749a14  mov w8,#0x1
01749a18  str w8,[sp, #0x8]
01749a1c  mov x0,sp
01749a20  bl 0x0174aa04
01749a24  adrp x1,0x5774000
01749a28  adrp x3,0x736d000
01749a2c  add x1,x1,#0xe4
01749a30  add x3,x3,#0x101
01749a34  add x0,sp,#0x10
01749a38  mov x2,sp
01749a3c  bl 0x01a1866c
01749a40  adrp x1,0x5760000
01749a44  adrp x2,0x1a18000
01749a48  adrp x4,0x1a18000
01749a4c  add x1,x1,#0xf82
01749a50  add x2,x2,#0x448
01749a54  add x4,x4,#0x450
01749a58  add x0,sp,#0x10
01749a5c  mov x3,xzr
01749a60  mov x5,xzr
01749a64  bl 0x01a18260
01749a68  mov x19,x0
01749a6c  ldr x0,[x19]
01749a70  mov w1,#0x10
01749a74  bl 0x0124cba0
01749a78  adrp x8,0x1a18000
01749a7c  dup v0.2D,xzr
01749a80  add x8,x8,#0x46c
01749a84  mov v0.D[0x0],x8
01749a88  str q0,[x0]
01749a8c  ldr x0,[x19]
01749a90  adrp x1,0x1a18000
01749a94  add x1,x1,#0xd48
01749a98  mov w2,#0x1
01749a9c  bl 0x0124ec90
01749aa0  ldr x0,[x19]
01749aa4  mov w1,#0xffffffff
01749aa8  bl 0x0124c0c0
01749aac  ldr x20,[x19]
01749ab0  orr w1,wzr,#0xfffffffb
01749ab4  mov w2,#0x6e7
01749ab8  mov x0,x20
01749abc  bl 0x0124a650
01749ac0  orr w1,wzr,#0xfffffffe
01749ac4  mov x0,x20
01749ac8  bl 0x0124c0c0
01749acc  orr w1,wzr,#0xfffffffe
01749ad0  mov x0,x20
01749ad4  bl 0x0124e920
01749ad8  mov w21,w0
01749adc  adrp x1,0x5766000
01749ae0  add x1,x1,#0x8e4
01749ae4  mov x0,x20
01749ae8  bl 0x0124f120
01749aec  orr w1,wzr,#0xfffffffe
01749af0  mov w2,#0x1
01749af4  mov x0,x20
01749af8  bl 0x0124cfc0
01749afc  mov x0,x20
01749b00  mov w1,w21
01749b04  bl 0x0124e060
01749b08  orr w1,wzr,#0xfffffffd
01749b0c  mov x0,x20
01749b10  bl 0x0124c4d0
01749b14  ldr x20,[x19]
01749b18  orr w1,wzr,#0xfffffffd
01749b1c  mov w2,#0x6e7
01749b20  mov x0,x20
01749b24  bl 0x0124a650
01749b28  orr w1,wzr,#0xfffffffe
01749b2c  mov x0,x20
01749b30  bl 0x0124c0c0
01749b34  orr w1,wzr,#0xfffffffe
01749b38  mov x0,x20
01749b3c  bl 0x0124e920
01749b40  mov w21,w0
01749b44  adrp x1,0x5766000
01749b48  add x1,x1,#0x8e4
01749b4c  mov x0,x20
01749b50  bl 0x0124f120
01749b54  orr w1,wzr,#0xfffffffe
01749b58  mov w2,#0x1
01749b5c  mov x0,x20
01749b60  bl 0x0124cfc0
01749b64  mov x0,x20
01749b68  mov w1,w21
01749b6c  bl 0x0124e060
01749b70  orr w1,wzr,#0xfffffffd
01749b74  mov x0,x20
01749b78  bl 0x0124c4d0
01749b7c  adrp x1,0x5766000
01749b80  adrp x2,0x1a18000
01749b84  adrp x4,0x1a18000
01749b88  add x1,x1,#0x8a3
01749b8c  add x2,x2,#0x65c
01749b90  add x4,x4,#0x664
01749b94  mov x0,x19
01749b98  mov x3,xzr
01749b9c  mov x5,xzr
01749ba0  bl 0x01a18474
01749ba4  mov x19,x0
01749ba8  ldr w8,[x19, #0x8]
01749bac  ldr x0,[x19]
01749bb0  sub w8,w8,#0x3
01749bb4  str w8,[x19, #0x8]
01749bb8  orr w1,wzr,#0xfffffffc
01749bbc  bl 0x0124c4d0
01749bc0  ldr w8,[x19, #0x8]
01749bc4  ldr x0,[x19]
01749bc8  str wzr,[x19, #0x8]
01749bcc  cmp w8,#0x1
01749bd0  b.lt 0x01749bdc
01749bd4  mvn w1,w8
01749bd8  bl 0x0124c4d0
01749bdc  ldr w8,[sp, #0x18]
01749be0  cmp w8,#0x1
01749be4  b.lt 0x01749bf4
01749be8  ldr x0,[sp, #0x10]
01749bec  mvn w1,w8
01749bf0  bl 0x0124c4d0
01749bf4  ldr w8,[sp, #0x8]
01749bf8  cmp w8,#0x1
01749bfc  b.lt 0x01749c0c
01749c00  ldr x0,[sp]
01749c04  mvn w1,w8
01749c08  bl 0x0124c4d0
01749c0c  ldp x29,x30,[sp, #0x40]
01749c10  ldp x20,x19,[sp, #0x30]
01749c14  ldr x21,[sp, #0x20]
01749c18  add sp,sp,#0x50
01749c1c  ret
