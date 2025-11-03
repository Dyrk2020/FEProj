// ===== case457-GrassWardDataMgr @ 016eaf14 =====
// existing function case457-GrassWardDataMgr
016eaf14  sub sp,sp,#0x40
016eaf18  stp x20,x19,[sp, #0x20]
016eaf1c  stp x29,x30,[sp, #0x30]
016eaf20  add x29,sp,#0x30
016eaf24  adrp x1,0x174a000
016eaf28  add x1,x1,#0x87c
016eaf2c  mov x19,x0
016eaf30  bl 0x0124ba40
016eaf34  adrp x1,0x575d000
016eaf38  add x1,x1,#0xa06
016eaf3c  mov x0,x19
016eaf40  str x19,[sp]
016eaf44  bl 0x01251aa0
016eaf48  mov w8,#0x1
016eaf4c  str w8,[sp, #0x8]
016eaf50  mov x0,sp
016eaf54  bl 0x0174aa04
016eaf58  adrp x1,0x5766000
016eaf5c  adrp x3,0x736d000
016eaf60  add x1,x1,#0xb9d
016eaf64  add x3,x3,#0x101
016eaf68  add x0,sp,#0x10
016eaf6c  mov x2,sp
016eaf70  bl 0x01870a34
016eaf74  ldr x0,[sp, #0x10]
016eaf78  mov w1,#0x10
016eaf7c  bl 0x0124cba0
016eaf80  adrp x8,0x1870000
016eaf84  dup v0.2D,xzr
016eaf88  add x8,x8,#0xa2c
016eaf8c  mov v0.D[0x0],x8
016eaf90  str q0,[x0]
016eaf94  ldr x0,[sp, #0x10]
016eaf98  adrp x1,0x1870000
016eaf9c  add x1,x1,#0xdf8
016eafa0  mov w2,#0x1
016eafa4  bl 0x0124ec90
016eafa8  ldr x0,[sp, #0x10]
016eafac  mov w1,#0xffffffff
016eafb0  bl 0x0124c0c0
016eafb4  ldr x19,[sp, #0x10]
016eafb8  orr w1,wzr,#0xfffffffb
016eafbc  mov w2,#0x6e7
016eafc0  mov x0,x19
016eafc4  bl 0x0124a650
016eafc8  orr w1,wzr,#0xfffffffe
016eafcc  mov x0,x19
016eafd0  bl 0x0124c0c0
016eafd4  orr w1,wzr,#0xfffffffe
016eafd8  mov x0,x19
016eafdc  bl 0x0124e920
016eafe0  mov w20,w0
016eafe4  adrp x1,0x5766000
016eafe8  add x1,x1,#0xbae
016eafec  mov x0,x19
016eaff0  bl 0x0124f120
016eaff4  orr w1,wzr,#0xfffffffe
016eaff8  mov w2,#0x1
016eaffc  mov x0,x19
016eb000  bl 0x0124cfc0
016eb004  mov x0,x19
016eb008  mov w1,w20
016eb00c  bl 0x0124e060
016eb010  orr w1,wzr,#0xfffffffd
016eb014  mov x0,x19
016eb018  bl 0x0124c4d0
016eb01c  ldr x19,[sp, #0x10]
016eb020  orr w1,wzr,#0xfffffffd
016eb024  mov w2,#0x6e7
016eb028  mov x0,x19
016eb02c  bl 0x0124a650
016eb030  orr w1,wzr,#0xfffffffe
016eb034  mov x0,x19
016eb038  bl 0x0124c0c0
016eb03c  orr w1,wzr,#0xfffffffe
016eb040  mov x0,x19
016eb044  bl 0x0124e920
016eb048  mov w20,w0
016eb04c  adrp x1,0x5766000
016eb050  add x1,x1,#0xbae
016eb054  mov x0,x19
016eb058  bl 0x0124f120
016eb05c  orr w1,wzr,#0xfffffffe
016eb060  mov w2,#0x1
016eb064  mov x0,x19
016eb068  bl 0x0124cfc0
016eb06c  mov x0,x19
016eb070  mov w1,w20
016eb074  bl 0x0124e060
016eb078  orr w1,wzr,#0xfffffffd
016eb07c  mov x0,x19
016eb080  bl 0x0124c4d0
016eb084  ldr w8,[sp, #0x18]
016eb088  ldr x0,[sp, #0x10]
016eb08c  sub w8,w8,#0x3
016eb090  str w8,[sp, #0x18]
016eb094  orr w1,wzr,#0xfffffffc
016eb098  bl 0x0124c4d0
016eb09c  ldr w8,[sp, #0x18]
016eb0a0  ldr x0,[sp, #0x10]
016eb0a4  str wzr,[sp, #0x18]
016eb0a8  cmp w8,#0x1
016eb0ac  b.lt 0x016eb0d0
016eb0b0  mvn w1,w8
016eb0b4  bl 0x0124c4d0
016eb0b8  ldr w8,[sp, #0x18]
016eb0bc  cmp w8,#0x1
016eb0c0  b.lt 0x016eb0d0
016eb0c4  ldr x0,[sp, #0x10]
016eb0c8  mvn w1,w8
016eb0cc  bl 0x0124c4d0
016eb0d0  ldr w8,[sp, #0x8]
016eb0d4  cmp w8,#0x1
016eb0d8  b.lt 0x016eb0e8
016eb0dc  ldr x0,[sp]
016eb0e0  mvn w1,w8
016eb0e4  bl 0x0124c4d0
016eb0e8  ldp x29,x30,[sp, #0x30]
016eb0ec  ldp x20,x19,[sp, #0x20]
016eb0f0  add sp,sp,#0x40
016eb0f4  ret
