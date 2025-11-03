// ===== case179-AFKResObject @ 016ab93c =====
// existing function case179-AFKResObject
016ab93c  sub sp,sp,#0x40
016ab940  stp x20,x19,[sp, #0x20]
016ab944  stp x29,x30,[sp, #0x30]
016ab948  add x29,sp,#0x30
016ab94c  adrp x1,0x174a000
016ab950  add x1,x1,#0x87c
016ab954  mov x19,x0
016ab958  bl 0x0124ba40
016ab95c  adrp x1,0x575d000
016ab960  add x1,x1,#0xa06
016ab964  mov x0,x19
016ab968  str x19,[sp]
016ab96c  bl 0x01251aa0
016ab970  mov w8,#0x1
016ab974  str w8,[sp, #0x8]
016ab978  mov x0,sp
016ab97c  bl 0x0174aa04
016ab980  adrp x1,0x5760000
016ab984  adrp x3,0x736d000
016ab988  add x1,x1,#0x7ff
016ab98c  add x3,x3,#0x101
016ab990  add x0,sp,#0x10
016ab994  mov x2,sp
016ab998  bl 0x017b07bc
016ab99c  ldr x0,[sp, #0x10]
016ab9a0  mov w1,#0x10
016ab9a4  bl 0x0124cba0
016ab9a8  adrp x8,0x17b0000
016ab9ac  dup v0.2D,xzr
016ab9b0  add x8,x8,#0x7b4
016ab9b4  mov v0.D[0x0],x8
016ab9b8  str q0,[x0]
016ab9bc  ldr x0,[sp, #0x10]
016ab9c0  adrp x1,0x17b0000
016ab9c4  add x1,x1,#0xb80
016ab9c8  mov w2,#0x1
016ab9cc  bl 0x0124ec90
016ab9d0  ldr x0,[sp, #0x10]
016ab9d4  mov w1,#0xffffffff
016ab9d8  bl 0x0124c0c0
016ab9dc  ldr x19,[sp, #0x10]
016ab9e0  orr w1,wzr,#0xfffffffb
016ab9e4  mov w2,#0x6e7
016ab9e8  mov x0,x19
016ab9ec  bl 0x0124a650
016ab9f0  orr w1,wzr,#0xfffffffe
016ab9f4  mov x0,x19
016ab9f8  bl 0x0124c0c0
016ab9fc  orr w1,wzr,#0xfffffffe
016aba00  mov x0,x19
016aba04  bl 0x0124e920
016aba08  mov w20,w0
016aba0c  adrp x1,0x5760000
016aba10  add x1,x1,#0x80c
016aba14  mov x0,x19
016aba18  bl 0x0124f120
016aba1c  orr w1,wzr,#0xfffffffe
016aba20  mov w2,#0x1
016aba24  mov x0,x19
016aba28  bl 0x0124cfc0
016aba2c  mov x0,x19
016aba30  mov w1,w20
016aba34  bl 0x0124e060
016aba38  orr w1,wzr,#0xfffffffd
016aba3c  mov x0,x19
016aba40  bl 0x0124c4d0
016aba44  ldr x19,[sp, #0x10]
016aba48  orr w1,wzr,#0xfffffffd
016aba4c  mov w2,#0x6e7
016aba50  mov x0,x19
016aba54  bl 0x0124a650
016aba58  orr w1,wzr,#0xfffffffe
016aba5c  mov x0,x19
016aba60  bl 0x0124c0c0
016aba64  orr w1,wzr,#0xfffffffe
016aba68  mov x0,x19
016aba6c  bl 0x0124e920
016aba70  mov w20,w0
016aba74  adrp x1,0x5760000
016aba78  add x1,x1,#0x80c
016aba7c  mov x0,x19
016aba80  bl 0x0124f120
016aba84  orr w1,wzr,#0xfffffffe
016aba88  mov w2,#0x1
016aba8c  mov x0,x19
016aba90  bl 0x0124cfc0
016aba94  mov x0,x19
016aba98  mov w1,w20
016aba9c  bl 0x0124e060
016abaa0  orr w1,wzr,#0xfffffffd
016abaa4  mov x0,x19
016abaa8  bl 0x0124c4d0
016abaac  ldr w8,[sp, #0x18]
016abab0  ldr x0,[sp, #0x10]
016abab4  sub w8,w8,#0x3
016abab8  str w8,[sp, #0x18]
016ababc  orr w1,wzr,#0xfffffffc
016abac0  bl 0x0124c4d0
016abac4  ldr w8,[sp, #0x18]
016abac8  ldr x0,[sp, #0x10]
016abacc  str wzr,[sp, #0x18]
016abad0  cmp w8,#0x1
016abad4  b.lt 0x016abaf8
016abad8  mvn w1,w8
016abadc  bl 0x0124c4d0
016abae0  ldr w8,[sp, #0x18]
016abae4  cmp w8,#0x1
016abae8  b.lt 0x016abaf8
016abaec  ldr x0,[sp, #0x10]
016abaf0  mvn w1,w8
016abaf4  bl 0x0124c4d0
016abaf8  ldr w8,[sp, #0x8]
016abafc  cmp w8,#0x1
016abb00  b.lt 0x016abb10
016abb04  ldr x0,[sp]
016abb08  mvn w1,w8
016abb0c  bl 0x0124c4d0
016abb10  ldp x29,x30,[sp, #0x30]
016abb14  ldp x20,x19,[sp, #0x20]
016abb18  add sp,sp,#0x40
016abb1c  ret
