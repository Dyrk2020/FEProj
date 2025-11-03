// ===== case455-GrassWardData @ 016eab10 =====
// existing function case455-GrassWardData
016eab10  sub sp,sp,#0x40
016eab14  str x19,[sp, #0x20]
016eab18  stp x29,x30,[sp, #0x30]
016eab1c  add x29,sp,#0x30
016eab20  adrp x1,0x174a000
016eab24  add x1,x1,#0x87c
016eab28  mov x19,x0
016eab2c  bl 0x0124ba40
016eab30  adrp x1,0x575d000
016eab34  add x1,x1,#0xa06
016eab38  mov x0,x19
016eab3c  str x19,[sp]
016eab40  bl 0x01251aa0
016eab44  mov w8,#0x1
016eab48  str w8,[sp, #0x8]
016eab4c  mov x0,sp
016eab50  bl 0x0174aa04
016eab54  adrp x1,0x5766000
016eab58  adrp x3,0x736d000
016eab5c  add x1,x1,#0xb5e
016eab60  add x3,x3,#0x101
016eab64  add x0,sp,#0x10
016eab68  mov x2,sp
016eab6c  bl 0x0186f8a8
016eab70  adrp x1,0x5766000
016eab74  adrp x2,0x186f000
016eab78  adrp x4,0x186f000
016eab7c  add x1,x1,#0xb6c
016eab80  add x2,x2,#0x680
016eab84  add x4,x4,#0x694
016eab88  add x0,sp,#0x10
016eab8c  mov x3,xzr
016eab90  mov x5,xzr
016eab94  bl 0x0186f498
016eab98  adrp x1,0x5766000
016eab9c  adrp x2,0x186f000
016eaba0  adrp x4,0x186f000
016eaba4  add x1,x1,#0xa90
016eaba8  add x2,x2,#0x898
016eabac  add x4,x4,#0x8a0
016eabb0  mov x3,xzr
016eabb4  mov x5,xzr
016eabb8  bl 0x0186f6b0
016eabbc  mov x19,x0
016eabc0  ldr w8,[x19, #0x8]
016eabc4  ldr x0,[x19]
016eabc8  sub w8,w8,#0x3
016eabcc  str w8,[x19, #0x8]
016eabd0  orr w1,wzr,#0xfffffffc
016eabd4  bl 0x0124c4d0
016eabd8  ldr w8,[x19, #0x8]
016eabdc  ldr x0,[x19]
016eabe0  str wzr,[x19, #0x8]
016eabe4  cmp w8,#0x1
016eabe8  b.lt 0x016eabf4
016eabec  mvn w1,w8
016eabf0  bl 0x0124c4d0
016eabf4  ldr w8,[sp, #0x18]
016eabf8  cmp w8,#0x1
016eabfc  b.lt 0x016eac0c
016eac00  ldr x0,[sp, #0x10]
016eac04  mvn w1,w8
016eac08  bl 0x0124c4d0
016eac0c  ldr w8,[sp, #0x8]
016eac10  cmp w8,#0x1
016eac14  b.lt 0x016eac24
016eac18  ldr x0,[sp]
016eac1c  mvn w1,w8
016eac20  bl 0x0124c4d0
016eac24  ldp x29,x30,[sp, #0x30]
016eac28  ldr x19,[sp, #0x20]
016eac2c  add sp,sp,#0x40
016eac30  ret
