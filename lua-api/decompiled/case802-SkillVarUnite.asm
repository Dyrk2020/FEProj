// ===== case802-SkillVarUnite @ 01733b44 =====
// existing function case802-SkillVarUnite
01733b44  sub sp,sp,#0x40
01733b48  str x19,[sp, #0x20]
01733b4c  stp x29,x30,[sp, #0x30]
01733b50  add x29,sp,#0x30
01733b54  adrp x1,0x174a000
01733b58  add x1,x1,#0x87c
01733b5c  mov x19,x0
01733b60  bl 0x0124ba40
01733b64  adrp x1,0x575d000
01733b68  add x1,x1,#0xa06
01733b6c  mov x0,x19
01733b70  str x19,[sp]
01733b74  bl 0x01251aa0
01733b78  mov w8,#0x1
01733b7c  str w8,[sp, #0x8]
01733b80  mov x0,sp
01733b84  bl 0x0174aa04
01733b88  adrp x1,0x5772000
01733b8c  adrp x3,0x736d000
01733b90  add x1,x1,#0x16
01733b94  add x3,x3,#0x101
01733b98  add x0,sp,#0x10
01733b9c  mov x2,sp
01733ba0  bl 0x019b8fa0
01733ba4  adrp x1,0x575e000
01733ba8  adrp x2,0x19b8000
01733bac  adrp x4,0x19b8000
01733bb0  add x1,x1,#0x2ec
01733bb4  add x2,x2,#0xf80
01733bb8  add x4,x4,#0xf88
01733bbc  add x0,sp,#0x10
01733bc0  mov x3,xzr
01733bc4  mov x5,xzr
01733bc8  bl 0x019b8d98
01733bcc  adrp x1,0x5771000
01733bd0  adrp x2,0x19b8000
01733bd4  adrp x4,0x19b8000
01733bd8  add x1,x1,#0xf06
01733bdc  add x2,x2,#0xf90
01733be0  add x4,x4,#0xf98
01733be4  mov x3,xzr
01733be8  mov x5,xzr
01733bec  bl 0x019b8d98
01733bf0  mov x19,x0
01733bf4  ldr w8,[x19, #0x8]
01733bf8  ldr x0,[x19]
01733bfc  sub w8,w8,#0x3
01733c00  str w8,[x19, #0x8]
01733c04  orr w1,wzr,#0xfffffffc
01733c08  bl 0x0124c4d0
01733c0c  ldr w8,[x19, #0x8]
01733c10  ldr x0,[x19]
01733c14  str wzr,[x19, #0x8]
01733c18  cmp w8,#0x1
01733c1c  b.lt 0x01733c28
01733c20  mvn w1,w8
01733c24  bl 0x0124c4d0
01733c28  ldr w8,[sp, #0x18]
01733c2c  cmp w8,#0x1
01733c30  b.lt 0x01733c40
01733c34  ldr x0,[sp, #0x10]
01733c38  mvn w1,w8
01733c3c  bl 0x0124c4d0
01733c40  ldr w8,[sp, #0x8]
01733c44  cmp w8,#0x1
01733c48  b.lt 0x01733c58
01733c4c  ldr x0,[sp]
01733c50  mvn w1,w8
01733c54  bl 0x0124c4d0
01733c58  ldp x29,x30,[sp, #0x30]
01733c5c  ldr x19,[sp, #0x20]
01733c60  add sp,sp,#0x40
01733c64  ret
