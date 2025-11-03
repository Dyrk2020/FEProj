// ===== case290-GlobalSettingResObject @ 016bd980 =====
// existing function case290-GlobalSettingResObject
016bd980  sub sp,sp,#0x40
016bd984  stp x20,x19,[sp, #0x20]
016bd988  stp x29,x30,[sp, #0x30]
016bd98c  add x29,sp,#0x30
016bd990  adrp x1,0x174a000
016bd994  add x1,x1,#0x87c
016bd998  mov x19,x0
016bd99c  bl 0x0124ba40
016bd9a0  adrp x1,0x575d000
016bd9a4  add x1,x1,#0xa06
016bd9a8  mov x0,x19
016bd9ac  str x19,[sp]
016bd9b0  bl 0x01251aa0
016bd9b4  mov w8,#0x1
016bd9b8  str w8,[sp, #0x8]
016bd9bc  mov x0,sp
016bd9c0  bl 0x0174aa04
016bd9c4  adrp x1,0x5762000
016bd9c8  adrp x3,0x736d000
016bd9cc  add x1,x1,#0x5aa
016bd9d0  add x3,x3,#0x101
016bd9d4  add x0,sp,#0x10
016bd9d8  mov x2,sp
016bd9dc  bl 0x017f08c0
016bd9e0  ldr x0,[sp, #0x10]
016bd9e4  mov w1,#0x10
016bd9e8  bl 0x0124cba0
016bd9ec  adrp x8,0x17f0000
016bd9f0  dup v0.2D,xzr
016bd9f4  add x8,x8,#0x6c0
016bd9f8  mov v0.D[0x0],x8
016bd9fc  str q0,[x0]
016bda00  ldr x0,[sp, #0x10]
016bda04  adrp x1,0x17f0000
016bda08  add x1,x1,#0xc84
016bda0c  mov w2,#0x1
016bda10  bl 0x0124ec90
016bda14  ldr x0,[sp, #0x10]
016bda18  mov w1,#0xffffffff
016bda1c  bl 0x0124c0c0
016bda20  ldr x19,[sp, #0x10]
016bda24  orr w1,wzr,#0xfffffffb
016bda28  mov w2,#0x6e7
016bda2c  mov x0,x19
016bda30  bl 0x0124a650
016bda34  orr w1,wzr,#0xfffffffe
016bda38  mov x0,x19
016bda3c  bl 0x0124c0c0
016bda40  orr w1,wzr,#0xfffffffe
016bda44  mov x0,x19
016bda48  bl 0x0124e920
016bda4c  mov w20,w0
016bda50  adrp x1,0x5762000
016bda54  add x1,x1,#0x4b5
016bda58  mov x0,x19
016bda5c  bl 0x0124f120
016bda60  orr w1,wzr,#0xfffffffe
016bda64  mov w2,#0x1
016bda68  mov x0,x19
016bda6c  bl 0x0124cfc0
016bda70  mov x0,x19
016bda74  mov w1,w20
016bda78  bl 0x0124e060
016bda7c  orr w1,wzr,#0xfffffffd
016bda80  mov x0,x19
016bda84  bl 0x0124c4d0
016bda88  ldr x19,[sp, #0x10]
016bda8c  orr w1,wzr,#0xfffffffd
016bda90  mov w2,#0x6e7
016bda94  mov x0,x19
016bda98  bl 0x0124a650
016bda9c  orr w1,wzr,#0xfffffffe
016bdaa0  mov x0,x19
016bdaa4  bl 0x0124c0c0
016bdaa8  orr w1,wzr,#0xfffffffe
016bdaac  mov x0,x19
016bdab0  bl 0x0124e920
016bdab4  mov w20,w0
016bdab8  adrp x1,0x5762000
016bdabc  add x1,x1,#0x4b5
016bdac0  mov x0,x19
016bdac4  bl 0x0124f120
016bdac8  orr w1,wzr,#0xfffffffe
016bdacc  mov w2,#0x1
016bdad0  mov x0,x19
016bdad4  bl 0x0124cfc0
016bdad8  mov x0,x19
016bdadc  mov w1,w20
016bdae0  bl 0x0124e060
016bdae4  orr w1,wzr,#0xfffffffd
016bdae8  mov x0,x19
016bdaec  bl 0x0124c4d0
016bdaf0  adrp x1,0x5762000
016bdaf4  adrp x2,0x17f0000
016bdaf8  adrp x4,0x17f0000
016bdafc  add x1,x1,#0x4ca
016bdb00  add x2,x2,#0x8b0
016bdb04  add x4,x4,#0x8b8
016bdb08  add x0,sp,#0x10
016bdb0c  mov x3,xzr
016bdb10  mov x5,xzr
016bdb14  bl 0x017f06c8
016bdb18  mov x19,x0
016bdb1c  ldr w8,[x19, #0x8]
016bdb20  ldr x0,[x19]
016bdb24  sub w8,w8,#0x3
016bdb28  str w8,[x19, #0x8]
016bdb2c  orr w1,wzr,#0xfffffffc
016bdb30  bl 0x0124c4d0
016bdb34  ldr w8,[x19, #0x8]
016bdb38  ldr x0,[x19]
016bdb3c  str wzr,[x19, #0x8]
016bdb40  cmp w8,#0x1
016bdb44  b.lt 0x016bdb50
016bdb48  mvn w1,w8
016bdb4c  bl 0x0124c4d0
016bdb50  ldr w8,[sp, #0x18]
016bdb54  cmp w8,#0x1
016bdb58  b.lt 0x016bdb68
016bdb5c  ldr x0,[sp, #0x10]
016bdb60  mvn w1,w8
016bdb64  bl 0x0124c4d0
016bdb68  ldr w8,[sp, #0x8]
016bdb6c  cmp w8,#0x1
016bdb70  b.lt 0x016bdb80
016bdb74  ldr x0,[sp]
016bdb78  mvn w1,w8
016bdb7c  bl 0x0124c4d0
016bdb80  ldp x29,x30,[sp, #0x30]
016bdb84  ldp x20,x19,[sp, #0x20]
016bdb88  add sp,sp,#0x40
016bdb8c  ret
