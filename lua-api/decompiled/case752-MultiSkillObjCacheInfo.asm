// ===== case752-MultiSkillObjCacheInfo @ 0172aef8 =====
// existing function case752-MultiSkillObjCacheInfo
0172aef8  sub sp,sp,#0x40
0172aefc  stp x20,x19,[sp, #0x20]
0172af00  stp x29,x30,[sp, #0x30]
0172af04  add x29,sp,#0x30
0172af08  adrp x1,0x174a000
0172af0c  add x1,x1,#0x87c
0172af10  mov x19,x0
0172af14  bl 0x0124ba40
0172af18  adrp x1,0x575d000
0172af1c  add x1,x1,#0xa06
0172af20  mov x0,x19
0172af24  str x19,[sp]
0172af28  bl 0x01251aa0
0172af2c  mov w8,#0x1
0172af30  str w8,[sp, #0x8]
0172af34  mov x0,sp
0172af38  bl 0x0174aa04
0172af3c  adrp x1,0x5770000
0172af40  adrp x3,0x736d000
0172af44  add x1,x1,#0xc71
0172af48  add x3,x3,#0x101
0172af4c  add x0,sp,#0x10
0172af50  mov x2,sp
0172af54  bl 0x0198af54
0172af58  ldr x0,[sp, #0x10]
0172af5c  mov w1,#0x10
0172af60  bl 0x0124cba0
0172af64  adrp x8,0x198a000
0172af68  dup v0.2D,xzr
0172af6c  add x8,x8,#0xd54
0172af70  mov v0.D[0x0],x8
0172af74  str q0,[x0]
0172af78  ldr x0,[sp, #0x10]
0172af7c  adrp x1,0x198b000
0172af80  add x1,x1,#0x318
0172af84  mov w2,#0x1
0172af88  bl 0x0124ec90
0172af8c  ldr x0,[sp, #0x10]
0172af90  mov w1,#0xffffffff
0172af94  bl 0x0124c0c0
0172af98  ldr x19,[sp, #0x10]
0172af9c  orr w1,wzr,#0xfffffffb
0172afa0  mov w2,#0x6e7
0172afa4  mov x0,x19
0172afa8  bl 0x0124a650
0172afac  orr w1,wzr,#0xfffffffe
0172afb0  mov x0,x19
0172afb4  bl 0x0124c0c0
0172afb8  orr w1,wzr,#0xfffffffe
0172afbc  mov x0,x19
0172afc0  bl 0x0124e920
0172afc4  mov w20,w0
0172afc8  adrp x1,0x5770000
0172afcc  add x1,x1,#0xc88
0172afd0  mov x0,x19
0172afd4  bl 0x0124f120
0172afd8  orr w1,wzr,#0xfffffffe
0172afdc  mov w2,#0x1
0172afe0  mov x0,x19
0172afe4  bl 0x0124cfc0
0172afe8  mov x0,x19
0172afec  mov w1,w20
0172aff0  bl 0x0124e060
0172aff4  orr w1,wzr,#0xfffffffd
0172aff8  mov x0,x19
0172affc  bl 0x0124c4d0
0172b000  ldr x19,[sp, #0x10]
0172b004  orr w1,wzr,#0xfffffffd
0172b008  mov w2,#0x6e7
0172b00c  mov x0,x19
0172b010  bl 0x0124a650
0172b014  orr w1,wzr,#0xfffffffe
0172b018  mov x0,x19
0172b01c  bl 0x0124c0c0
0172b020  orr w1,wzr,#0xfffffffe
0172b024  mov x0,x19
0172b028  bl 0x0124e920
0172b02c  mov w20,w0
0172b030  adrp x1,0x5770000
0172b034  add x1,x1,#0xc88
0172b038  mov x0,x19
0172b03c  bl 0x0124f120
0172b040  orr w1,wzr,#0xfffffffe
0172b044  mov w2,#0x1
0172b048  mov x0,x19
0172b04c  bl 0x0124cfc0
0172b050  mov x0,x19
0172b054  mov w1,w20
0172b058  bl 0x0124e060
0172b05c  orr w1,wzr,#0xfffffffd
0172b060  mov x0,x19
0172b064  bl 0x0124c4d0
0172b068  adrp x1,0x5770000
0172b06c  adrp x2,0x198a000
0172b070  adrp x4,0x198a000
0172b074  add x1,x1,#0xc92
0172b078  add x2,x2,#0xf44
0172b07c  add x4,x4,#0xf4c
0172b080  add x0,sp,#0x10
0172b084  mov x3,xzr
0172b088  mov x5,xzr
0172b08c  bl 0x0198ad5c
0172b090  mov x19,x0
0172b094  ldr w8,[x19, #0x8]
0172b098  ldr x0,[x19]
0172b09c  sub w8,w8,#0x3
0172b0a0  str w8,[x19, #0x8]
0172b0a4  orr w1,wzr,#0xfffffffc
0172b0a8  bl 0x0124c4d0
0172b0ac  ldr w8,[x19, #0x8]
0172b0b0  ldr x0,[x19]
0172b0b4  str wzr,[x19, #0x8]
0172b0b8  cmp w8,#0x1
0172b0bc  b.lt 0x0172b0c8
0172b0c0  mvn w1,w8
0172b0c4  bl 0x0124c4d0
0172b0c8  ldr w8,[sp, #0x18]
0172b0cc  cmp w8,#0x1
0172b0d0  b.lt 0x0172b0e0
0172b0d4  ldr x0,[sp, #0x10]
0172b0d8  mvn w1,w8
0172b0dc  bl 0x0124c4d0
0172b0e0  ldr w8,[sp, #0x8]
0172b0e4  cmp w8,#0x1
0172b0e8  b.lt 0x0172b0f8
0172b0ec  ldr x0,[sp]
0172b0f0  mvn w1,w8
0172b0f4  bl 0x0124c4d0
0172b0f8  ldp x29,x30,[sp, #0x30]
0172b0fc  ldp x20,x19,[sp, #0x20]
0172b100  add sp,sp,#0x40
0172b104  ret
