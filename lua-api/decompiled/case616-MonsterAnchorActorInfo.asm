// ===== case616-MonsterAnchorActorInfo @ 0170b20c =====
// existing function case616-MonsterAnchorActorInfo
0170b20c  sub sp,sp,#0x40
0170b210  str x19,[sp, #0x20]
0170b214  stp x29,x30,[sp, #0x30]
0170b218  add x29,sp,#0x30
0170b21c  adrp x1,0x174a000
0170b220  add x1,x1,#0x87c
0170b224  mov x19,x0
0170b228  bl 0x0124ba40
0170b22c  adrp x1,0x575d000
0170b230  add x1,x1,#0xa06
0170b234  mov x0,x19
0170b238  str x19,[sp]
0170b23c  bl 0x01251aa0
0170b240  mov w8,#0x1
0170b244  str w8,[sp, #0x8]
0170b248  mov x0,sp
0170b24c  bl 0x0174aa04
0170b250  adrp x1,0x576a000
0170b254  adrp x3,0x736d000
0170b258  add x1,x1,#0x5ed
0170b25c  add x3,x3,#0x101
0170b260  add x0,sp,#0x10
0170b264  mov x2,sp
0170b268  bl 0x018fd64c
0170b26c  adrp x1,0x576a000
0170b270  adrp x2,0x18fd000
0170b274  adrp x4,0x18fd000
0170b278  add x1,x1,#0x604
0170b27c  add x2,x2,#0x410
0170b280  add x4,x4,#0x418
0170b284  add x0,sp,#0x10
0170b288  mov x3,xzr
0170b28c  mov x5,xzr
0170b290  bl 0x018fd228
0170b294  adrp x1,0x576a000
0170b298  adrp x2,0x18fd000
0170b29c  adrp x4,0x18fd000
0170b2a0  add x1,x1,#0x60f
0170b2a4  add x2,x2,#0x420
0170b2a8  add x4,x4,#0x428
0170b2ac  mov x3,xzr
0170b2b0  mov x5,xzr
0170b2b4  bl 0x018fd228
0170b2b8  adrp x1,0x576a000
0170b2bc  adrp x2,0x18fd000
0170b2c0  adrp x4,0x18fd000
0170b2c4  add x1,x1,#0x61c
0170b2c8  add x2,x2,#0x430
0170b2cc  add x4,x4,#0x438
0170b2d0  mov x3,xzr
0170b2d4  mov x5,xzr
0170b2d8  bl 0x018fd228
0170b2dc  adrp x1,0x576a000
0170b2e0  adrp x2,0x18fd000
0170b2e4  adrp x4,0x18fd000
0170b2e8  add x1,x1,#0x626
0170b2ec  add x2,x2,#0x628
0170b2f0  add x4,x4,#0x630
0170b2f4  mov x3,xzr
0170b2f8  mov x5,xzr
0170b2fc  bl 0x018fd440
0170b300  mov x19,x0
0170b304  ldr w8,[x19, #0x8]
0170b308  ldr x0,[x19]
0170b30c  sub w8,w8,#0x3
0170b310  str w8,[x19, #0x8]
0170b314  orr w1,wzr,#0xfffffffc
0170b318  bl 0x0124c4d0
0170b31c  ldr w8,[x19, #0x8]
0170b320  ldr x0,[x19]
0170b324  str wzr,[x19, #0x8]
0170b328  cmp w8,#0x1
0170b32c  b.lt 0x0170b338
0170b330  mvn w1,w8
0170b334  bl 0x0124c4d0
0170b338  ldr w8,[sp, #0x18]
0170b33c  cmp w8,#0x1
0170b340  b.lt 0x0170b350
0170b344  ldr x0,[sp, #0x10]
0170b348  mvn w1,w8
0170b34c  bl 0x0124c4d0
0170b350  ldr w8,[sp, #0x8]
0170b354  cmp w8,#0x1
0170b358  b.lt 0x0170b368
0170b35c  ldr x0,[sp]
0170b360  mvn w1,w8
0170b364  bl 0x0124c4d0
0170b368  ldp x29,x30,[sp, #0x30]
0170b36c  ldr x19,[sp, #0x20]
0170b370  add sp,sp,#0x40
0170b374  ret
