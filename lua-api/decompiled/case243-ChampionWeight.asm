// ===== case243-ChampionWeight @ 016b5a04 =====
// existing function case243-ChampionWeight
016b5a04  sub sp,sp,#0x40
016b5a08  str x19,[sp, #0x20]
016b5a0c  stp x29,x30,[sp, #0x30]
016b5a10  add x29,sp,#0x30
016b5a14  adrp x1,0x174a000
016b5a18  add x1,x1,#0x87c
016b5a1c  mov x19,x0
016b5a20  bl 0x0124ba40
016b5a24  adrp x1,0x575d000
016b5a28  add x1,x1,#0xa06
016b5a2c  mov x0,x19
016b5a30  str x19,[sp]
016b5a34  bl 0x01251aa0
016b5a38  mov w8,#0x1
016b5a3c  str w8,[sp, #0x8]
016b5a40  mov x0,sp
016b5a44  bl 0x0174aa04
016b5a48  adrp x1,0x5761000
016b5a4c  adrp x3,0x736d000
016b5a50  add x1,x1,#0x2d8
016b5a54  add x3,x3,#0x101
016b5a58  add x0,sp,#0x10
016b5a5c  mov x2,sp
016b5a60  bl 0x017d23ac
016b5a64  adrp x1,0x5761000
016b5a68  adrp x2,0x17d2000
016b5a6c  adrp x4,0x17d2000
016b5a70  add x1,x1,#0x2e7
016b5a74  add x2,x2,#0x38c
016b5a78  add x4,x4,#0x394
016b5a7c  add x0,sp,#0x10
016b5a80  mov x3,xzr
016b5a84  mov x5,xzr
016b5a88  bl 0x017d21a4
016b5a8c  adrp x1,0x5761000
016b5a90  adrp x2,0x17d2000
016b5a94  adrp x4,0x17d2000
016b5a98  add x1,x1,#0x83
016b5a9c  add x2,x2,#0x39c
016b5aa0  add x4,x4,#0x3a4
016b5aa4  mov x3,xzr
016b5aa8  mov x5,xzr
016b5aac  bl 0x017d21a4
016b5ab0  mov x19,x0
016b5ab4  ldr w8,[x19, #0x8]
016b5ab8  ldr x0,[x19]
016b5abc  sub w8,w8,#0x3
016b5ac0  str w8,[x19, #0x8]
016b5ac4  orr w1,wzr,#0xfffffffc
016b5ac8  bl 0x0124c4d0
016b5acc  ldr w8,[x19, #0x8]
016b5ad0  ldr x0,[x19]
016b5ad4  str wzr,[x19, #0x8]
016b5ad8  cmp w8,#0x1
016b5adc  b.lt 0x016b5ae8
016b5ae0  mvn w1,w8
016b5ae4  bl 0x0124c4d0
016b5ae8  ldr w8,[sp, #0x18]
016b5aec  cmp w8,#0x1
016b5af0  b.lt 0x016b5b00
016b5af4  ldr x0,[sp, #0x10]
016b5af8  mvn w1,w8
016b5afc  bl 0x0124c4d0
016b5b00  ldr w8,[sp, #0x8]
016b5b04  cmp w8,#0x1
016b5b08  b.lt 0x016b5b18
016b5b0c  ldr x0,[sp]
016b5b10  mvn w1,w8
016b5b14  bl 0x0124c4d0
016b5b18  ldp x29,x30,[sp, #0x30]
016b5b1c  ldr x19,[sp, #0x20]
016b5b20  add sp,sp,#0x40
016b5b24  ret
