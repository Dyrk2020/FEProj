// ===== case486-BattleTeamStatistic @ 016f18f4 =====
// existing function case486-BattleTeamStatistic
016f18f4  sub sp,sp,#0x40
016f18f8  stp x20,x19,[sp, #0x20]
016f18fc  stp x29,x30,[sp, #0x30]
016f1900  add x29,sp,#0x30
016f1904  adrp x1,0x174a000
016f1908  add x1,x1,#0x87c
016f190c  mov x19,x0
016f1910  bl 0x0124ba40
016f1914  adrp x1,0x575d000
016f1918  add x1,x1,#0xa06
016f191c  mov x0,x19
016f1920  str x19,[sp]
016f1924  bl 0x01251aa0
016f1928  mov w8,#0x1
016f192c  str w8,[sp, #0x8]
016f1930  mov x0,sp
016f1934  bl 0x0174aa04
016f1938  adrp x1,0x5767000
016f193c  adrp x3,0x736d000
016f1940  add x1,x1,#0xcc2
016f1944  add x3,x3,#0x101
016f1948  add x0,sp,#0x10
016f194c  mov x2,sp
016f1950  bl 0x01884e7c
016f1954  ldr x0,[sp, #0x10]
016f1958  mov w1,#0x10
016f195c  bl 0x0124cba0
016f1960  adrp x8,0x1884000
016f1964  dup v0.2D,xzr
016f1968  add x8,x8,#0xc68
016f196c  mov v0.D[0x0],x8
016f1970  str q0,[x0]
016f1974  ldr x0,[sp, #0x10]
016f1978  adrp x1,0x1885000
016f197c  add x1,x1,#0x240
016f1980  mov w2,#0x1
016f1984  bl 0x0124ec90
016f1988  ldr x0,[sp, #0x10]
016f198c  mov w1,#0xffffffff
016f1990  bl 0x0124c0c0
016f1994  ldr x19,[sp, #0x10]
016f1998  orr w1,wzr,#0xfffffffb
016f199c  mov w2,#0x6e7
016f19a0  mov x0,x19
016f19a4  bl 0x0124a650
016f19a8  orr w1,wzr,#0xfffffffe
016f19ac  mov x0,x19
016f19b0  bl 0x0124c0c0
016f19b4  orr w1,wzr,#0xfffffffe
016f19b8  mov x0,x19
016f19bc  bl 0x0124e920
016f19c0  mov w20,w0
016f19c4  adrp x1,0x5767000
016f19c8  add x1,x1,#0xcd6
016f19cc  mov x0,x19
016f19d0  bl 0x0124f120
016f19d4  orr w1,wzr,#0xfffffffe
016f19d8  mov w2,#0x1
016f19dc  mov x0,x19
016f19e0  bl 0x0124cfc0
016f19e4  mov x0,x19
016f19e8  mov w1,w20
016f19ec  bl 0x0124e060
016f19f0  orr w1,wzr,#0xfffffffd
016f19f4  mov x0,x19
016f19f8  bl 0x0124c4d0
016f19fc  ldr x19,[sp, #0x10]
016f1a00  orr w1,wzr,#0xfffffffd
016f1a04  mov w2,#0x6e7
016f1a08  mov x0,x19
016f1a0c  bl 0x0124a650
016f1a10  orr w1,wzr,#0xfffffffe
016f1a14  mov x0,x19
016f1a18  bl 0x0124c0c0
016f1a1c  orr w1,wzr,#0xfffffffe
016f1a20  mov x0,x19
016f1a24  bl 0x0124e920
016f1a28  mov w20,w0
016f1a2c  adrp x1,0x5767000
016f1a30  add x1,x1,#0xcd6
016f1a34  mov x0,x19
016f1a38  bl 0x0124f120
016f1a3c  orr w1,wzr,#0xfffffffe
016f1a40  mov w2,#0x1
016f1a44  mov x0,x19
016f1a48  bl 0x0124cfc0
016f1a4c  mov x0,x19
016f1a50  mov w1,w20
016f1a54  bl 0x0124e060
016f1a58  orr w1,wzr,#0xfffffffd
016f1a5c  mov x0,x19
016f1a60  bl 0x0124c4d0
016f1a64  adrp x1,0x5767000
016f1a68  adrp x2,0x1884000
016f1a6c  adrp x4,0x1884000
016f1a70  add x1,x1,#0xcdb
016f1a74  add x2,x2,#0xe58
016f1a78  add x4,x4,#0xe60
016f1a7c  add x0,sp,#0x10
016f1a80  mov x3,xzr
016f1a84  mov x5,xzr
016f1a88  bl 0x01884c70
016f1a8c  mov x19,x0
016f1a90  ldr w8,[x19, #0x8]
016f1a94  ldr x0,[x19]
016f1a98  sub w8,w8,#0x3
016f1a9c  str w8,[x19, #0x8]
016f1aa0  orr w1,wzr,#0xfffffffc
016f1aa4  bl 0x0124c4d0
016f1aa8  ldr w8,[x19, #0x8]
016f1aac  ldr x0,[x19]
016f1ab0  str wzr,[x19, #0x8]
016f1ab4  cmp w8,#0x1
016f1ab8  b.lt 0x016f1ac4
016f1abc  mvn w1,w8
016f1ac0  bl 0x0124c4d0
016f1ac4  ldr w8,[sp, #0x18]
016f1ac8  cmp w8,#0x1
016f1acc  b.lt 0x016f1adc
016f1ad0  ldr x0,[sp, #0x10]
016f1ad4  mvn w1,w8
016f1ad8  bl 0x0124c4d0
016f1adc  ldr w8,[sp, #0x8]
016f1ae0  cmp w8,#0x1
016f1ae4  b.lt 0x016f1af4
016f1ae8  ldr x0,[sp]
016f1aec  mvn w1,w8
016f1af0  bl 0x0124c4d0
016f1af4  ldp x29,x30,[sp, #0x30]
016f1af8  ldp x20,x19,[sp, #0x20]
016f1afc  add sp,sp,#0x40
016f1b00  ret
