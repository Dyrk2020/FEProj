// ===== case845-VirtualSkillSlotVariant @ 0173d7ec =====
// existing function case845-VirtualSkillSlotVariant
0173d7ec  sub sp,sp,#0x40
0173d7f0  stp x20,x19,[sp, #0x20]
0173d7f4  stp x29,x30,[sp, #0x30]
0173d7f8  add x29,sp,#0x30
0173d7fc  adrp x1,0x174a000
0173d800  add x1,x1,#0x87c
0173d804  mov x19,x0
0173d808  bl 0x0124ba40
0173d80c  adrp x1,0x575d000
0173d810  add x1,x1,#0xa06
0173d814  mov x0,x19
0173d818  str x19,[sp]
0173d81c  bl 0x01251aa0
0173d820  mov w8,#0x1
0173d824  str w8,[sp, #0x8]
0173d828  mov x0,sp
0173d82c  bl 0x0174aa04
0173d830  adrp x1,0x5773000
0173d834  adrp x3,0x736d000
0173d838  add x1,x1,#0x1e
0173d83c  add x3,x3,#0x101
0173d840  add x0,sp,#0x10
0173d844  mov x2,sp
0173d848  bl 0x019e2658
0173d84c  ldr x0,[sp, #0x10]
0173d850  mov w1,#0x10
0173d854  bl 0x0124cba0
0173d858  adrp x8,0x19e2000
0173d85c  dup v0.2D,xzr
0173d860  add x8,x8,#0x650
0173d864  mov v0.D[0x0],x8
0173d868  str q0,[x0]
0173d86c  ldr x0,[sp, #0x10]
0173d870  adrp x1,0x19e2000
0173d874  add x1,x1,#0xa1c
0173d878  mov w2,#0x1
0173d87c  bl 0x0124ec90
0173d880  ldr x0,[sp, #0x10]
0173d884  mov w1,#0xffffffff
0173d888  bl 0x0124c0c0
0173d88c  ldr x19,[sp, #0x10]
0173d890  orr w1,wzr,#0xfffffffb
0173d894  mov w2,#0x6e7
0173d898  mov x0,x19
0173d89c  bl 0x0124a650
0173d8a0  orr w1,wzr,#0xfffffffe
0173d8a4  mov x0,x19
0173d8a8  bl 0x0124c0c0
0173d8ac  orr w1,wzr,#0xfffffffe
0173d8b0  mov x0,x19
0173d8b4  bl 0x0124e920
0173d8b8  mov w20,w0
0173d8bc  adrp x1,0x58ed000
0173d8c0  add x1,x1,#0xd5e
0173d8c4  mov x0,x19
0173d8c8  bl 0x0124f120
0173d8cc  orr w1,wzr,#0xfffffffe
0173d8d0  mov w2,#0x1
0173d8d4  mov x0,x19
0173d8d8  bl 0x0124cfc0
0173d8dc  mov x0,x19
0173d8e0  mov w1,w20
0173d8e4  bl 0x0124e060
0173d8e8  orr w1,wzr,#0xfffffffd
0173d8ec  mov x0,x19
0173d8f0  bl 0x0124c4d0
0173d8f4  ldr x19,[sp, #0x10]
0173d8f8  orr w1,wzr,#0xfffffffd
0173d8fc  mov w2,#0x6e7
0173d900  mov x0,x19
0173d904  bl 0x0124a650
0173d908  orr w1,wzr,#0xfffffffe
0173d90c  mov x0,x19
0173d910  bl 0x0124c0c0
0173d914  orr w1,wzr,#0xfffffffe
0173d918  mov x0,x19
0173d91c  bl 0x0124e920
0173d920  mov w20,w0
0173d924  adrp x1,0x58ed000
0173d928  add x1,x1,#0xd5e
0173d92c  mov x0,x19
0173d930  bl 0x0124f120
0173d934  orr w1,wzr,#0xfffffffe
0173d938  mov w2,#0x1
0173d93c  mov x0,x19
0173d940  bl 0x0124cfc0
0173d944  mov x0,x19
0173d948  mov w1,w20
0173d94c  bl 0x0124e060
0173d950  orr w1,wzr,#0xfffffffd
0173d954  mov x0,x19
0173d958  bl 0x0124c4d0
0173d95c  ldr w8,[sp, #0x18]
0173d960  ldr x0,[sp, #0x10]
0173d964  sub w8,w8,#0x3
0173d968  str w8,[sp, #0x18]
0173d96c  orr w1,wzr,#0xfffffffc
0173d970  bl 0x0124c4d0
0173d974  ldr w8,[sp, #0x18]
0173d978  ldr x0,[sp, #0x10]
0173d97c  str wzr,[sp, #0x18]
0173d980  cmp w8,#0x1
0173d984  b.lt 0x0173d9a8
0173d988  mvn w1,w8
0173d98c  bl 0x0124c4d0
0173d990  ldr w8,[sp, #0x18]
0173d994  cmp w8,#0x1
0173d998  b.lt 0x0173d9a8
0173d99c  ldr x0,[sp, #0x10]
0173d9a0  mvn w1,w8
0173d9a4  bl 0x0124c4d0
0173d9a8  ldr w8,[sp, #0x8]
0173d9ac  cmp w8,#0x1
0173d9b0  b.lt 0x0173d9c0
0173d9b4  ldr x0,[sp]
0173d9b8  mvn w1,w8
0173d9bc  bl 0x0124c4d0
0173d9c0  ldp x29,x30,[sp, #0x30]
0173d9c4  ldp x20,x19,[sp, #0x20]
0173d9c8  add sp,sp,#0x40
0173d9cc  ret
