// ===== case543-DynamicPassiveSkill @ 016fb928 =====
// existing function case543-DynamicPassiveSkill
016fb928  sub sp,sp,#0x40
016fb92c  str x19,[sp, #0x20]
016fb930  stp x29,x30,[sp, #0x30]
016fb934  add x29,sp,#0x30
016fb938  adrp x1,0x174a000
016fb93c  add x1,x1,#0x87c
016fb940  mov x19,x0
016fb944  bl 0x0124ba40
016fb948  adrp x1,0x575d000
016fb94c  add x1,x1,#0xa06
016fb950  mov x0,x19
016fb954  str x19,[sp]
016fb958  bl 0x01251aa0
016fb95c  mov w8,#0x1
016fb960  str w8,[sp, #0x8]
016fb964  mov x0,sp
016fb968  bl 0x0174aa04
016fb96c  adrp x1,0x5769000
016fb970  adrp x3,0x736d000
016fb974  add x1,x1,#0x149
016fb978  add x3,x3,#0x101
016fb97c  add x0,sp,#0x10
016fb980  mov x2,sp
016fb984  bl 0x018bc89c
016fb988  adrp x1,0x595c000
016fb98c  adrp x2,0x18bc000
016fb990  adrp x4,0x18bc000
016fb994  add x1,x1,#0x9c4
016fb998  add x2,x2,#0x674
016fb99c  add x4,x4,#0x67c
016fb9a0  add x0,sp,#0x10
016fb9a4  mov x3,xzr
016fb9a8  mov x5,xzr
016fb9ac  bl 0x018bc48c
016fb9b0  adrp x1,0x5760000
016fb9b4  adrp x2,0x18bc000
016fb9b8  adrp x4,0x18bc000
016fb9bc  add x1,x1,#0x2ac
016fb9c0  add x2,x2,#0x684
016fb9c4  add x4,x4,#0x68c
016fb9c8  mov x3,xzr
016fb9cc  mov x5,xzr
016fb9d0  bl 0x018bc48c
016fb9d4  adrp x1,0x5769000
016fb9d8  adrp x2,0x18bc000
016fb9dc  adrp x4,0x18bc000
016fb9e0  add x1,x1,#0x15d
016fb9e4  add x2,x2,#0x694
016fb9e8  add x4,x4,#0x69c
016fb9ec  mov x3,xzr
016fb9f0  mov x5,xzr
016fb9f4  bl 0x018bc48c
016fb9f8  adrp x1,0x5769000
016fb9fc  adrp x2,0x18bc000
016fba00  adrp x4,0x18bc000
016fba04  add x1,x1,#0x166
016fba08  add x2,x2,#0x88c
016fba0c  add x4,x4,#0x894
016fba10  mov x3,xzr
016fba14  mov x5,xzr
016fba18  bl 0x018bc6a4
016fba1c  mov x19,x0
016fba20  ldr w8,[x19, #0x8]
016fba24  ldr x0,[x19]
016fba28  sub w8,w8,#0x3
016fba2c  str w8,[x19, #0x8]
016fba30  orr w1,wzr,#0xfffffffc
016fba34  bl 0x0124c4d0
016fba38  ldr w8,[x19, #0x8]
016fba3c  ldr x0,[x19]
016fba40  str wzr,[x19, #0x8]
016fba44  cmp w8,#0x1
016fba48  b.lt 0x016fba54
016fba4c  mvn w1,w8
016fba50  bl 0x0124c4d0
016fba54  ldr w8,[sp, #0x18]
016fba58  cmp w8,#0x1
016fba5c  b.lt 0x016fba6c
016fba60  ldr x0,[sp, #0x10]
016fba64  mvn w1,w8
016fba68  bl 0x0124c4d0
016fba6c  ldr w8,[sp, #0x8]
016fba70  cmp w8,#0x1
016fba74  b.lt 0x016fba84
016fba78  ldr x0,[sp]
016fba7c  mvn w1,w8
016fba80  bl 0x0124c4d0
016fba84  ldp x29,x30,[sp, #0x30]
016fba88  ldr x19,[sp, #0x20]
016fba8c  add sp,sp,#0x40
016fba90  ret
