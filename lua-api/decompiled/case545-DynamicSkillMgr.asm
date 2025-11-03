// ===== case545-DynamicSkillMgr @ 016fbd10 =====
// existing function case545-DynamicSkillMgr
016fbd10  sub sp,sp,#0x40
016fbd14  stp x20,x19,[sp, #0x20]
016fbd18  stp x29,x30,[sp, #0x30]
016fbd1c  add x29,sp,#0x30
016fbd20  adrp x1,0x174a000
016fbd24  add x1,x1,#0x87c
016fbd28  mov x19,x0
016fbd2c  bl 0x0124ba40
016fbd30  adrp x1,0x575d000
016fbd34  add x1,x1,#0xa06
016fbd38  mov x0,x19
016fbd3c  str x19,[sp]
016fbd40  bl 0x01251aa0
016fbd44  mov w8,#0x1
016fbd48  str w8,[sp, #0x8]
016fbd4c  mov x0,sp
016fbd50  bl 0x0174aa04
016fbd54  adrp x1,0x5769000
016fbd58  adrp x3,0x736d000
016fbd5c  add x1,x1,#0x1ad
016fbd60  add x3,x3,#0x101
016fbd64  add x0,sp,#0x10
016fbd68  mov x2,sp
016fbd6c  bl 0x018be3e8
016fbd70  ldr x0,[sp, #0x10]
016fbd74  mov w1,#0x10
016fbd78  bl 0x0124cba0
016fbd7c  adrp x8,0x18be000
016fbd80  dup v0.2D,xzr
016fbd84  add x8,x8,#0x3d8
016fbd88  mov v0.D[0x0],x8
016fbd8c  str q0,[x0]
016fbd90  ldr x0,[sp, #0x10]
016fbd94  adrp x1,0x18be000
016fbd98  add x1,x1,#0x7ac
016fbd9c  mov w2,#0x1
016fbda0  bl 0x0124ec90
016fbda4  ldr x0,[sp, #0x10]
016fbda8  mov w1,#0xffffffff
016fbdac  bl 0x0124c0c0
016fbdb0  ldr x19,[sp, #0x10]
016fbdb4  orr w1,wzr,#0xfffffffb
016fbdb8  mov w2,#0x6e7
016fbdbc  mov x0,x19
016fbdc0  bl 0x0124a650
016fbdc4  orr w1,wzr,#0xfffffffe
016fbdc8  mov x0,x19
016fbdcc  bl 0x0124c0c0
016fbdd0  orr w1,wzr,#0xfffffffe
016fbdd4  mov x0,x19
016fbdd8  bl 0x0124e920
016fbddc  mov w20,w0
016fbde0  adrp x1,0x5762000
016fbde4  add x1,x1,#0x1cd
016fbde8  mov x0,x19
016fbdec  bl 0x0124f120
016fbdf0  orr w1,wzr,#0xfffffffe
016fbdf4  mov w2,#0x1
016fbdf8  mov x0,x19
016fbdfc  bl 0x0124cfc0
016fbe00  mov x0,x19
016fbe04  mov w1,w20
016fbe08  bl 0x0124e060
016fbe0c  orr w1,wzr,#0xfffffffd
016fbe10  mov x0,x19
016fbe14  bl 0x0124c4d0
016fbe18  ldr x19,[sp, #0x10]
016fbe1c  orr w1,wzr,#0xfffffffd
016fbe20  mov w2,#0x6e7
016fbe24  mov x0,x19
016fbe28  bl 0x0124a650
016fbe2c  orr w1,wzr,#0xfffffffe
016fbe30  mov x0,x19
016fbe34  bl 0x0124c0c0
016fbe38  orr w1,wzr,#0xfffffffe
016fbe3c  mov x0,x19
016fbe40  bl 0x0124e920
016fbe44  mov w20,w0
016fbe48  adrp x1,0x5762000
016fbe4c  add x1,x1,#0x1cd
016fbe50  mov x0,x19
016fbe54  bl 0x0124f120
016fbe58  orr w1,wzr,#0xfffffffe
016fbe5c  mov w2,#0x1
016fbe60  mov x0,x19
016fbe64  bl 0x0124cfc0
016fbe68  mov x0,x19
016fbe6c  mov w1,w20
016fbe70  bl 0x0124e060
016fbe74  orr w1,wzr,#0xfffffffd
016fbe78  mov x0,x19
016fbe7c  bl 0x0124c4d0
016fbe80  ldr x0,[sp, #0x10]
016fbe84  mov w1,#0x10
016fbe88  bl 0x0124cba0
016fbe8c  adrp x8,0x18be000
016fbe90  dup v0.2D,xzr
016fbe94  add x8,x8,#0x3e0
016fbe98  mov v0.D[0x0],x8
016fbe9c  str q0,[x0]
016fbea0  ldr x0,[sp, #0x10]
016fbea4  adrp x1,0x18be000
016fbea8  add x1,x1,#0x8d0
016fbeac  mov w2,#0x1
016fbeb0  bl 0x0124ec90
016fbeb4  ldr x0,[sp, #0x10]
016fbeb8  mov w1,#0xffffffff
016fbebc  bl 0x0124c0c0
016fbec0  ldr x19,[sp, #0x10]
016fbec4  orr w1,wzr,#0xfffffffb
016fbec8  mov w2,#0x6e7
016fbecc  mov x0,x19
016fbed0  bl 0x0124a650
016fbed4  orr w1,wzr,#0xfffffffe
016fbed8  mov x0,x19
016fbedc  bl 0x0124c0c0
016fbee0  orr w1,wzr,#0xfffffffe
016fbee4  mov x0,x19
016fbee8  bl 0x0124e920
016fbeec  mov w20,w0
016fbef0  adrp x1,0x5769000
016fbef4  add x1,x1,#0x1bd
016fbef8  mov x0,x19
016fbefc  bl 0x0124f120
016fbf00  orr w1,wzr,#0xfffffffe
016fbf04  mov w2,#0x1
016fbf08  mov x0,x19
016fbf0c  bl 0x0124cfc0
016fbf10  mov x0,x19
016fbf14  mov w1,w20
016fbf18  bl 0x0124e060
016fbf1c  orr w1,wzr,#0xfffffffd
016fbf20  mov x0,x19
016fbf24  bl 0x0124c4d0
016fbf28  ldr x19,[sp, #0x10]
016fbf2c  orr w1,wzr,#0xfffffffd
016fbf30  mov w2,#0x6e7
016fbf34  mov x0,x19
016fbf38  bl 0x0124a650
016fbf3c  orr w1,wzr,#0xfffffffe
016fbf40  mov x0,x19
016fbf44  bl 0x0124c0c0
016fbf48  orr w1,wzr,#0xfffffffe
016fbf4c  mov x0,x19
016fbf50  bl 0x0124e920
016fbf54  mov w20,w0
016fbf58  adrp x1,0x5769000
016fbf5c  add x1,x1,#0x1bd
016fbf60  mov x0,x19
016fbf64  bl 0x0124f120
016fbf68  orr w1,wzr,#0xfffffffe
016fbf6c  mov w2,#0x1
016fbf70  mov x0,x19
016fbf74  bl 0x0124cfc0
016fbf78  mov x0,x19
016fbf7c  mov w1,w20
016fbf80  bl 0x0124e060
016fbf84  orr w1,wzr,#0xfffffffd
016fbf88  mov x0,x19
016fbf8c  bl 0x0124c4d0
016fbf90  ldr w8,[sp, #0x18]
016fbf94  ldr x0,[sp, #0x10]
016fbf98  sub w8,w8,#0x3
016fbf9c  str w8,[sp, #0x18]
016fbfa0  orr w1,wzr,#0xfffffffc
016fbfa4  bl 0x0124c4d0
016fbfa8  ldr w8,[sp, #0x18]
016fbfac  ldr x0,[sp, #0x10]
016fbfb0  str wzr,[sp, #0x18]
016fbfb4  cmp w8,#0x1
016fbfb8  b.lt 0x016fbfdc
016fbfbc  mvn w1,w8
016fbfc0  bl 0x0124c4d0
016fbfc4  ldr w8,[sp, #0x18]
016fbfc8  cmp w8,#0x1
016fbfcc  b.lt 0x016fbfdc
016fbfd0  ldr x0,[sp, #0x10]
016fbfd4  mvn w1,w8
016fbfd8  bl 0x0124c4d0
016fbfdc  ldr w8,[sp, #0x8]
016fbfe0  cmp w8,#0x1
016fbfe4  b.lt 0x016fbff4
016fbfe8  ldr x0,[sp]
016fbfec  mvn w1,w8
016fbff0  bl 0x0124c4d0
016fbff4  ldp x29,x30,[sp, #0x30]
016fbff8  ldp x20,x19,[sp, #0x20]
016fbffc  add sp,sp,#0x40
016fc000  ret
