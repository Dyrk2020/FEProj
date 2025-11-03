// ===== case8-BattleActorBackHomeMsg @ 0168deb8 =====
// existing function case8-BattleActorBackHomeMsg
0168deb8  sub sp,sp,#0x40
0168debc  stp x20,x19,[sp, #0x20]
0168dec0  stp x29,x30,[sp, #0x30]
0168dec4  add x29,sp,#0x30
0168dec8  adrp x1,0x174a000
0168decc  add x1,x1,#0x87c
0168ded0  mov x19,x0
0168ded4  bl 0x0124ba40
0168ded8  adrp x1,0x575d000
0168dedc  add x1,x1,#0xa06
0168dee0  mov x0,x19
0168dee4  str x19,[sp]
0168dee8  bl 0x01251aa0
0168deec  mov w8,#0x1
0168def0  str w8,[sp, #0x8]
0168def4  mov x0,sp
0168def8  bl 0x0174aa04
0168defc  adrp x1,0x575d000
0168df00  adrp x3,0x736d000
0168df04  add x1,x1,#0xcdd
0168df08  add x3,x3,#0x101
0168df0c  add x0,sp,#0x10
0168df10  mov x2,sp
0168df14  bl 0x01753958
0168df18  ldr x0,[sp, #0x10]
0168df1c  mov w1,#0x10
0168df20  bl 0x0124cba0
0168df24  adrp x8,0x1753000
0168df28  dup v0.2D,xzr
0168df2c  add x8,x8,#0x934
0168df30  mov v0.D[0x0],x8
0168df34  str q0,[x0]
0168df38  ldr x0,[sp, #0x10]
0168df3c  adrp x1,0x1753000
0168df40  add x1,x1,#0xd1c
0168df44  mov w2,#0x1
0168df48  bl 0x0124ec90
0168df4c  ldr x0,[sp, #0x10]
0168df50  mov w1,#0xffffffff
0168df54  bl 0x0124c0c0
0168df58  ldr x19,[sp, #0x10]
0168df5c  orr w1,wzr,#0xfffffffb
0168df60  mov w2,#0x6e7
0168df64  mov x0,x19
0168df68  bl 0x0124a650
0168df6c  orr w1,wzr,#0xfffffffe
0168df70  mov x0,x19
0168df74  bl 0x0124c0c0
0168df78  orr w1,wzr,#0xfffffffe
0168df7c  mov x0,x19
0168df80  bl 0x0124e920
0168df84  mov w20,w0
0168df88  adrp x1,0x5762000
0168df8c  add x1,x1,#0x1cd
0168df90  mov x0,x19
0168df94  bl 0x0124f120
0168df98  orr w1,wzr,#0xfffffffe
0168df9c  mov w2,#0x1
0168dfa0  mov x0,x19
0168dfa4  bl 0x0124cfc0
0168dfa8  mov x0,x19
0168dfac  mov w1,w20
0168dfb0  bl 0x0124e060
0168dfb4  orr w1,wzr,#0xfffffffd
0168dfb8  mov x0,x19
0168dfbc  bl 0x0124c4d0
0168dfc0  ldr x19,[sp, #0x10]
0168dfc4  orr w1,wzr,#0xfffffffd
0168dfc8  mov w2,#0x6e7
0168dfcc  mov x0,x19
0168dfd0  bl 0x0124a650
0168dfd4  orr w1,wzr,#0xfffffffe
0168dfd8  mov x0,x19
0168dfdc  bl 0x0124c0c0
0168dfe0  orr w1,wzr,#0xfffffffe
0168dfe4  mov x0,x19
0168dfe8  bl 0x0124e920
0168dfec  mov w20,w0
0168dff0  adrp x1,0x5762000
0168dff4  add x1,x1,#0x1cd
0168dff8  mov x0,x19
0168dffc  bl 0x0124f120
0168e000  orr w1,wzr,#0xfffffffe
0168e004  mov w2,#0x1
0168e008  mov x0,x19
0168e00c  bl 0x0124cfc0
0168e010  mov x0,x19
0168e014  mov w1,w20
0168e018  bl 0x0124e060
0168e01c  orr w1,wzr,#0xfffffffd
0168e020  mov x0,x19
0168e024  bl 0x0124c4d0
0168e028  ldr x0,[sp, #0x10]
0168e02c  mov w1,#0x10
0168e030  bl 0x0124cba0
0168e034  adrp x8,0x1753000
0168e038  dup v0.2D,xzr
0168e03c  add x8,x8,#0x950
0168e040  mov v0.D[0x0],x8
0168e044  str q0,[x0]
0168e048  ldr x0,[sp, #0x10]
0168e04c  adrp x1,0x1753000
0168e050  add x1,x1,#0xe40
0168e054  mov w2,#0x1
0168e058  bl 0x0124ec90
0168e05c  ldr x0,[sp, #0x10]
0168e060  mov w1,#0xffffffff
0168e064  bl 0x0124c0c0
0168e068  ldr x19,[sp, #0x10]
0168e06c  orr w1,wzr,#0xfffffffb
0168e070  mov w2,#0x6e7
0168e074  mov x0,x19
0168e078  bl 0x0124a650
0168e07c  orr w1,wzr,#0xfffffffe
0168e080  mov x0,x19
0168e084  bl 0x0124c0c0
0168e088  orr w1,wzr,#0xfffffffe
0168e08c  mov x0,x19
0168e090  bl 0x0124e920
0168e094  mov w20,w0
0168e098  adrp x1,0x575d000
0168e09c  add x1,x1,#0xcf4
0168e0a0  mov x0,x19
0168e0a4  bl 0x0124f120
0168e0a8  orr w1,wzr,#0xfffffffe
0168e0ac  mov w2,#0x1
0168e0b0  mov x0,x19
0168e0b4  bl 0x0124cfc0
0168e0b8  mov x0,x19
0168e0bc  mov w1,w20
0168e0c0  bl 0x0124e060
0168e0c4  orr w1,wzr,#0xfffffffd
0168e0c8  mov x0,x19
0168e0cc  bl 0x0124c4d0
0168e0d0  ldr x19,[sp, #0x10]
0168e0d4  orr w1,wzr,#0xfffffffd
0168e0d8  mov w2,#0x6e7
0168e0dc  mov x0,x19
0168e0e0  bl 0x0124a650
0168e0e4  orr w1,wzr,#0xfffffffe
0168e0e8  mov x0,x19
0168e0ec  bl 0x0124c0c0
0168e0f0  orr w1,wzr,#0xfffffffe
0168e0f4  mov x0,x19
0168e0f8  bl 0x0124e920
0168e0fc  mov w20,w0
0168e100  adrp x1,0x575d000
0168e104  add x1,x1,#0xcf4
0168e108  mov x0,x19
0168e10c  bl 0x0124f120
0168e110  orr w1,wzr,#0xfffffffe
0168e114  mov w2,#0x1
0168e118  mov x0,x19
0168e11c  bl 0x0124cfc0
0168e120  mov x0,x19
0168e124  mov w1,w20
0168e128  bl 0x0124e060
0168e12c  orr w1,wzr,#0xfffffffd
0168e130  mov x0,x19
0168e134  bl 0x0124c4d0
0168e138  ldr w8,[sp, #0x18]
0168e13c  ldr x0,[sp, #0x10]
0168e140  sub w8,w8,#0x3
0168e144  str w8,[sp, #0x18]
0168e148  orr w1,wzr,#0xfffffffc
0168e14c  bl 0x0124c4d0
0168e150  ldr w8,[sp, #0x18]
0168e154  ldr x0,[sp, #0x10]
0168e158  str wzr,[sp, #0x18]
0168e15c  cmp w8,#0x1
0168e160  b.lt 0x0168e184
0168e164  mvn w1,w8
0168e168  bl 0x0124c4d0
0168e16c  ldr w8,[sp, #0x18]
0168e170  cmp w8,#0x1
0168e174  b.lt 0x0168e184
0168e178  ldr x0,[sp, #0x10]
0168e17c  mvn w1,w8
0168e180  bl 0x0124c4d0
0168e184  ldr w8,[sp, #0x8]
0168e188  cmp w8,#0x1
0168e18c  b.lt 0x0168e19c
0168e190  ldr x0,[sp]
0168e194  mvn w1,w8
0168e198  bl 0x0124c4d0
0168e19c  ldp x29,x30,[sp, #0x30]
0168e1a0  ldp x20,x19,[sp, #0x20]
0168e1a4  add sp,sp,#0x40
0168e1a8  ret
