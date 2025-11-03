// ===== case235-GainProbItem @ 016b4a00 =====
// existing function case235-GainProbItem
016b4a00  sub sp,sp,#0x40
016b4a04  str x19,[sp, #0x20]
016b4a08  stp x29,x30,[sp, #0x30]
016b4a0c  add x29,sp,#0x30
016b4a10  adrp x1,0x174a000
016b4a14  add x1,x1,#0x87c
016b4a18  mov x19,x0
016b4a1c  bl 0x0124ba40
016b4a20  adrp x1,0x575d000
016b4a24  add x1,x1,#0xa06
016b4a28  mov x0,x19
016b4a2c  str x19,[sp]
016b4a30  bl 0x01251aa0
016b4a34  mov w8,#0x1
016b4a38  str w8,[sp, #0x8]
016b4a3c  mov x0,sp
016b4a40  bl 0x0174aa04
016b4a44  adrp x1,0x5761000
016b4a48  adrp x3,0x736d000
016b4a4c  add x1,x1,#0x1e8
016b4a50  add x3,x3,#0x101
016b4a54  add x0,sp,#0x10
016b4a58  mov x2,sp
016b4a5c  bl 0x017ccd18
016b4a60  adrp x1,0x595c000
016b4a64  adrp x2,0x17cc000
016b4a68  adrp x4,0x17cc000
016b4a6c  add x1,x1,#0x9c4
016b4a70  add x2,x2,#0xb10
016b4a74  add x4,x4,#0xb18
016b4a78  add x0,sp,#0x10
016b4a7c  mov x3,xzr
016b4a80  mov x5,xzr
016b4a84  bl 0x017cc928
016b4a88  adrp x1,0x5967000
016b4a8c  adrp x2,0x17cc000
016b4a90  adrp x4,0x17cc000
016b4a94  add x1,x1,#0xa7c
016b4a98  add x2,x2,#0xd08
016b4a9c  add x4,x4,#0xd10
016b4aa0  mov x3,xzr
016b4aa4  mov x5,xzr
016b4aa8  bl 0x017ccb20
016b4aac  mov x19,x0
016b4ab0  ldr w8,[x19, #0x8]
016b4ab4  ldr x0,[x19]
016b4ab8  sub w8,w8,#0x3
016b4abc  str w8,[x19, #0x8]
016b4ac0  orr w1,wzr,#0xfffffffc
016b4ac4  bl 0x0124c4d0
016b4ac8  ldr w8,[x19, #0x8]
016b4acc  ldr x0,[x19]
016b4ad0  str wzr,[x19, #0x8]
016b4ad4  cmp w8,#0x1
016b4ad8  b.lt 0x016b4ae4
016b4adc  mvn w1,w8
016b4ae0  bl 0x0124c4d0
016b4ae4  ldr w8,[sp, #0x18]
016b4ae8  cmp w8,#0x1
016b4aec  b.lt 0x016b4afc
016b4af0  ldr x0,[sp, #0x10]
016b4af4  mvn w1,w8
016b4af8  bl 0x0124c4d0
016b4afc  ldr w8,[sp, #0x8]
016b4b00  cmp w8,#0x1
016b4b04  b.lt 0x016b4b14
016b4b08  ldr x0,[sp]
016b4b0c  mvn w1,w8
016b4b10  bl 0x0124c4d0
016b4b14  ldp x29,x30,[sp, #0x30]
016b4b18  ldr x19,[sp, #0x20]
016b4b1c  add sp,sp,#0x40
016b4b20  ret
