// ===== case68-RuinSkillRandomResObject @ 0169791c =====
// existing function case68-RuinSkillRandomResObject
0169791c  sub sp,sp,#0x40
01697920  stp x20,x19,[sp, #0x20]
01697924  stp x29,x30,[sp, #0x30]
01697928  add x29,sp,#0x30
0169792c  adrp x1,0x174a000
01697930  add x1,x1,#0x87c
01697934  mov x19,x0
01697938  bl 0x0124ba40
0169793c  adrp x1,0x575d000
01697940  add x1,x1,#0xa06
01697944  mov x0,x19
01697948  str x19,[sp]
0169794c  bl 0x01251aa0
01697950  mov w8,#0x1
01697954  str w8,[sp, #0x8]
01697958  mov x0,sp
0169795c  bl 0x0174aa04
01697960  adrp x1,0x574e000
01697964  adrp x3,0x736d000
01697968  add x1,x1,#0x614
0169796c  add x3,x3,#0x101
01697970  add x0,sp,#0x10
01697974  mov x2,sp
01697978  bl 0x017756e8
0169797c  ldr x0,[sp, #0x10]
01697980  mov w1,#0x10
01697984  bl 0x0124cba0
01697988  adrp x8,0x1775000
0169798c  dup v0.2D,xzr
01697990  add x8,x8,#0x6e0
01697994  mov v0.D[0x0],x8
01697998  str q0,[x0]
0169799c  ldr x0,[sp, #0x10]
016979a0  adrp x1,0x1775000
016979a4  add x1,x1,#0xaac
016979a8  mov w2,#0x1
016979ac  bl 0x0124ec90
016979b0  ldr x0,[sp, #0x10]
016979b4  mov w1,#0xffffffff
016979b8  bl 0x0124c0c0
016979bc  ldr x19,[sp, #0x10]
016979c0  orr w1,wzr,#0xfffffffb
016979c4  mov w2,#0x6e7
016979c8  mov x0,x19
016979cc  bl 0x0124a650
016979d0  orr w1,wzr,#0xfffffffe
016979d4  mov x0,x19
016979d8  bl 0x0124c0c0
016979dc  orr w1,wzr,#0xfffffffe
016979e0  mov x0,x19
016979e4  bl 0x0124e920
016979e8  mov w20,w0
016979ec  adrp x1,0x575e000
016979f0  add x1,x1,#0xc66
016979f4  mov x0,x19
016979f8  bl 0x0124f120
016979fc  orr w1,wzr,#0xfffffffe
01697a00  mov w2,#0x1
01697a04  mov x0,x19
01697a08  bl 0x0124cfc0
01697a0c  mov x0,x19
01697a10  mov w1,w20
01697a14  bl 0x0124e060
01697a18  orr w1,wzr,#0xfffffffd
01697a1c  mov x0,x19
01697a20  bl 0x0124c4d0
01697a24  ldr x19,[sp, #0x10]
01697a28  orr w1,wzr,#0xfffffffd
01697a2c  mov w2,#0x6e7
01697a30  mov x0,x19
01697a34  bl 0x0124a650
01697a38  orr w1,wzr,#0xfffffffe
01697a3c  mov x0,x19
01697a40  bl 0x0124c0c0
01697a44  orr w1,wzr,#0xfffffffe
01697a48  mov x0,x19
01697a4c  bl 0x0124e920
01697a50  mov w20,w0
01697a54  adrp x1,0x575e000
01697a58  add x1,x1,#0xc66
01697a5c  mov x0,x19
01697a60  bl 0x0124f120
01697a64  orr w1,wzr,#0xfffffffe
01697a68  mov w2,#0x1
01697a6c  mov x0,x19
01697a70  bl 0x0124cfc0
01697a74  mov x0,x19
01697a78  mov w1,w20
01697a7c  bl 0x0124e060
01697a80  orr w1,wzr,#0xfffffffd
01697a84  mov x0,x19
01697a88  bl 0x0124c4d0
01697a8c  ldr w8,[sp, #0x18]
01697a90  ldr x0,[sp, #0x10]
01697a94  sub w8,w8,#0x3
01697a98  str w8,[sp, #0x18]
01697a9c  orr w1,wzr,#0xfffffffc
01697aa0  bl 0x0124c4d0
01697aa4  ldr w8,[sp, #0x18]
01697aa8  ldr x0,[sp, #0x10]
01697aac  str wzr,[sp, #0x18]
01697ab0  cmp w8,#0x1
01697ab4  b.lt 0x01697ad8
01697ab8  mvn w1,w8
01697abc  bl 0x0124c4d0
01697ac0  ldr w8,[sp, #0x18]
01697ac4  cmp w8,#0x1
01697ac8  b.lt 0x01697ad8
01697acc  ldr x0,[sp, #0x10]
01697ad0  mvn w1,w8
01697ad4  bl 0x0124c4d0
01697ad8  ldr w8,[sp, #0x8]
01697adc  cmp w8,#0x1
01697ae0  b.lt 0x01697af0
01697ae4  ldr x0,[sp]
01697ae8  mvn w1,w8
01697aec  bl 0x0124c4d0
01697af0  ldp x29,x30,[sp, #0x30]
01697af4  ldp x20,x19,[sp, #0x20]
01697af8  add sp,sp,#0x40
01697afc  ret
