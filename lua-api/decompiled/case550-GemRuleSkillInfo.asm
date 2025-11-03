// ===== case550-GemRuleSkillInfo @ 016fcca4 =====
// existing function case550-GemRuleSkillInfo
016fcca4  sub sp,sp,#0x40
016fcca8  str x19,[sp, #0x20]
016fccac  stp x29,x30,[sp, #0x30]
016fccb0  add x29,sp,#0x30
016fccb4  adrp x1,0x174a000
016fccb8  add x1,x1,#0x87c
016fccbc  mov x19,x0
016fccc0  bl 0x0124ba40
016fccc4  adrp x1,0x575d000
016fccc8  add x1,x1,#0xa06
016fcccc  mov x0,x19
016fccd0  str x19,[sp]
016fccd4  bl 0x01251aa0
016fccd8  mov w8,#0x1
016fccdc  str w8,[sp, #0x8]
016fcce0  mov x0,sp
016fcce4  bl 0x0174aa04
016fcce8  adrp x1,0x5769000
016fccec  adrp x3,0x736d000
016fccf0  add x1,x1,#0x36e
016fccf4  add x3,x3,#0x101
016fccf8  add x0,sp,#0x10
016fccfc  mov x2,sp
016fcd00  bl 0x018c2e10
016fcd04  adrp x1,0x5760000
016fcd08  adrp x2,0x18c2000
016fcd0c  adrp x4,0x18c2000
016fcd10  add x1,x1,#0xe7f
016fcd14  add x2,x2,#0xdec
016fcd18  add x4,x4,#0xdf4
016fcd1c  add x0,sp,#0x10
016fcd20  mov x3,xzr
016fcd24  mov x5,xzr
016fcd28  bl 0x018c2c04
016fcd2c  mov x19,x0
016fcd30  ldr w8,[x19, #0x8]
016fcd34  ldr x0,[x19]
016fcd38  sub w8,w8,#0x3
016fcd3c  str w8,[x19, #0x8]
016fcd40  orr w1,wzr,#0xfffffffc
016fcd44  bl 0x0124c4d0
016fcd48  ldr w8,[x19, #0x8]
016fcd4c  ldr x0,[x19]
016fcd50  str wzr,[x19, #0x8]
016fcd54  cmp w8,#0x1
016fcd58  b.lt 0x016fcd64
016fcd5c  mvn w1,w8
016fcd60  bl 0x0124c4d0
016fcd64  ldr w8,[sp, #0x18]
016fcd68  cmp w8,#0x1
016fcd6c  b.lt 0x016fcd7c
016fcd70  ldr x0,[sp, #0x10]
016fcd74  mvn w1,w8
016fcd78  bl 0x0124c4d0
016fcd7c  ldr w8,[sp, #0x8]
016fcd80  cmp w8,#0x1
016fcd84  b.lt 0x016fcd94
016fcd88  ldr x0,[sp]
016fcd8c  mvn w1,w8
016fcd90  bl 0x0124c4d0
016fcd94  ldp x29,x30,[sp, #0x30]
016fcd98  ldr x19,[sp, #0x20]
016fcd9c  add sp,sp,#0x40
016fcda0  ret
