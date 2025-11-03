// ===== case639-BattlePlayerDamageDetails @ 0170fc14 =====
// existing function case639-BattlePlayerDamageDetails
0170fc14  sub sp,sp,#0x40
0170fc18  str x19,[sp, #0x20]
0170fc1c  stp x29,x30,[sp, #0x30]
0170fc20  add x29,sp,#0x30
0170fc24  adrp x1,0x174a000
0170fc28  add x1,x1,#0x87c
0170fc2c  mov x19,x0
0170fc30  bl 0x0124ba40
0170fc34  adrp x1,0x575d000
0170fc38  add x1,x1,#0xa06
0170fc3c  mov x0,x19
0170fc40  str x19,[sp]
0170fc44  bl 0x01251aa0
0170fc48  mov w8,#0x1
0170fc4c  str w8,[sp, #0x8]
0170fc50  mov x0,sp
0170fc54  bl 0x0174aa04
0170fc58  adrp x1,0x576a000
0170fc5c  adrp x3,0x736d000
0170fc60  add x1,x1,#0xc3a
0170fc64  add x3,x3,#0x101
0170fc68  add x0,sp,#0x10
0170fc6c  mov x2,sp
0170fc70  bl 0x01912014
0170fc74  adrp x1,0x576a000
0170fc78  adrp x2,0x1911000
0170fc7c  adrp x4,0x1911000
0170fc80  add x1,x1,#0xc54
0170fc84  add x2,x2,#0xfd4
0170fc88  add x4,x4,#0xfdc
0170fc8c  add x0,sp,#0x10
0170fc90  mov x3,xzr
0170fc94  mov x5,xzr
0170fc98  bl 0x01911dec
0170fc9c  adrp x1,0x576a000
0170fca0  adrp x2,0x1911000
0170fca4  adrp x4,0x1911000
0170fca8  add x1,x1,#0xc60
0170fcac  add x2,x2,#0xfe4
0170fcb0  add x4,x4,#0xfec
0170fcb4  mov x3,xzr
0170fcb8  mov x5,xzr
0170fcbc  bl 0x01911dec
0170fcc0  adrp x1,0x576a000
0170fcc4  adrp x2,0x1911000
0170fcc8  adrp x4,0x1911000
0170fccc  add x1,x1,#0xc6f
0170fcd0  add x2,x2,#0xff4
0170fcd4  add x4,x4,#0xffc
0170fcd8  mov x3,xzr
0170fcdc  mov x5,xzr
0170fce0  bl 0x01911dec
0170fce4  adrp x1,0x576a000
0170fce8  adrp x2,0x1912000
0170fcec  adrp x4,0x1912000
0170fcf0  add x1,x1,#0xc7b
0170fcf4  add x2,x2,#0x4
0170fcf8  add x4,x4,#0xc
0170fcfc  mov x3,xzr
0170fd00  mov x5,xzr
0170fd04  bl 0x01911dec
0170fd08  mov x19,x0
0170fd0c  ldr w8,[x19, #0x8]
0170fd10  ldr x0,[x19]
0170fd14  sub w8,w8,#0x3
0170fd18  str w8,[x19, #0x8]
0170fd1c  orr w1,wzr,#0xfffffffc
0170fd20  bl 0x0124c4d0
0170fd24  ldr w8,[x19, #0x8]
0170fd28  ldr x0,[x19]
0170fd2c  str wzr,[x19, #0x8]
0170fd30  cmp w8,#0x1
0170fd34  b.lt 0x0170fd40
0170fd38  mvn w1,w8
0170fd3c  bl 0x0124c4d0
0170fd40  ldr w8,[sp, #0x18]
0170fd44  cmp w8,#0x1
0170fd48  b.lt 0x0170fd58
0170fd4c  ldr x0,[sp, #0x10]
0170fd50  mvn w1,w8
0170fd54  bl 0x0124c4d0
0170fd58  ldr w8,[sp, #0x8]
0170fd5c  cmp w8,#0x1
0170fd60  b.lt 0x0170fd70
0170fd64  ldr x0,[sp]
0170fd68  mvn w1,w8
0170fd6c  bl 0x0124c4d0
0170fd70  ldp x29,x30,[sp, #0x30]
0170fd74  ldr x19,[sp, #0x20]
0170fd78  add sp,sp,#0x40
0170fd7c  ret
