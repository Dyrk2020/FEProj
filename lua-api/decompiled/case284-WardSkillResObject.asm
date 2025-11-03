// ===== case284-WardSkillResObject @ 016bb9e4 =====
// existing function case284-WardSkillResObject
016bb9e4  sub sp,sp,#0x40
016bb9e8  stp x20,x19,[sp, #0x20]
016bb9ec  stp x29,x30,[sp, #0x30]
016bb9f0  add x29,sp,#0x30
016bb9f4  adrp x1,0x174a000
016bb9f8  add x1,x1,#0x87c
016bb9fc  mov x19,x0
016bba00  bl 0x0124ba40
016bba04  adrp x1,0x575d000
016bba08  add x1,x1,#0xa06
016bba0c  mov x0,x19
016bba10  str x19,[sp]
016bba14  bl 0x01251aa0
016bba18  mov w8,#0x1
016bba1c  str w8,[sp, #0x8]
016bba20  mov x0,sp
016bba24  bl 0x0174aa04
016bba28  adrp x1,0x5761000
016bba2c  adrp x3,0x736d000
016bba30  add x1,x1,#0xbe2
016bba34  add x3,x3,#0x101
016bba38  add x0,sp,#0x10
016bba3c  mov x2,sp
016bba40  bl 0x017eb14c
016bba44  ldr x0,[sp, #0x10]
016bba48  mov w1,#0x10
016bba4c  bl 0x0124cba0
016bba50  adrp x8,0x17eb000
016bba54  dup v0.2D,xzr
016bba58  add x8,x8,#0x144
016bba5c  mov v0.D[0x0],x8
016bba60  str q0,[x0]
016bba64  ldr x0,[sp, #0x10]
016bba68  adrp x1,0x17eb000
016bba6c  add x1,x1,#0x510
016bba70  mov w2,#0x1
016bba74  bl 0x0124ec90
016bba78  ldr x0,[sp, #0x10]
016bba7c  mov w1,#0xffffffff
016bba80  bl 0x0124c0c0
016bba84  ldr x19,[sp, #0x10]
016bba88  orr w1,wzr,#0xfffffffb
016bba8c  mov w2,#0x6e7
016bba90  mov x0,x19
016bba94  bl 0x0124a650
016bba98  orr w1,wzr,#0xfffffffe
016bba9c  mov x0,x19
016bbaa0  bl 0x0124c0c0
016bbaa4  orr w1,wzr,#0xfffffffe
016bbaa8  mov x0,x19
016bbaac  bl 0x0124e920
016bbab0  mov w20,w0
016bbab4  adrp x1,0x5761000
016bbab8  add x1,x1,#0xbf5
016bbabc  mov x0,x19
016bbac0  bl 0x0124f120
016bbac4  orr w1,wzr,#0xfffffffe
016bbac8  mov w2,#0x1
016bbacc  mov x0,x19
016bbad0  bl 0x0124cfc0
016bbad4  mov x0,x19
016bbad8  mov w1,w20
016bbadc  bl 0x0124e060
016bbae0  orr w1,wzr,#0xfffffffd
016bbae4  mov x0,x19
016bbae8  bl 0x0124c4d0
016bbaec  ldr x19,[sp, #0x10]
016bbaf0  orr w1,wzr,#0xfffffffd
016bbaf4  mov w2,#0x6e7
016bbaf8  mov x0,x19
016bbafc  bl 0x0124a650
016bbb00  orr w1,wzr,#0xfffffffe
016bbb04  mov x0,x19
016bbb08  bl 0x0124c0c0
016bbb0c  orr w1,wzr,#0xfffffffe
016bbb10  mov x0,x19
016bbb14  bl 0x0124e920
016bbb18  mov w20,w0
016bbb1c  adrp x1,0x5761000
016bbb20  add x1,x1,#0xbf5
016bbb24  mov x0,x19
016bbb28  bl 0x0124f120
016bbb2c  orr w1,wzr,#0xfffffffe
016bbb30  mov w2,#0x1
016bbb34  mov x0,x19
016bbb38  bl 0x0124cfc0
016bbb3c  mov x0,x19
016bbb40  mov w1,w20
016bbb44  bl 0x0124e060
016bbb48  orr w1,wzr,#0xfffffffd
016bbb4c  mov x0,x19
016bbb50  bl 0x0124c4d0
016bbb54  ldr w8,[sp, #0x18]
016bbb58  ldr x0,[sp, #0x10]
016bbb5c  sub w8,w8,#0x3
016bbb60  str w8,[sp, #0x18]
016bbb64  orr w1,wzr,#0xfffffffc
016bbb68  bl 0x0124c4d0
016bbb6c  ldr w8,[sp, #0x18]
016bbb70  ldr x0,[sp, #0x10]
016bbb74  str wzr,[sp, #0x18]
016bbb78  cmp w8,#0x1
016bbb7c  b.lt 0x016bbba0
016bbb80  mvn w1,w8
016bbb84  bl 0x0124c4d0
016bbb88  ldr w8,[sp, #0x18]
016bbb8c  cmp w8,#0x1
016bbb90  b.lt 0x016bbba0
016bbb94  ldr x0,[sp, #0x10]
016bbb98  mvn w1,w8
016bbb9c  bl 0x0124c4d0
016bbba0  ldr w8,[sp, #0x8]
016bbba4  cmp w8,#0x1
016bbba8  b.lt 0x016bbbb8
016bbbac  ldr x0,[sp]
016bbbb0  mvn w1,w8
016bbbb4  bl 0x0124c4d0
016bbbb8  ldp x29,x30,[sp, #0x30]
016bbbbc  ldp x20,x19,[sp, #0x20]
016bbbc0  add sp,sp,#0x40
016bbbc4  ret
