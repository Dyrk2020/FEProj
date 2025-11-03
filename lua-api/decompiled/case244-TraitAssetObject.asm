// ===== case244-TraitAssetObject @ 016b5b8c =====
// existing function case244-TraitAssetObject
016b5b8c  sub sp,sp,#0x40
016b5b90  str x19,[sp, #0x20]
016b5b94  stp x29,x30,[sp, #0x30]
016b5b98  add x29,sp,#0x30
016b5b9c  adrp x1,0x174a000
016b5ba0  add x1,x1,#0x87c
016b5ba4  mov x19,x0
016b5ba8  bl 0x0124ba40
016b5bac  adrp x1,0x575d000
016b5bb0  add x1,x1,#0xa06
016b5bb4  mov x0,x19
016b5bb8  str x19,[sp]
016b5bbc  bl 0x01251aa0
016b5bc0  mov w8,#0x1
016b5bc4  str w8,[sp, #0x8]
016b5bc8  mov x0,sp
016b5bcc  bl 0x0174aa04
016b5bd0  adrp x1,0x5761000
016b5bd4  adrp x3,0x736d000
016b5bd8  add x1,x1,#0x2ef
016b5bdc  add x3,x3,#0x101
016b5be0  add x0,sp,#0x10
016b5be4  mov x2,sp
016b5be8  bl 0x017d2b88
016b5bec  adrp x1,0x575d000
016b5bf0  adrp x2,0x17d2000
016b5bf4  adrp x4,0x17d2000
016b5bf8  add x1,x1,#0xa00
016b5bfc  add x2,x2,#0xb78
016b5c00  add x4,x4,#0xb80
016b5c04  add x0,sp,#0x10
016b5c08  mov x3,xzr
016b5c0c  mov x5,xzr
016b5c10  bl 0x017d2990
016b5c14  mov x19,x0
016b5c18  ldr w8,[x19, #0x8]
016b5c1c  ldr x0,[x19]
016b5c20  sub w8,w8,#0x3
016b5c24  str w8,[x19, #0x8]
016b5c28  orr w1,wzr,#0xfffffffc
016b5c2c  bl 0x0124c4d0
016b5c30  ldr w8,[x19, #0x8]
016b5c34  ldr x0,[x19]
016b5c38  str wzr,[x19, #0x8]
016b5c3c  cmp w8,#0x1
016b5c40  b.lt 0x016b5c4c
016b5c44  mvn w1,w8
016b5c48  bl 0x0124c4d0
016b5c4c  ldr w8,[sp, #0x18]
016b5c50  cmp w8,#0x1
016b5c54  b.lt 0x016b5c64
016b5c58  ldr x0,[sp, #0x10]
016b5c5c  mvn w1,w8
016b5c60  bl 0x0124c4d0
016b5c64  ldr w8,[sp, #0x8]
016b5c68  cmp w8,#0x1
016b5c6c  b.lt 0x016b5c7c
016b5c70  ldr x0,[sp]
016b5c74  mvn w1,w8
016b5c78  bl 0x0124c4d0
016b5c7c  ldp x29,x30,[sp, #0x30]
016b5c80  ldr x19,[sp, #0x20]
016b5c84  add sp,sp,#0x40
016b5c88  ret
