// ===== case384-FEBattleDcPlayerWardStat @ 016d877c =====
// existing function case384-FEBattleDcPlayerWardStat
016d877c  sub sp,sp,#0x50
016d8780  str x21,[sp, #0x20]
016d8784  stp x20,x19,[sp, #0x30]
016d8788  stp x29,x30,[sp, #0x40]
016d878c  add x29,sp,#0x40
016d8790  adrp x1,0x174a000
016d8794  add x1,x1,#0x87c
016d8798  mov x19,x0
016d879c  bl 0x0124ba40
016d87a0  adrp x1,0x575d000
016d87a4  add x1,x1,#0xa06
016d87a8  mov x0,x19
016d87ac  str x19,[sp]
016d87b0  bl 0x01251aa0
016d87b4  mov w8,#0x1
016d87b8  str w8,[sp, #0x8]
016d87bc  mov x0,sp
016d87c0  bl 0x0174aa04
016d87c4  adrp x1,0x5764000
016d87c8  adrp x3,0x736d000
016d87cc  add x1,x1,#0xf10
016d87d0  add x3,x3,#0x101
016d87d4  add x0,sp,#0x10
016d87d8  mov x2,sp
016d87dc  bl 0x01838c94
016d87e0  adrp x1,0x5764000
016d87e4  adrp x2,0x1838000
016d87e8  adrp x4,0x1838000
016d87ec  add x1,x1,#0xeec
016d87f0  add x2,x2,#0xc7c
016d87f4  add x4,x4,#0xc84
016d87f8  add x0,sp,#0x10
016d87fc  mov x3,xzr
016d8800  mov x5,xzr
016d8804  bl 0x01838a94
016d8808  mov x19,x0
016d880c  ldr x0,[x19]
016d8810  mov w1,#0x10
016d8814  bl 0x0124cba0
016d8818  adrp x8,0x1838000
016d881c  dup v0.2D,xzr
016d8820  add x8,x8,#0xc8c
016d8824  mov v0.D[0x0],x8
016d8828  str q0,[x0]
016d882c  ldr x0,[x19]
016d8830  adrp x1,0x1839000
016d8834  add x1,x1,#0x278
016d8838  mov w2,#0x1
016d883c  bl 0x0124ec90
016d8840  ldr x0,[x19]
016d8844  mov w1,#0xffffffff
016d8848  bl 0x0124c0c0
016d884c  ldr x20,[x19]
016d8850  orr w1,wzr,#0xfffffffb
016d8854  mov w2,#0x6e7
016d8858  mov x0,x20
016d885c  bl 0x0124a650
016d8860  orr w1,wzr,#0xfffffffe
016d8864  mov x0,x20
016d8868  bl 0x0124c0c0
016d886c  orr w1,wzr,#0xfffffffe
016d8870  mov x0,x20
016d8874  bl 0x0124e920
016d8878  mov w21,w0
016d887c  adrp x1,0x5764000
016d8880  add x1,x1,#0xef9
016d8884  mov x0,x20
016d8888  bl 0x0124f120
016d888c  orr w1,wzr,#0xfffffffe
016d8890  mov w2,#0x1
016d8894  mov x0,x20
016d8898  bl 0x0124cfc0
016d889c  mov x0,x20
016d88a0  mov w1,w21
016d88a4  bl 0x0124e060
016d88a8  orr w1,wzr,#0xfffffffd
016d88ac  mov x0,x20
016d88b0  bl 0x0124c4d0
016d88b4  ldr x20,[x19]
016d88b8  orr w1,wzr,#0xfffffffd
016d88bc  mov w2,#0x6e7
016d88c0  mov x0,x20
016d88c4  bl 0x0124a650
016d88c8  orr w1,wzr,#0xfffffffe
016d88cc  mov x0,x20
016d88d0  bl 0x0124c0c0
016d88d4  orr w1,wzr,#0xfffffffe
016d88d8  mov x0,x20
016d88dc  bl 0x0124e920
016d88e0  mov w21,w0
016d88e4  adrp x1,0x5764000
016d88e8  add x1,x1,#0xef9
016d88ec  mov x0,x20
016d88f0  bl 0x0124f120
016d88f4  orr w1,wzr,#0xfffffffe
016d88f8  mov w2,#0x1
016d88fc  mov x0,x20
016d8900  bl 0x0124cfc0
016d8904  mov x0,x20
016d8908  mov w1,w21
016d890c  bl 0x0124e060
016d8910  orr w1,wzr,#0xfffffffd
016d8914  mov x0,x20
016d8918  bl 0x0124c4d0
016d891c  ldr w8,[x19, #0x8]
016d8920  ldr x0,[x19]
016d8924  sub w8,w8,#0x3
016d8928  str w8,[x19, #0x8]
016d892c  orr w1,wzr,#0xfffffffc
016d8930  bl 0x0124c4d0
016d8934  ldr w8,[x19, #0x8]
016d8938  ldr x0,[x19]
016d893c  str wzr,[x19, #0x8]
016d8940  cmp w8,#0x1
016d8944  b.lt 0x016d8950
016d8948  mvn w1,w8
016d894c  bl 0x0124c4d0
016d8950  ldr w8,[sp, #0x18]
016d8954  cmp w8,#0x1
016d8958  b.lt 0x016d8968
016d895c  ldr x0,[sp, #0x10]
016d8960  mvn w1,w8
016d8964  bl 0x0124c4d0
016d8968  ldr w8,[sp, #0x8]
016d896c  cmp w8,#0x1
016d8970  b.lt 0x016d8980
016d8974  ldr x0,[sp]
016d8978  mvn w1,w8
016d897c  bl 0x0124c4d0
016d8980  ldp x29,x30,[sp, #0x40]
016d8984  ldp x20,x19,[sp, #0x30]
016d8988  ldr x21,[sp, #0x20]
016d898c  add sp,sp,#0x50
016d8990  ret
