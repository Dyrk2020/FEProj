// ===== case534-VirtualSkillMgr @ 016f9a94 =====
// existing function case534-VirtualSkillMgr
016f9a94  sub sp,sp,#0x40
016f9a98  stp x20,x19,[sp, #0x20]
016f9a9c  stp x29,x30,[sp, #0x30]
016f9aa0  add x29,sp,#0x30
016f9aa4  adrp x1,0x174a000
016f9aa8  add x1,x1,#0x87c
016f9aac  mov x19,x0
016f9ab0  bl 0x0124ba40
016f9ab4  adrp x1,0x575d000
016f9ab8  add x1,x1,#0xa06
016f9abc  mov x0,x19
016f9ac0  str x19,[sp]
016f9ac4  bl 0x01251aa0
016f9ac8  mov w8,#0x1
016f9acc  str w8,[sp, #0x8]
016f9ad0  mov x0,sp
016f9ad4  bl 0x0174aa04
016f9ad8  adrp x1,0x5768000
016f9adc  adrp x3,0x736d000
016f9ae0  add x1,x1,#0xc50
016f9ae4  add x3,x3,#0x101
016f9ae8  add x0,sp,#0x10
016f9aec  mov x2,sp
016f9af0  bl 0x018b2ac4
016f9af4  ldr x0,[sp, #0x10]
016f9af8  mov w1,#0x10
016f9afc  bl 0x0124cba0
016f9b00  adrp x8,0x18b2000
016f9b04  dup v0.2D,xzr
016f9b08  add x8,x8,#0xabc
016f9b0c  mov v0.D[0x0],x8
016f9b10  str q0,[x0]
016f9b14  ldr x0,[sp, #0x10]
016f9b18  adrp x1,0x18b2000
016f9b1c  add x1,x1,#0xe88
016f9b20  mov w2,#0x1
016f9b24  bl 0x0124ec90
016f9b28  ldr x0,[sp, #0x10]
016f9b2c  mov w1,#0xffffffff
016f9b30  bl 0x0124c0c0
016f9b34  ldr x19,[sp, #0x10]
016f9b38  orr w1,wzr,#0xfffffffb
016f9b3c  mov w2,#0x6e7
016f9b40  mov x0,x19
016f9b44  bl 0x0124a650
016f9b48  orr w1,wzr,#0xfffffffe
016f9b4c  mov x0,x19
016f9b50  bl 0x0124c0c0
016f9b54  orr w1,wzr,#0xfffffffe
016f9b58  mov x0,x19
016f9b5c  bl 0x0124e920
016f9b60  mov w20,w0
016f9b64  adrp x1,0x5762000
016f9b68  add x1,x1,#0x1cd
016f9b6c  mov x0,x19
016f9b70  bl 0x0124f120
016f9b74  orr w1,wzr,#0xfffffffe
016f9b78  mov w2,#0x1
016f9b7c  mov x0,x19
016f9b80  bl 0x0124cfc0
016f9b84  mov x0,x19
016f9b88  mov w1,w20
016f9b8c  bl 0x0124e060
016f9b90  orr w1,wzr,#0xfffffffd
016f9b94  mov x0,x19
016f9b98  bl 0x0124c4d0
016f9b9c  ldr x19,[sp, #0x10]
016f9ba0  orr w1,wzr,#0xfffffffd
016f9ba4  mov w2,#0x6e7
016f9ba8  mov x0,x19
016f9bac  bl 0x0124a650
016f9bb0  orr w1,wzr,#0xfffffffe
016f9bb4  mov x0,x19
016f9bb8  bl 0x0124c0c0
016f9bbc  orr w1,wzr,#0xfffffffe
016f9bc0  mov x0,x19
016f9bc4  bl 0x0124e920
016f9bc8  mov w20,w0
016f9bcc  adrp x1,0x5762000
016f9bd0  add x1,x1,#0x1cd
016f9bd4  mov x0,x19
016f9bd8  bl 0x0124f120
016f9bdc  orr w1,wzr,#0xfffffffe
016f9be0  mov w2,#0x1
016f9be4  mov x0,x19
016f9be8  bl 0x0124cfc0
016f9bec  mov x0,x19
016f9bf0  mov w1,w20
016f9bf4  bl 0x0124e060
016f9bf8  orr w1,wzr,#0xfffffffd
016f9bfc  mov x0,x19
016f9c00  bl 0x0124c4d0
016f9c04  ldr w8,[sp, #0x18]
016f9c08  ldr x0,[sp, #0x10]
016f9c0c  sub w8,w8,#0x3
016f9c10  str w8,[sp, #0x18]
016f9c14  orr w1,wzr,#0xfffffffc
016f9c18  bl 0x0124c4d0
016f9c1c  ldr w8,[sp, #0x18]
016f9c20  ldr x0,[sp, #0x10]
016f9c24  str wzr,[sp, #0x18]
016f9c28  cmp w8,#0x1
016f9c2c  b.lt 0x016f9c50
016f9c30  mvn w1,w8
016f9c34  bl 0x0124c4d0
016f9c38  ldr w8,[sp, #0x18]
016f9c3c  cmp w8,#0x1
016f9c40  b.lt 0x016f9c50
016f9c44  ldr x0,[sp, #0x10]
016f9c48  mvn w1,w8
016f9c4c  bl 0x0124c4d0
016f9c50  ldr w8,[sp, #0x8]
016f9c54  cmp w8,#0x1
016f9c58  b.lt 0x016f9c68
016f9c5c  ldr x0,[sp]
016f9c60  mvn w1,w8
016f9c64  bl 0x0124c4d0
016f9c68  ldp x29,x30,[sp, #0x30]
016f9c6c  ldp x20,x19,[sp, #0x20]
016f9c70  add sp,sp,#0x40
016f9c74  ret
