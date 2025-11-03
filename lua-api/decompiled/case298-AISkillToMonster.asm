// ===== case298-AISkillToMonster @ 016be928 =====
// existing function case298-AISkillToMonster
016be928  sub sp,sp,#0x40
016be92c  str x19,[sp, #0x20]
016be930  stp x29,x30,[sp, #0x30]
016be934  add x29,sp,#0x30
016be938  adrp x1,0x174a000
016be93c  add x1,x1,#0x87c
016be940  mov x19,x0
016be944  bl 0x0124ba40
016be948  adrp x1,0x575d000
016be94c  add x1,x1,#0xa06
016be950  mov x0,x19
016be954  str x19,[sp]
016be958  bl 0x01251aa0
016be95c  mov w8,#0x1
016be960  str w8,[sp, #0x8]
016be964  mov x0,sp
016be968  bl 0x0174aa04
016be96c  adrp x1,0x5762000
016be970  adrp x3,0x736d000
016be974  add x1,x1,#0x658
016be978  add x3,x3,#0x101
016be97c  add x0,sp,#0x10
016be980  mov x2,sp
016be984  bl 0x017f48f0
016be988  adrp x1,0x594b000
016be98c  adrp x2,0x17f4000
016be990  adrp x4,0x17f4000
016be994  add x1,x1,#0x6c4
016be998  add x2,x2,#0x4b0
016be99c  add x4,x4,#0x4b8
016be9a0  add x0,sp,#0x10
016be9a4  mov x3,xzr
016be9a8  mov x5,xzr
016be9ac  bl 0x017f42c8
016be9b0  adrp x1,0x5762000
016be9b4  adrp x2,0x17f4000
016be9b8  adrp x4,0x17f4000
016be9bc  add x1,x1,#0x669
016be9c0  add x2,x2,#0x6a8
016be9c4  add x4,x4,#0x6b0
016be9c8  mov x3,xzr
016be9cc  mov x5,xzr
016be9d0  bl 0x017f44c0
016be9d4  adrp x1,0x5762000
016be9d8  adrp x2,0x17f4000
016be9dc  adrp x4,0x17f4000
016be9e0  add x1,x1,#0x688
016be9e4  add x2,x2,#0x8a0
016be9e8  add x4,x4,#0x8a8
016be9ec  mov x3,xzr
016be9f0  mov x5,xzr
016be9f4  bl 0x017f46b8
016be9f8  adrp x1,0x5762000
016be9fc  adrp x2,0x17f4000
016bea00  adrp x4,0x17f4000
016bea04  add x1,x1,#0x674
016bea08  add x2,x2,#0x8b0
016bea0c  add x4,x4,#0x8b8
016bea10  mov x3,xzr
016bea14  mov x5,xzr
016bea18  bl 0x017f42c8
016bea1c  adrp x1,0x5762000
016bea20  adrp x2,0x17f4000
016bea24  adrp x4,0x17f4000
016bea28  add x1,x1,#0x67c
016bea2c  add x2,x2,#0x8c0
016bea30  add x4,x4,#0x8c8
016bea34  mov x3,xzr
016bea38  mov x5,xzr
016bea3c  bl 0x017f42c8
016bea40  adrp x1,0x5762000
016bea44  adrp x2,0x17f4000
016bea48  adrp x4,0x17f4000
016bea4c  add x1,x1,#0x684
016bea50  add x2,x2,#0x8d0
016bea54  add x4,x4,#0x8d8
016bea58  mov x3,xzr
016bea5c  mov x5,xzr
016bea60  bl 0x017f46b8
016bea64  adrp x1,0x5762000
016bea68  adrp x2,0x17f4000
016bea6c  adrp x4,0x17f4000
016bea70  add x1,x1,#0x693
016bea74  add x2,x2,#0x8e0
016bea78  add x4,x4,#0x8e8
016bea7c  mov x3,xzr
016bea80  mov x5,xzr
016bea84  bl 0x017f42c8
016bea88  mov x19,x0
016bea8c  ldr w8,[x19, #0x8]
016bea90  ldr x0,[x19]
016bea94  sub w8,w8,#0x3
016bea98  str w8,[x19, #0x8]
016bea9c  orr w1,wzr,#0xfffffffc
016beaa0  bl 0x0124c4d0
016beaa4  ldr w8,[x19, #0x8]
016beaa8  ldr x0,[x19]
016beaac  str wzr,[x19, #0x8]
016beab0  cmp w8,#0x1
016beab4  b.lt 0x016beac0
016beab8  mvn w1,w8
016beabc  bl 0x0124c4d0
016beac0  ldr w8,[sp, #0x18]
016beac4  cmp w8,#0x1
016beac8  b.lt 0x016bead8
016beacc  ldr x0,[sp, #0x10]
016bead0  mvn w1,w8
016bead4  bl 0x0124c4d0
016bead8  ldr w8,[sp, #0x8]
016beadc  cmp w8,#0x1
016beae0  b.lt 0x016beaf0
016beae4  ldr x0,[sp]
016beae8  mvn w1,w8
016beaec  bl 0x0124c4d0
016beaf0  ldp x29,x30,[sp, #0x30]
016beaf4  ldr x19,[sp, #0x20]
016beaf8  add sp,sp,#0x40
016beafc  ret
