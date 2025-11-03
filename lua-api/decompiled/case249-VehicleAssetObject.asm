// ===== case249-VehicleAssetObject @ 016b6ac8 =====
// existing function case249-VehicleAssetObject
016b6ac8  sub sp,sp,#0x40
016b6acc  str x19,[sp, #0x20]
016b6ad0  stp x29,x30,[sp, #0x30]
016b6ad4  add x29,sp,#0x30
016b6ad8  adrp x1,0x174a000
016b6adc  add x1,x1,#0x87c
016b6ae0  mov x19,x0
016b6ae4  bl 0x0124ba40
016b6ae8  adrp x1,0x575d000
016b6aec  add x1,x1,#0xa06
016b6af0  mov x0,x19
016b6af4  str x19,[sp]
016b6af8  bl 0x01251aa0
016b6afc  mov w8,#0x1
016b6b00  str w8,[sp, #0x8]
016b6b04  mov x0,sp
016b6b08  bl 0x0174aa04
016b6b0c  adrp x1,0x5761000
016b6b10  adrp x3,0x736d000
016b6b14  add x1,x1,#0x445
016b6b18  add x3,x3,#0x101
016b6b1c  add x0,sp,#0x10
016b6b20  mov x2,sp
016b6b24  bl 0x017d5e44
016b6b28  adrp x1,0x575d000
016b6b2c  adrp x2,0x17d5000
016b6b30  adrp x4,0x17d5000
016b6b34  add x1,x1,#0xa00
016b6b38  add x2,x2,#0xe34
016b6b3c  add x4,x4,#0xe3c
016b6b40  add x0,sp,#0x10
016b6b44  mov x3,xzr
016b6b48  mov x5,xzr
016b6b4c  bl 0x017d5c4c
016b6b50  mov x19,x0
016b6b54  ldr w8,[x19, #0x8]
016b6b58  ldr x0,[x19]
016b6b5c  sub w8,w8,#0x3
016b6b60  str w8,[x19, #0x8]
016b6b64  orr w1,wzr,#0xfffffffc
016b6b68  bl 0x0124c4d0
016b6b6c  ldr w8,[x19, #0x8]
016b6b70  ldr x0,[x19]
016b6b74  str wzr,[x19, #0x8]
016b6b78  cmp w8,#0x1
016b6b7c  b.lt 0x016b6b88
016b6b80  mvn w1,w8
016b6b84  bl 0x0124c4d0
016b6b88  ldr w8,[sp, #0x18]
016b6b8c  cmp w8,#0x1
016b6b90  b.lt 0x016b6ba0
016b6b94  ldr x0,[sp, #0x10]
016b6b98  mvn w1,w8
016b6b9c  bl 0x0124c4d0
016b6ba0  ldr w8,[sp, #0x8]
016b6ba4  cmp w8,#0x1
016b6ba8  b.lt 0x016b6bb8
016b6bac  ldr x0,[sp]
016b6bb0  mvn w1,w8
016b6bb4  bl 0x0124c4d0
016b6bb8  ldp x29,x30,[sp, #0x30]
016b6bbc  ldr x19,[sp, #0x20]
016b6bc0  add sp,sp,#0x40
016b6bc4  ret
