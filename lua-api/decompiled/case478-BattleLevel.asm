// ===== case478-BattleLevel @ 016efe00 =====
// existing function case478-BattleLevel
016efe00  sub sp,sp,#0x50
016efe04  str x21,[sp, #0x20]
016efe08  stp x20,x19,[sp, #0x30]
016efe0c  stp x29,x30,[sp, #0x40]
016efe10  add x29,sp,#0x40
016efe14  adrp x1,0x174a000
016efe18  add x1,x1,#0x87c
016efe1c  mov x19,x0
016efe20  bl 0x0124ba40
016efe24  adrp x1,0x575d000
016efe28  add x1,x1,#0xa06
016efe2c  mov x0,x19
016efe30  str x19,[sp]
016efe34  bl 0x01251aa0
016efe38  mov w8,#0x1
016efe3c  str w8,[sp, #0x8]
016efe40  mov x0,sp
016efe44  bl 0x0174aa04
016efe48  adrp x1,0x5767000
016efe4c  adrp x3,0x736d000
016efe50  add x1,x1,#0xb64
016efe54  add x3,x3,#0x101
016efe58  add x0,sp,#0x10
016efe5c  mov x2,sp
016efe60  bl 0x0187ef14
016efe64  ldr x0,[sp, #0x10]
016efe68  mov w1,#0x10
016efe6c  bl 0x0124cba0
016efe70  adrp x8,0x187e000
016efe74  dup v0.2D,xzr
016efe78  add x8,x8,#0xd0c
016efe7c  mov v0.D[0x0],x8
016efe80  str q0,[x0]
016efe84  ldr x0,[sp, #0x10]
016efe88  adrp x1,0x187f000
016efe8c  add x1,x1,#0x2d8
016efe90  mov w2,#0x1
016efe94  bl 0x0124ec90
016efe98  ldr x0,[sp, #0x10]
016efe9c  mov w1,#0xffffffff
016efea0  bl 0x0124c0c0
016efea4  ldr x19,[sp, #0x10]
016efea8  orr w1,wzr,#0xfffffffb
016efeac  mov w2,#0x6e7
016efeb0  mov x0,x19
016efeb4  bl 0x0124a650
016efeb8  orr w1,wzr,#0xfffffffe
016efebc  mov x0,x19
016efec0  bl 0x0124c0c0
016efec4  orr w1,wzr,#0xfffffffe
016efec8  mov x0,x19
016efecc  bl 0x0124e920
016efed0  mov w20,w0
016efed4  adrp x1,0x5763000
016efed8  add x1,x1,#0x892
016efedc  mov x0,x19
016efee0  bl 0x0124f120
016efee4  orr w1,wzr,#0xfffffffe
016efee8  mov w2,#0x1
016efeec  mov x0,x19
016efef0  bl 0x0124cfc0
016efef4  mov x0,x19
016efef8  mov w1,w20
016efefc  bl 0x0124e060
016eff00  orr w1,wzr,#0xfffffffd
016eff04  mov x0,x19
016eff08  bl 0x0124c4d0
016eff0c  ldr x19,[sp, #0x10]
016eff10  orr w1,wzr,#0xfffffffd
016eff14  mov w2,#0x6e7
016eff18  mov x0,x19
016eff1c  bl 0x0124a650
016eff20  orr w1,wzr,#0xfffffffe
016eff24  mov x0,x19
016eff28  bl 0x0124c0c0
016eff2c  orr w1,wzr,#0xfffffffe
016eff30  mov x0,x19
016eff34  bl 0x0124e920
016eff38  mov w20,w0
016eff3c  adrp x1,0x5763000
016eff40  add x1,x1,#0x892
016eff44  mov x0,x19
016eff48  bl 0x0124f120
016eff4c  orr w1,wzr,#0xfffffffe
016eff50  mov w2,#0x1
016eff54  mov x0,x19
016eff58  bl 0x0124cfc0
016eff5c  mov x0,x19
016eff60  mov w1,w20
016eff64  bl 0x0124e060
016eff68  orr w1,wzr,#0xfffffffd
016eff6c  mov x0,x19
016eff70  bl 0x0124c4d0
016eff74  adrp x1,0x5767000
016eff78  adrp x2,0x187e000
016eff7c  adrp x4,0x187e000
016eff80  add x1,x1,#0xb70
016eff84  add x2,x2,#0xefc
016eff88  add x4,x4,#0xf04
016eff8c  add x0,sp,#0x10
016eff90  mov x3,xzr
016eff94  mov x5,xzr
016eff98  bl 0x0187ed14
016eff9c  mov x19,x0
016effa0  ldr x0,[x19]
016effa4  mov w1,#0x10
016effa8  bl 0x0124cba0
016effac  adrp x8,0x187e000
016effb0  dup v0.2D,xzr
016effb4  add x8,x8,#0xf0c
016effb8  mov v0.D[0x0],x8
016effbc  str q0,[x0]
016effc0  ldr x0,[x19]
016effc4  adrp x1,0x187f000
016effc8  add x1,x1,#0x648
016effcc  mov w2,#0x1
016effd0  bl 0x0124ec90
016effd4  ldr x0,[x19]
016effd8  mov w1,#0xffffffff
016effdc  bl 0x0124c0c0
016effe0  ldr x20,[x19]
016effe4  orr w1,wzr,#0xfffffffb
016effe8  mov w2,#0x6e7
016effec  mov x0,x20
016efff0  bl 0x0124a650
016efff4  orr w1,wzr,#0xfffffffe
016efff8  mov x0,x20
016efffc  bl 0x0124c0c0
016f0000  orr w1,wzr,#0xfffffffe
016f0004  mov x0,x20
016f0008  bl 0x0124e920
016f000c  mov w21,w0
016f0010  adrp x1,0x576d000
016f0014  add x1,x1,#0x54e
016f0018  mov x0,x20
016f001c  bl 0x0124f120
016f0020  orr w1,wzr,#0xfffffffe
016f0024  mov w2,#0x1
016f0028  mov x0,x20
016f002c  bl 0x0124cfc0
016f0030  mov x0,x20
016f0034  mov w1,w21
016f0038  bl 0x0124e060
016f003c  orr w1,wzr,#0xfffffffd
016f0040  mov x0,x20
016f0044  bl 0x0124c4d0
016f0048  ldr x20,[x19]
016f004c  orr w1,wzr,#0xfffffffd
016f0050  mov w2,#0x6e7
016f0054  mov x0,x20
016f0058  bl 0x0124a650
016f005c  orr w1,wzr,#0xfffffffe
016f0060  mov x0,x20
016f0064  bl 0x0124c0c0
016f0068  orr w1,wzr,#0xfffffffe
016f006c  mov x0,x20
016f0070  bl 0x0124e920
016f0074  mov w21,w0
016f0078  adrp x1,0x576d000
016f007c  add x1,x1,#0x54e
016f0080  mov x0,x20
016f0084  bl 0x0124f120
016f0088  orr w1,wzr,#0xfffffffe
016f008c  mov w2,#0x1
016f0090  mov x0,x20
016f0094  bl 0x0124cfc0
016f0098  mov x0,x20
016f009c  mov w1,w21
016f00a0  bl 0x0124e060
016f00a4  orr w1,wzr,#0xfffffffd
016f00a8  mov x0,x20
016f00ac  bl 0x0124c4d0
016f00b0  ldr w8,[x19, #0x8]
016f00b4  ldr x0,[x19]
016f00b8  sub w8,w8,#0x3
016f00bc  str w8,[x19, #0x8]
016f00c0  orr w1,wzr,#0xfffffffc
016f00c4  bl 0x0124c4d0
016f00c8  ldr w8,[x19, #0x8]
016f00cc  ldr x0,[x19]
016f00d0  str wzr,[x19, #0x8]
016f00d4  cmp w8,#0x1
016f00d8  b.lt 0x016f00e4
016f00dc  mvn w1,w8
016f00e0  bl 0x0124c4d0
016f00e4  ldr w8,[sp, #0x18]
016f00e8  cmp w8,#0x1
016f00ec  b.lt 0x016f00fc
016f00f0  ldr x0,[sp, #0x10]
016f00f4  mvn w1,w8
016f00f8  bl 0x0124c4d0
016f00fc  ldr w8,[sp, #0x8]
016f0100  cmp w8,#0x1
016f0104  b.lt 0x016f0114
016f0108  ldr x0,[sp]
016f010c  mvn w1,w8
016f0110  bl 0x0124c4d0
016f0114  ldp x29,x30,[sp, #0x40]
016f0118  ldp x20,x19,[sp, #0x30]
016f011c  ldr x21,[sp, #0x20]
016f0120  add sp,sp,#0x50
016f0124  ret
