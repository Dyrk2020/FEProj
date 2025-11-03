// ===== case392-GMLgcCmdProcessor @ 016dd8e8 =====
// existing function case392-GMLgcCmdProcessor
016dd8e8  sub sp,sp,#0x40
016dd8ec  stp x20,x19,[sp, #0x20]
016dd8f0  stp x29,x30,[sp, #0x30]
016dd8f4  add x29,sp,#0x30
016dd8f8  adrp x1,0x174a000
016dd8fc  add x1,x1,#0x87c
016dd900  mov x19,x0
016dd904  bl 0x0124ba40
016dd908  adrp x1,0x575d000
016dd90c  add x1,x1,#0xa06
016dd910  mov x0,x19
016dd914  str x19,[sp]
016dd918  bl 0x01251aa0
016dd91c  mov w8,#0x1
016dd920  str w8,[sp, #0x8]
016dd924  mov x0,sp
016dd928  bl 0x0174aa04
016dd92c  adrp x1,0x5765000
016dd930  adrp x3,0x736d000
016dd934  add x1,x1,#0x5de
016dd938  add x3,x3,#0x101
016dd93c  add x0,sp,#0x10
016dd940  mov x2,sp
016dd944  bl 0x018437f0
016dd948  ldr x0,[sp, #0x10]
016dd94c  mov w1,#0x10
016dd950  bl 0x0124cba0
016dd954  adrp x8,0x1843000
016dd958  dup v0.2D,xzr
016dd95c  add x8,x8,#0x7e8
016dd960  mov v0.D[0x0],x8
016dd964  str q0,[x0]
016dd968  ldr x0,[sp, #0x10]
016dd96c  adrp x1,0x1843000
016dd970  add x1,x1,#0xbb4
016dd974  mov w2,#0x1
016dd978  bl 0x0124ec90
016dd97c  ldr x0,[sp, #0x10]
016dd980  mov w1,#0xffffffff
016dd984  bl 0x0124c0c0
016dd988  ldr x19,[sp, #0x10]
016dd98c  orr w1,wzr,#0xfffffffb
016dd990  mov w2,#0x6e7
016dd994  mov x0,x19
016dd998  bl 0x0124a650
016dd99c  orr w1,wzr,#0xfffffffe
016dd9a0  mov x0,x19
016dd9a4  bl 0x0124c0c0
016dd9a8  orr w1,wzr,#0xfffffffe
016dd9ac  mov x0,x19
016dd9b0  bl 0x0124e920
016dd9b4  mov w20,w0
016dd9b8  adrp x1,0x5765000
016dd9bc  add x1,x1,#0x5f0
016dd9c0  mov x0,x19
016dd9c4  bl 0x0124f120
016dd9c8  orr w1,wzr,#0xfffffffe
016dd9cc  mov w2,#0x1
016dd9d0  mov x0,x19
016dd9d4  bl 0x0124cfc0
016dd9d8  mov x0,x19
016dd9dc  mov w1,w20
016dd9e0  bl 0x0124e060
016dd9e4  orr w1,wzr,#0xfffffffd
016dd9e8  mov x0,x19
016dd9ec  bl 0x0124c4d0
016dd9f0  ldr x19,[sp, #0x10]
016dd9f4  orr w1,wzr,#0xfffffffd
016dd9f8  mov w2,#0x6e7
016dd9fc  mov x0,x19
016dda00  bl 0x0124a650
016dda04  orr w1,wzr,#0xfffffffe
016dda08  mov x0,x19
016dda0c  bl 0x0124c0c0
016dda10  orr w1,wzr,#0xfffffffe
016dda14  mov x0,x19
016dda18  bl 0x0124e920
016dda1c  mov w20,w0
016dda20  adrp x1,0x5765000
016dda24  add x1,x1,#0x5f0
016dda28  mov x0,x19
016dda2c  bl 0x0124f120
016dda30  orr w1,wzr,#0xfffffffe
016dda34  mov w2,#0x1
016dda38  mov x0,x19
016dda3c  bl 0x0124cfc0
016dda40  mov x0,x19
016dda44  mov w1,w20
016dda48  bl 0x0124e060
016dda4c  orr w1,wzr,#0xfffffffd
016dda50  mov x0,x19
016dda54  bl 0x0124c4d0
016dda58  ldr w8,[sp, #0x18]
016dda5c  ldr x0,[sp, #0x10]
016dda60  sub w8,w8,#0x3
016dda64  str w8,[sp, #0x18]
016dda68  orr w1,wzr,#0xfffffffc
016dda6c  bl 0x0124c4d0
016dda70  ldr w8,[sp, #0x18]
016dda74  ldr x0,[sp, #0x10]
016dda78  str wzr,[sp, #0x18]
016dda7c  cmp w8,#0x1
016dda80  b.lt 0x016ddaa4
016dda84  mvn w1,w8
016dda88  bl 0x0124c4d0
016dda8c  ldr w8,[sp, #0x18]
016dda90  cmp w8,#0x1
016dda94  b.lt 0x016ddaa4
016dda98  ldr x0,[sp, #0x10]
016dda9c  mvn w1,w8
016ddaa0  bl 0x0124c4d0
016ddaa4  ldr w8,[sp, #0x8]
016ddaa8  cmp w8,#0x1
016ddaac  b.lt 0x016ddabc
016ddab0  ldr x0,[sp]
016ddab4  mvn w1,w8
016ddab8  bl 0x0124c4d0
016ddabc  ldp x29,x30,[sp, #0x30]
016ddac0  ldp x20,x19,[sp, #0x20]
016ddac4  add sp,sp,#0x40
016ddac8  ret
