// ===== case794-SkillHurtLimitResObject @ 01732bfc =====
// existing function case794-SkillHurtLimitResObject
01732bfc  sub sp,sp,#0x40
01732c00  str x19,[sp, #0x20]
01732c04  stp x29,x30,[sp, #0x30]
01732c08  add x29,sp,#0x30
01732c0c  adrp x1,0x174a000
01732c10  add x1,x1,#0x87c
01732c14  mov x19,x0
01732c18  bl 0x0124ba40
01732c1c  adrp x1,0x575d000
01732c20  add x1,x1,#0xa06
01732c24  mov x0,x19
01732c28  str x19,[sp]
01732c2c  bl 0x01251aa0
01732c30  mov w8,#0x1
01732c34  str w8,[sp, #0x8]
01732c38  mov x0,sp
01732c3c  bl 0x0174aa04
01732c40  adrp x1,0x5771000
01732c44  adrp x3,0x736d000
01732c48  add x1,x1,#0xf32
01732c4c  add x3,x3,#0x101
01732c50  add x0,sp,#0x10
01732c54  mov x2,sp
01732c58  bl 0x019b35e8
01732c5c  adrp x1,0x5766000
01732c60  adrp x2,0x19b3000
01732c64  adrp x4,0x19b3000
01732c68  add x1,x1,#0xb8a
01732c6c  add x2,x2,#0x3e0
01732c70  add x4,x4,#0x3e8
01732c74  add x0,sp,#0x10
01732c78  mov x3,xzr
01732c7c  mov x5,xzr
01732c80  bl 0x019b31f8
01732c84  adrp x1,0x5771000
01732c88  adrp x2,0x19b3000
01732c8c  adrp x4,0x19b3000
01732c90  add x1,x1,#0xf4a
01732c94  add x2,x2,#0x5d8
01732c98  add x4,x4,#0x5e0
01732c9c  mov x3,xzr
01732ca0  mov x5,xzr
01732ca4  bl 0x019b33f0
01732ca8  mov x19,x0
01732cac  ldr w8,[x19, #0x8]
01732cb0  ldr x0,[x19]
01732cb4  sub w8,w8,#0x3
01732cb8  str w8,[x19, #0x8]
01732cbc  orr w1,wzr,#0xfffffffc
01732cc0  bl 0x0124c4d0
01732cc4  ldr w8,[x19, #0x8]
01732cc8  ldr x0,[x19]
01732ccc  str wzr,[x19, #0x8]
01732cd0  cmp w8,#0x1
01732cd4  b.lt 0x01732ce0
01732cd8  mvn w1,w8
01732cdc  bl 0x0124c4d0
01732ce0  ldr w8,[sp, #0x18]
01732ce4  cmp w8,#0x1
01732ce8  b.lt 0x01732cf8
01732cec  ldr x0,[sp, #0x10]
01732cf0  mvn w1,w8
01732cf4  bl 0x0124c4d0
01732cf8  ldr w8,[sp, #0x8]
01732cfc  cmp w8,#0x1
01732d00  b.lt 0x01732d10
01732d04  ldr x0,[sp]
01732d08  mvn w1,w8
01732d0c  bl 0x0124c4d0
01732d10  ldp x29,x30,[sp, #0x30]
01732d14  ldr x19,[sp, #0x20]
01732d18  add sp,sp,#0x40
01732d1c  ret
