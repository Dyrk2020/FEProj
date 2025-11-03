// ===== case159-EquipShopSchemeConfig @ 016a78c4 =====
// existing function case159-EquipShopSchemeConfig
016a78c4  sub sp,sp,#0x40
016a78c8  str x19,[sp, #0x20]
016a78cc  stp x29,x30,[sp, #0x30]
016a78d0  add x29,sp,#0x30
016a78d4  adrp x1,0x174a000
016a78d8  add x1,x1,#0x87c
016a78dc  mov x19,x0
016a78e0  bl 0x0124ba40
016a78e4  adrp x1,0x575d000
016a78e8  add x1,x1,#0xa06
016a78ec  mov x0,x19
016a78f0  str x19,[sp]
016a78f4  bl 0x01251aa0
016a78f8  mov w8,#0x1
016a78fc  str w8,[sp, #0x8]
016a7900  mov x0,sp
016a7904  bl 0x0174aa04
016a7908  adrp x1,0x5760000
016a790c  adrp x3,0x736d000
016a7910  add x1,x1,#0x21d
016a7914  add x3,x3,#0x101
016a7918  add x0,sp,#0x10
016a791c  mov x2,sp
016a7920  bl 0x017a4f38
016a7924  adrp x1,0x5760000
016a7928  adrp x2,0x17a4000
016a792c  adrp x4,0x17a4000
016a7930  add x1,x1,#0x233
016a7934  add x2,x2,#0xd30
016a7938  add x4,x4,#0xd38
016a793c  add x0,sp,#0x10
016a7940  mov x3,xzr
016a7944  mov x5,xzr
016a7948  bl 0x017a4b48
016a794c  adrp x1,0x5760000
016a7950  adrp x2,0x17a4000
016a7954  adrp x4,0x17a4000
016a7958  add x1,x1,#0x240
016a795c  add x2,x2,#0xf28
016a7960  add x4,x4,#0xf30
016a7964  mov x3,xzr
016a7968  mov x5,xzr
016a796c  bl 0x017a4d40
016a7970  mov x19,x0
016a7974  ldr w8,[x19, #0x8]
016a7978  ldr x0,[x19]
016a797c  sub w8,w8,#0x3
016a7980  str w8,[x19, #0x8]
016a7984  orr w1,wzr,#0xfffffffc
016a7988  bl 0x0124c4d0
016a798c  ldr w8,[x19, #0x8]
016a7990  ldr x0,[x19]
016a7994  str wzr,[x19, #0x8]
016a7998  cmp w8,#0x1
016a799c  b.lt 0x016a79a8
016a79a0  mvn w1,w8
016a79a4  bl 0x0124c4d0
016a79a8  ldr w8,[sp, #0x18]
016a79ac  cmp w8,#0x1
016a79b0  b.lt 0x016a79c0
016a79b4  ldr x0,[sp, #0x10]
016a79b8  mvn w1,w8
016a79bc  bl 0x0124c4d0
016a79c0  ldr w8,[sp, #0x8]
016a79c4  cmp w8,#0x1
016a79c8  b.lt 0x016a79d8
016a79cc  ldr x0,[sp]
016a79d0  mvn w1,w8
016a79d4  bl 0x0124c4d0
016a79d8  ldp x29,x30,[sp, #0x30]
016a79dc  ldr x19,[sp, #0x20]
016a79e0  add sp,sp,#0x40
016a79e4  ret
