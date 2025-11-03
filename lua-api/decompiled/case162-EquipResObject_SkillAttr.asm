// ===== case162-EquipResObject_SkillAttr @ 016a7fb0 =====
// existing function case162-EquipResObject_SkillAttr
016a7fb0  sub sp,sp,#0x40
016a7fb4  str x19,[sp, #0x20]
016a7fb8  stp x29,x30,[sp, #0x30]
016a7fbc  add x29,sp,#0x30
016a7fc0  adrp x1,0x174a000
016a7fc4  add x1,x1,#0x87c
016a7fc8  mov x19,x0
016a7fcc  bl 0x0124ba40
016a7fd0  adrp x1,0x575d000
016a7fd4  add x1,x1,#0xa06
016a7fd8  mov x0,x19
016a7fdc  str x19,[sp]
016a7fe0  bl 0x01251aa0
016a7fe4  mov w8,#0x1
016a7fe8  str w8,[sp, #0x8]
016a7fec  mov x0,sp
016a7ff0  bl 0x0174aa04
016a7ff4  adrp x1,0x5760000
016a7ff8  adrp x3,0x736d000
016a7ffc  add x1,x1,#0x272
016a8000  add x3,x3,#0x101
016a8004  add x0,sp,#0x10
016a8008  mov x2,sp
016a800c  bl 0x017a71c0
016a8010  adrp x1,0x594c000
016a8014  adrp x2,0x17a6000
016a8018  adrp x4,0x17a6000
016a801c  add x1,x1,#0xe9
016a8020  add x2,x2,#0xfb8
016a8024  add x4,x4,#0xfc0
016a8028  add x0,sp,#0x10
016a802c  mov x3,xzr
016a8030  mov x5,xzr
016a8034  bl 0x017a6dd0
016a8038  adrp x1,0x5760000
016a803c  adrp x2,0x17a7000
016a8040  adrp x4,0x17a7000
016a8044  add x1,x1,#0x28b
016a8048  add x2,x2,#0x1b0
016a804c  add x4,x4,#0x1b8
016a8050  mov x3,xzr
016a8054  mov x5,xzr
016a8058  bl 0x017a6fc8
016a805c  mov x19,x0
016a8060  ldr w8,[x19, #0x8]
016a8064  ldr x0,[x19]
016a8068  sub w8,w8,#0x3
016a806c  str w8,[x19, #0x8]
016a8070  orr w1,wzr,#0xfffffffc
016a8074  bl 0x0124c4d0
016a8078  ldr w8,[x19, #0x8]
016a807c  ldr x0,[x19]
016a8080  str wzr,[x19, #0x8]
016a8084  cmp w8,#0x1
016a8088  b.lt 0x016a8094
016a808c  mvn w1,w8
016a8090  bl 0x0124c4d0
016a8094  ldr w8,[sp, #0x18]
016a8098  cmp w8,#0x1
016a809c  b.lt 0x016a80ac
016a80a0  ldr x0,[sp, #0x10]
016a80a4  mvn w1,w8
016a80a8  bl 0x0124c4d0
016a80ac  ldr w8,[sp, #0x8]
016a80b0  cmp w8,#0x1
016a80b4  b.lt 0x016a80c4
016a80b8  ldr x0,[sp]
016a80bc  mvn w1,w8
016a80c0  bl 0x0124c4d0
016a80c4  ldp x29,x30,[sp, #0x30]
016a80c8  ldr x19,[sp, #0x20]
016a80cc  add sp,sp,#0x40
016a80d0  ret
