// ===== case198-SkinSkillGemSlotAddInfo @ 016ae924 =====
// existing function case198-SkinSkillGemSlotAddInfo
016ae924  sub sp,sp,#0x50
016ae928  str x21,[sp, #0x20]
016ae92c  stp x20,x19,[sp, #0x30]
016ae930  stp x29,x30,[sp, #0x40]
016ae934  add x29,sp,#0x40
016ae938  adrp x1,0x174a000
016ae93c  add x1,x1,#0x87c
016ae940  mov x19,x0
016ae944  bl 0x0124ba40
016ae948  adrp x1,0x575d000
016ae94c  add x1,x1,#0xa06
016ae950  mov x0,x19
016ae954  str x19,[sp]
016ae958  bl 0x01251aa0
016ae95c  mov w8,#0x1
016ae960  str w8,[sp, #0x8]
016ae964  mov x0,sp
016ae968  bl 0x0174aa04
016ae96c  adrp x1,0x5760000
016ae970  adrp x3,0x736d000
016ae974  add x1,x1,#0xc97
016ae978  add x3,x3,#0x101
016ae97c  add x0,sp,#0x10
016ae980  mov x2,sp
016ae984  bl 0x017b9d78
016ae988  adrp x1,0x5760000
016ae98c  adrp x2,0x17b9000
016ae990  adrp x4,0x17b9000
016ae994  add x1,x1,#0xb65
016ae998  add x2,x2,#0xd60
016ae99c  add x4,x4,#0xd68
016ae9a0  add x0,sp,#0x10
016ae9a4  mov x3,xzr
016ae9a8  mov x5,xzr
016ae9ac  bl 0x017b9b78
016ae9b0  mov x19,x0
016ae9b4  ldr x0,[x19]
016ae9b8  mov w1,#0x10
016ae9bc  bl 0x0124cba0
016ae9c0  adrp x8,0x17b9000
016ae9c4  dup v0.2D,xzr
016ae9c8  add x8,x8,#0xd70
016ae9cc  mov v0.D[0x0],x8
016ae9d0  str q0,[x0]
016ae9d4  ldr x0,[x19]
016ae9d8  adrp x1,0x17ba000
016ae9dc  add x1,x1,#0x35c
016ae9e0  mov w2,#0x1
016ae9e4  bl 0x0124ec90
016ae9e8  ldr x0,[x19]
016ae9ec  mov w1,#0xffffffff
016ae9f0  bl 0x0124c0c0
016ae9f4  ldr x20,[x19]
016ae9f8  orr w1,wzr,#0xfffffffb
016ae9fc  mov w2,#0x6e7
016aea00  mov x0,x20
016aea04  bl 0x0124a650
016aea08  orr w1,wzr,#0xfffffffe
016aea0c  mov x0,x20
016aea10  bl 0x0124c0c0
016aea14  orr w1,wzr,#0xfffffffe
016aea18  mov x0,x20
016aea1c  bl 0x0124e920
016aea20  mov w21,w0
016aea24  adrp x1,0x5760000
016aea28  add x1,x1,#0xcaf
016aea2c  mov x0,x20
016aea30  bl 0x0124f120
016aea34  orr w1,wzr,#0xfffffffe
016aea38  mov w2,#0x1
016aea3c  mov x0,x20
016aea40  bl 0x0124cfc0
016aea44  mov x0,x20
016aea48  mov w1,w21
016aea4c  bl 0x0124e060
016aea50  orr w1,wzr,#0xfffffffd
016aea54  mov x0,x20
016aea58  bl 0x0124c4d0
016aea5c  ldr x20,[x19]
016aea60  orr w1,wzr,#0xfffffffd
016aea64  mov w2,#0x6e7
016aea68  mov x0,x20
016aea6c  bl 0x0124a650
016aea70  orr w1,wzr,#0xfffffffe
016aea74  mov x0,x20
016aea78  bl 0x0124c0c0
016aea7c  orr w1,wzr,#0xfffffffe
016aea80  mov x0,x20
016aea84  bl 0x0124e920
016aea88  mov w21,w0
016aea8c  adrp x1,0x5760000
016aea90  add x1,x1,#0xcaf
016aea94  mov x0,x20
016aea98  bl 0x0124f120
016aea9c  orr w1,wzr,#0xfffffffe
016aeaa0  mov w2,#0x1
016aeaa4  mov x0,x20
016aeaa8  bl 0x0124cfc0
016aeaac  mov x0,x20
016aeab0  mov w1,w21
016aeab4  bl 0x0124e060
016aeab8  orr w1,wzr,#0xfffffffd
016aeabc  mov x0,x20
016aeac0  bl 0x0124c4d0
016aeac4  ldr w8,[x19, #0x8]
016aeac8  ldr x0,[x19]
016aeacc  sub w8,w8,#0x3
016aead0  str w8,[x19, #0x8]
016aead4  orr w1,wzr,#0xfffffffc
016aead8  bl 0x0124c4d0
016aeadc  ldr w8,[x19, #0x8]
016aeae0  ldr x0,[x19]
016aeae4  str wzr,[x19, #0x8]
016aeae8  cmp w8,#0x1
016aeaec  b.lt 0x016aeaf8
016aeaf0  mvn w1,w8
016aeaf4  bl 0x0124c4d0
016aeaf8  ldr w8,[sp, #0x18]
016aeafc  cmp w8,#0x1
016aeb00  b.lt 0x016aeb10
016aeb04  ldr x0,[sp, #0x10]
016aeb08  mvn w1,w8
016aeb0c  bl 0x0124c4d0
016aeb10  ldr w8,[sp, #0x8]
016aeb14  cmp w8,#0x1
016aeb18  b.lt 0x016aeb28
016aeb1c  ldr x0,[sp]
016aeb20  mvn w1,w8
016aeb24  bl 0x0124c4d0
016aeb28  ldp x29,x30,[sp, #0x40]
016aeb2c  ldp x20,x19,[sp, #0x30]
016aeb30  ldr x21,[sp, #0x20]
016aeb34  add sp,sp,#0x50
016aeb38  ret
