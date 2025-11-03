// ===== case145-SkillFieldResObject @ 016a526c =====
// existing function case145-SkillFieldResObject
016a526c  sub sp,sp,#0x40
016a5270  str x19,[sp, #0x20]
016a5274  stp x29,x30,[sp, #0x30]
016a5278  add x29,sp,#0x30
016a527c  adrp x1,0x174a000
016a5280  add x1,x1,#0x87c
016a5284  mov x19,x0
016a5288  bl 0x0124ba40
016a528c  adrp x1,0x575d000
016a5290  add x1,x1,#0xa06
016a5294  mov x0,x19
016a5298  str x19,[sp]
016a529c  bl 0x01251aa0
016a52a0  mov w8,#0x1
016a52a4  str w8,[sp, #0x8]
016a52a8  mov x0,sp
016a52ac  bl 0x0174aa04
016a52b0  adrp x1,0x575f000
016a52b4  adrp x3,0x736d000
016a52b8  add x1,x1,#0xfaa
016a52bc  add x3,x3,#0x101
016a52c0  add x0,sp,#0x10
016a52c4  mov x2,sp
016a52c8  bl 0x0179da64
016a52cc  adrp x1,0x575f000
016a52d0  adrp x2,0x179d000
016a52d4  add x1,x1,#0xfbe
016a52d8  add x2,x2,#0xa54
016a52dc  add x0,sp,#0x10
016a52e0  mov x3,xzr
016a52e4  mov x4,xzr
016a52e8  mov x5,xzr
016a52ec  bl 0x0179d86c
016a52f0  adrp x1,0x575f000
016a52f4  adrp x2,0x179d000
016a52f8  add x1,x1,#0xfc8
016a52fc  add x2,x2,#0xa5c
016a5300  mov x3,xzr
016a5304  mov x4,xzr
016a5308  mov x5,xzr
016a530c  bl 0x0179d86c
016a5310  mov x19,x0
016a5314  ldr w8,[x19, #0x8]
016a5318  ldr x0,[x19]
016a531c  sub w8,w8,#0x3
016a5320  str w8,[x19, #0x8]
016a5324  orr w1,wzr,#0xfffffffc
016a5328  bl 0x0124c4d0
016a532c  ldr w8,[x19, #0x8]
016a5330  ldr x0,[x19]
016a5334  str wzr,[x19, #0x8]
016a5338  cmp w8,#0x1
016a533c  b.lt 0x016a5348
016a5340  mvn w1,w8
016a5344  bl 0x0124c4d0
016a5348  ldr w8,[sp, #0x18]
016a534c  cmp w8,#0x1
016a5350  b.lt 0x016a5360
016a5354  ldr x0,[sp, #0x10]
016a5358  mvn w1,w8
016a535c  bl 0x0124c4d0
016a5360  ldr w8,[sp, #0x8]
016a5364  cmp w8,#0x1
016a5368  b.lt 0x016a5378
016a536c  ldr x0,[sp]
016a5370  mvn w1,w8
016a5374  bl 0x0124c4d0
016a5378  ldp x29,x30,[sp, #0x30]
016a537c  ldr x19,[sp, #0x20]
016a5380  add sp,sp,#0x40
016a5384  ret
