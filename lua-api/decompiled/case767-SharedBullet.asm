// ===== case767-SharedBullet @ 0172de24 =====
// existing function case767-SharedBullet
0172de24  sub sp,sp,#0x40
0172de28  stp x20,x19,[sp, #0x20]
0172de2c  stp x29,x30,[sp, #0x30]
0172de30  add x29,sp,#0x30
0172de34  adrp x1,0x174a000
0172de38  add x1,x1,#0x87c
0172de3c  mov x19,x0
0172de40  bl 0x0124ba40
0172de44  adrp x1,0x575d000
0172de48  add x1,x1,#0xa06
0172de4c  mov x0,x19
0172de50  str x19,[sp]
0172de54  bl 0x01251aa0
0172de58  mov w8,#0x1
0172de5c  str w8,[sp, #0x8]
0172de60  mov x0,sp
0172de64  bl 0x0174aa04
0172de68  adrp x1,0x5771000
0172de6c  adrp x3,0x736d000
0172de70  add x1,x1,#0x271
0172de74  add x3,x3,#0x101
0172de78  add x0,sp,#0x10
0172de7c  mov x2,sp
0172de80  bl 0x0199d074
0172de84  ldr x0,[sp, #0x10]
0172de88  mov w1,#0x10
0172de8c  bl 0x0124cba0
0172de90  adrp x8,0x199d000
0172de94  dup v0.2D,xzr
0172de98  add x8,x8,#0x6c
0172de9c  mov v0.D[0x0],x8
0172dea0  str q0,[x0]
0172dea4  ldr x0,[sp, #0x10]
0172dea8  adrp x1,0x199d000
0172deac  add x1,x1,#0x438
0172deb0  mov w2,#0x1
0172deb4  bl 0x0124ec90
0172deb8  ldr x0,[sp, #0x10]
0172debc  mov w1,#0xffffffff
0172dec0  bl 0x0124c0c0
0172dec4  ldr x19,[sp, #0x10]
0172dec8  orr w1,wzr,#0xfffffffb
0172decc  mov w2,#0x6e7
0172ded0  mov x0,x19
0172ded4  bl 0x0124a650
0172ded8  orr w1,wzr,#0xfffffffe
0172dedc  mov x0,x19
0172dee0  bl 0x0124c0c0
0172dee4  orr w1,wzr,#0xfffffffe
0172dee8  mov x0,x19
0172deec  bl 0x0124e920
0172def0  mov w20,w0
0172def4  adrp x1,0x575d000
0172def8  add x1,x1,#0xd23
0172defc  mov x0,x19
0172df00  bl 0x0124f120
0172df04  orr w1,wzr,#0xfffffffe
0172df08  mov w2,#0x1
0172df0c  mov x0,x19
0172df10  bl 0x0124cfc0
0172df14  mov x0,x19
0172df18  mov w1,w20
0172df1c  bl 0x0124e060
0172df20  orr w1,wzr,#0xfffffffd
0172df24  mov x0,x19
0172df28  bl 0x0124c4d0
0172df2c  ldr x19,[sp, #0x10]
0172df30  orr w1,wzr,#0xfffffffd
0172df34  mov w2,#0x6e7
0172df38  mov x0,x19
0172df3c  bl 0x0124a650
0172df40  orr w1,wzr,#0xfffffffe
0172df44  mov x0,x19
0172df48  bl 0x0124c0c0
0172df4c  orr w1,wzr,#0xfffffffe
0172df50  mov x0,x19
0172df54  bl 0x0124e920
0172df58  mov w20,w0
0172df5c  adrp x1,0x575d000
0172df60  add x1,x1,#0xd23
0172df64  mov x0,x19
0172df68  bl 0x0124f120
0172df6c  orr w1,wzr,#0xfffffffe
0172df70  mov w2,#0x1
0172df74  mov x0,x19
0172df78  bl 0x0124cfc0
0172df7c  mov x0,x19
0172df80  mov w1,w20
0172df84  bl 0x0124e060
0172df88  orr w1,wzr,#0xfffffffd
0172df8c  mov x0,x19
0172df90  bl 0x0124c4d0
0172df94  ldr w8,[sp, #0x18]
0172df98  ldr x0,[sp, #0x10]
0172df9c  sub w8,w8,#0x3
0172dfa0  str w8,[sp, #0x18]
0172dfa4  orr w1,wzr,#0xfffffffc
0172dfa8  bl 0x0124c4d0
0172dfac  ldr w8,[sp, #0x18]
0172dfb0  ldr x0,[sp, #0x10]
0172dfb4  str wzr,[sp, #0x18]
0172dfb8  cmp w8,#0x1
0172dfbc  b.lt 0x0172dfe0
0172dfc0  mvn w1,w8
0172dfc4  bl 0x0124c4d0
0172dfc8  ldr w8,[sp, #0x18]
0172dfcc  cmp w8,#0x1
0172dfd0  b.lt 0x0172dfe0
0172dfd4  ldr x0,[sp, #0x10]
0172dfd8  mvn w1,w8
0172dfdc  bl 0x0124c4d0
0172dfe0  ldr w8,[sp, #0x8]
0172dfe4  cmp w8,#0x1
0172dfe8  b.lt 0x0172dff8
0172dfec  ldr x0,[sp]
0172dff0  mvn w1,w8
0172dff4  bl 0x0124c4d0
0172dff8  ldp x29,x30,[sp, #0x30]
0172dffc  ldp x20,x19,[sp, #0x20]
0172e000  add sp,sp,#0x40
0172e004  ret
