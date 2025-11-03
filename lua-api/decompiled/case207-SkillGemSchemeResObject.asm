// ===== case207-SkillGemSchemeResObject @ 016b0218 =====
// existing function case207-SkillGemSchemeResObject
016b0218  sub sp,sp,#0x40
016b021c  str x19,[sp, #0x20]
016b0220  stp x29,x30,[sp, #0x30]
016b0224  add x29,sp,#0x30
016b0228  adrp x1,0x174a000
016b022c  add x1,x1,#0x87c
016b0230  mov x19,x0
016b0234  bl 0x0124ba40
016b0238  adrp x1,0x575d000
016b023c  add x1,x1,#0xa06
016b0240  mov x0,x19
016b0244  str x19,[sp]
016b0248  bl 0x01251aa0
016b024c  mov w8,#0x1
016b0250  str w8,[sp, #0x8]
016b0254  mov x0,sp
016b0258  bl 0x0174aa04
016b025c  adrp x1,0x5760000
016b0260  adrp x3,0x736d000
016b0264  add x1,x1,#0xe67
016b0268  add x3,x3,#0x101
016b026c  add x0,sp,#0x10
016b0270  mov x2,sp
016b0274  bl 0x017be640
016b0278  adrp x1,0x5760000
016b027c  adrp x2,0x17be000
016b0280  adrp x4,0x17be000
016b0284  add x1,x1,#0xe7f
016b0288  add x2,x2,#0x630
016b028c  add x4,x4,#0x638
016b0290  add x0,sp,#0x10
016b0294  mov x3,xzr
016b0298  mov x5,xzr
016b029c  bl 0x017be448
016b02a0  mov x19,x0
016b02a4  ldr w8,[x19, #0x8]
016b02a8  ldr x0,[x19]
016b02ac  sub w8,w8,#0x3
016b02b0  str w8,[x19, #0x8]
016b02b4  orr w1,wzr,#0xfffffffc
016b02b8  bl 0x0124c4d0
016b02bc  ldr w8,[x19, #0x8]
016b02c0  ldr x0,[x19]
016b02c4  str wzr,[x19, #0x8]
016b02c8  cmp w8,#0x1
016b02cc  b.lt 0x016b02d8
016b02d0  mvn w1,w8
016b02d4  bl 0x0124c4d0
016b02d8  ldr w8,[sp, #0x18]
016b02dc  cmp w8,#0x1
016b02e0  b.lt 0x016b02f0
016b02e4  ldr x0,[sp, #0x10]
016b02e8  mvn w1,w8
016b02ec  bl 0x0124c4d0
016b02f0  ldr w8,[sp, #0x8]
016b02f4  cmp w8,#0x1
016b02f8  b.lt 0x016b0308
016b02fc  ldr x0,[sp]
016b0300  mvn w1,w8
016b0304  bl 0x0124c4d0
016b0308  ldp x29,x30,[sp, #0x30]
016b030c  ldr x19,[sp, #0x20]
016b0310  add sp,sp,#0x40
016b0314  ret
