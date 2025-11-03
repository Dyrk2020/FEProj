// ===== case105-WeightedProximityTemplateData @ 0169da08 =====
// existing function case105-WeightedProximityTemplateData
0169da08  sub sp,sp,#0x40
0169da0c  stp x20,x19,[sp, #0x20]
0169da10  stp x29,x30,[sp, #0x30]
0169da14  add x29,sp,#0x30
0169da18  adrp x1,0x174a000
0169da1c  add x1,x1,#0x87c
0169da20  mov x19,x0
0169da24  bl 0x0124ba40
0169da28  adrp x1,0x575d000
0169da2c  add x1,x1,#0xa06
0169da30  mov x0,x19
0169da34  str x19,[sp]
0169da38  bl 0x01251aa0
0169da3c  mov w8,#0x1
0169da40  str w8,[sp, #0x8]
0169da44  mov x0,sp
0169da48  bl 0x0174aa04
0169da4c  adrp x1,0x575f000
0169da50  adrp x3,0x736d000
0169da54  add x1,x1,#0x342
0169da58  add x3,x3,#0x101
0169da5c  add x0,sp,#0x10
0169da60  mov x2,sp
0169da64  bl 0x01789b98
0169da68  ldr x0,[sp, #0x10]
0169da6c  mov w1,#0x10
0169da70  bl 0x0124cba0
0169da74  adrp x8,0x1789000
0169da78  dup v0.2D,xzr
0169da7c  add x8,x8,#0xb88
0169da80  mov v0.D[0x0],x8
0169da84  str q0,[x0]
0169da88  ldr x0,[sp, #0x10]
0169da8c  adrp x1,0x1789000
0169da90  add x1,x1,#0xf5c
0169da94  mov w2,#0x1
0169da98  bl 0x0124ec90
0169da9c  ldr x0,[sp, #0x10]
0169daa0  mov w1,#0xffffffff
0169daa4  bl 0x0124c0c0
0169daa8  ldr x19,[sp, #0x10]
0169daac  orr w1,wzr,#0xfffffffb
0169dab0  mov w2,#0x6e7
0169dab4  mov x0,x19
0169dab8  bl 0x0124a650
0169dabc  orr w1,wzr,#0xfffffffe
0169dac0  mov x0,x19
0169dac4  bl 0x0124c0c0
0169dac8  orr w1,wzr,#0xfffffffe
0169dacc  mov x0,x19
0169dad0  bl 0x0124e920
0169dad4  mov w20,w0
0169dad8  adrp x1,0x575e000
0169dadc  add x1,x1,#0x56d
0169dae0  mov x0,x19
0169dae4  bl 0x0124f120
0169dae8  orr w1,wzr,#0xfffffffe
0169daec  mov w2,#0x1
0169daf0  mov x0,x19
0169daf4  bl 0x0124cfc0
0169daf8  mov x0,x19
0169dafc  mov w1,w20
0169db00  bl 0x0124e060
0169db04  orr w1,wzr,#0xfffffffd
0169db08  mov x0,x19
0169db0c  bl 0x0124c4d0
0169db10  ldr x19,[sp, #0x10]
0169db14  orr w1,wzr,#0xfffffffd
0169db18  mov w2,#0x6e7
0169db1c  mov x0,x19
0169db20  bl 0x0124a650
0169db24  orr w1,wzr,#0xfffffffe
0169db28  mov x0,x19
0169db2c  bl 0x0124c0c0
0169db30  orr w1,wzr,#0xfffffffe
0169db34  mov x0,x19
0169db38  bl 0x0124e920
0169db3c  mov w20,w0
0169db40  adrp x1,0x575e000
0169db44  add x1,x1,#0x56d
0169db48  mov x0,x19
0169db4c  bl 0x0124f120
0169db50  orr w1,wzr,#0xfffffffe
0169db54  mov w2,#0x1
0169db58  mov x0,x19
0169db5c  bl 0x0124cfc0
0169db60  mov x0,x19
0169db64  mov w1,w20
0169db68  bl 0x0124e060
0169db6c  orr w1,wzr,#0xfffffffd
0169db70  mov x0,x19
0169db74  bl 0x0124c4d0
0169db78  ldr x0,[sp, #0x10]
0169db7c  mov w1,#0x10
0169db80  bl 0x0124cba0
0169db84  adrp x8,0x1789000
0169db88  dup v0.2D,xzr
0169db8c  add x8,x8,#0xb90
0169db90  mov v0.D[0x0],x8
0169db94  str q0,[x0]
0169db98  ldr x0,[sp, #0x10]
0169db9c  adrp x1,0x178a000
0169dba0  add x1,x1,#0x80
0169dba4  mov w2,#0x1
0169dba8  bl 0x0124ec90
0169dbac  ldr x0,[sp, #0x10]
0169dbb0  mov w1,#0xffffffff
0169dbb4  bl 0x0124c0c0
0169dbb8  ldr x19,[sp, #0x10]
0169dbbc  orr w1,wzr,#0xfffffffb
0169dbc0  mov w2,#0x6e7
0169dbc4  mov x0,x19
0169dbc8  bl 0x0124a650
0169dbcc  orr w1,wzr,#0xfffffffe
0169dbd0  mov x0,x19
0169dbd4  bl 0x0124c0c0
0169dbd8  orr w1,wzr,#0xfffffffe
0169dbdc  mov x0,x19
0169dbe0  bl 0x0124e920
0169dbe4  mov w20,w0
0169dbe8  adrp x1,0x575e000
0169dbec  add x1,x1,#0x578
0169dbf0  mov x0,x19
0169dbf4  bl 0x0124f120
0169dbf8  orr w1,wzr,#0xfffffffe
0169dbfc  mov w2,#0x1
0169dc00  mov x0,x19
0169dc04  bl 0x0124cfc0
0169dc08  mov x0,x19
0169dc0c  mov w1,w20
0169dc10  bl 0x0124e060
0169dc14  orr w1,wzr,#0xfffffffd
0169dc18  mov x0,x19
0169dc1c  bl 0x0124c4d0
0169dc20  ldr x19,[sp, #0x10]
0169dc24  orr w1,wzr,#0xfffffffd
0169dc28  mov w2,#0x6e7
0169dc2c  mov x0,x19
0169dc30  bl 0x0124a650
0169dc34  orr w1,wzr,#0xfffffffe
0169dc38  mov x0,x19
0169dc3c  bl 0x0124c0c0
0169dc40  orr w1,wzr,#0xfffffffe
0169dc44  mov x0,x19
0169dc48  bl 0x0124e920
0169dc4c  mov w20,w0
0169dc50  adrp x1,0x575e000
0169dc54  add x1,x1,#0x578
0169dc58  mov x0,x19
0169dc5c  bl 0x0124f120
0169dc60  orr w1,wzr,#0xfffffffe
0169dc64  mov w2,#0x1
0169dc68  mov x0,x19
0169dc6c  bl 0x0124cfc0
0169dc70  mov x0,x19
0169dc74  mov w1,w20
0169dc78  bl 0x0124e060
0169dc7c  orr w1,wzr,#0xfffffffd
0169dc80  mov x0,x19
0169dc84  bl 0x0124c4d0
0169dc88  ldr w8,[sp, #0x18]
0169dc8c  ldr x0,[sp, #0x10]
0169dc90  sub w8,w8,#0x3
0169dc94  str w8,[sp, #0x18]
0169dc98  orr w1,wzr,#0xfffffffc
0169dc9c  bl 0x0124c4d0
0169dca0  ldr w8,[sp, #0x18]
0169dca4  ldr x0,[sp, #0x10]
0169dca8  str wzr,[sp, #0x18]
0169dcac  cmp w8,#0x1
0169dcb0  b.lt 0x0169dcd4
0169dcb4  mvn w1,w8
0169dcb8  bl 0x0124c4d0
0169dcbc  ldr w8,[sp, #0x18]
0169dcc0  cmp w8,#0x1
0169dcc4  b.lt 0x0169dcd4
0169dcc8  ldr x0,[sp, #0x10]
0169dccc  mvn w1,w8
0169dcd0  bl 0x0124c4d0
0169dcd4  ldr w8,[sp, #0x8]
0169dcd8  cmp w8,#0x1
0169dcdc  b.lt 0x0169dcec
0169dce0  ldr x0,[sp]
0169dce4  mvn w1,w8
0169dce8  bl 0x0124c4d0
0169dcec  ldp x29,x30,[sp, #0x30]
0169dcf0  ldp x20,x19,[sp, #0x20]
0169dcf4  add sp,sp,#0x40
0169dcf8  ret
