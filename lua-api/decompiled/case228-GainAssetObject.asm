// ===== case228-GainAssetObject @ 016b385c =====
// existing function case228-GainAssetObject
016b385c  sub sp,sp,#0x40
016b3860  str x19,[sp, #0x20]
016b3864  stp x29,x30,[sp, #0x30]
016b3868  add x29,sp,#0x30
016b386c  adrp x1,0x174a000
016b3870  add x1,x1,#0x87c
016b3874  mov x19,x0
016b3878  bl 0x0124ba40
016b387c  adrp x1,0x575d000
016b3880  add x1,x1,#0xa06
016b3884  mov x0,x19
016b3888  str x19,[sp]
016b388c  bl 0x01251aa0
016b3890  mov w8,#0x1
016b3894  str w8,[sp, #0x8]
016b3898  mov x0,sp
016b389c  bl 0x0174aa04
016b38a0  adrp x1,0x5761000
016b38a4  adrp x3,0x736d000
016b38a8  add x1,x1,#0x11b
016b38ac  add x3,x3,#0x101
016b38b0  add x0,sp,#0x10
016b38b4  mov x2,sp
016b38b8  bl 0x017c96ac
016b38bc  adrp x1,0x575d000
016b38c0  adrp x2,0x17c9000
016b38c4  adrp x4,0x17c9000
016b38c8  add x1,x1,#0xa00
016b38cc  add x2,x2,#0x69c
016b38d0  add x4,x4,#0x6a4
016b38d4  add x0,sp,#0x10
016b38d8  mov x3,xzr
016b38dc  mov x5,xzr
016b38e0  bl 0x017c94b4
016b38e4  mov x19,x0
016b38e8  ldr w8,[x19, #0x8]
016b38ec  ldr x0,[x19]
016b38f0  sub w8,w8,#0x3
016b38f4  str w8,[x19, #0x8]
016b38f8  orr w1,wzr,#0xfffffffc
016b38fc  bl 0x0124c4d0
016b3900  ldr w8,[x19, #0x8]
016b3904  ldr x0,[x19]
016b3908  str wzr,[x19, #0x8]
016b390c  cmp w8,#0x1
016b3910  b.lt 0x016b391c
016b3914  mvn w1,w8
016b3918  bl 0x0124c4d0
016b391c  ldr w8,[sp, #0x18]
016b3920  cmp w8,#0x1
016b3924  b.lt 0x016b3934
016b3928  ldr x0,[sp, #0x10]
016b392c  mvn w1,w8
016b3930  bl 0x0124c4d0
016b3934  ldr w8,[sp, #0x8]
016b3938  cmp w8,#0x1
016b393c  b.lt 0x016b394c
016b3940  ldr x0,[sp]
016b3944  mvn w1,w8
016b3948  bl 0x0124c4d0
016b394c  ldp x29,x30,[sp, #0x30]
016b3950  ldr x19,[sp, #0x20]
016b3954  add sp,sp,#0x40
016b3958  ret
