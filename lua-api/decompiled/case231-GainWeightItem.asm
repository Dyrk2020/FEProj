// ===== case231-GainWeightItem @ 016b4064 =====
// existing function case231-GainWeightItem
016b4064  sub sp,sp,#0x40
016b4068  str x19,[sp, #0x20]
016b406c  stp x29,x30,[sp, #0x30]
016b4070  add x29,sp,#0x30
016b4074  adrp x1,0x174a000
016b4078  add x1,x1,#0x87c
016b407c  mov x19,x0
016b4080  bl 0x0124ba40
016b4084  adrp x1,0x575d000
016b4088  add x1,x1,#0xa06
016b408c  mov x0,x19
016b4090  str x19,[sp]
016b4094  bl 0x01251aa0
016b4098  mov w8,#0x1
016b409c  str w8,[sp, #0x8]
016b40a0  mov x0,sp
016b40a4  bl 0x0174aa04
016b40a8  adrp x1,0x5761000
016b40ac  adrp x3,0x736d000
016b40b0  add x1,x1,#0x167
016b40b4  add x3,x3,#0x101
016b40b8  add x0,sp,#0x10
016b40bc  mov x2,sp
016b40c0  bl 0x017cacb8
016b40c4  adrp x1,0x595c000
016b40c8  adrp x2,0x17ca000
016b40cc  adrp x4,0x17ca000
016b40d0  add x1,x1,#0x9c4
016b40d4  add x2,x2,#0xab0
016b40d8  add x4,x4,#0xab8
016b40dc  add x0,sp,#0x10
016b40e0  mov x3,xzr
016b40e4  mov x5,xzr
016b40e8  bl 0x017ca8c8
016b40ec  adrp x1,0x5761000
016b40f0  adrp x2,0x17ca000
016b40f4  adrp x4,0x17ca000
016b40f8  add x1,x1,#0x176
016b40fc  add x2,x2,#0xca8
016b4100  add x4,x4,#0xcb0
016b4104  mov x3,xzr
016b4108  mov x5,xzr
016b410c  bl 0x017caac0
016b4110  mov x19,x0
016b4114  ldr w8,[x19, #0x8]
016b4118  ldr x0,[x19]
016b411c  sub w8,w8,#0x3
016b4120  str w8,[x19, #0x8]
016b4124  orr w1,wzr,#0xfffffffc
016b4128  bl 0x0124c4d0
016b412c  ldr w8,[x19, #0x8]
016b4130  ldr x0,[x19]
016b4134  str wzr,[x19, #0x8]
016b4138  cmp w8,#0x1
016b413c  b.lt 0x016b4148
016b4140  mvn w1,w8
016b4144  bl 0x0124c4d0
016b4148  ldr w8,[sp, #0x18]
016b414c  cmp w8,#0x1
016b4150  b.lt 0x016b4160
016b4154  ldr x0,[sp, #0x10]
016b4158  mvn w1,w8
016b415c  bl 0x0124c4d0
016b4160  ldr w8,[sp, #0x8]
016b4164  cmp w8,#0x1
016b4168  b.lt 0x016b4178
016b416c  ldr x0,[sp]
016b4170  mvn w1,w8
016b4174  bl 0x0124c4d0
016b4178  ldp x29,x30,[sp, #0x30]
016b417c  ldr x19,[sp, #0x20]
016b4180  add sp,sp,#0x40
016b4184  ret
