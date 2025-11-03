// ===== case15-SkillManager @ 0168ee34 =====
// existing function case15-SkillManager
0168ee34  sub sp,sp,#0x40
0168ee38  stp x20,x19,[sp, #0x20]
0168ee3c  stp x29,x30,[sp, #0x30]
0168ee40  add x29,sp,#0x30
0168ee44  adrp x1,0x174a000
0168ee48  add x1,x1,#0x87c
0168ee4c  mov x19,x0
0168ee50  bl 0x0124ba40
0168ee54  adrp x1,0x575d000
0168ee58  add x1,x1,#0xa06
0168ee5c  mov x0,x19
0168ee60  str x19,[sp]
0168ee64  bl 0x01251aa0
0168ee68  mov w8,#0x1
0168ee6c  str w8,[sp, #0x8]
0168ee70  mov x0,sp
0168ee74  bl 0x0174aa04
0168ee78  adrp x1,0x575d000
0168ee7c  adrp x3,0x736d000
0168ee80  add x1,x1,#0xd69
0168ee84  add x3,x3,#0x101
0168ee88  add x0,sp,#0x10
0168ee8c  mov x2,sp
0168ee90  bl 0x01756b88
0168ee94  ldr x0,[sp, #0x10]
0168ee98  mov w1,#0x10
0168ee9c  bl 0x0124cba0
0168eea0  adrp x8,0x1756000
0168eea4  dup v0.2D,xzr
0168eea8  add x8,x8,#0xb78
0168eeac  mov v0.D[0x0],x8
0168eeb0  str q0,[x0]
0168eeb4  ldr x0,[sp, #0x10]
0168eeb8  adrp x1,0x1756000
0168eebc  add x1,x1,#0xf4c
0168eec0  mov w2,#0x1
0168eec4  bl 0x0124ec90
0168eec8  ldr x0,[sp, #0x10]
0168eecc  mov w1,#0xffffffff
0168eed0  bl 0x0124c0c0
0168eed4  ldr x19,[sp, #0x10]
0168eed8  orr w1,wzr,#0xfffffffb
0168eedc  mov w2,#0x6e7
0168eee0  mov x0,x19
0168eee4  bl 0x0124a650
0168eee8  orr w1,wzr,#0xfffffffe
0168eeec  mov x0,x19
0168eef0  bl 0x0124c0c0
0168eef4  orr w1,wzr,#0xfffffffe
0168eef8  mov x0,x19
0168eefc  bl 0x0124e920
0168ef00  mov w20,w0
0168ef04  adrp x1,0x5762000
0168ef08  add x1,x1,#0x1cd
0168ef0c  mov x0,x19
0168ef10  bl 0x0124f120
0168ef14  orr w1,wzr,#0xfffffffe
0168ef18  mov w2,#0x1
0168ef1c  mov x0,x19
0168ef20  bl 0x0124cfc0
0168ef24  mov x0,x19
0168ef28  mov w1,w20
0168ef2c  bl 0x0124e060
0168ef30  orr w1,wzr,#0xfffffffd
0168ef34  mov x0,x19
0168ef38  bl 0x0124c4d0
0168ef3c  ldr x19,[sp, #0x10]
0168ef40  orr w1,wzr,#0xfffffffd
0168ef44  mov w2,#0x6e7
0168ef48  mov x0,x19
0168ef4c  bl 0x0124a650
0168ef50  orr w1,wzr,#0xfffffffe
0168ef54  mov x0,x19
0168ef58  bl 0x0124c0c0
0168ef5c  orr w1,wzr,#0xfffffffe
0168ef60  mov x0,x19
0168ef64  bl 0x0124e920
0168ef68  mov w20,w0
0168ef6c  adrp x1,0x5762000
0168ef70  add x1,x1,#0x1cd
0168ef74  mov x0,x19
0168ef78  bl 0x0124f120
0168ef7c  orr w1,wzr,#0xfffffffe
0168ef80  mov w2,#0x1
0168ef84  mov x0,x19
0168ef88  bl 0x0124cfc0
0168ef8c  mov x0,x19
0168ef90  mov w1,w20
0168ef94  bl 0x0124e060
0168ef98  orr w1,wzr,#0xfffffffd
0168ef9c  mov x0,x19
0168efa0  bl 0x0124c4d0
0168efa4  ldr x0,[sp, #0x10]
0168efa8  mov w1,#0x10
0168efac  bl 0x0124cba0
0168efb0  adrp x8,0x1756000
0168efb4  dup v0.2D,xzr
0168efb8  add x8,x8,#0xb80
0168efbc  mov v0.D[0x0],x8
0168efc0  str q0,[x0]
0168efc4  ldr x0,[sp, #0x10]
0168efc8  adrp x1,0x1757000
0168efcc  add x1,x1,#0x70
0168efd0  mov w2,#0x1
0168efd4  bl 0x0124ec90
0168efd8  ldr x0,[sp, #0x10]
0168efdc  mov w1,#0xffffffff
0168efe0  bl 0x0124c0c0
0168efe4  ldr x19,[sp, #0x10]
0168efe8  orr w1,wzr,#0xfffffffb
0168efec  mov w2,#0x6e7
0168eff0  mov x0,x19
0168eff4  bl 0x0124a650
0168eff8  orr w1,wzr,#0xfffffffe
0168effc  mov x0,x19
0168f000  bl 0x0124c0c0
0168f004  orr w1,wzr,#0xfffffffe
0168f008  mov x0,x19
0168f00c  bl 0x0124e920
0168f010  mov w20,w0
0168f014  adrp x1,0x575d000
0168f018  add x1,x1,#0xd76
0168f01c  mov x0,x19
0168f020  bl 0x0124f120
0168f024  orr w1,wzr,#0xfffffffe
0168f028  mov w2,#0x1
0168f02c  mov x0,x19
0168f030  bl 0x0124cfc0
0168f034  mov x0,x19
0168f038  mov w1,w20
0168f03c  bl 0x0124e060
0168f040  orr w1,wzr,#0xfffffffd
0168f044  mov x0,x19
0168f048  bl 0x0124c4d0
0168f04c  ldr x19,[sp, #0x10]
0168f050  orr w1,wzr,#0xfffffffd
0168f054  mov w2,#0x6e7
0168f058  mov x0,x19
0168f05c  bl 0x0124a650
0168f060  orr w1,wzr,#0xfffffffe
0168f064  mov x0,x19
0168f068  bl 0x0124c0c0
0168f06c  orr w1,wzr,#0xfffffffe
0168f070  mov x0,x19
0168f074  bl 0x0124e920
0168f078  mov w20,w0
0168f07c  adrp x1,0x575d000
0168f080  add x1,x1,#0xd76
0168f084  mov x0,x19
0168f088  bl 0x0124f120
0168f08c  orr w1,wzr,#0xfffffffe
0168f090  mov w2,#0x1
0168f094  mov x0,x19
0168f098  bl 0x0124cfc0
0168f09c  mov x0,x19
0168f0a0  mov w1,w20
0168f0a4  bl 0x0124e060
0168f0a8  orr w1,wzr,#0xfffffffd
0168f0ac  mov x0,x19
0168f0b0  bl 0x0124c4d0
0168f0b4  ldr w8,[sp, #0x18]
0168f0b8  ldr x0,[sp, #0x10]
0168f0bc  sub w8,w8,#0x3
0168f0c0  str w8,[sp, #0x18]
0168f0c4  orr w1,wzr,#0xfffffffc
0168f0c8  bl 0x0124c4d0
0168f0cc  ldr w8,[sp, #0x18]
0168f0d0  ldr x0,[sp, #0x10]
0168f0d4  str wzr,[sp, #0x18]
0168f0d8  cmp w8,#0x1
0168f0dc  b.lt 0x0168f100
0168f0e0  mvn w1,w8
0168f0e4  bl 0x0124c4d0
0168f0e8  ldr w8,[sp, #0x18]
0168f0ec  cmp w8,#0x1
0168f0f0  b.lt 0x0168f100
0168f0f4  ldr x0,[sp, #0x10]
0168f0f8  mvn w1,w8
0168f0fc  bl 0x0124c4d0
0168f100  ldr w8,[sp, #0x8]
0168f104  cmp w8,#0x1
0168f108  b.lt 0x0168f118
0168f10c  ldr x0,[sp]
0168f110  mvn w1,w8
0168f114  bl 0x0124c4d0
0168f118  ldp x29,x30,[sp, #0x30]
0168f11c  ldp x20,x19,[sp, #0x20]
0168f120  add sp,sp,#0x40
0168f124  ret
