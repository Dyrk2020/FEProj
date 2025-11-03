// ===== case840-SkillGemVarParamBase @ 0173ce68 =====
// existing function case840-SkillGemVarParamBase
0173ce68  sub sp,sp,#0x40
0173ce6c  str x19,[sp, #0x20]
0173ce70  stp x29,x30,[sp, #0x30]
0173ce74  add x29,sp,#0x30
0173ce78  adrp x1,0x174a000
0173ce7c  add x1,x1,#0x87c
0173ce80  mov x19,x0
0173ce84  bl 0x0124ba40
0173ce88  adrp x1,0x575d000
0173ce8c  add x1,x1,#0xa06
0173ce90  mov x0,x19
0173ce94  str x19,[sp]
0173ce98  bl 0x01251aa0
0173ce9c  mov w8,#0x1
0173cea0  str w8,[sp, #0x8]
0173cea4  mov x0,sp
0173cea8  bl 0x0174aa04
0173ceac  adrp x1,0x5772000
0173ceb0  adrp x3,0x736d000
0173ceb4  add x1,x1,#0xf35
0173ceb8  add x3,x3,#0x101
0173cebc  add x0,sp,#0x10
0173cec0  mov x2,sp
0173cec4  bl 0x019df364
0173cec8  adrp x1,0x576f000
0173cecc  adrp x2,0x19df000
0173ced0  adrp x4,0x19df000
0173ced4  add x1,x1,#0xb5f
0173ced8  add x2,x2,#0x340
0173cedc  add x4,x4,#0x348
0173cee0  add x0,sp,#0x10
0173cee4  mov x3,xzr
0173cee8  mov x5,xzr
0173ceec  bl 0x019df158
0173cef0  mov x19,x0
0173cef4  ldr w8,[x19, #0x8]
0173cef8  ldr x0,[x19]
0173cefc  sub w8,w8,#0x3
0173cf00  str w8,[x19, #0x8]
0173cf04  orr w1,wzr,#0xfffffffc
0173cf08  bl 0x0124c4d0
0173cf0c  ldr w8,[x19, #0x8]
0173cf10  ldr x0,[x19]
0173cf14  str wzr,[x19, #0x8]
0173cf18  cmp w8,#0x1
0173cf1c  b.lt 0x0173cf28
0173cf20  mvn w1,w8
0173cf24  bl 0x0124c4d0
0173cf28  ldr w8,[sp, #0x18]
0173cf2c  cmp w8,#0x1
0173cf30  b.lt 0x0173cf40
0173cf34  ldr x0,[sp, #0x10]
0173cf38  mvn w1,w8
0173cf3c  bl 0x0124c4d0
0173cf40  ldr w8,[sp, #0x8]
0173cf44  cmp w8,#0x1
0173cf48  b.lt 0x0173cf58
0173cf4c  ldr x0,[sp]
0173cf50  mvn w1,w8
0173cf54  bl 0x0124c4d0
0173cf58  ldp x29,x30,[sp, #0x30]
0173cf5c  ldr x19,[sp, #0x20]
0173cf60  add sp,sp,#0x40
0173cf64  ret
