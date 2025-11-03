// ===== case442-BattleState @ 016e88fc =====
// existing function case442-BattleState
016e88fc  sub sp,sp,#0x50
016e8900  str x21,[sp, #0x20]
016e8904  stp x20,x19,[sp, #0x30]
016e8908  stp x29,x30,[sp, #0x40]
016e890c  add x29,sp,#0x40
016e8910  adrp x1,0x174a000
016e8914  add x1,x1,#0x87c
016e8918  mov x19,x0
016e891c  bl 0x0124ba40
016e8920  adrp x1,0x575d000
016e8924  add x1,x1,#0xa06
016e8928  mov x0,x19
016e892c  str x19,[sp]
016e8930  bl 0x01251aa0
016e8934  mov w8,#0x1
016e8938  str w8,[sp, #0x8]
016e893c  mov x0,sp
016e8940  bl 0x0174aa04
016e8944  adrp x1,0x5766000
016e8948  adrp x3,0x736d000
016e894c  add x1,x1,#0x91f
016e8950  add x3,x3,#0x101
016e8954  add x0,sp,#0x10
016e8958  mov x2,sp
016e895c  bl 0x018685d4
016e8960  adrp x1,0x5766000
016e8964  adrp x2,0x1868000
016e8968  adrp x4,0x1868000
016e896c  add x1,x1,#0x92b
016e8970  add x2,x2,#0x5a8
016e8974  add x4,x4,#0x5b0
016e8978  add x0,sp,#0x10
016e897c  mov x3,xzr
016e8980  mov x5,xzr
016e8984  bl 0x018683c0
016e8988  mov x19,x0
016e898c  ldr x0,[x19]
016e8990  mov w1,#0x10
016e8994  bl 0x0124cba0
016e8998  adrp x8,0x1868000
016e899c  dup v0.2D,xzr
016e89a0  add x8,x8,#0x5cc
016e89a4  mov v0.D[0x0],x8
016e89a8  str q0,[x0]
016e89ac  ldr x0,[x19]
016e89b0  adrp x1,0x1868000
016e89b4  add x1,x1,#0xd20
016e89b8  mov w2,#0x1
016e89bc  bl 0x0124ec90
016e89c0  ldr x0,[x19]
016e89c4  mov w1,#0xffffffff
016e89c8  bl 0x0124c0c0
016e89cc  ldr x20,[x19]
016e89d0  orr w1,wzr,#0xfffffffb
016e89d4  mov w2,#0x6e7
016e89d8  mov x0,x20
016e89dc  bl 0x0124a650
016e89e0  orr w1,wzr,#0xfffffffe
016e89e4  mov x0,x20
016e89e8  bl 0x0124c0c0
016e89ec  orr w1,wzr,#0xfffffffe
016e89f0  mov x0,x20
016e89f4  bl 0x0124e920
016e89f8  mov w21,w0
016e89fc  adrp x1,0x5763000
016e8a00  add x1,x1,#0x892
016e8a04  mov x0,x20
016e8a08  bl 0x0124f120
016e8a0c  orr w1,wzr,#0xfffffffe
016e8a10  mov w2,#0x1
016e8a14  mov x0,x20
016e8a18  bl 0x0124cfc0
016e8a1c  mov x0,x20
016e8a20  mov w1,w21
016e8a24  bl 0x0124e060
016e8a28  orr w1,wzr,#0xfffffffd
016e8a2c  mov x0,x20
016e8a30  bl 0x0124c4d0
016e8a34  ldr x20,[x19]
016e8a38  orr w1,wzr,#0xfffffffd
016e8a3c  mov w2,#0x6e7
016e8a40  mov x0,x20
016e8a44  bl 0x0124a650
016e8a48  orr w1,wzr,#0xfffffffe
016e8a4c  mov x0,x20
016e8a50  bl 0x0124c0c0
016e8a54  orr w1,wzr,#0xfffffffe
016e8a58  mov x0,x20
016e8a5c  bl 0x0124e920
016e8a60  mov w21,w0
016e8a64  adrp x1,0x5763000
016e8a68  add x1,x1,#0x892
016e8a6c  mov x0,x20
016e8a70  bl 0x0124f120
016e8a74  orr w1,wzr,#0xfffffffe
016e8a78  mov w2,#0x1
016e8a7c  mov x0,x20
016e8a80  bl 0x0124cfc0
016e8a84  mov x0,x20
016e8a88  mov w1,w21
016e8a8c  bl 0x0124e060
016e8a90  orr w1,wzr,#0xfffffffd
016e8a94  mov x0,x20
016e8a98  bl 0x0124c4d0
016e8a9c  ldr w8,[x19, #0x8]
016e8aa0  ldr x0,[x19]
016e8aa4  sub w8,w8,#0x3
016e8aa8  str w8,[x19, #0x8]
016e8aac  orr w1,wzr,#0xfffffffc
016e8ab0  bl 0x0124c4d0
016e8ab4  ldr w8,[x19, #0x8]
016e8ab8  ldr x0,[x19]
016e8abc  str wzr,[x19, #0x8]
016e8ac0  cmp w8,#0x1
016e8ac4  b.lt 0x016e8ad0
016e8ac8  mvn w1,w8
016e8acc  bl 0x0124c4d0
016e8ad0  ldr w8,[sp, #0x18]
016e8ad4  cmp w8,#0x1
016e8ad8  b.lt 0x016e8ae8
016e8adc  ldr x0,[sp, #0x10]
016e8ae0  mvn w1,w8
016e8ae4  bl 0x0124c4d0
016e8ae8  ldr w8,[sp, #0x8]
016e8aec  cmp w8,#0x1
016e8af0  b.lt 0x016e8b00
016e8af4  ldr x0,[sp]
016e8af8  mvn w1,w8
016e8afc  bl 0x0124c4d0
016e8b00  ldp x29,x30,[sp, #0x40]
016e8b04  ldp x20,x19,[sp, #0x30]
016e8b08  ldr x21,[sp, #0x20]
016e8b0c  add sp,sp,#0x50
016e8b10  ret
