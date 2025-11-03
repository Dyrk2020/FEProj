// ===== case156-EquipProgrammeResObject @ 016a7104 =====
// existing function case156-EquipProgrammeResObject
016a7104  sub sp,sp,#0x40
016a7108  str x19,[sp, #0x20]
016a710c  stp x29,x30,[sp, #0x30]
016a7110  add x29,sp,#0x30
016a7114  adrp x1,0x174a000
016a7118  add x1,x1,#0x87c
016a711c  mov x19,x0
016a7120  bl 0x0124ba40
016a7124  adrp x1,0x575d000
016a7128  add x1,x1,#0xa06
016a712c  mov x0,x19
016a7130  str x19,[sp]
016a7134  bl 0x01251aa0
016a7138  mov w8,#0x1
016a713c  str w8,[sp, #0x8]
016a7140  mov x0,sp
016a7144  bl 0x0174aa04
016a7148  adrp x1,0x5760000
016a714c  adrp x3,0x736d000
016a7150  add x1,x1,#0x18f
016a7154  add x3,x3,#0x101
016a7158  add x0,sp,#0x10
016a715c  mov x2,sp
016a7160  bl 0x017a2e00
016a7164  adrp x1,0x5760000
016a7168  adrp x2,0x17a2000
016a716c  adrp x4,0x17a2000
016a7170  add x1,x1,#0x1a7
016a7174  add x2,x2,#0xde0
016a7178  add x4,x4,#0xde8
016a717c  add x0,sp,#0x10
016a7180  mov x3,xzr
016a7184  mov x5,xzr
016a7188  bl 0x017a2bf8
016a718c  adrp x1,0x575e000
016a7190  adrp x2,0x17a2000
016a7194  adrp x4,0x17a2000
016a7198  add x1,x1,#0x517
016a719c  add x2,x2,#0xdf0
016a71a0  add x4,x4,#0xdf8
016a71a4  mov x3,xzr
016a71a8  mov x5,xzr
016a71ac  bl 0x017a2bf8
016a71b0  mov x19,x0
016a71b4  ldr w8,[x19, #0x8]
016a71b8  ldr x0,[x19]
016a71bc  sub w8,w8,#0x3
016a71c0  str w8,[x19, #0x8]
016a71c4  orr w1,wzr,#0xfffffffc
016a71c8  bl 0x0124c4d0
016a71cc  ldr w8,[x19, #0x8]
016a71d0  ldr x0,[x19]
016a71d4  str wzr,[x19, #0x8]
016a71d8  cmp w8,#0x1
016a71dc  b.lt 0x016a71e8
016a71e0  mvn w1,w8
016a71e4  bl 0x0124c4d0
016a71e8  ldr w8,[sp, #0x18]
016a71ec  cmp w8,#0x1
016a71f0  b.lt 0x016a7200
016a71f4  ldr x0,[sp, #0x10]
016a71f8  mvn w1,w8
016a71fc  bl 0x0124c4d0
016a7200  ldr w8,[sp, #0x8]
016a7204  cmp w8,#0x1
016a7208  b.lt 0x016a7218
016a720c  ldr x0,[sp]
016a7210  mvn w1,w8
016a7214  bl 0x0124c4d0
016a7218  ldp x29,x30,[sp, #0x30]
016a721c  ldr x19,[sp, #0x20]
016a7220  add sp,sp,#0x40
016a7224  ret
