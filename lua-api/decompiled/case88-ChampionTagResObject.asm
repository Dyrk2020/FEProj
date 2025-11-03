// ===== case88-ChampionTagResObject @ 0169ac90 =====
// existing function case88-ChampionTagResObject
0169ac90  sub sp,sp,#0x40
0169ac94  stp x20,x19,[sp, #0x20]
0169ac98  stp x29,x30,[sp, #0x30]
0169ac9c  add x29,sp,#0x30
0169aca0  adrp x1,0x174a000
0169aca4  add x1,x1,#0x87c
0169aca8  mov x19,x0
0169acac  bl 0x0124ba40
0169acb0  adrp x1,0x575d000
0169acb4  add x1,x1,#0xa06
0169acb8  mov x0,x19
0169acbc  str x19,[sp]
0169acc0  bl 0x01251aa0
0169acc4  mov w8,#0x1
0169acc8  str w8,[sp, #0x8]
0169accc  mov x0,sp
0169acd0  bl 0x0174aa04
0169acd4  adrp x1,0x575f000
0169acd8  adrp x3,0x736d000
0169acdc  add x1,x1,#0x3d
0169ace0  add x3,x3,#0x101
0169ace4  add x0,sp,#0x10
0169ace8  mov x2,sp
0169acec  bl 0x017816b0
0169acf0  ldr x0,[sp, #0x10]
0169acf4  mov w1,#0x10
0169acf8  bl 0x0124cba0
0169acfc  adrp x8,0x1781000
0169ad00  dup v0.2D,xzr
0169ad04  add x8,x8,#0x6a8
0169ad08  mov v0.D[0x0],x8
0169ad0c  str q0,[x0]
0169ad10  ldr x0,[sp, #0x10]
0169ad14  adrp x1,0x1781000
0169ad18  add x1,x1,#0xa74
0169ad1c  mov w2,#0x1
0169ad20  bl 0x0124ec90
0169ad24  ldr x0,[sp, #0x10]
0169ad28  mov w1,#0xffffffff
0169ad2c  bl 0x0124c0c0
0169ad30  ldr x19,[sp, #0x10]
0169ad34  orr w1,wzr,#0xfffffffb
0169ad38  mov w2,#0x6e7
0169ad3c  mov x0,x19
0169ad40  bl 0x0124a650
0169ad44  orr w1,wzr,#0xfffffffe
0169ad48  mov x0,x19
0169ad4c  bl 0x0124c0c0
0169ad50  orr w1,wzr,#0xfffffffe
0169ad54  mov x0,x19
0169ad58  bl 0x0124e920
0169ad5c  mov w20,w0
0169ad60  adrp x1,0x5765000
0169ad64  add x1,x1,#0x66c
0169ad68  mov x0,x19
0169ad6c  bl 0x0124f120
0169ad70  orr w1,wzr,#0xfffffffe
0169ad74  mov w2,#0x1
0169ad78  mov x0,x19
0169ad7c  bl 0x0124cfc0
0169ad80  mov x0,x19
0169ad84  mov w1,w20
0169ad88  bl 0x0124e060
0169ad8c  orr w1,wzr,#0xfffffffd
0169ad90  mov x0,x19
0169ad94  bl 0x0124c4d0
0169ad98  ldr x19,[sp, #0x10]
0169ad9c  orr w1,wzr,#0xfffffffd
0169ada0  mov w2,#0x6e7
0169ada4  mov x0,x19
0169ada8  bl 0x0124a650
0169adac  orr w1,wzr,#0xfffffffe
0169adb0  mov x0,x19
0169adb4  bl 0x0124c0c0
0169adb8  orr w1,wzr,#0xfffffffe
0169adbc  mov x0,x19
0169adc0  bl 0x0124e920
0169adc4  mov w20,w0
0169adc8  adrp x1,0x5765000
0169adcc  add x1,x1,#0x66c
0169add0  mov x0,x19
0169add4  bl 0x0124f120
0169add8  orr w1,wzr,#0xfffffffe
0169addc  mov w2,#0x1
0169ade0  mov x0,x19
0169ade4  bl 0x0124cfc0
0169ade8  mov x0,x19
0169adec  mov w1,w20
0169adf0  bl 0x0124e060
0169adf4  orr w1,wzr,#0xfffffffd
0169adf8  mov x0,x19
0169adfc  bl 0x0124c4d0
0169ae00  ldr w8,[sp, #0x18]
0169ae04  ldr x0,[sp, #0x10]
0169ae08  sub w8,w8,#0x3
0169ae0c  str w8,[sp, #0x18]
0169ae10  orr w1,wzr,#0xfffffffc
0169ae14  bl 0x0124c4d0
0169ae18  ldr w8,[sp, #0x18]
0169ae1c  ldr x0,[sp, #0x10]
0169ae20  str wzr,[sp, #0x18]
0169ae24  cmp w8,#0x1
0169ae28  b.lt 0x0169ae4c
0169ae2c  mvn w1,w8
0169ae30  bl 0x0124c4d0
0169ae34  ldr w8,[sp, #0x18]
0169ae38  cmp w8,#0x1
0169ae3c  b.lt 0x0169ae4c
0169ae40  ldr x0,[sp, #0x10]
0169ae44  mvn w1,w8
0169ae48  bl 0x0124c4d0
0169ae4c  ldr w8,[sp, #0x8]
0169ae50  cmp w8,#0x1
0169ae54  b.lt 0x0169ae64
0169ae58  ldr x0,[sp]
0169ae5c  mvn w1,w8
0169ae60  bl 0x0124c4d0
0169ae64  ldp x29,x30,[sp, #0x30]
0169ae68  ldp x20,x19,[sp, #0x20]
0169ae6c  add sp,sp,#0x40
0169ae70  ret
