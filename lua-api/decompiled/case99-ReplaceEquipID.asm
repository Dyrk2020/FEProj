// ===== case99-ReplaceEquipID @ 0169c8f4 =====
// existing function case99-ReplaceEquipID
0169c8f4  sub sp,sp,#0x40
0169c8f8  str x19,[sp, #0x20]
0169c8fc  stp x29,x30,[sp, #0x30]
0169c900  add x29,sp,#0x30
0169c904  adrp x1,0x174a000
0169c908  add x1,x1,#0x87c
0169c90c  mov x19,x0
0169c910  bl 0x0124ba40
0169c914  adrp x1,0x575d000
0169c918  add x1,x1,#0xa06
0169c91c  mov x0,x19
0169c920  str x19,[sp]
0169c924  bl 0x01251aa0
0169c928  mov w8,#0x1
0169c92c  str w8,[sp, #0x8]
0169c930  mov x0,sp
0169c934  bl 0x0174aa04
0169c938  adrp x1,0x575f000
0169c93c  adrp x3,0x736d000
0169c940  add x1,x1,#0x20a
0169c944  add x3,x3,#0x101
0169c948  add x0,sp,#0x10
0169c94c  mov x2,sp
0169c950  bl 0x017872e4
0169c954  adrp x1,0x575f000
0169c958  adrp x2,0x1787000
0169c95c  adrp x4,0x1787000
0169c960  add x1,x1,#0x219
0169c964  add x2,x2,#0xac
0169c968  add x4,x4,#0xb4
0169c96c  add x0,sp,#0x10
0169c970  mov x3,xzr
0169c974  mov x5,xzr
0169c978  bl 0x01786ec4
0169c97c  adrp x1,0x575f000
0169c980  adrp x2,0x1787000
0169c984  adrp x4,0x1787000
0169c988  add x1,x1,#0x225
0169c98c  add x2,x2,#0xbc
0169c990  add x4,x4,#0xc4
0169c994  mov x3,xzr
0169c998  mov x5,xzr
0169c99c  bl 0x01786ec4
0169c9a0  adrp x1,0x575f000
0169c9a4  adrp x2,0x1787000
0169c9a8  add x1,x1,#0x230
0169c9ac  add x2,x2,#0x2b4
0169c9b0  mov x3,xzr
0169c9b4  mov x4,xzr
0169c9b8  mov x5,xzr
0169c9bc  bl 0x017870cc
0169c9c0  adrp x1,0x575f000
0169c9c4  adrp x2,0x1787000
0169c9c8  add x1,x1,#0x240
0169c9cc  add x2,x2,#0x2bc
0169c9d0  mov x3,xzr
0169c9d4  mov x4,xzr
0169c9d8  mov x5,xzr
0169c9dc  bl 0x017870cc
0169c9e0  adrp x1,0x575f000
0169c9e4  adrp x2,0x1787000
0169c9e8  add x1,x1,#0x24d
0169c9ec  add x2,x2,#0x2c4
0169c9f0  mov x3,xzr
0169c9f4  mov x4,xzr
0169c9f8  mov x5,xzr
0169c9fc  bl 0x017870cc
0169ca00  adrp x1,0x575f000
0169ca04  adrp x2,0x1787000
0169ca08  add x1,x1,#0x25b
0169ca0c  add x2,x2,#0x2cc
0169ca10  mov x3,xzr
0169ca14  mov x4,xzr
0169ca18  mov x5,xzr
0169ca1c  bl 0x017870cc
0169ca20  adrp x1,0x575f000
0169ca24  adrp x2,0x1787000
0169ca28  add x1,x1,#0x26c
0169ca2c  add x2,x2,#0x2d4
0169ca30  mov x3,xzr
0169ca34  mov x4,xzr
0169ca38  mov x5,xzr
0169ca3c  bl 0x017870cc
0169ca40  adrp x1,0x575f000
0169ca44  adrp x2,0x1787000
0169ca48  add x1,x1,#0x27b
0169ca4c  add x2,x2,#0x2dc
0169ca50  mov x3,xzr
0169ca54  mov x4,xzr
0169ca58  mov x5,xzr
0169ca5c  bl 0x017870cc
0169ca60  mov x19,x0
0169ca64  ldr w8,[x19, #0x8]
0169ca68  ldr x0,[x19]
0169ca6c  sub w8,w8,#0x3
0169ca70  str w8,[x19, #0x8]
0169ca74  orr w1,wzr,#0xfffffffc
0169ca78  bl 0x0124c4d0
0169ca7c  ldr w8,[x19, #0x8]
0169ca80  ldr x0,[x19]
0169ca84  str wzr,[x19, #0x8]
0169ca88  cmp w8,#0x1
0169ca8c  b.lt 0x0169ca98
0169ca90  mvn w1,w8
0169ca94  bl 0x0124c4d0
0169ca98  ldr w8,[sp, #0x18]
0169ca9c  cmp w8,#0x1
0169caa0  b.lt 0x0169cab0
0169caa4  ldr x0,[sp, #0x10]
0169caa8  mvn w1,w8
0169caac  bl 0x0124c4d0
0169cab0  ldr w8,[sp, #0x8]
0169cab4  cmp w8,#0x1
0169cab8  b.lt 0x0169cac8
0169cabc  ldr x0,[sp]
0169cac0  mvn w1,w8
0169cac4  bl 0x0124c4d0
0169cac8  ldp x29,x30,[sp, #0x30]
0169cacc  ldr x19,[sp, #0x20]
0169cad0  add sp,sp,#0x40
0169cad4  ret
