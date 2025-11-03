// ===== case13-GameUnit @ 0168e984 =====
// existing function case13-GameUnit
0168e984  sub sp,sp,#0x40
0168e988  str x19,[sp, #0x20]
0168e98c  stp x29,x30,[sp, #0x30]
0168e990  add x29,sp,#0x30
0168e994  adrp x1,0x174a000
0168e998  add x1,x1,#0x87c
0168e99c  mov x19,x0
0168e9a0  bl 0x0124ba40
0168e9a4  adrp x1,0x575d000
0168e9a8  add x1,x1,#0xa06
0168e9ac  mov x0,x19
0168e9b0  str x19,[sp]
0168e9b4  bl 0x01251aa0
0168e9b8  mov w8,#0x1
0168e9bc  str w8,[sp, #0x8]
0168e9c0  mov x0,sp
0168e9c4  bl 0x0174aa04
0168e9c8  adrp x1,0x575d000
0168e9cc  adrp x3,0x736d000
0168e9d0  add x1,x1,#0xd4b
0168e9d4  add x3,x3,#0x101
0168e9d8  add x0,sp,#0x10
0168e9dc  mov x2,sp
0168e9e0  bl 0x01755f78
0168e9e4  adrp x1,0x57f9000
0168e9e8  adrp x2,0x1755000
0168e9ec  adrp x4,0x1755000
0168e9f0  add x1,x1,#0xcf2
0168e9f4  add x2,x2,#0xf68
0168e9f8  add x4,x4,#0xf70
0168e9fc  add x0,sp,#0x10
0168ea00  mov x3,xzr
0168ea04  mov x5,xzr
0168ea08  bl 0x01755d80
0168ea0c  mov x19,x0
0168ea10  ldr w8,[x19, #0x8]
0168ea14  ldr x0,[x19]
0168ea18  sub w8,w8,#0x3
0168ea1c  str w8,[x19, #0x8]
0168ea20  orr w1,wzr,#0xfffffffc
0168ea24  bl 0x0124c4d0
0168ea28  ldr w8,[x19, #0x8]
0168ea2c  ldr x0,[x19]
0168ea30  str wzr,[x19, #0x8]
0168ea34  cmp w8,#0x1
0168ea38  b.lt 0x0168ea44
0168ea3c  mvn w1,w8
0168ea40  bl 0x0124c4d0
0168ea44  ldr w8,[sp, #0x18]
0168ea48  cmp w8,#0x1
0168ea4c  b.lt 0x0168ea5c
0168ea50  ldr x0,[sp, #0x10]
0168ea54  mvn w1,w8
0168ea58  bl 0x0124c4d0
0168ea5c  ldr w8,[sp, #0x8]
0168ea60  cmp w8,#0x1
0168ea64  b.lt 0x0168ea74
0168ea68  ldr x0,[sp]
0168ea6c  mvn w1,w8
0168ea70  bl 0x0124c4d0
0168ea74  ldp x29,x30,[sp, #0x30]
0168ea78  ldr x19,[sp, #0x20]
0168ea7c  add sp,sp,#0x40
0168ea80  ret
