// ===== case847-SkillSlotVariant @ 0173de68 =====
// existing function case847-SkillSlotVariant
0173de68  sub sp,sp,#0x50
0173de6c  str x21,[sp, #0x20]
0173de70  stp x20,x19,[sp, #0x30]
0173de74  stp x29,x30,[sp, #0x40]
0173de78  add x29,sp,#0x40
0173de7c  adrp x1,0x174a000
0173de80  add x1,x1,#0x87c
0173de84  mov x19,x0
0173de88  bl 0x0124ba40
0173de8c  adrp x1,0x575d000
0173de90  add x1,x1,#0xa06
0173de94  mov x0,x19
0173de98  str x19,[sp]
0173de9c  bl 0x01251aa0
0173dea0  mov w8,#0x1
0173dea4  str w8,[sp, #0x8]
0173dea8  mov x0,sp
0173deac  bl 0x0174aa04
0173deb0  adrp x1,0x5773000
0173deb4  adrp x3,0x736d000
0173deb8  add x1,x1,#0x25
0173debc  add x3,x3,#0x101
0173dec0  add x0,sp,#0x10
0173dec4  mov x2,sp
0173dec8  bl 0x019e4b60
0173decc  adrp x1,0x5773000
0173ded0  adrp x2,0x19e4000
0173ded4  adrp x4,0x19e4000
0173ded8  add x1,x1,#0xaf
0173dedc  add x2,x2,#0x8e0
0173dee0  add x4,x4,#0x8e8
0173dee4  add x0,sp,#0x10
0173dee8  mov x3,xzr
0173deec  mov x5,xzr
0173def0  bl 0x019e46f8
0173def4  adrp x1,0x5773000
0173def8  adrp x2,0x19e4000
0173defc  adrp x4,0x19e4000
0173df00  add x1,x1,#0xba
0173df04  add x2,x2,#0x904
0173df08  add x4,x4,#0x90c
0173df0c  mov x3,xzr
0173df10  mov x5,xzr
0173df14  bl 0x019e46f8
0173df18  adrp x1,0x5773000
0173df1c  adrp x2,0x19e4000
0173df20  adrp x4,0x19e4000
0173df24  add x1,x1,#0xc8
0173df28  add x2,x2,#0xb10
0173df2c  add x4,x4,#0xb18
0173df30  mov x3,xzr
0173df34  mov x5,xzr
0173df38  bl 0x019e4928
0173df3c  adrp x1,0x5760000
0173df40  adrp x2,0x19e4000
0173df44  adrp x4,0x19e4000
0173df48  add x1,x1,#0x2ac
0173df4c  add x2,x2,#0xb34
0173df50  add x4,x4,#0xb3c
0173df54  mov x3,xzr
0173df58  mov x5,xzr
0173df5c  bl 0x019e4928
0173df60  mov x19,x0
0173df64  ldr x0,[x19]
0173df68  mov w1,#0x10
0173df6c  bl 0x0124cba0
0173df70  adrp x8,0x19e4000
0173df74  dup v0.2D,xzr
0173df78  add x8,x8,#0xb58
0173df7c  mov v0.D[0x0],x8
0173df80  str q0,[x0]
0173df84  ldr x0,[x19]
0173df88  adrp x1,0x19e5000
0173df8c  add x1,x1,#0x904
0173df90  mov w2,#0x1
0173df94  bl 0x0124ec90
0173df98  ldr x0,[x19]
0173df9c  mov w1,#0xffffffff
0173dfa0  bl 0x0124c0c0
0173dfa4  ldr x20,[x19]
0173dfa8  orr w1,wzr,#0xfffffffb
0173dfac  mov w2,#0x6e7
0173dfb0  mov x0,x20
0173dfb4  bl 0x0124a650
0173dfb8  orr w1,wzr,#0xfffffffe
0173dfbc  mov x0,x20
0173dfc0  bl 0x0124c0c0
0173dfc4  orr w1,wzr,#0xfffffffe
0173dfc8  mov x0,x20
0173dfcc  bl 0x0124e920
0173dfd0  mov w21,w0
0173dfd4  adrp x1,0x58ed000
0173dfd8  add x1,x1,#0xd5e
0173dfdc  mov x0,x20
0173dfe0  bl 0x0124f120
0173dfe4  orr w1,wzr,#0xfffffffe
0173dfe8  mov w2,#0x1
0173dfec  mov x0,x20
0173dff0  bl 0x0124cfc0
0173dff4  mov x0,x20
0173dff8  mov w1,w21
0173dffc  bl 0x0124e060
0173e000  orr w1,wzr,#0xfffffffd
0173e004  mov x0,x20
0173e008  bl 0x0124c4d0
0173e00c  ldr x20,[x19]
0173e010  orr w1,wzr,#0xfffffffd
0173e014  mov w2,#0x6e7
0173e018  mov x0,x20
0173e01c  bl 0x0124a650
0173e020  orr w1,wzr,#0xfffffffe
0173e024  mov x0,x20
0173e028  bl 0x0124c0c0
0173e02c  orr w1,wzr,#0xfffffffe
0173e030  mov x0,x20
0173e034  bl 0x0124e920
0173e038  mov w21,w0
0173e03c  adrp x1,0x58ed000
0173e040  add x1,x1,#0xd5e
0173e044  mov x0,x20
0173e048  bl 0x0124f120
0173e04c  orr w1,wzr,#0xfffffffe
0173e050  mov w2,#0x1
0173e054  mov x0,x20
0173e058  bl 0x0124cfc0
0173e05c  mov x0,x20
0173e060  mov w1,w21
0173e064  bl 0x0124e060
0173e068  orr w1,wzr,#0xfffffffd
0173e06c  mov x0,x20
0173e070  bl 0x0124c4d0
0173e074  ldr w8,[x19, #0x8]
0173e078  ldr x0,[x19]
0173e07c  sub w8,w8,#0x3
0173e080  str w8,[x19, #0x8]
0173e084  orr w1,wzr,#0xfffffffc
0173e088  bl 0x0124c4d0
0173e08c  ldr w8,[x19, #0x8]
0173e090  ldr x0,[x19]
0173e094  str wzr,[x19, #0x8]
0173e098  cmp w8,#0x1
0173e09c  b.lt 0x0173e0a8
0173e0a0  mvn w1,w8
0173e0a4  bl 0x0124c4d0
0173e0a8  ldr w8,[sp, #0x18]
0173e0ac  cmp w8,#0x1
0173e0b0  b.lt 0x0173e0c0
0173e0b4  ldr x0,[sp, #0x10]
0173e0b8  mvn w1,w8
0173e0bc  bl 0x0124c4d0
0173e0c0  ldr w8,[sp, #0x8]
0173e0c4  cmp w8,#0x1
0173e0c8  b.lt 0x0173e0d8
0173e0cc  ldr x0,[sp]
0173e0d0  mvn w1,w8
0173e0d4  bl 0x0124c4d0
0173e0d8  ldp x29,x30,[sp, #0x40]
0173e0dc  ldp x20,x19,[sp, #0x30]
0173e0e0  ldr x21,[sp, #0x20]
0173e0e4  add sp,sp,#0x50
0173e0e8  ret
