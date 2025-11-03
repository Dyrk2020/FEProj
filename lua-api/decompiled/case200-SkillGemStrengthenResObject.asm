// ===== case200-SkillGemStrengthenResObject @ 016aede8 =====
// existing function case200-SkillGemStrengthenResObject
016aede8  sub sp,sp,#0x40
016aedec  stp x20,x19,[sp, #0x20]
016aedf0  stp x29,x30,[sp, #0x30]
016aedf4  add x29,sp,#0x30
016aedf8  adrp x1,0x174a000
016aedfc  add x1,x1,#0x87c
016aee00  mov x19,x0
016aee04  bl 0x0124ba40
016aee08  adrp x1,0x575d000
016aee0c  add x1,x1,#0xa06
016aee10  mov x0,x19
016aee14  str x19,[sp]
016aee18  bl 0x01251aa0
016aee1c  mov w8,#0x1
016aee20  str w8,[sp, #0x8]
016aee24  mov x0,sp
016aee28  bl 0x0174aa04
016aee2c  adrp x1,0x5760000
016aee30  adrp x3,0x736d000
016aee34  add x1,x1,#0xce1
016aee38  add x3,x3,#0x101
016aee3c  add x0,sp,#0x10
016aee40  mov x2,sp
016aee44  bl 0x017ba980
016aee48  ldr x0,[sp, #0x10]
016aee4c  mov w1,#0x10
016aee50  bl 0x0124cba0
016aee54  adrp x8,0x17ba000
016aee58  dup v0.2D,xzr
016aee5c  add x8,x8,#0x970
016aee60  mov v0.D[0x0],x8
016aee64  str q0,[x0]
016aee68  ldr x0,[sp, #0x10]
016aee6c  adrp x1,0x17ba000
016aee70  add x1,x1,#0xd44
016aee74  mov w2,#0x1
016aee78  bl 0x0124ec90
016aee7c  ldr x0,[sp, #0x10]
016aee80  mov w1,#0xffffffff
016aee84  bl 0x0124c0c0
016aee88  ldr x19,[sp, #0x10]
016aee8c  orr w1,wzr,#0xfffffffb
016aee90  mov w2,#0x6e7
016aee94  mov x0,x19
016aee98  bl 0x0124a650
016aee9c  orr w1,wzr,#0xfffffffe
016aeea0  mov x0,x19
016aeea4  bl 0x0124c0c0
016aeea8  orr w1,wzr,#0xfffffffe
016aeeac  mov x0,x19
016aeeb0  bl 0x0124e920
016aeeb4  mov w20,w0
016aeeb8  adrp x1,0x575e000
016aeebc  add x1,x1,#0x56d
016aeec0  mov x0,x19
016aeec4  bl 0x0124f120
016aeec8  orr w1,wzr,#0xfffffffe
016aeecc  mov w2,#0x1
016aeed0  mov x0,x19
016aeed4  bl 0x0124cfc0
016aeed8  mov x0,x19
016aeedc  mov w1,w20
016aeee0  bl 0x0124e060
016aeee4  orr w1,wzr,#0xfffffffd
016aeee8  mov x0,x19
016aeeec  bl 0x0124c4d0
016aeef0  ldr x19,[sp, #0x10]
016aeef4  orr w1,wzr,#0xfffffffd
016aeef8  mov w2,#0x6e7
016aeefc  mov x0,x19
016aef00  bl 0x0124a650
016aef04  orr w1,wzr,#0xfffffffe
016aef08  mov x0,x19
016aef0c  bl 0x0124c0c0
016aef10  orr w1,wzr,#0xfffffffe
016aef14  mov x0,x19
016aef18  bl 0x0124e920
016aef1c  mov w20,w0
016aef20  adrp x1,0x575e000
016aef24  add x1,x1,#0x56d
016aef28  mov x0,x19
016aef2c  bl 0x0124f120
016aef30  orr w1,wzr,#0xfffffffe
016aef34  mov w2,#0x1
016aef38  mov x0,x19
016aef3c  bl 0x0124cfc0
016aef40  mov x0,x19
016aef44  mov w1,w20
016aef48  bl 0x0124e060
016aef4c  orr w1,wzr,#0xfffffffd
016aef50  mov x0,x19
016aef54  bl 0x0124c4d0
016aef58  ldr x0,[sp, #0x10]
016aef5c  mov w1,#0x10
016aef60  bl 0x0124cba0
016aef64  adrp x8,0x17ba000
016aef68  dup v0.2D,xzr
016aef6c  add x8,x8,#0x978
016aef70  mov v0.D[0x0],x8
016aef74  str q0,[x0]
016aef78  ldr x0,[sp, #0x10]
016aef7c  adrp x1,0x17ba000
016aef80  add x1,x1,#0xe68
016aef84  mov w2,#0x1
016aef88  bl 0x0124ec90
016aef8c  ldr x0,[sp, #0x10]
016aef90  mov w1,#0xffffffff
016aef94  bl 0x0124c0c0
016aef98  ldr x19,[sp, #0x10]
016aef9c  orr w1,wzr,#0xfffffffb
016aefa0  mov w2,#0x6e7
016aefa4  mov x0,x19
016aefa8  bl 0x0124a650
016aefac  orr w1,wzr,#0xfffffffe
016aefb0  mov x0,x19
016aefb4  bl 0x0124c0c0
016aefb8  orr w1,wzr,#0xfffffffe
016aefbc  mov x0,x19
016aefc0  bl 0x0124e920
016aefc4  mov w20,w0
016aefc8  adrp x1,0x575e000
016aefcc  add x1,x1,#0x578
016aefd0  mov x0,x19
016aefd4  bl 0x0124f120
016aefd8  orr w1,wzr,#0xfffffffe
016aefdc  mov w2,#0x1
016aefe0  mov x0,x19
016aefe4  bl 0x0124cfc0
016aefe8  mov x0,x19
016aefec  mov w1,w20
016aeff0  bl 0x0124e060
016aeff4  orr w1,wzr,#0xfffffffd
016aeff8  mov x0,x19
016aeffc  bl 0x0124c4d0
016af000  ldr x19,[sp, #0x10]
016af004  orr w1,wzr,#0xfffffffd
016af008  mov w2,#0x6e7
016af00c  mov x0,x19
016af010  bl 0x0124a650
016af014  orr w1,wzr,#0xfffffffe
016af018  mov x0,x19
016af01c  bl 0x0124c0c0
016af020  orr w1,wzr,#0xfffffffe
016af024  mov x0,x19
016af028  bl 0x0124e920
016af02c  mov w20,w0
016af030  adrp x1,0x575e000
016af034  add x1,x1,#0x578
016af038  mov x0,x19
016af03c  bl 0x0124f120
016af040  orr w1,wzr,#0xfffffffe
016af044  mov w2,#0x1
016af048  mov x0,x19
016af04c  bl 0x0124cfc0
016af050  mov x0,x19
016af054  mov w1,w20
016af058  bl 0x0124e060
016af05c  orr w1,wzr,#0xfffffffd
016af060  mov x0,x19
016af064  bl 0x0124c4d0
016af068  ldr w8,[sp, #0x18]
016af06c  ldr x0,[sp, #0x10]
016af070  sub w8,w8,#0x3
016af074  str w8,[sp, #0x18]
016af078  orr w1,wzr,#0xfffffffc
016af07c  bl 0x0124c4d0
016af080  ldr w8,[sp, #0x18]
016af084  ldr x0,[sp, #0x10]
016af088  str wzr,[sp, #0x18]
016af08c  cmp w8,#0x1
016af090  b.lt 0x016af0b4
016af094  mvn w1,w8
016af098  bl 0x0124c4d0
016af09c  ldr w8,[sp, #0x18]
016af0a0  cmp w8,#0x1
016af0a4  b.lt 0x016af0b4
016af0a8  ldr x0,[sp, #0x10]
016af0ac  mvn w1,w8
016af0b0  bl 0x0124c4d0
016af0b4  ldr w8,[sp, #0x8]
016af0b8  cmp w8,#0x1
016af0bc  b.lt 0x016af0cc
016af0c0  ldr x0,[sp]
016af0c4  mvn w1,w8
016af0c8  bl 0x0124c4d0
016af0cc  ldp x29,x30,[sp, #0x30]
016af0d0  ldp x20,x19,[sp, #0x20]
016af0d4  add sp,sp,#0x40
016af0d8  ret
