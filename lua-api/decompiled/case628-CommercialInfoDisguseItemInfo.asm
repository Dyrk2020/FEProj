// ===== case628-CommercialInfoDisguseItemInfo @ 0170e3d8 =====
// existing function case628-CommercialInfoDisguseItemInfo
0170e3d8  sub sp,sp,#0x40
0170e3dc  str x19,[sp, #0x20]
0170e3e0  stp x29,x30,[sp, #0x30]
0170e3e4  add x29,sp,#0x30
0170e3e8  adrp x1,0x174a000
0170e3ec  add x1,x1,#0x87c
0170e3f0  mov x19,x0
0170e3f4  bl 0x0124ba40
0170e3f8  adrp x1,0x575d000
0170e3fc  add x1,x1,#0xa06
0170e400  mov x0,x19
0170e404  str x19,[sp]
0170e408  bl 0x01251aa0
0170e40c  mov w8,#0x1
0170e410  str w8,[sp, #0x8]
0170e414  mov x0,sp
0170e418  bl 0x0174aa04
0170e41c  adrp x1,0x576a000
0170e420  adrp x3,0x736d000
0170e424  add x1,x1,#0x9fb
0170e428  add x3,x3,#0x101
0170e42c  add x0,sp,#0x10
0170e430  mov x2,sp
0170e434  bl 0x01909f6c
0170e438  adrp x1,0x5760000
0170e43c  adrp x2,0x1909000
0170e440  adrp x4,0x1909000
0170e444  add x1,x1,#0xad4
0170e448  add x2,x2,#0xf4c
0170e44c  add x4,x4,#0xf54
0170e450  add x0,sp,#0x10
0170e454  mov x3,xzr
0170e458  mov x5,xzr
0170e45c  bl 0x01909d64
0170e460  adrp x1,0x576a000
0170e464  adrp x2,0x1909000
0170e468  adrp x4,0x1909000
0170e46c  add x1,x1,#0xa19
0170e470  add x2,x2,#0xf5c
0170e474  add x4,x4,#0xf64
0170e478  mov x3,xzr
0170e47c  mov x5,xzr
0170e480  bl 0x01909d64
0170e484  mov x19,x0
0170e488  ldr w8,[x19, #0x8]
0170e48c  ldr x0,[x19]
0170e490  sub w8,w8,#0x3
0170e494  str w8,[x19, #0x8]
0170e498  orr w1,wzr,#0xfffffffc
0170e49c  bl 0x0124c4d0
0170e4a0  ldr w8,[x19, #0x8]
0170e4a4  ldr x0,[x19]
0170e4a8  str wzr,[x19, #0x8]
0170e4ac  cmp w8,#0x1
0170e4b0  b.lt 0x0170e4bc
0170e4b4  mvn w1,w8
0170e4b8  bl 0x0124c4d0
0170e4bc  ldr w8,[sp, #0x18]
0170e4c0  cmp w8,#0x1
0170e4c4  b.lt 0x0170e4d4
0170e4c8  ldr x0,[sp, #0x10]
0170e4cc  mvn w1,w8
0170e4d0  bl 0x0124c4d0
0170e4d4  ldr w8,[sp, #0x8]
0170e4d8  cmp w8,#0x1
0170e4dc  b.lt 0x0170e4ec
0170e4e0  ldr x0,[sp]
0170e4e4  mvn w1,w8
0170e4e8  bl 0x0124c4d0
0170e4ec  ldp x29,x30,[sp, #0x30]
0170e4f0  ldr x19,[sp, #0x20]
0170e4f4  add sp,sp,#0x40
0170e4f8  ret
