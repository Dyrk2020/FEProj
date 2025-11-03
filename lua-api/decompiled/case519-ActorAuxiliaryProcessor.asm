// ===== case519-ActorAuxiliaryProcessor @ 016f7954 =====
// existing function case519-ActorAuxiliaryProcessor
016f7954  sub sp,sp,#0x40
016f7958  stp x20,x19,[sp, #0x20]
016f795c  stp x29,x30,[sp, #0x30]
016f7960  add x29,sp,#0x30
016f7964  adrp x1,0x174a000
016f7968  add x1,x1,#0x87c
016f796c  mov x19,x0
016f7970  bl 0x0124ba40
016f7974  adrp x1,0x575d000
016f7978  add x1,x1,#0xa06
016f797c  mov x0,x19
016f7980  str x19,[sp]
016f7984  bl 0x01251aa0
016f7988  mov w8,#0x1
016f798c  str w8,[sp, #0x8]
016f7990  mov x0,sp
016f7994  bl 0x0174aa04
016f7998  adrp x1,0x5768000
016f799c  adrp x3,0x736d000
016f79a0  add x1,x1,#0x8a9
016f79a4  add x3,x3,#0x101
016f79a8  add x0,sp,#0x10
016f79ac  mov x2,sp
016f79b0  bl 0x018a9bf4
016f79b4  ldr x0,[sp, #0x10]
016f79b8  mov w1,#0x10
016f79bc  bl 0x0124cba0
016f79c0  adrp x8,0x18a9000
016f79c4  dup v0.2D,xzr
016f79c8  add x8,x8,#0xbec
016f79cc  mov v0.D[0x0],x8
016f79d0  str q0,[x0]
016f79d4  ldr x0,[sp, #0x10]
016f79d8  adrp x1,0x18a9000
016f79dc  add x1,x1,#0xfb8
016f79e0  mov w2,#0x1
016f79e4  bl 0x0124ec90
016f79e8  ldr x0,[sp, #0x10]
016f79ec  mov w1,#0xffffffff
016f79f0  bl 0x0124c0c0
016f79f4  ldr x19,[sp, #0x10]
016f79f8  orr w1,wzr,#0xfffffffb
016f79fc  mov w2,#0x6e7
016f7a00  mov x0,x19
016f7a04  bl 0x0124a650
016f7a08  orr w1,wzr,#0xfffffffe
016f7a0c  mov x0,x19
016f7a10  bl 0x0124c0c0
016f7a14  orr w1,wzr,#0xfffffffe
016f7a18  mov x0,x19
016f7a1c  bl 0x0124e920
016f7a20  mov w20,w0
016f7a24  adrp x1,0x5762000
016f7a28  add x1,x1,#0x1cd
016f7a2c  mov x0,x19
016f7a30  bl 0x0124f120
016f7a34  orr w1,wzr,#0xfffffffe
016f7a38  mov w2,#0x1
016f7a3c  mov x0,x19
016f7a40  bl 0x0124cfc0
016f7a44  mov x0,x19
016f7a48  mov w1,w20
016f7a4c  bl 0x0124e060
016f7a50  orr w1,wzr,#0xfffffffd
016f7a54  mov x0,x19
016f7a58  bl 0x0124c4d0
016f7a5c  ldr x19,[sp, #0x10]
016f7a60  orr w1,wzr,#0xfffffffd
016f7a64  mov w2,#0x6e7
016f7a68  mov x0,x19
016f7a6c  bl 0x0124a650
016f7a70  orr w1,wzr,#0xfffffffe
016f7a74  mov x0,x19
016f7a78  bl 0x0124c0c0
016f7a7c  orr w1,wzr,#0xfffffffe
016f7a80  mov x0,x19
016f7a84  bl 0x0124e920
016f7a88  mov w20,w0
016f7a8c  adrp x1,0x5762000
016f7a90  add x1,x1,#0x1cd
016f7a94  mov x0,x19
016f7a98  bl 0x0124f120
016f7a9c  orr w1,wzr,#0xfffffffe
016f7aa0  mov w2,#0x1
016f7aa4  mov x0,x19
016f7aa8  bl 0x0124cfc0
016f7aac  mov x0,x19
016f7ab0  mov w1,w20
016f7ab4  bl 0x0124e060
016f7ab8  orr w1,wzr,#0xfffffffd
016f7abc  mov x0,x19
016f7ac0  bl 0x0124c4d0
016f7ac4  ldr w8,[sp, #0x18]
016f7ac8  ldr x0,[sp, #0x10]
016f7acc  sub w8,w8,#0x3
016f7ad0  str w8,[sp, #0x18]
016f7ad4  orr w1,wzr,#0xfffffffc
016f7ad8  bl 0x0124c4d0
016f7adc  ldr w8,[sp, #0x18]
016f7ae0  ldr x0,[sp, #0x10]
016f7ae4  str wzr,[sp, #0x18]
016f7ae8  cmp w8,#0x1
016f7aec  b.lt 0x016f7b10
016f7af0  mvn w1,w8
016f7af4  bl 0x0124c4d0
016f7af8  ldr w8,[sp, #0x18]
016f7afc  cmp w8,#0x1
016f7b00  b.lt 0x016f7b10
016f7b04  ldr x0,[sp, #0x10]
016f7b08  mvn w1,w8
016f7b0c  bl 0x0124c4d0
016f7b10  ldr w8,[sp, #0x8]
016f7b14  cmp w8,#0x1
016f7b18  b.lt 0x016f7b28
016f7b1c  ldr x0,[sp]
016f7b20  mvn w1,w8
016f7b24  bl 0x0124c4d0
016f7b28  ldp x29,x30,[sp, #0x30]
016f7b2c  ldp x20,x19,[sp, #0x20]
016f7b30  add sp,sp,#0x40
016f7b34  ret
