// ===== case101-MonsterSkinResObject @ 0169cdb8 =====
// existing function case101-MonsterSkinResObject
0169cdb8  sub sp,sp,#0x40
0169cdbc  stp x20,x19,[sp, #0x20]
0169cdc0  stp x29,x30,[sp, #0x30]
0169cdc4  add x29,sp,#0x30
0169cdc8  adrp x1,0x174a000
0169cdcc  add x1,x1,#0x87c
0169cdd0  mov x19,x0
0169cdd4  bl 0x0124ba40
0169cdd8  adrp x1,0x575d000
0169cddc  add x1,x1,#0xa06
0169cde0  mov x0,x19
0169cde4  str x19,[sp]
0169cde8  bl 0x01251aa0
0169cdec  mov w8,#0x1
0169cdf0  str w8,[sp, #0x8]
0169cdf4  mov x0,sp
0169cdf8  bl 0x0174aa04
0169cdfc  adrp x1,0x575f000
0169ce00  adrp x3,0x736d000
0169ce04  add x1,x1,#0x2c2
0169ce08  add x3,x3,#0x101
0169ce0c  add x0,sp,#0x10
0169ce10  mov x2,sp
0169ce14  bl 0x01788454
0169ce18  ldr x0,[sp, #0x10]
0169ce1c  mov w1,#0x10
0169ce20  bl 0x0124cba0
0169ce24  adrp x8,0x1788000
0169ce28  dup v0.2D,xzr
0169ce2c  add x8,x8,#0x444
0169ce30  mov v0.D[0x0],x8
0169ce34  str q0,[x0]
0169ce38  ldr x0,[sp, #0x10]
0169ce3c  adrp x1,0x1788000
0169ce40  add x1,x1,#0x818
0169ce44  mov w2,#0x1
0169ce48  bl 0x0124ec90
0169ce4c  ldr x0,[sp, #0x10]
0169ce50  mov w1,#0xffffffff
0169ce54  bl 0x0124c0c0
0169ce58  ldr x19,[sp, #0x10]
0169ce5c  orr w1,wzr,#0xfffffffb
0169ce60  mov w2,#0x6e7
0169ce64  mov x0,x19
0169ce68  bl 0x0124a650
0169ce6c  orr w1,wzr,#0xfffffffe
0169ce70  mov x0,x19
0169ce74  bl 0x0124c0c0
0169ce78  orr w1,wzr,#0xfffffffe
0169ce7c  mov x0,x19
0169ce80  bl 0x0124e920
0169ce84  mov w20,w0
0169ce88  adrp x1,0x575e000
0169ce8c  add x1,x1,#0x56d
0169ce90  mov x0,x19
0169ce94  bl 0x0124f120
0169ce98  orr w1,wzr,#0xfffffffe
0169ce9c  mov w2,#0x1
0169cea0  mov x0,x19
0169cea4  bl 0x0124cfc0
0169cea8  mov x0,x19
0169ceac  mov w1,w20
0169ceb0  bl 0x0124e060
0169ceb4  orr w1,wzr,#0xfffffffd
0169ceb8  mov x0,x19
0169cebc  bl 0x0124c4d0
0169cec0  ldr x19,[sp, #0x10]
0169cec4  orr w1,wzr,#0xfffffffd
0169cec8  mov w2,#0x6e7
0169cecc  mov x0,x19
0169ced0  bl 0x0124a650
0169ced4  orr w1,wzr,#0xfffffffe
0169ced8  mov x0,x19
0169cedc  bl 0x0124c0c0
0169cee0  orr w1,wzr,#0xfffffffe
0169cee4  mov x0,x19
0169cee8  bl 0x0124e920
0169ceec  mov w20,w0
0169cef0  adrp x1,0x575e000
0169cef4  add x1,x1,#0x56d
0169cef8  mov x0,x19
0169cefc  bl 0x0124f120
0169cf00  orr w1,wzr,#0xfffffffe
0169cf04  mov w2,#0x1
0169cf08  mov x0,x19
0169cf0c  bl 0x0124cfc0
0169cf10  mov x0,x19
0169cf14  mov w1,w20
0169cf18  bl 0x0124e060
0169cf1c  orr w1,wzr,#0xfffffffd
0169cf20  mov x0,x19
0169cf24  bl 0x0124c4d0
0169cf28  ldr x0,[sp, #0x10]
0169cf2c  mov w1,#0x10
0169cf30  bl 0x0124cba0
0169cf34  adrp x8,0x1788000
0169cf38  dup v0.2D,xzr
0169cf3c  add x8,x8,#0x44c
0169cf40  mov v0.D[0x0],x8
0169cf44  str q0,[x0]
0169cf48  ldr x0,[sp, #0x10]
0169cf4c  adrp x1,0x1788000
0169cf50  add x1,x1,#0x93c
0169cf54  mov w2,#0x1
0169cf58  bl 0x0124ec90
0169cf5c  ldr x0,[sp, #0x10]
0169cf60  mov w1,#0xffffffff
0169cf64  bl 0x0124c0c0
0169cf68  ldr x19,[sp, #0x10]
0169cf6c  orr w1,wzr,#0xfffffffb
0169cf70  mov w2,#0x6e7
0169cf74  mov x0,x19
0169cf78  bl 0x0124a650
0169cf7c  orr w1,wzr,#0xfffffffe
0169cf80  mov x0,x19
0169cf84  bl 0x0124c0c0
0169cf88  orr w1,wzr,#0xfffffffe
0169cf8c  mov x0,x19
0169cf90  bl 0x0124e920
0169cf94  mov w20,w0
0169cf98  adrp x1,0x575e000
0169cf9c  add x1,x1,#0x578
0169cfa0  mov x0,x19
0169cfa4  bl 0x0124f120
0169cfa8  orr w1,wzr,#0xfffffffe
0169cfac  mov w2,#0x1
0169cfb0  mov x0,x19
0169cfb4  bl 0x0124cfc0
0169cfb8  mov x0,x19
0169cfbc  mov w1,w20
0169cfc0  bl 0x0124e060
0169cfc4  orr w1,wzr,#0xfffffffd
0169cfc8  mov x0,x19
0169cfcc  bl 0x0124c4d0
0169cfd0  ldr x19,[sp, #0x10]
0169cfd4  orr w1,wzr,#0xfffffffd
0169cfd8  mov w2,#0x6e7
0169cfdc  mov x0,x19
0169cfe0  bl 0x0124a650
0169cfe4  orr w1,wzr,#0xfffffffe
0169cfe8  mov x0,x19
0169cfec  bl 0x0124c0c0
0169cff0  orr w1,wzr,#0xfffffffe
0169cff4  mov x0,x19
0169cff8  bl 0x0124e920
0169cffc  mov w20,w0
0169d000  adrp x1,0x575e000
0169d004  add x1,x1,#0x578
0169d008  mov x0,x19
0169d00c  bl 0x0124f120
0169d010  orr w1,wzr,#0xfffffffe
0169d014  mov w2,#0x1
0169d018  mov x0,x19
0169d01c  bl 0x0124cfc0
0169d020  mov x0,x19
0169d024  mov w1,w20
0169d028  bl 0x0124e060
0169d02c  orr w1,wzr,#0xfffffffd
0169d030  mov x0,x19
0169d034  bl 0x0124c4d0
0169d038  ldr w8,[sp, #0x18]
0169d03c  ldr x0,[sp, #0x10]
0169d040  sub w8,w8,#0x3
0169d044  str w8,[sp, #0x18]
0169d048  orr w1,wzr,#0xfffffffc
0169d04c  bl 0x0124c4d0
0169d050  ldr w8,[sp, #0x18]
0169d054  ldr x0,[sp, #0x10]
0169d058  str wzr,[sp, #0x18]
0169d05c  cmp w8,#0x1
0169d060  b.lt 0x0169d084
0169d064  mvn w1,w8
0169d068  bl 0x0124c4d0
0169d06c  ldr w8,[sp, #0x18]
0169d070  cmp w8,#0x1
0169d074  b.lt 0x0169d084
0169d078  ldr x0,[sp, #0x10]
0169d07c  mvn w1,w8
0169d080  bl 0x0124c4d0
0169d084  ldr w8,[sp, #0x8]
0169d088  cmp w8,#0x1
0169d08c  b.lt 0x0169d09c
0169d090  ldr x0,[sp]
0169d094  mvn w1,w8
0169d098  bl 0x0124c4d0
0169d09c  ldp x29,x30,[sp, #0x30]
0169d0a0  ldp x20,x19,[sp, #0x20]
0169d0a4  add sp,sp,#0x40
0169d0a8  ret
