// ===== case106-ControlPatternsTemplateData @ 0169dd60 =====
// existing function case106-ControlPatternsTemplateData
0169dd60  sub sp,sp,#0x40
0169dd64  stp x20,x19,[sp, #0x20]
0169dd68  stp x29,x30,[sp, #0x30]
0169dd6c  add x29,sp,#0x30
0169dd70  adrp x1,0x174a000
0169dd74  add x1,x1,#0x87c
0169dd78  mov x19,x0
0169dd7c  bl 0x0124ba40
0169dd80  adrp x1,0x575d000
0169dd84  add x1,x1,#0xa06
0169dd88  mov x0,x19
0169dd8c  str x19,[sp]
0169dd90  bl 0x01251aa0
0169dd94  mov w8,#0x1
0169dd98  str w8,[sp, #0x8]
0169dd9c  mov x0,sp
0169dda0  bl 0x0174aa04
0169dda4  adrp x1,0x575f000
0169dda8  adrp x3,0x736d000
0169ddac  add x1,x1,#0x363
0169ddb0  add x3,x3,#0x101
0169ddb4  add x0,sp,#0x10
0169ddb8  mov x2,sp
0169ddbc  bl 0x0178a1b4
0169ddc0  ldr x0,[sp, #0x10]
0169ddc4  mov w1,#0x10
0169ddc8  bl 0x0124cba0
0169ddcc  adrp x8,0x178a000
0169ddd0  dup v0.2D,xzr
0169ddd4  add x8,x8,#0x1a4
0169ddd8  mov v0.D[0x0],x8
0169dddc  str q0,[x0]
0169dde0  ldr x0,[sp, #0x10]
0169dde4  adrp x1,0x178a000
0169dde8  add x1,x1,#0x578
0169ddec  mov w2,#0x1
0169ddf0  bl 0x0124ec90
0169ddf4  ldr x0,[sp, #0x10]
0169ddf8  mov w1,#0xffffffff
0169ddfc  bl 0x0124c0c0
0169de00  ldr x19,[sp, #0x10]
0169de04  orr w1,wzr,#0xfffffffb
0169de08  mov w2,#0x6e7
0169de0c  mov x0,x19
0169de10  bl 0x0124a650
0169de14  orr w1,wzr,#0xfffffffe
0169de18  mov x0,x19
0169de1c  bl 0x0124c0c0
0169de20  orr w1,wzr,#0xfffffffe
0169de24  mov x0,x19
0169de28  bl 0x0124e920
0169de2c  mov w20,w0
0169de30  adrp x1,0x575e000
0169de34  add x1,x1,#0x56d
0169de38  mov x0,x19
0169de3c  bl 0x0124f120
0169de40  orr w1,wzr,#0xfffffffe
0169de44  mov w2,#0x1
0169de48  mov x0,x19
0169de4c  bl 0x0124cfc0
0169de50  mov x0,x19
0169de54  mov w1,w20
0169de58  bl 0x0124e060
0169de5c  orr w1,wzr,#0xfffffffd
0169de60  mov x0,x19
0169de64  bl 0x0124c4d0
0169de68  ldr x19,[sp, #0x10]
0169de6c  orr w1,wzr,#0xfffffffd
0169de70  mov w2,#0x6e7
0169de74  mov x0,x19
0169de78  bl 0x0124a650
0169de7c  orr w1,wzr,#0xfffffffe
0169de80  mov x0,x19
0169de84  bl 0x0124c0c0
0169de88  orr w1,wzr,#0xfffffffe
0169de8c  mov x0,x19
0169de90  bl 0x0124e920
0169de94  mov w20,w0
0169de98  adrp x1,0x575e000
0169de9c  add x1,x1,#0x56d
0169dea0  mov x0,x19
0169dea4  bl 0x0124f120
0169dea8  orr w1,wzr,#0xfffffffe
0169deac  mov w2,#0x1
0169deb0  mov x0,x19
0169deb4  bl 0x0124cfc0
0169deb8  mov x0,x19
0169debc  mov w1,w20
0169dec0  bl 0x0124e060
0169dec4  orr w1,wzr,#0xfffffffd
0169dec8  mov x0,x19
0169decc  bl 0x0124c4d0
0169ded0  ldr x0,[sp, #0x10]
0169ded4  mov w1,#0x10
0169ded8  bl 0x0124cba0
0169dedc  adrp x8,0x178a000
0169dee0  dup v0.2D,xzr
0169dee4  add x8,x8,#0x1ac
0169dee8  mov v0.D[0x0],x8
0169deec  str q0,[x0]
0169def0  ldr x0,[sp, #0x10]
0169def4  adrp x1,0x178a000
0169def8  add x1,x1,#0x69c
0169defc  mov w2,#0x1
0169df00  bl 0x0124ec90
0169df04  ldr x0,[sp, #0x10]
0169df08  mov w1,#0xffffffff
0169df0c  bl 0x0124c0c0
0169df10  ldr x19,[sp, #0x10]
0169df14  orr w1,wzr,#0xfffffffb
0169df18  mov w2,#0x6e7
0169df1c  mov x0,x19
0169df20  bl 0x0124a650
0169df24  orr w1,wzr,#0xfffffffe
0169df28  mov x0,x19
0169df2c  bl 0x0124c0c0
0169df30  orr w1,wzr,#0xfffffffe
0169df34  mov x0,x19
0169df38  bl 0x0124e920
0169df3c  mov w20,w0
0169df40  adrp x1,0x575e000
0169df44  add x1,x1,#0x578
0169df48  mov x0,x19
0169df4c  bl 0x0124f120
0169df50  orr w1,wzr,#0xfffffffe
0169df54  mov w2,#0x1
0169df58  mov x0,x19
0169df5c  bl 0x0124cfc0
0169df60  mov x0,x19
0169df64  mov w1,w20
0169df68  bl 0x0124e060
0169df6c  orr w1,wzr,#0xfffffffd
0169df70  mov x0,x19
0169df74  bl 0x0124c4d0
0169df78  ldr x19,[sp, #0x10]
0169df7c  orr w1,wzr,#0xfffffffd
0169df80  mov w2,#0x6e7
0169df84  mov x0,x19
0169df88  bl 0x0124a650
0169df8c  orr w1,wzr,#0xfffffffe
0169df90  mov x0,x19
0169df94  bl 0x0124c0c0
0169df98  orr w1,wzr,#0xfffffffe
0169df9c  mov x0,x19
0169dfa0  bl 0x0124e920
0169dfa4  mov w20,w0
0169dfa8  adrp x1,0x575e000
0169dfac  add x1,x1,#0x578
0169dfb0  mov x0,x19
0169dfb4  bl 0x0124f120
0169dfb8  orr w1,wzr,#0xfffffffe
0169dfbc  mov w2,#0x1
0169dfc0  mov x0,x19
0169dfc4  bl 0x0124cfc0
0169dfc8  mov x0,x19
0169dfcc  mov w1,w20
0169dfd0  bl 0x0124e060
0169dfd4  orr w1,wzr,#0xfffffffd
0169dfd8  mov x0,x19
0169dfdc  bl 0x0124c4d0
0169dfe0  ldr w8,[sp, #0x18]
0169dfe4  ldr x0,[sp, #0x10]
0169dfe8  sub w8,w8,#0x3
0169dfec  str w8,[sp, #0x18]
0169dff0  orr w1,wzr,#0xfffffffc
0169dff4  bl 0x0124c4d0
0169dff8  ldr w8,[sp, #0x18]
0169dffc  ldr x0,[sp, #0x10]
0169e000  str wzr,[sp, #0x18]
0169e004  cmp w8,#0x1
0169e008  b.lt 0x0169e02c
0169e00c  mvn w1,w8
0169e010  bl 0x0124c4d0
0169e014  ldr w8,[sp, #0x18]
0169e018  cmp w8,#0x1
0169e01c  b.lt 0x0169e02c
0169e020  ldr x0,[sp, #0x10]
0169e024  mvn w1,w8
0169e028  bl 0x0124c4d0
0169e02c  ldr w8,[sp, #0x8]
0169e030  cmp w8,#0x1
0169e034  b.lt 0x0169e044
0169e038  ldr x0,[sp]
0169e03c  mvn w1,w8
0169e040  bl 0x0124c4d0
0169e044  ldp x29,x30,[sp, #0x30]
0169e048  ldp x20,x19,[sp, #0x20]
0169e04c  add sp,sp,#0x40
0169e050  ret
