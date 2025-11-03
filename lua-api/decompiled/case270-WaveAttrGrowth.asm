// ===== case270-WaveAttrGrowth @ 016b9b34 =====
// existing function case270-WaveAttrGrowth
016b9b34  sub sp,sp,#0x40
016b9b38  str x19,[sp, #0x20]
016b9b3c  stp x29,x30,[sp, #0x30]
016b9b40  add x29,sp,#0x30
016b9b44  adrp x1,0x174a000
016b9b48  add x1,x1,#0x87c
016b9b4c  mov x19,x0
016b9b50  bl 0x0124ba40
016b9b54  adrp x1,0x575d000
016b9b58  add x1,x1,#0xa06
016b9b5c  mov x0,x19
016b9b60  str x19,[sp]
016b9b64  bl 0x01251aa0
016b9b68  mov w8,#0x1
016b9b6c  str w8,[sp, #0x8]
016b9b70  mov x0,sp
016b9b74  bl 0x0174aa04
016b9b78  adrp x1,0x5761000
016b9b7c  adrp x3,0x736d000
016b9b80  add x1,x1,#0x82d
016b9b84  add x3,x3,#0x101
016b9b88  add x0,sp,#0x10
016b9b8c  mov x2,sp
016b9b90  bl 0x017e2c40
016b9b94  adrp x1,0x5761000
016b9b98  adrp x2,0x17e2000
016b9b9c  adrp x4,0x17e2000
016b9ba0  add x1,x1,#0x788
016b9ba4  add x2,x2,#0xa38
016b9ba8  add x4,x4,#0xa40
016b9bac  add x0,sp,#0x10
016b9bb0  mov x3,xzr
016b9bb4  mov x5,xzr
016b9bb8  bl 0x017e2850
016b9bbc  adrp x1,0x5761000
016b9bc0  adrp x2,0x17e2000
016b9bc4  adrp x4,0x17e2000
016b9bc8  add x1,x1,#0x83c
016b9bcc  add x2,x2,#0xc30
016b9bd0  add x4,x4,#0xc38
016b9bd4  mov x3,xzr
016b9bd8  mov x5,xzr
016b9bdc  bl 0x017e2a48
016b9be0  mov x19,x0
016b9be4  ldr w8,[x19, #0x8]
016b9be8  ldr x0,[x19]
016b9bec  sub w8,w8,#0x3
016b9bf0  str w8,[x19, #0x8]
016b9bf4  orr w1,wzr,#0xfffffffc
016b9bf8  bl 0x0124c4d0
016b9bfc  ldr w8,[x19, #0x8]
016b9c00  ldr x0,[x19]
016b9c04  str wzr,[x19, #0x8]
016b9c08  cmp w8,#0x1
016b9c0c  b.lt 0x016b9c18
016b9c10  mvn w1,w8
016b9c14  bl 0x0124c4d0
016b9c18  ldr w8,[sp, #0x18]
016b9c1c  cmp w8,#0x1
016b9c20  b.lt 0x016b9c30
016b9c24  ldr x0,[sp, #0x10]
016b9c28  mvn w1,w8
016b9c2c  bl 0x0124c4d0
016b9c30  ldr w8,[sp, #0x8]
016b9c34  cmp w8,#0x1
016b9c38  b.lt 0x016b9c48
016b9c3c  ldr x0,[sp]
016b9c40  mvn w1,w8
016b9c44  bl 0x0124c4d0
016b9c48  ldp x29,x30,[sp, #0x30]
016b9c4c  ldr x19,[sp, #0x20]
016b9c50  add sp,sp,#0x40
016b9c54  ret
