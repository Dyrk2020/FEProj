// ===== case261-SoldierSkillFlowResObject @ 016b8950 =====
// existing function case261-SoldierSkillFlowResObject
016b8950  sub sp,sp,#0x40
016b8954  stp x20,x19,[sp, #0x20]
016b8958  stp x29,x30,[sp, #0x30]
016b895c  add x29,sp,#0x30
016b8960  adrp x1,0x174a000
016b8964  add x1,x1,#0x87c
016b8968  mov x19,x0
016b896c  bl 0x0124ba40
016b8970  adrp x1,0x575d000
016b8974  add x1,x1,#0xa06
016b8978  mov x0,x19
016b897c  str x19,[sp]
016b8980  bl 0x01251aa0
016b8984  mov w8,#0x1
016b8988  str w8,[sp, #0x8]
016b898c  mov x0,sp
016b8990  bl 0x0174aa04
016b8994  adrp x1,0x5761000
016b8998  adrp x3,0x736d000
016b899c  add x1,x1,#0x6af
016b89a0  add x3,x3,#0x101
016b89a4  add x0,sp,#0x10
016b89a8  mov x2,sp
016b89ac  bl 0x017ddfe0
016b89b0  ldr x0,[sp, #0x10]
016b89b4  mov w1,#0x10
016b89b8  bl 0x0124cba0
016b89bc  adrp x8,0x17dd000
016b89c0  dup v0.2D,xzr
016b89c4  add x8,x8,#0xfd8
016b89c8  mov v0.D[0x0],x8
016b89cc  str q0,[x0]
016b89d0  ldr x0,[sp, #0x10]
016b89d4  adrp x1,0x17de000
016b89d8  add x1,x1,#0x3a4
016b89dc  mov w2,#0x1
016b89e0  bl 0x0124ec90
016b89e4  ldr x0,[sp, #0x10]
016b89e8  mov w1,#0xffffffff
016b89ec  bl 0x0124c0c0
016b89f0  ldr x19,[sp, #0x10]
016b89f4  orr w1,wzr,#0xfffffffb
016b89f8  mov w2,#0x6e7
016b89fc  mov x0,x19
016b8a00  bl 0x0124a650
016b8a04  orr w1,wzr,#0xfffffffe
016b8a08  mov x0,x19
016b8a0c  bl 0x0124c0c0
016b8a10  orr w1,wzr,#0xfffffffe
016b8a14  mov x0,x19
016b8a18  bl 0x0124e920
016b8a1c  mov w20,w0
016b8a20  adrp x1,0x5761000
016b8a24  add x1,x1,#0x6c9
016b8a28  mov x0,x19
016b8a2c  bl 0x0124f120
016b8a30  orr w1,wzr,#0xfffffffe
016b8a34  mov w2,#0x1
016b8a38  mov x0,x19
016b8a3c  bl 0x0124cfc0
016b8a40  mov x0,x19
016b8a44  mov w1,w20
016b8a48  bl 0x0124e060
016b8a4c  orr w1,wzr,#0xfffffffd
016b8a50  mov x0,x19
016b8a54  bl 0x0124c4d0
016b8a58  ldr x19,[sp, #0x10]
016b8a5c  orr w1,wzr,#0xfffffffd
016b8a60  mov w2,#0x6e7
016b8a64  mov x0,x19
016b8a68  bl 0x0124a650
016b8a6c  orr w1,wzr,#0xfffffffe
016b8a70  mov x0,x19
016b8a74  bl 0x0124c0c0
016b8a78  orr w1,wzr,#0xfffffffe
016b8a7c  mov x0,x19
016b8a80  bl 0x0124e920
016b8a84  mov w20,w0
016b8a88  adrp x1,0x5761000
016b8a8c  add x1,x1,#0x6c9
016b8a90  mov x0,x19
016b8a94  bl 0x0124f120
016b8a98  orr w1,wzr,#0xfffffffe
016b8a9c  mov w2,#0x1
016b8aa0  mov x0,x19
016b8aa4  bl 0x0124cfc0
016b8aa8  mov x0,x19
016b8aac  mov w1,w20
016b8ab0  bl 0x0124e060
016b8ab4  orr w1,wzr,#0xfffffffd
016b8ab8  mov x0,x19
016b8abc  bl 0x0124c4d0
016b8ac0  ldr w8,[sp, #0x18]
016b8ac4  ldr x0,[sp, #0x10]
016b8ac8  sub w8,w8,#0x3
016b8acc  str w8,[sp, #0x18]
016b8ad0  orr w1,wzr,#0xfffffffc
016b8ad4  bl 0x0124c4d0
016b8ad8  ldr w8,[sp, #0x18]
016b8adc  ldr x0,[sp, #0x10]
016b8ae0  str wzr,[sp, #0x18]
016b8ae4  cmp w8,#0x1
016b8ae8  b.lt 0x016b8b0c
016b8aec  mvn w1,w8
016b8af0  bl 0x0124c4d0
016b8af4  ldr w8,[sp, #0x18]
016b8af8  cmp w8,#0x1
016b8afc  b.lt 0x016b8b0c
016b8b00  ldr x0,[sp, #0x10]
016b8b04  mvn w1,w8
016b8b08  bl 0x0124c4d0
016b8b0c  ldr w8,[sp, #0x8]
016b8b10  cmp w8,#0x1
016b8b14  b.lt 0x016b8b24
016b8b18  ldr x0,[sp]
016b8b1c  mvn w1,w8
016b8b20  bl 0x0124c4d0
016b8b24  ldp x29,x30,[sp, #0x30]
016b8b28  ldp x20,x19,[sp, #0x20]
016b8b2c  add sp,sp,#0x40
016b8b30  ret
