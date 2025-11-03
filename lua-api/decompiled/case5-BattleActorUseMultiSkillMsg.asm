// ===== case5-BattleActorUseMultiSkillMsg @ 0168d8d0 =====
// existing function case5-BattleActorUseMultiSkillMsg
0168d8d0  sub sp,sp,#0x40
0168d8d4  stp x20,x19,[sp, #0x20]
0168d8d8  stp x29,x30,[sp, #0x30]
0168d8dc  add x29,sp,#0x30
0168d8e0  adrp x1,0x174a000
0168d8e4  add x1,x1,#0x87c
0168d8e8  mov x19,x0
0168d8ec  bl 0x0124ba40
0168d8f0  adrp x1,0x575d000
0168d8f4  add x1,x1,#0xa06
0168d8f8  mov x0,x19
0168d8fc  str x19,[sp]
0168d900  bl 0x01251aa0
0168d904  mov w8,#0x1
0168d908  str w8,[sp, #0x8]
0168d90c  mov x0,sp
0168d910  bl 0x0174aa04
0168d914  adrp x1,0x575d000
0168d918  adrp x3,0x736d000
0168d91c  add x1,x1,#0xc7a
0168d920  add x3,x3,#0x101
0168d924  add x0,sp,#0x10
0168d928  mov x2,sp
0168d92c  bl 0x0175276c
0168d930  ldr x0,[sp, #0x10]
0168d934  mov w1,#0x10
0168d938  bl 0x0124cba0
0168d93c  adrp x8,0x1752000
0168d940  dup v0.2D,xzr
0168d944  add x8,x8,#0x764
0168d948  mov v0.D[0x0],x8
0168d94c  str q0,[x0]
0168d950  ldr x0,[sp, #0x10]
0168d954  adrp x1,0x1752000
0168d958  add x1,x1,#0xb30
0168d95c  mov w2,#0x1
0168d960  bl 0x0124ec90
0168d964  ldr x0,[sp, #0x10]
0168d968  mov w1,#0xffffffff
0168d96c  bl 0x0124c0c0
0168d970  ldr x19,[sp, #0x10]
0168d974  orr w1,wzr,#0xfffffffb
0168d978  mov w2,#0x6e7
0168d97c  mov x0,x19
0168d980  bl 0x0124a650
0168d984  orr w1,wzr,#0xfffffffe
0168d988  mov x0,x19
0168d98c  bl 0x0124c0c0
0168d990  orr w1,wzr,#0xfffffffe
0168d994  mov x0,x19
0168d998  bl 0x0124e920
0168d99c  mov w20,w0
0168d9a0  adrp x1,0x575d000
0168d9a4  add x1,x1,#0xc96
0168d9a8  mov x0,x19
0168d9ac  bl 0x0124f120
0168d9b0  orr w1,wzr,#0xfffffffe
0168d9b4  mov w2,#0x1
0168d9b8  mov x0,x19
0168d9bc  bl 0x0124cfc0
0168d9c0  mov x0,x19
0168d9c4  mov w1,w20
0168d9c8  bl 0x0124e060
0168d9cc  orr w1,wzr,#0xfffffffd
0168d9d0  mov x0,x19
0168d9d4  bl 0x0124c4d0
0168d9d8  ldr x19,[sp, #0x10]
0168d9dc  orr w1,wzr,#0xfffffffd
0168d9e0  mov w2,#0x6e7
0168d9e4  mov x0,x19
0168d9e8  bl 0x0124a650
0168d9ec  orr w1,wzr,#0xfffffffe
0168d9f0  mov x0,x19
0168d9f4  bl 0x0124c0c0
0168d9f8  orr w1,wzr,#0xfffffffe
0168d9fc  mov x0,x19
0168da00  bl 0x0124e920
0168da04  mov w20,w0
0168da08  adrp x1,0x575d000
0168da0c  add x1,x1,#0xc96
0168da10  mov x0,x19
0168da14  bl 0x0124f120
0168da18  orr w1,wzr,#0xfffffffe
0168da1c  mov w2,#0x1
0168da20  mov x0,x19
0168da24  bl 0x0124cfc0
0168da28  mov x0,x19
0168da2c  mov w1,w20
0168da30  bl 0x0124e060
0168da34  orr w1,wzr,#0xfffffffd
0168da38  mov x0,x19
0168da3c  bl 0x0124c4d0
0168da40  ldr w8,[sp, #0x18]
0168da44  ldr x0,[sp, #0x10]
0168da48  sub w8,w8,#0x3
0168da4c  str w8,[sp, #0x18]
0168da50  orr w1,wzr,#0xfffffffc
0168da54  bl 0x0124c4d0
0168da58  ldr w8,[sp, #0x18]
0168da5c  ldr x0,[sp, #0x10]
0168da60  str wzr,[sp, #0x18]
0168da64  cmp w8,#0x1
0168da68  b.lt 0x0168da8c
0168da6c  mvn w1,w8
0168da70  bl 0x0124c4d0
0168da74  ldr w8,[sp, #0x18]
0168da78  cmp w8,#0x1
0168da7c  b.lt 0x0168da8c
0168da80  ldr x0,[sp, #0x10]
0168da84  mvn w1,w8
0168da88  bl 0x0124c4d0
0168da8c  ldr w8,[sp, #0x8]
0168da90  cmp w8,#0x1
0168da94  b.lt 0x0168daa4
0168da98  ldr x0,[sp]
0168da9c  mvn w1,w8
0168daa0  bl 0x0124c4d0
0168daa4  ldp x29,x30,[sp, #0x30]
0168daa8  ldp x20,x19,[sp, #0x20]
0168daac  add sp,sp,#0x40
0168dab0  ret
