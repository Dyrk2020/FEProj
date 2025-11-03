// ===== case756-AttackerRecord @ 0172b8d8 =====
// existing function case756-AttackerRecord
0172b8d8  sub sp,sp,#0x40
0172b8dc  str x19,[sp, #0x20]
0172b8e0  stp x29,x30,[sp, #0x30]
0172b8e4  add x29,sp,#0x30
0172b8e8  adrp x1,0x174a000
0172b8ec  add x1,x1,#0x87c
0172b8f0  mov x19,x0
0172b8f4  bl 0x0124ba40
0172b8f8  adrp x1,0x575d000
0172b8fc  add x1,x1,#0xa06
0172b900  mov x0,x19
0172b904  str x19,[sp]
0172b908  bl 0x01251aa0
0172b90c  mov w8,#0x1
0172b910  str w8,[sp, #0x8]
0172b914  mov x0,sp
0172b918  bl 0x0174aa04
0172b91c  adrp x1,0x5770000
0172b920  adrp x3,0x736d000
0172b924  add x1,x1,#0xd32
0172b928  add x3,x3,#0x101
0172b92c  add x0,sp,#0x10
0172b930  mov x2,sp
0172b934  bl 0x0198d870
0172b938  adrp x1,0x575d000
0172b93c  adrp x2,0x198d000
0172b940  adrp x4,0x198d000
0172b944  add x1,x1,#0xe39
0172b948  add x2,x2,#0x3c4
0172b94c  add x4,x4,#0x3cc
0172b950  add x0,sp,#0x10
0172b954  mov x3,xzr
0172b958  mov x5,xzr
0172b95c  bl 0x0198d1dc
0172b960  adrp x1,0x5770000
0172b964  adrp x2,0x198d000
0172b968  adrp x4,0x198d000
0172b96c  add x1,x1,#0xd41
0172b970  add x2,x2,#0x5d0
0172b974  add x4,x4,#0x5d8
0172b978  mov x3,xzr
0172b97c  mov x5,xzr
0172b980  bl 0x0198d3e8
0172b984  adrp x1,0x5761000
0172b988  adrp x2,0x198d000
0172b98c  adrp x4,0x198d000
0172b990  add x1,x1,#0x66f
0172b994  add x2,x2,#0x638
0172b998  add x4,x4,#0x640
0172b99c  mov x3,xzr
0172b9a0  mov x5,xzr
0172b9a4  bl 0x0198d3e8
0172b9a8  adrp x1,0x5763000
0172b9ac  adrp x2,0x198d000
0172b9b0  adrp x4,0x198d000
0172b9b4  add x1,x1,#0xfd0
0172b9b8  add x2,x2,#0x648
0172b9bc  add x4,x4,#0x650
0172b9c0  mov x3,xzr
0172b9c4  mov x5,xzr
0172b9c8  bl 0x0198d3e8
0172b9cc  adrp x1,0x5768000
0172b9d0  adrp x2,0x198d000
0172b9d4  adrp x4,0x198d000
0172b9d8  add x1,x1,#0x6ca
0172b9dc  add x2,x2,#0x840
0172b9e0  add x4,x4,#0x848
0172b9e4  mov x3,xzr
0172b9e8  mov x5,xzr
0172b9ec  bl 0x0198d658
0172b9f0  adrp x1,0x576c000
0172b9f4  adrp x2,0x198d000
0172b9f8  adrp x4,0x198d000
0172b9fc  add x1,x1,#0x957
0172ba00  add x2,x2,#0x850
0172ba04  add x4,x4,#0x858
0172ba08  mov x3,xzr
0172ba0c  mov x5,xzr
0172ba10  bl 0x0198d658
0172ba14  adrp x1,0x5770000
0172ba18  adrp x2,0x198d000
0172ba1c  adrp x4,0x198d000
0172ba20  add x1,x1,#0xd4c
0172ba24  add x2,x2,#0x860
0172ba28  add x4,x4,#0x868
0172ba2c  mov x3,xzr
0172ba30  mov x5,xzr
0172ba34  bl 0x0198d658
0172ba38  mov x19,x0
0172ba3c  ldr w8,[x19, #0x8]
0172ba40  ldr x0,[x19]
0172ba44  sub w8,w8,#0x3
0172ba48  str w8,[x19, #0x8]
0172ba4c  orr w1,wzr,#0xfffffffc
0172ba50  bl 0x0124c4d0
0172ba54  ldr w8,[x19, #0x8]
0172ba58  ldr x0,[x19]
0172ba5c  str wzr,[x19, #0x8]
0172ba60  cmp w8,#0x1
0172ba64  b.lt 0x0172ba70
0172ba68  mvn w1,w8
0172ba6c  bl 0x0124c4d0
0172ba70  ldr w8,[sp, #0x18]
0172ba74  cmp w8,#0x1
0172ba78  b.lt 0x0172ba88
0172ba7c  ldr x0,[sp, #0x10]
0172ba80  mvn w1,w8
0172ba84  bl 0x0124c4d0
0172ba88  ldr w8,[sp, #0x8]
0172ba8c  cmp w8,#0x1
0172ba90  b.lt 0x0172baa0
0172ba94  ldr x0,[sp]
0172ba98  mvn w1,w8
0172ba9c  bl 0x0124c4d0
0172baa0  ldp x29,x30,[sp, #0x30]
0172baa4  ldr x19,[sp, #0x20]
0172baa8  add sp,sp,#0x40
0172baac  ret
