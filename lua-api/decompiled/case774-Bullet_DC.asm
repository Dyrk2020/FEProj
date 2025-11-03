// ===== case774-Bullet_DC @ 0172f8a0 =====
// existing function case774-Bullet_DC
0172f8a0  sub sp,sp,#0x40
0172f8a4  stp x20,x19,[sp, #0x20]
0172f8a8  stp x29,x30,[sp, #0x30]
0172f8ac  add x29,sp,#0x30
0172f8b0  adrp x1,0x174a000
0172f8b4  add x1,x1,#0x87c
0172f8b8  mov x19,x0
0172f8bc  bl 0x0124ba40
0172f8c0  adrp x1,0x575d000
0172f8c4  add x1,x1,#0xa06
0172f8c8  mov x0,x19
0172f8cc  str x19,[sp]
0172f8d0  bl 0x01251aa0
0172f8d4  mov w8,#0x1
0172f8d8  str w8,[sp, #0x8]
0172f8dc  mov x0,sp
0172f8e0  bl 0x0174aa04
0172f8e4  adrp x1,0x5771000
0172f8e8  adrp x3,0x736d000
0172f8ec  add x1,x1,#0x7db
0172f8f0  add x3,x3,#0x101
0172f8f4  add x0,sp,#0x10
0172f8f8  mov x2,sp
0172f8fc  bl 0x019a3214
0172f900  ldr x0,[sp, #0x10]
0172f904  mov w1,#0x10
0172f908  bl 0x0124cba0
0172f90c  adrp x8,0x19a3000
0172f910  dup v0.2D,xzr
0172f914  add x8,x8,#0x20c
0172f918  mov v0.D[0x0],x8
0172f91c  str q0,[x0]
0172f920  ldr x0,[sp, #0x10]
0172f924  adrp x1,0x19a3000
0172f928  add x1,x1,#0x5d8
0172f92c  mov w2,#0x1
0172f930  bl 0x0124ec90
0172f934  ldr x0,[sp, #0x10]
0172f938  mov w1,#0xffffffff
0172f93c  bl 0x0124c0c0
0172f940  ldr x19,[sp, #0x10]
0172f944  orr w1,wzr,#0xfffffffb
0172f948  mov w2,#0x6e7
0172f94c  mov x0,x19
0172f950  bl 0x0124a650
0172f954  orr w1,wzr,#0xfffffffe
0172f958  mov x0,x19
0172f95c  bl 0x0124c0c0
0172f960  orr w1,wzr,#0xfffffffe
0172f964  mov x0,x19
0172f968  bl 0x0124e920
0172f96c  mov w20,w0
0172f970  adrp x1,0x5777000
0172f974  add x1,x1,#0xd16
0172f978  mov x0,x19
0172f97c  bl 0x0124f120
0172f980  orr w1,wzr,#0xfffffffe
0172f984  mov w2,#0x1
0172f988  mov x0,x19
0172f98c  bl 0x0124cfc0
0172f990  mov x0,x19
0172f994  mov w1,w20
0172f998  bl 0x0124e060
0172f99c  orr w1,wzr,#0xfffffffd
0172f9a0  mov x0,x19
0172f9a4  bl 0x0124c4d0
0172f9a8  ldr x19,[sp, #0x10]
0172f9ac  orr w1,wzr,#0xfffffffd
0172f9b0  mov w2,#0x6e7
0172f9b4  mov x0,x19
0172f9b8  bl 0x0124a650
0172f9bc  orr w1,wzr,#0xfffffffe
0172f9c0  mov x0,x19
0172f9c4  bl 0x0124c0c0
0172f9c8  orr w1,wzr,#0xfffffffe
0172f9cc  mov x0,x19
0172f9d0  bl 0x0124e920
0172f9d4  mov w20,w0
0172f9d8  adrp x1,0x5777000
0172f9dc  add x1,x1,#0xd16
0172f9e0  mov x0,x19
0172f9e4  bl 0x0124f120
0172f9e8  orr w1,wzr,#0xfffffffe
0172f9ec  mov w2,#0x1
0172f9f0  mov x0,x19
0172f9f4  bl 0x0124cfc0
0172f9f8  mov x0,x19
0172f9fc  mov w1,w20
0172fa00  bl 0x0124e060
0172fa04  orr w1,wzr,#0xfffffffd
0172fa08  mov x0,x19
0172fa0c  bl 0x0124c4d0
0172fa10  ldr w8,[sp, #0x18]
0172fa14  ldr x0,[sp, #0x10]
0172fa18  sub w8,w8,#0x3
0172fa1c  str w8,[sp, #0x18]
0172fa20  orr w1,wzr,#0xfffffffc
0172fa24  bl 0x0124c4d0
0172fa28  ldr w8,[sp, #0x18]
0172fa2c  ldr x0,[sp, #0x10]
0172fa30  str wzr,[sp, #0x18]
0172fa34  cmp w8,#0x1
0172fa38  b.lt 0x0172fa5c
0172fa3c  mvn w1,w8
0172fa40  bl 0x0124c4d0
0172fa44  ldr w8,[sp, #0x18]
0172fa48  cmp w8,#0x1
0172fa4c  b.lt 0x0172fa5c
0172fa50  ldr x0,[sp, #0x10]
0172fa54  mvn w1,w8
0172fa58  bl 0x0124c4d0
0172fa5c  ldr w8,[sp, #0x8]
0172fa60  cmp w8,#0x1
0172fa64  b.lt 0x0172fa74
0172fa68  ldr x0,[sp]
0172fa6c  mvn w1,w8
0172fa70  bl 0x0124c4d0
0172fa74  ldp x29,x30,[sp, #0x30]
0172fa78  ldp x20,x19,[sp, #0x20]
0172fa7c  add sp,sp,#0x40
0172fa80  ret
