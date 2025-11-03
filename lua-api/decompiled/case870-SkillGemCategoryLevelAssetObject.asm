// ===== case870-SkillGemCategoryLevelAssetObject @ 01748958 =====
// existing function case870-SkillGemCategoryLevelAssetObject
01748958  sub sp,sp,#0x40
0174895c  str x19,[sp, #0x20]
01748960  stp x29,x30,[sp, #0x30]
01748964  add x29,sp,#0x30
01748968  adrp x1,0x174a000
0174896c  add x1,x1,#0x87c
01748970  mov x19,x0
01748974  bl 0x0124ba40
01748978  adrp x1,0x575d000
0174897c  add x1,x1,#0xa06
01748980  mov x0,x19
01748984  str x19,[sp]
01748988  bl 0x01251aa0
0174898c  mov w8,#0x1
01748990  str w8,[sp, #0x8]
01748994  mov x0,sp
01748998  bl 0x0174aa04
0174899c  adrp x1,0x5774000
017489a0  adrp x3,0x736d000
017489a4  add x1,x1,#0x2e
017489a8  add x3,x3,#0x101
017489ac  add x0,sp,#0x10
017489b0  mov x2,sp
017489b4  bl 0x01a138ec
017489b8  adrp x1,0x575d000
017489bc  adrp x2,0x1a13000
017489c0  adrp x4,0x1a13000
017489c4  add x1,x1,#0xa00
017489c8  add x2,x2,#0x8dc
017489cc  add x4,x4,#0x8e4
017489d0  add x0,sp,#0x10
017489d4  mov x3,xzr
017489d8  mov x5,xzr
017489dc  bl 0x01a136f4
017489e0  mov x19,x0
017489e4  ldr w8,[x19, #0x8]
017489e8  ldr x0,[x19]
017489ec  sub w8,w8,#0x3
017489f0  str w8,[x19, #0x8]
017489f4  orr w1,wzr,#0xfffffffc
017489f8  bl 0x0124c4d0
017489fc  ldr w8,[x19, #0x8]
01748a00  ldr x0,[x19]
01748a04  str wzr,[x19, #0x8]
01748a08  cmp w8,#0x1
01748a0c  b.lt 0x01748a18
01748a10  mvn w1,w8
01748a14  bl 0x0124c4d0
01748a18  ldr w8,[sp, #0x18]
01748a1c  cmp w8,#0x1
01748a20  b.lt 0x01748a30
01748a24  ldr x0,[sp, #0x10]
01748a28  mvn w1,w8
01748a2c  bl 0x0124c4d0
01748a30  ldr w8,[sp, #0x8]
01748a34  cmp w8,#0x1
01748a38  b.lt 0x01748a48
01748a3c  ldr x0,[sp]
01748a40  mvn w1,w8
01748a44  bl 0x0124c4d0
01748a48  ldp x29,x30,[sp, #0x30]
01748a4c  ldr x19,[sp, #0x20]
01748a50  add sp,sp,#0x40
01748a54  ret
