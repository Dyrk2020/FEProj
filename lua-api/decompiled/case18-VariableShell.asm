// ===== case18-VariableShell @ 0168f94c =====
// existing function case18-VariableShell
0168f94c  sub sp,sp,#0x40
0168f950  stp x20,x19,[sp, #0x20]
0168f954  stp x29,x30,[sp, #0x30]
0168f958  add x29,sp,#0x30
0168f95c  adrp x1,0x174a000
0168f960  add x1,x1,#0x87c
0168f964  mov x19,x0
0168f968  bl 0x0124ba40
0168f96c  adrp x1,0x575d000
0168f970  add x1,x1,#0xa06
0168f974  mov x0,x19
0168f978  str x19,[sp]
0168f97c  bl 0x01251aa0
0168f980  mov w8,#0x1
0168f984  str w8,[sp, #0x8]
0168f988  mov x0,sp
0168f98c  bl 0x0174aa04
0168f990  adrp x1,0x575d000
0168f994  adrp x3,0x736d000
0168f998  add x1,x1,#0xb98
0168f99c  add x3,x3,#0x101
0168f9a0  add x0,sp,#0x10
0168f9a4  mov x2,sp
0168f9a8  bl 0x01757f00
0168f9ac  ldr x0,[sp, #0x10]
0168f9b0  mov w1,#0x10
0168f9b4  bl 0x0124cba0
0168f9b8  adrp x8,0x1757000
0168f9bc  dup v0.2D,xzr
0168f9c0  add x8,x8,#0xef8
0168f9c4  mov v0.D[0x0],x8
0168f9c8  str q0,[x0]
0168f9cc  ldr x0,[sp, #0x10]
0168f9d0  adrp x1,0x1758000
0168f9d4  add x1,x1,#0x2c4
0168f9d8  mov w2,#0x1
0168f9dc  bl 0x0124ec90
0168f9e0  ldr x0,[sp, #0x10]
0168f9e4  mov w1,#0xffffffff
0168f9e8  bl 0x0124c0c0
0168f9ec  ldr x19,[sp, #0x10]
0168f9f0  orr w1,wzr,#0xfffffffb
0168f9f4  mov w2,#0x6e7
0168f9f8  mov x0,x19
0168f9fc  bl 0x0124a650
0168fa00  orr w1,wzr,#0xfffffffe
0168fa04  mov x0,x19
0168fa08  bl 0x0124c0c0
0168fa0c  orr w1,wzr,#0xfffffffe
0168fa10  mov x0,x19
0168fa14  bl 0x0124e920
0168fa18  mov w20,w0
0168fa1c  adrp x1,0x575d000
0168fa20  add x1,x1,#0xbc5
0168fa24  mov x0,x19
0168fa28  bl 0x0124f120
0168fa2c  orr w1,wzr,#0xfffffffe
0168fa30  mov w2,#0x1
0168fa34  mov x0,x19
0168fa38  bl 0x0124cfc0
0168fa3c  mov x0,x19
0168fa40  mov w1,w20
0168fa44  bl 0x0124e060
0168fa48  orr w1,wzr,#0xfffffffd
0168fa4c  mov x0,x19
0168fa50  bl 0x0124c4d0
0168fa54  ldr x19,[sp, #0x10]
0168fa58  orr w1,wzr,#0xfffffffd
0168fa5c  mov w2,#0x6e7
0168fa60  mov x0,x19
0168fa64  bl 0x0124a650
0168fa68  orr w1,wzr,#0xfffffffe
0168fa6c  mov x0,x19
0168fa70  bl 0x0124c0c0
0168fa74  orr w1,wzr,#0xfffffffe
0168fa78  mov x0,x19
0168fa7c  bl 0x0124e920
0168fa80  mov w20,w0
0168fa84  adrp x1,0x575d000
0168fa88  add x1,x1,#0xbc5
0168fa8c  mov x0,x19
0168fa90  bl 0x0124f120
0168fa94  orr w1,wzr,#0xfffffffe
0168fa98  mov w2,#0x1
0168fa9c  mov x0,x19
0168faa0  bl 0x0124cfc0
0168faa4  mov x0,x19
0168faa8  mov w1,w20
0168faac  bl 0x0124e060
0168fab0  orr w1,wzr,#0xfffffffd
0168fab4  mov x0,x19
0168fab8  bl 0x0124c4d0
0168fabc  ldr w8,[sp, #0x18]
0168fac0  ldr x0,[sp, #0x10]
0168fac4  sub w8,w8,#0x3
0168fac8  str w8,[sp, #0x18]
0168facc  orr w1,wzr,#0xfffffffc
0168fad0  bl 0x0124c4d0
0168fad4  ldr w8,[sp, #0x18]
0168fad8  ldr x0,[sp, #0x10]
0168fadc  str wzr,[sp, #0x18]
0168fae0  cmp w8,#0x1
0168fae4  b.lt 0x0168fb08
0168fae8  mvn w1,w8
0168faec  bl 0x0124c4d0
0168faf0  ldr w8,[sp, #0x18]
0168faf4  cmp w8,#0x1
0168faf8  b.lt 0x0168fb08
0168fafc  ldr x0,[sp, #0x10]
0168fb00  mvn w1,w8
0168fb04  bl 0x0124c4d0
0168fb08  ldr w8,[sp, #0x8]
0168fb0c  cmp w8,#0x1
0168fb10  b.lt 0x0168fb20
0168fb14  ldr x0,[sp]
0168fb18  mvn w1,w8
0168fb1c  bl 0x0124c4d0
0168fb20  ldp x29,x30,[sp, #0x30]
0168fb24  ldp x20,x19,[sp, #0x20]
0168fb28  add sp,sp,#0x40
0168fb2c  ret
