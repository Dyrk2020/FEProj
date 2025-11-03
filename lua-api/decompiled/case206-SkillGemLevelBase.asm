// ===== case206-SkillGemLevelBase @ 016b00c0 =====
// existing function case206-SkillGemLevelBase
016b00c0  sub sp,sp,#0x40
016b00c4  str x19,[sp, #0x20]
016b00c8  stp x29,x30,[sp, #0x30]
016b00cc  add x29,sp,#0x30
016b00d0  adrp x1,0x174a000
016b00d4  add x1,x1,#0x87c
016b00d8  mov x19,x0
016b00dc  bl 0x0124ba40
016b00e0  adrp x1,0x575d000
016b00e4  add x1,x1,#0xa06
016b00e8  mov x0,x19
016b00ec  str x19,[sp]
016b00f0  bl 0x01251aa0
016b00f4  mov w8,#0x1
016b00f8  str w8,[sp, #0x8]
016b00fc  mov x0,sp
016b0100  bl 0x0174aa04
016b0104  adrp x1,0x5760000
016b0108  adrp x3,0x736d000
016b010c  add x1,x1,#0xe55
016b0110  add x3,x3,#0x101
016b0114  add x0,sp,#0x10
016b0118  mov x2,sp
016b011c  bl 0x017bde64
016b0120  adrp x1,0x575b000
016b0124  adrp x2,0x17bd000
016b0128  adrp x4,0x17bd000
016b012c  add x1,x1,#0x2f8
016b0130  add x2,x2,#0xe54
016b0134  add x4,x4,#0xe5c
016b0138  add x0,sp,#0x10
016b013c  mov x3,xzr
016b0140  mov x5,xzr
016b0144  bl 0x017bdc6c
016b0148  mov x19,x0
016b014c  ldr w8,[x19, #0x8]
016b0150  ldr x0,[x19]
016b0154  sub w8,w8,#0x3
016b0158  str w8,[x19, #0x8]
016b015c  orr w1,wzr,#0xfffffffc
016b0160  bl 0x0124c4d0
016b0164  ldr w8,[x19, #0x8]
016b0168  ldr x0,[x19]
016b016c  str wzr,[x19, #0x8]
016b0170  cmp w8,#0x1
016b0174  b.lt 0x016b0180
016b0178  mvn w1,w8
016b017c  bl 0x0124c4d0
016b0180  ldr w8,[sp, #0x18]
016b0184  cmp w8,#0x1
016b0188  b.lt 0x016b0198
016b018c  ldr x0,[sp, #0x10]
016b0190  mvn w1,w8
016b0194  bl 0x0124c4d0
016b0198  ldr w8,[sp, #0x8]
016b019c  cmp w8,#0x1
016b01a0  b.lt 0x016b01b0
016b01a4  ldr x0,[sp]
016b01a8  mvn w1,w8
016b01ac  bl 0x0124c4d0
016b01b0  ldp x29,x30,[sp, #0x30]
016b01b4  ldr x19,[sp, #0x20]
016b01b8  add sp,sp,#0x40
016b01bc  ret
