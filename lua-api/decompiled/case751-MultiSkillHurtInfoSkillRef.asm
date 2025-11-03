// ===== case751-MultiSkillHurtInfoSkillRef @ 0172acb0 =====
// existing function case751-MultiSkillHurtInfoSkillRef
0172acb0  sub sp,sp,#0x40
0172acb4  stp x20,x19,[sp, #0x20]
0172acb8  stp x29,x30,[sp, #0x30]
0172acbc  add x29,sp,#0x30
0172acc0  adrp x1,0x174a000
0172acc4  add x1,x1,#0x87c
0172acc8  mov x19,x0
0172accc  bl 0x0124ba40
0172acd0  adrp x1,0x575d000
0172acd4  add x1,x1,#0xa06
0172acd8  mov x0,x19
0172acdc  str x19,[sp]
0172ace0  bl 0x01251aa0
0172ace4  mov w8,#0x1
0172ace8  str w8,[sp, #0x8]
0172acec  mov x0,sp
0172acf0  bl 0x0174aa04
0172acf4  adrp x1,0x5770000
0172acf8  adrp x3,0x736d000
0172acfc  add x1,x1,#0xc56
0172ad00  add x3,x3,#0x101
0172ad04  add x0,sp,#0x10
0172ad08  mov x2,sp
0172ad0c  bl 0x0198a86c
0172ad10  ldr x0,[sp, #0x10]
0172ad14  mov w1,#0x10
0172ad18  bl 0x0124cba0
0172ad1c  adrp x8,0x198a000
0172ad20  dup v0.2D,xzr
0172ad24  add x8,x8,#0x864
0172ad28  mov v0.D[0x0],x8
0172ad2c  str q0,[x0]
0172ad30  ldr x0,[sp, #0x10]
0172ad34  adrp x1,0x198a000
0172ad38  add x1,x1,#0xc30
0172ad3c  mov w2,#0x1
0172ad40  bl 0x0124ec90
0172ad44  ldr x0,[sp, #0x10]
0172ad48  mov w1,#0xffffffff
0172ad4c  bl 0x0124c0c0
0172ad50  ldr x19,[sp, #0x10]
0172ad54  orr w1,wzr,#0xfffffffb
0172ad58  mov w2,#0x6e7
0172ad5c  mov x0,x19
0172ad60  bl 0x0124a650
0172ad64  orr w1,wzr,#0xfffffffe
0172ad68  mov x0,x19
0172ad6c  bl 0x0124c0c0
0172ad70  orr w1,wzr,#0xfffffffe
0172ad74  mov x0,x19
0172ad78  bl 0x0124e920
0172ad7c  mov w20,w0
0172ad80  adrp x1,0x575d000
0172ad84  add x1,x1,#0xcf4
0172ad88  mov x0,x19
0172ad8c  bl 0x0124f120
0172ad90  orr w1,wzr,#0xfffffffe
0172ad94  mov w2,#0x1
0172ad98  mov x0,x19
0172ad9c  bl 0x0124cfc0
0172ada0  mov x0,x19
0172ada4  mov w1,w20
0172ada8  bl 0x0124e060
0172adac  orr w1,wzr,#0xfffffffd
0172adb0  mov x0,x19
0172adb4  bl 0x0124c4d0
0172adb8  ldr x19,[sp, #0x10]
0172adbc  orr w1,wzr,#0xfffffffd
0172adc0  mov w2,#0x6e7
0172adc4  mov x0,x19
0172adc8  bl 0x0124a650
0172adcc  orr w1,wzr,#0xfffffffe
0172add0  mov x0,x19
0172add4  bl 0x0124c0c0
0172add8  orr w1,wzr,#0xfffffffe
0172addc  mov x0,x19
0172ade0  bl 0x0124e920
0172ade4  mov w20,w0
0172ade8  adrp x1,0x575d000
0172adec  add x1,x1,#0xcf4
0172adf0  mov x0,x19
0172adf4  bl 0x0124f120
0172adf8  orr w1,wzr,#0xfffffffe
0172adfc  mov w2,#0x1
0172ae00  mov x0,x19
0172ae04  bl 0x0124cfc0
0172ae08  mov x0,x19
0172ae0c  mov w1,w20
0172ae10  bl 0x0124e060
0172ae14  orr w1,wzr,#0xfffffffd
0172ae18  mov x0,x19
0172ae1c  bl 0x0124c4d0
0172ae20  ldr w8,[sp, #0x18]
0172ae24  ldr x0,[sp, #0x10]
0172ae28  sub w8,w8,#0x3
0172ae2c  str w8,[sp, #0x18]
0172ae30  orr w1,wzr,#0xfffffffc
0172ae34  bl 0x0124c4d0
0172ae38  ldr w8,[sp, #0x18]
0172ae3c  ldr x0,[sp, #0x10]
0172ae40  str wzr,[sp, #0x18]
0172ae44  cmp w8,#0x1
0172ae48  b.lt 0x0172ae6c
0172ae4c  mvn w1,w8
0172ae50  bl 0x0124c4d0
0172ae54  ldr w8,[sp, #0x18]
0172ae58  cmp w8,#0x1
0172ae5c  b.lt 0x0172ae6c
0172ae60  ldr x0,[sp, #0x10]
0172ae64  mvn w1,w8
0172ae68  bl 0x0124c4d0
0172ae6c  ldr w8,[sp, #0x8]
0172ae70  cmp w8,#0x1
0172ae74  b.lt 0x0172ae84
0172ae78  ldr x0,[sp]
0172ae7c  mvn w1,w8
0172ae80  bl 0x0124c4d0
0172ae84  ldp x29,x30,[sp, #0x30]
0172ae88  ldp x20,x19,[sp, #0x20]
0172ae8c  add sp,sp,#0x40
0172ae90  ret
