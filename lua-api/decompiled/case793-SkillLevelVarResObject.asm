// ===== case793-SkillLevelVarResObject @ 01732a74 =====
// existing function case793-SkillLevelVarResObject
01732a74  sub sp,sp,#0x40
01732a78  str x19,[sp, #0x20]
01732a7c  stp x29,x30,[sp, #0x30]
01732a80  add x29,sp,#0x30
01732a84  adrp x1,0x174a000
01732a88  add x1,x1,#0x87c
01732a8c  mov x19,x0
01732a90  bl 0x0124ba40
01732a94  adrp x1,0x575d000
01732a98  add x1,x1,#0xa06
01732a9c  mov x0,x19
01732aa0  str x19,[sp]
01732aa4  bl 0x01251aa0
01732aa8  mov w8,#0x1
01732aac  str w8,[sp, #0x8]
01732ab0  mov x0,sp
01732ab4  bl 0x0174aa04
01732ab8  adrp x1,0x5771000
01732abc  adrp x3,0x736d000
01732ac0  add x1,x1,#0xeef
01732ac4  add x3,x3,#0x101
01732ac8  add x0,sp,#0x10
01732acc  mov x2,sp
01732ad0  bl 0x019b2c14
01732ad4  adrp x1,0x5771000
01732ad8  adrp x2,0x19b2000
01732adc  adrp x4,0x19b2000
01732ae0  add x1,x1,#0xf06
01732ae4  add x2,x2,#0xbf4
01732ae8  add x4,x4,#0xbfc
01732aec  add x0,sp,#0x10
01732af0  mov x3,xzr
01732af4  mov x5,xzr
01732af8  bl 0x019b2a0c
01732afc  adrp x1,0x5771000
01732b00  adrp x2,0x19b2000
01732b04  adrp x4,0x19b2000
01732b08  add x1,x1,#0xf13
01732b0c  add x2,x2,#0xc04
01732b10  add x4,x4,#0xc0c
01732b14  mov x3,xzr
01732b18  mov x5,xzr
01732b1c  bl 0x019b2a0c
01732b20  mov x19,x0
01732b24  ldr w8,[x19, #0x8]
01732b28  ldr x0,[x19]
01732b2c  sub w8,w8,#0x3
01732b30  str w8,[x19, #0x8]
01732b34  orr w1,wzr,#0xfffffffc
01732b38  bl 0x0124c4d0
01732b3c  ldr w8,[x19, #0x8]
01732b40  ldr x0,[x19]
01732b44  str wzr,[x19, #0x8]
01732b48  cmp w8,#0x1
01732b4c  b.lt 0x01732b58
01732b50  mvn w1,w8
01732b54  bl 0x0124c4d0
01732b58  ldr w8,[sp, #0x18]
01732b5c  cmp w8,#0x1
01732b60  b.lt 0x01732b70
01732b64  ldr x0,[sp, #0x10]
01732b68  mvn w1,w8
01732b6c  bl 0x0124c4d0
01732b70  ldr w8,[sp, #0x8]
01732b74  cmp w8,#0x1
01732b78  b.lt 0x01732b88
01732b7c  ldr x0,[sp]
01732b80  mvn w1,w8
01732b84  bl 0x0124c4d0
01732b88  ldp x29,x30,[sp, #0x30]
01732b8c  ldr x19,[sp, #0x20]
01732b90  add sp,sp,#0x40
01732b94  ret
