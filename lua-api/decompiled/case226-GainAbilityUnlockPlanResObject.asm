// ===== case226-GainAbilityUnlockPlanResObject @ 016b33ac =====
// existing function case226-GainAbilityUnlockPlanResObject
016b33ac  sub sp,sp,#0x40
016b33b0  str x19,[sp, #0x20]
016b33b4  stp x29,x30,[sp, #0x30]
016b33b8  add x29,sp,#0x30
016b33bc  adrp x1,0x174a000
016b33c0  add x1,x1,#0x87c
016b33c4  mov x19,x0
016b33c8  bl 0x0124ba40
016b33cc  adrp x1,0x575d000
016b33d0  add x1,x1,#0xa06
016b33d4  mov x0,x19
016b33d8  str x19,[sp]
016b33dc  bl 0x01251aa0
016b33e0  mov w8,#0x1
016b33e4  str w8,[sp, #0x8]
016b33e8  mov x0,sp
016b33ec  bl 0x0174aa04
016b33f0  adrp x1,0x5761000
016b33f4  adrp x3,0x736d000
016b33f8  add x1,x1,#0xe2
016b33fc  add x3,x3,#0x101
016b3400  add x0,sp,#0x10
016b3404  mov x2,sp
016b3408  bl 0x017c88b4
016b340c  adrp x1,0x599e000
016b3410  adrp x2,0x17c8000
016b3414  adrp x4,0x17c8000
016b3418  add x1,x1,#0x560
016b341c  add x2,x2,#0x8a4
016b3420  add x4,x4,#0x8ac
016b3424  add x0,sp,#0x10
016b3428  mov x3,xzr
016b342c  mov x5,xzr
016b3430  bl 0x017c86bc
016b3434  mov x19,x0
016b3438  ldr w8,[x19, #0x8]
016b343c  ldr x0,[x19]
016b3440  sub w8,w8,#0x3
016b3444  str w8,[x19, #0x8]
016b3448  orr w1,wzr,#0xfffffffc
016b344c  bl 0x0124c4d0
016b3450  ldr w8,[x19, #0x8]
016b3454  ldr x0,[x19]
016b3458  str wzr,[x19, #0x8]
016b345c  cmp w8,#0x1
016b3460  b.lt 0x016b346c
016b3464  mvn w1,w8
016b3468  bl 0x0124c4d0
016b346c  ldr w8,[sp, #0x18]
016b3470  cmp w8,#0x1
016b3474  b.lt 0x016b3484
016b3478  ldr x0,[sp, #0x10]
016b347c  mvn w1,w8
016b3480  bl 0x0124c4d0
016b3484  ldr w8,[sp, #0x8]
016b3488  cmp w8,#0x1
016b348c  b.lt 0x016b349c
016b3490  ldr x0,[sp]
016b3494  mvn w1,w8
016b3498  bl 0x0124c4d0
016b349c  ldp x29,x30,[sp, #0x30]
016b34a0  ldr x19,[sp, #0x20]
016b34a4  add sp,sp,#0x40
016b34a8  ret
